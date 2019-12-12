Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F70411CF3E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 15:05:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D366ED7B;
	Thu, 12 Dec 2019 14:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04A016ED76
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 14:05:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19555630-1500050 
 for multiple; Thu, 12 Dec 2019 14:04:58 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:04:29 +0000
Message-Id: <20191212140459.1307617-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
References: <20191212140459.1307617-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/33] drm/i915/gt: Eliminate the trylock for
 reading a timeline's hwsp
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As we stash a pointer to the HWSP cacheline on the request, when reading
it we only need confirm that the cacheline is still valid by checking
that the request and timeline are still intact.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c | 38 ++++++++----------------
 1 file changed, 13 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index d71aafb66d6e..e852bd142ddf 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -514,6 +514,7 @@ int intel_timeline_read_hwsp(struct i915_request *from,
 			     struct i915_request *to,
 			     u32 *hwsp)
 {
+	struct intel_timeline_cacheline *cl = from->hwsp_cacheline;
 	struct intel_timeline *tl;
 	int err;
 
@@ -526,33 +527,20 @@ int intel_timeline_read_hwsp(struct i915_request *from,
 		return 1;
 
 	GEM_BUG_ON(rcu_access_pointer(to->timeline) == tl);
-
-	err = -EAGAIN;
-	if (mutex_trylock(&tl->mutex)) {
-		struct intel_timeline_cacheline *cl = from->hwsp_cacheline;
-
-		if (i915_request_completed(from)) {
-			err = 1;
-			goto unlock;
-		}
-
-		err = cacheline_ref(cl, to);
-		if (err)
-			goto unlock;
-
-		if (likely(cl == tl->hwsp_cacheline)) {
-			*hwsp = tl->hwsp_offset;
-		} else { /* across a seqno wrap, recover the original offset */
-			*hwsp = i915_ggtt_offset(cl->hwsp->vma) +
-				ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) *
-				CACHELINE_BYTES;
-		}
-
-unlock:
-		mutex_unlock(&tl->mutex);
+	err = cacheline_ref(cl, to);
+	if (err)
+		goto out;
+
+	*hwsp = tl->hwsp_offset;
+	if (unlikely(cl != READ_ONCE(tl->hwsp_cacheline))) {
+		/* across a seqno wrap, recover the original offset */
+		*hwsp = i915_ggtt_offset(cl->hwsp->vma) +
+			ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) *
+			CACHELINE_BYTES;
 	}
-	intel_timeline_put(tl);
 
+out:
+	intel_timeline_put(tl);
 	return err;
 }
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
