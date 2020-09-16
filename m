Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D2826C005
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 11:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 180C66E37C;
	Wed, 16 Sep 2020 09:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32F6F6E379
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 09:01:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22442879-1500050 
 for multiple; Wed, 16 Sep 2020 10:01:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Sep 2020 10:00:59 +0100
Message-Id: <20200916090059.3189-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200916090059.3189-1-chris@chris-wilson.co.uk>
References: <20200916090059.3189-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Reduce GPU error capture mutex
 hold time
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

Shrink the hold time for the error capture mutex to just around the
acquire/release of the PTE used for reading back the object via the
Global GTT. For platforms that do not need the GGTT read back, we can
skip the mutex entirely and allow concurrent error capture. Where we do
use the GGTT, by restricting the hold time around the slow readback and
compression, we are more resilient against softlockups (khungtaskd) as
the heartbeat may well also trigger an error while the first is on
going, and this allows the heartbeat reset to skip past the capture and
not be stalled.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 28 +++++----------------------
 1 file changed, 5 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index a635ec8d0b94..2d0c4b8d9e3c 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1026,6 +1026,7 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 		dma_addr_t dma;
 
 		for_each_sgt_daddr(dma, iter, vma->pages) {
+			mutex_lock(&ggtt->error_mutex);
 			ggtt->vm.insert_page(&ggtt->vm, dma, slot,
 					     I915_CACHE_NONE, 0);
 			mb();
@@ -1035,6 +1036,10 @@ i915_vma_coredump_create(const struct intel_gt *gt,
 					    (void  __force *)s, dst,
 					    true);
 			io_mapping_unmap(s);
+
+			mb();
+			ggtt->vm.clear_range(&ggtt->vm, slot, PAGE_SIZE);
+			mutex_unlock(&ggtt->error_mutex);
 			if (ret)
 				break;
 		}
@@ -1506,25 +1511,6 @@ gt_record_uc(struct intel_gt_coredump *gt,
 	return error_uc;
 }
 
-static void gt_capture_prepare(struct intel_gt_coredump *gt)
-{
-	struct i915_ggtt *ggtt = gt->_gt->ggtt;
-
-	mutex_lock(&ggtt->error_mutex);
-}
-
-static void gt_capture_finish(struct intel_gt_coredump *gt)
-{
-	struct i915_ggtt *ggtt = gt->_gt->ggtt;
-
-	if (drm_mm_node_allocated(&ggtt->error_capture))
-		ggtt->vm.clear_range(&ggtt->vm,
-				     ggtt->error_capture.start,
-				     PAGE_SIZE);
-
-	mutex_unlock(&ggtt->error_mutex);
-}
-
 /* Capture all registers which don't fit into another category. */
 static void gt_record_regs(struct intel_gt_coredump *gt)
 {
@@ -1783,8 +1769,6 @@ i915_vma_capture_prepare(struct intel_gt_coredump *gt)
 		return NULL;
 	}
 
-	gt_capture_prepare(gt);
-
 	return compress;
 }
 
@@ -1794,8 +1778,6 @@ void i915_vma_capture_finish(struct intel_gt_coredump *gt,
 	if (!compress)
 		return;
 
-	gt_capture_finish(gt);
-
 	compress_fini(compress);
 	kfree(compress);
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
