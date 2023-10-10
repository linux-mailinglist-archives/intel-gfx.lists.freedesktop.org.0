Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BE97C03D8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CECB210E3B4;
	Tue, 10 Oct 2023 18:55:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F03F910E0D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964107; x=1728500107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kcdoN0/9IOplJIZyAb6kQFuSQWN4m45YA5VCNvtkgV4=;
 b=GZyz81SK/W3Ypr12jTDPP1UVJyR+Ho/Qxu0H8wdPSni2ZJCxTvEa8mlW
 1Qu8jxVad+OO7xruRZxzHCCLUcTd5edzRNq84XldHGTwBK8n9FHWqY4Ux
 JzOTy3rgN5TQuNjwyrXv5KajNVytEZRzPoermJzzVKw/qwh1QNPT6LYZL
 Z+VJ0xaCBeWgd/LEFhSJpEPoH1zVI+Jm4OwWCt4F2FTfGcmb0qluc8/88
 RoddV1HmhtD+M5Q1Ss4EIjVhSyW+ttPDI+tEMN/S9atfJog1WaLB5jzZh
 vIKTK13zu8bg7/1CtOAPJkGCX2/x9DWiqxqOFXP8ae7E/yed+3z161P5M Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="364776792"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="364776792"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="757234850"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="757234850"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:55:06 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 11:44:13 -0700
Message-Id: <20231010184423.2118908-3-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010184423.2118908-1-jonathan.cavitt@intel.com>
References: <20231010184423.2118908-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH dii-client 1/2] drm/i915: Add generic interface
 for tlb invalidation
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

From: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>

This supports selective and full tlb invalidations. When GuC is enabled
the tlb invalidations use guc ct otherwise use mmio interface.

Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
CC: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
CC: Fei Yang <fei.yang@intel.com>
Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  8 ++
 drivers/gpu/drm/i915/gt/intel_tlb.c           | 58 +++++++++++-
 drivers/gpu/drm/i915/gt/intel_tlb.h           |  1 +
 drivers/gpu/drm/i915/gt/selftest_tlb.c        | 92 +++++++++++++++++++
 .../drm/i915/selftests/i915_mock_selftests.h  |  1 +
 5 files changed, 159 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index eecd0a87a6478..f2ca1c26ecde5 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1124,6 +1124,14 @@
 
 #define GEN12_GAM_DONE				_MMIO(0xcf68)
 
+#define XEHPSDV_TLB_INV_DESC0			_MMIO(0xcf7c)
+#define   XEHPSDV_TLB_INV_DESC0_ADDR_LO		REG_GENMASK(31, 12)
+#define   XEHPSDV_TLB_INV_DESC0_ADDR_MASK	REG_GENMASK(8, 3)
+#define   XEHPSDV_TLB_INV_DESC0_G		REG_GENMASK(2, 1)
+#define   XEHPSDV_TLB_INV_DESC0_VALID		REG_BIT(0)
+#define XEHPSDV_TLB_INV_DESC1			_MMIO(0xcf80)
+#define   XEHPSDV_TLB_INV_DESC0_ADDR_HI		REG_GENMASK(31, 0)
+
 #define GEN7_HALF_SLICE_CHICKEN1		_MMIO(0xe100) /* IVB GT1 + VLV */
 #define GEN8_HALF_SLICE_CHICKEN1		MCR_REG(0xe100)
 #define   GEN7_MAX_PS_THREAD_DEP		(8 << 12)
diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.c b/drivers/gpu/drm/i915/gt/intel_tlb.c
index 139608c30d978..92fb455299717 100644
--- a/drivers/gpu/drm/i915/gt/intel_tlb.c
+++ b/drivers/gpu/drm/i915/gt/intel_tlb.c
@@ -12,6 +12,7 @@
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
 #include "intel_tlb.h"
