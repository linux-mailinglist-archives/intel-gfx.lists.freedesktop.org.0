Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF071EE540
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 15:23:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EF7B6E37C;
	Thu,  4 Jun 2020 13:23:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2DA86E37C
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 13:23:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21395654-1500050 
 for multiple; Thu, 04 Jun 2020 14:23:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Jun 2020 14:23:05 +0100
Message-Id: <20200604132305.22089-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Trace HWSP cachelines
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Trace the acquire/release of individual cachelines within the HWSP, so
we can look back in anger.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 4546284fede1..efce02a6d69e 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -145,6 +145,10 @@ static void __cacheline_retire(struct i915_active *active)
 	struct intel_timeline_cacheline *cl =
 		container_of(active, typeof(*cl), active);
 
+	GT_TRACE(cl->hwsp->gt, "cacheline:%08lx retire\n",
+		 i915_ggtt_offset(cl->hwsp->vma) +
+		 ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) * CACHELINE_BYTES);
+
 	i915_vma_unpin(cl->hwsp->vma);
 	if (ptr_test_bit(cl->vaddr, CACHELINE_FREE))
 		__idle_cacheline_free(cl);
@@ -156,6 +160,11 @@ static int __cacheline_active(struct i915_active *active)
 		container_of(active, typeof(*cl), active);
 
 	__i915_vma_pin(cl->hwsp->vma);
+
+	GT_TRACE(cl->hwsp->gt, "cacheline:%08lx active\n",
+		 i915_ggtt_offset(cl->hwsp->vma) +
+		 ptr_unmask_bits(cl->vaddr, CACHELINE_BITS) * CACHELINE_BYTES);
+
 	return 0;
 }
 
@@ -334,6 +343,9 @@ int intel_timeline_pin(struct intel_timeline *tl)
 		__i915_vma_unpin(tl->hwsp_ggtt);
 	}
 
+	GT_TRACE(tl->gt, "fence:%llx acquire hwsp:%08x\n",
+		 tl->fence_context, tl->hwsp_offset);
+
 	return 0;
 }
 
@@ -483,6 +495,9 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
 	if (err)
 		goto err_cacheline;
 
+	GT_TRACE(tl->gt, "fence:%llx release hwsp:%08x\n",
+		 tl->fence_context, tl->hwsp_offset);
+
 	cacheline_release(tl->hwsp_cacheline); /* ownership now xfered to rq */
 	cacheline_free(tl->hwsp_cacheline);
 
@@ -501,6 +516,9 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
 	cacheline_acquire(cl);
 	tl->hwsp_cacheline = cl;
 
+	GT_TRACE(tl->gt, "fence:%llx acquire hwsp:%08x\n",
+		 tl->fence_context, tl->hwsp_offset);
+
 	*seqno = timeline_advance(tl);
 	GEM_BUG_ON(i915_seqno_passed(*tl->hwsp_seqno, *seqno));
 	return 0;
@@ -576,6 +594,9 @@ void intel_timeline_unpin(struct intel_timeline *tl)
 	if (!atomic_dec_and_test(&tl->pin_count))
 		return;
 
+	GT_TRACE(tl->gt, "fence:%llx release hwsp:%08x\n",
+		 tl->fence_context, tl->hwsp_offset);
+
 	cacheline_release(tl->hwsp_cacheline);
 
 	__i915_vma_unpin(tl->hwsp_ggtt);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
