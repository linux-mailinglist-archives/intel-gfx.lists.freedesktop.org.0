Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BDD144740
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 23:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 086266E471;
	Tue, 21 Jan 2020 22:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21B1C6E478
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 22:25:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19963742-1500050 
 for multiple; Tue, 21 Jan 2020 22:24:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Jan 2020 22:24:41 +0000
Message-Id: <20200121222447.419489-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Clear the GGTT_WRITE bit on
 unbinding the vma
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

While we do flush writes to the vma before unbinding (to make sure they
go through the right detiling register), we may also be concurrently
poking at the GGTT_WRITE bit from set-domain, as we mark all GGTT vma
associated with an object. We know this is for another vma, as we
are currently unbind this one -- so if this vma will be reused, it will
be refaulted and have its dirty bit set before the next write.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/999
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_vma.c       | 11 +++++++++--
 drivers/gpu/drm/i915/i915_vma_types.h |  1 +
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 17d7c525ea5c..eb18b56af3af 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1218,9 +1218,15 @@ int __i915_vma_unbind(struct i915_vma *vma)
 		 * before the unbind, other due to non-strict nature of those
 		 * indirect writes they may end up referencing the GGTT PTE
 		 * after the unbind.
+		 *
+		 * Note that we may be concurrently poking at the GGTT_WRITE
+		 * bit from set-domain, as we mark all GGTT vma associated
+		 * with an object. We know this is for another vma, as we
+		 * are currently unbind this one -- so if this vma will be
+		 * reused, it will be refaulted and have its dirty bit set
+		 * before the next write.
 		 */
 		i915_vma_flush_writes(vma);
-		GEM_BUG_ON(i915_vma_has_ggtt_write(vma));
 
 		/* release the fence reg _after_ flushing */
 		ret = i915_vma_revoke_fence(vma);
@@ -1240,7 +1246,8 @@ int __i915_vma_unbind(struct i915_vma *vma)
 		trace_i915_vma_unbind(vma);
 		vma->ops->unbind_vma(vma);
 	}
-	atomic_and(~(I915_VMA_BIND_MASK | I915_VMA_ERROR), &vma->flags);
+	atomic_and(~(I915_VMA_BIND_MASK | I915_VMA_ERROR | I915_VMA_DIRTY),
+		   &vma->flags);
 
 	i915_vma_detach(vma);
 	vma_unbind_pages(vma);
diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
index e0942efd5236..1ddc450ae766 100644
--- a/drivers/gpu/drm/i915/i915_vma_types.h
+++ b/drivers/gpu/drm/i915/i915_vma_types.h
@@ -244,6 +244,7 @@ struct i915_vma {
 #define I915_VMA_CAN_FENCE_BIT	15
 #define I915_VMA_USERFAULT_BIT	16
 #define I915_VMA_GGTT_WRITE_BIT	17
+#define I915_VMA_DIRTY		((int)BIT(I915_VMA_GGTT_WRITE_BIT))
 
 #define I915_VMA_GGTT		((int)BIT(I915_VMA_GGTT_BIT))
 #define I915_VMA_CAN_FENCE	((int)BIT(I915_VMA_CAN_FENCE_BIT))
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