+#include "uc/intel_guc.h"
 
 /*
  * HW architecture suggest typical invalidation time at 40us,
@@ -131,11 +132,14 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
 		return;
 
 	with_intel_gt_pm_if_awake(gt, wakeref) {
+		struct intel_guc *guc = &gt->uc.guc;
+
 		mutex_lock(&gt->tlb.invalidate_lock);
 		if (tlb_seqno_passed(gt, seqno))
 			goto unlock;
 
-		mmio_invalidate_full(gt);
+		if (intel_guc_invalidate_tlb_full(guc, INTEL_GUC_TLB_INVAL_MODE_HEAVY) < 0)
+			mmio_invalidate_full(gt);
 
 		write_seqcount_invalidate(&gt->tlb.seqno);
 unlock:
@@ -143,6 +147,58 @@ void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno)
 	}
 }
 
+static u64 tlb_page_selective_size(u64 *addr, u64 length)
+{
+	const u64 end = *addr + length;
+	u64 start;
+
+	/*
+	 * Minimum invalidation size for a 2MB page that the hardware expects is
+	 * 16MB
+	 */
+	length = max_t(u64, roundup_pow_of_two(length), SZ_4K);
+	if (length >= SZ_2M)
+		length = max_t(u64, SZ_16M, length);
+
+	/*
+	 * We need to invalidate a higher granularity if start address is not
+	 * aligned to length. When start is not aligned with length we need to
+	 * find the length large enough to create an address mask covering the
+	 * required range.
+	 */
+	start = round_down(*addr, length);
+	while (start + length < end) {
+		length <<= 1;
+		start = round_down(*addr, length);
+	}
+
+	*addr = start;
+	return length;
+}
+
+bool intel_gt_invalidate_tlb_range(struct intel_gt *gt,
+				   u64 start, u64 length)
+{
+	struct intel_guc *guc = &gt->uc.guc;
+	intel_wakeref_t wakeref;
+	u64 size, vm_total;
+	bool ret = true;
+
+	if (intel_gt_is_wedged(gt))
+		return true;
+
+	vm_total = BIT_ULL(INTEL_INFO(gt->i915)->ppgtt_size);
+	/* Align start and length */
+	size =  min_t(u64, vm_total, tlb_page_selective_size(&start, length));
+
+	with_intel_gt_pm_if_awake(gt, wakeref)
+		ret = intel_guc_invalidate_tlb_page_selective(guc,
+							      INTEL_GUC_TLB_INVAL_MODE_HEAVY,
+							      start, size) == 0;
+
+	return ret;
+}
+
 void intel_gt_init_tlb(struct intel_gt *gt)
 {
 	mutex_init(&gt->tlb.invalidate_lock);
diff --git a/drivers/gpu/drm/i915/gt/intel_tlb.h b/drivers/gpu/drm/i915/gt/intel_tlb.h
index 337327af92ac4..9e5fc40c2b08e 100644
--- a/drivers/gpu/drm/i915/gt/intel_tlb.h
+++ b/drivers/gpu/drm/i915/gt/intel_tlb.h
@@ -12,6 +12,7 @@
 #include "intel_gt_types.h"
 
 void intel_gt_invalidate_tlb_full(struct intel_gt *gt, u32 seqno);
+bool intel_gt_invalidate_tlb_range(struct intel_gt *gt, u64 start, u64 length);
 
 void intel_gt_init_tlb(struct intel_gt *gt);
 void intel_gt_fini_tlb(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
index 7e41f69fc818f..1dc4ff56916fe 100644
--- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
+++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
@@ -158,7 +158,11 @@ pte_tlbinv(struct intel_context *ce,
 		/* Flip the PTE between A and B */
 		if (i915_gem_object_is_lmem(vb->obj))
 			pte_flags |= PTE_LM;
+<<<<<<< HEAD
 		ce->vm->insert_entries(ce->vm, &vb_res, pat_index, pte_flags);
+=======
+		ce->vm->insert_entries(ce->vm, &stash, vb, I915_CACHE_NONE, pte_flags);
+>>>>>>> 774058193c61b... INTEL_DII: drm/i915/xehpsdv: Add generic interface for tlb invalidation
 
 		/* Flush the PTE update to concurrent HW */
 		tlbinv(ce->vm, addr & -length, length);
@@ -375,10 +379,45 @@ static int invalidate_full(void *arg)
 	return err;
 }
 
+static void tlbinv_range(struct i915_address_space *vm, u64 addr, u64 length)
+{
+	if (!intel_gt_invalidate_tlb_range(vm->gt, addr, length))
+		pr_err("range invalidate failed\n");
+}
+
+static bool has_invalidate_range(struct intel_gt *gt)
+{
+	intel_wakeref_t wf;
+	bool result = false;
+
+	with_intel_gt_pm(gt, wf)
+		result = intel_gt_invalidate_tlb_range(gt, 0, gt->vm->total);
+
+	return result;
+}
+
+static int invalidate_range(void *arg)
+{
+	struct intel_gt *gt = arg;
+	int err;
+
+	if (!has_invalidate_range(gt))
+		return 0;
+
+	err = mem_tlbinv(gt, create_smem, tlbinv_range);
+	if (err == 0)
+		err = mem_tlbinv(gt, create_lmem, tlbinv_range);
+	if (err == -ENODEV || err == -ENXIO)
+		err = 0;
+
+	return err;
+}
+
 int intel_tlb_live_selftests(struct drm_i915_private *i915)
 {
 	static const struct i915_subtest tests[] = {
 		SUBTEST(invalidate_full),
+		SUBTEST(invalidate_range),
 	};
 	struct intel_gt *gt;
 	unsigned int i;
@@ -396,3 +435,56 @@ int intel_tlb_live_selftests(struct drm_i915_private *i915)
 
 	return 0;
 }
+
+static int tlb_page_size(void *arg)
+{
+	int start, size, offset;
+
+	for (start = 0; start < 57; start++) {
+		for (size = 0; size <= 57 - start; size++) {
+			for (offset = 0; offset <= size; offset++) {
+				u64 len = BIT(size);
+				u64 addr = BIT(start) + len - BIT(offset);
+				u64 expected_start = addr;
+				u64 expected_end = addr + len - 1;
+				int err = 0;
+
+				if (addr + len < addr)
+					continue;
+
+				len = tlb_page_selective_size(&addr, len);
+				if (addr > expected_start) {
+					pr_err("(start:%d, size:%d, offset:%d, range:[%llx, %llx]) invalidate range:[%llx + %llx] after start:%llx\n",
+					       start, size, offset,
+					       expected_start, expected_end,
+					       addr, len,
+					       expected_start);
+					err = -EINVAL;
+				}
+
+				if (addr + len < expected_end) {
+					pr_err("(start:%d, size:%d, offset:%d, range:[%llx, %llx]) invalidate range:[%llx + %llx] before end:%llx\n",
+					       start, size, offset,
+					       expected_start, expected_end,
+					       addr, len,
+					       expected_end);
+					err = -EINVAL;
+				}
+
+				if (err)
+					return err;
+			}
+		}
+	}
+
+	return 0;
+}
+
+int intel_tlb_mock_selftests(void)
+{
+	static const struct i915_subtest tests[] = {
+		SUBTEST(tlb_page_size),
+	};
+
+	return i915_subtests(tests, NULL);
+}
diff --git a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
index 0c22e0fc9059c..3e00cd2b6e53c 100644
--- a/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
+++ b/drivers/gpu/drm/i915/selftests/i915_mock_selftests.h
@@ -21,6 +21,7 @@ selftest(fence, i915_sw_fence_mock_selftests)
 selftest(scatterlist, scatterlist_mock_selftests)
 selftest(syncmap, i915_syncmap_mock_selftests)
 selftest(uncore, intel_uncore_mock_selftests)
+selftest(tlb, intel_tlb_mock_selftests)
 selftest(ring, intel_ring_mock_selftests)
 selftest(engine, intel_engine_cs_mock_selftests)
 selftest(timelines, intel_timeline_mock_selftests)
-- 
2.25.1

