Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6FA7C03EC
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3972610E3C9;
	Tue, 10 Oct 2023 18:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09CFC10E3C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964248; x=1728500248;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7i1Oo64hV2KMDKjOgiwyFj4zEwdGmFaTlSDFI3UzrGA=;
 b=ak34k302o7m93+BN0w/uTgy6MrjUM+d6/4aNn4RbmfkfEiz/8sdEaYsP
 +KuM4MaqCOqlkbT8/93dgUehBqUkKdS5vry+sudojQazrHw8c3XV8kFaL
 z5HtowmexzmoEKcgLf6IKQCC5HdUMy+W/mQj+Ag37HBpeT5DV1OA7H+ry
 FvElWtUWwvALzv3mU7fhoEPymkObXiUATc7Z8EVTwFWuOrpa0jewQEqDJ
 /IWfP5xY1S6pI6ykhUy7MXMx5q8haiKj/Bo/Ez/3UatXOJL3bRUmTYXEo
 vxw4FiKbGmfHZvKxGWeYE0ha498V5asSXTHdtwL8T08vPYjrDCM3+15PJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="374830094"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="374830094"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1000802310"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1000802310"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:27 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 11:46:41 -0700
Message-Id: <20231010184641.2119129-11-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
References: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
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

