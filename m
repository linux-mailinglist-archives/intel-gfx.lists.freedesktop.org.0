Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 821B27C03E2
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE2B10E3C2;
	Tue, 10 Oct 2023 18:55:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D200010E3B8
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964109; x=1728500109;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7i1Oo64hV2KMDKjOgiwyFj4zEwdGmFaTlSDFI3UzrGA=;
 b=g/bmc2RRs4LYoIgIZ6+RTzuV2hG9va2rz+fVpjthL5mRwAcqGfYArI+W
 R/CTijnhxR8L3PwIAV0y85OlGifKthscQB/jiZchZ0sO0MLT6gu4yOCee
 l1Wg/5Ok3+nTzXsi2hZVDumV7clXQuVsYwb1ASSBw3iPo1y9KmlnKXuIJ
 vKShx9q966D0LxfQF0B2Vck9F4n//b4qRdAhyRx4gI1J1VYTXMMzug5J8
 7qdSURrVxjthQGzXOnfWBjEoE9gVbIHMc+EAHVtrDCbhDihb0AVF4wL5B
 vtvXRPcUUiKcHX/HsvPlIC1R0xy7uwE/UANP3buqREvN5+CX+rHe7/G/m w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="364776807"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="364776807"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:55:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="757234886"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="757234886"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:55:09 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 11:44:23 -0700
Message-Id: <20231010184423.2118908-13-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010184423.2118908-1-jonathan.cavitt@intel.com>
References: <20231010184423.2118908-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 10/10] drm/i915: Use selective tlb
 invalidations where supported
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
Cc: andi.shyti@intel.com, jonathan.cavitt@intel.com, saurabhg.gupta@intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For platforms supporting selective tlb invalidations, we don't need to
do a full tlb invalidation. Rather do a range based tlb invalidation for
every unbind of purged vma belongs to an active vm.

Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Cc: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Cc: Fei Yang <fei.yang@intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ppgtt.c |  2 +-
 drivers/gpu/drm/i915/i915_vma.c       | 14 +++++++++-----
 drivers/gpu/drm/i915/i915_vma.h       |  3 ++-
 3 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ppgtt.c b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
index d07a4f97b9434..b43dae3cbd59f 100644
--- a/drivers/gpu/drm/i915/gt/intel_ppgtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ppgtt.c
@@ -211,7 +211,7 @@ void ppgtt_unbind_vma(struct i915_address_space *vm,
 		return;
 
 	vm->clear_range(vm, vma_res->start, vma_res->vma_size);
-	vma_invalidate_tlb(vm, vma_res->tlb);
+	vma_invalidate_tlb(vm, vma_res->tlb, vma_res->start, vma_res->vma_size);
 }
 
 static unsigned long pd_count(u64 size, int shift)
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index d09aad34ba37f..cb05d794f0d0f 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -1339,7 +1339,8 @@ I915_SELFTEST_EXPORT int i915_vma_get_pages(struct i915_vma *vma)
 	return err;
 }
 
-void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb)
+void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb
+			u64 start, u64 size)
 {
 	struct intel_gt *gt;
 	int id;
@@ -1355,9 +1356,11 @@ void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb)
 	 * the most recent TLB invalidation seqno, and if we have not yet
 	 * flushed the TLBs upon release, perform a full invalidation.
 	 */
-	for_each_gt(gt, vm->i915, id)
-		WRITE_ONCE(tlb[id],
-			   intel_gt_next_invalidate_tlb_full(gt));
+	for_each_gt(gt, vm->i915, id) {
+		if (!intel_gt_invalidate_tlb_range(gt, start, size))
+			WRITE_ONCE(tlb[id],
+				   intel_gt_next_invalidate_tlb_full(gt));
+	}
 }
 
 static void __vma_put_pages(struct i915_vma *vma, unsigned int count)
@@ -2041,7 +2044,8 @@ struct dma_fence *__i915_vma_evict(struct i915_vma *vma, bool async)
 			dma_fence_put(unbind_fence);
 			unbind_fence = NULL;
 		}
-		vma_invalidate_tlb(vma->vm, vma->obj->mm.tlb);
+		vma_invalidate_tlb(vma->vm, vma->obj->mm.tlb,
+				   vma->node.start, vma->size);
 	}
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index e356dfb883d34..5a604aad55dfe 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -260,7 +260,8 @@ bool i915_vma_misplaced(const struct i915_vma *vma,
 			u64 size, u64 alignment, u64 flags);
 void __i915_vma_set_map_and_fenceable(struct i915_vma *vma);
 void i915_vma_revoke_mmap(struct i915_vma *vma);
-void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb);
+void vma_invalidate_tlb(struct i915_address_space *vm, u32 *tlb,
+			u64 start, u64 size);
 struct dma_fence *__i915_vma_evict(struct i915_vma *vma, bool async);
 int __i915_vma_unbind(struct i915_vma *vma);
 int __must_check i915_vma_unbind(struct i915_vma *vma);
-- 
2.25.1

