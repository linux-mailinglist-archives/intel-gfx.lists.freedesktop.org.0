Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 703781473FB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 23:45:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2549B6FE8C;
	Thu, 23 Jan 2020 22:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BCF56FE8C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 22:45:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19988181-1500050 
 for multiple; Thu, 23 Jan 2020 22:45:01 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Jan 2020 22:44:58 +0000
Message-Id: <20200123224459.38128-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Check activity on i915_vma after
 confirming pin_count==0
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

Only assert that the i915_vma is now idle if and only if no other pins
are present. If another user has the i915_vma pinned, they may submit
more work to the i915_vma skipping the vm->mutex used to serialise the
unbind. We need to wait again, if we want to continue and unbind this
vma.

However, if we own the i915_vma (we hold the vm->mutex for the unbind
and the pin_count is 0), we can assert that the vma remains idle as we
unbind.

Fixes: 2850748ef876 ("drm/i915: Pull i915_vma_pin under the vm->mutex")
Closes: https://gitlab.freedesktop.org/drm/intel/issues/530
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_vma.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 306b951831fe..4999882fbceb 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1202,16 +1202,26 @@ int __i915_vma_unbind(struct i915_vma *vma)
 	if (ret)
 		return ret;
 
-	GEM_BUG_ON(i915_vma_is_active(vma));
 	if (i915_vma_is_pinned(vma)) {
 		vma_print_allocator(vma, "is pinned");
 		return -EAGAIN;
 	}
 
-	GEM_BUG_ON(i915_vma_is_active(vma));
+	/*
+	 * After confirming that no one else is pinning this vma, wait for
+	 * any laggards who may have crept in during the wait (through
+	 * a residual pin skipping the vm->mutex) to complete.
+	 */
+	ret = i915_vma_sync(vma);
+	if (ret)
+		return ret;
+
 	if (!drm_mm_node_allocated(&vma->node))
 		return 0;
 
+	GEM_BUG_ON(i915_vma_is_pinned(vma));
+	GEM_BUG_ON(i915_vma_is_active(vma));
+
 	if (i915_vma_is_map_and_fenceable(vma)) {
 		/*
 		 * Check that we have flushed all writes through the GGTT
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
