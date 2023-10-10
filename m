Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B10C7C03EB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 20:57:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E32710E3CB;
	Tue, 10 Oct 2023 18:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49F3210E3C6
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 18:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696964247; x=1728500247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gx0fKgQ63mPpcjcyMcdaJg8nHI032rvcEtCeYHVNvnE=;
 b=RGLf1spvlURHdZWmagjgvDq98wYMqPkaRFuDukP99GDBSWAdsLbOTKWC
 +9c27YmZMJ3toG+QrtiB5FvuVwH0LzQYWirTu6cTr1G3Q8ITq9yrsuuBV
 Byn/KbhpsA4oX+gmHQXTDyTUC3MfYbNeJ+nZZlWwhg3OmuWUjiiZM/bbX
 f2Q9ZMbsXesYnsFwySSojcCy0fspy7yX3EeLBcMSVByfcL6AES+BlbP7N
 uiNBeXrgFtLOJbNj9nYPcNGkGS24gjcIXecxo+skmwQq6aKy/aBguIMjG
 WSPAC4Xr7CuIxMLtqXQnzerBGsMtMg0l+tGB/9tQo4jALJmptXfFdZf7t g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="374830091"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="374830091"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1000802301"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="1000802301"
Received: from dut-internal-9dd7.jf.intel.com ([10.165.21.194])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 11:57:26 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 11:46:39 -0700
Message-Id: <20231010184641.2119129-9-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
References: <20231010184641.2119129-1-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 08/10] drm/i915: Define GuC Based TLB
 invalidation routines
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

The GuC firmware has defined the interface for selective TLB
invalidation support. This patch adds routines to interface with GuC.

Signed-off-by: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
CC: Matthew Brost <matthew.brost@intel.com>
---
 .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   2 +
 drivers/gpu/drm/i915/gt/uc/intel_guc.h        |  11 ++
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 105 +++++++++++++++---
 3 files changed, 105 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
index 33f253410d0c8..7bb710fcd9087 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
@@ -189,6 +189,8 @@ enum intel_guc_state_capture_event_status {
 
 enum intel_guc_tlb_invalidation_type {
 	INTEL_GUC_TLB_INVAL_ENGINES = 0x0,
+	INTEL_GUC_TLB_INVAL_PAGE_SELECTIVE = 0x1,
+	INTEL_GUC_TLB_INVAL_PAGE_SELECTIVE_CTX = 0x2,
 	INTEL_GUC_TLB_INVAL_GUC = 0x3,
 };
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 3fbf4b33ce139..369fd2be1c725 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -431,6 +431,17 @@ int intel_guc_allocate_and_map_vma(struct intel_guc *guc, u32 size,
 int intel_guc_self_cfg32(struct intel_guc *guc, u16 key, u32 value);
 int intel_guc_self_cfg64(struct intel_guc *guc, u16 key, u64 value);
 
+int intel_guc_g2g_register(struct intel_guc *guc);
+
+int intel_guc_invalidate_tlb_full(struct intel_guc *guc);
+int intel_guc_invalidate_tlb_page_selective(struct intel_guc *guc,
+					    enum intel_guc_tlb_inval_mode mode,
+					    u64 start, u64 length);
+int intel_guc_invalidate_tlb_page_selective_ctx(struct intel_guc *guc,
+						enum intel_guc_tlb_inval_mode mode,
+						u64 start, u64 length, u32 ctxid);
+int intel_guc_invalidate_tlb_guc(struct intel_guc *guc);
+
 static inline bool intel_guc_is_supported(struct intel_guc *guc)
 {
 	return intel_uc_fw_is_supported(&guc->fw);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index c3c45d3b9e89b..8c31000525b59 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4753,22 +4753,12 @@ static bool intel_gt_is_enabled(const struct intel_gt *gt)
 	return true;
 }
 
-static int guc_send_invalidate_tlb(struct intel_guc *guc,
-				   enum intel_guc_tlb_invalidation_type type)
+static int guc_send_invalidate_tlb(struct intel_guc *guc, u32 *action, u32 size)
 {
 	struct intel_guc_tlb_wait _wq, *wq = &_wq;
 	DEFINE_WAIT_FUNC(wait, woken_wake_function);
 	int err;
 	u32 seqno;
-	u32 action[] = {
-		INTEL_GUC_ACTION_TLB_INVALIDATION,
-		0,
-		REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK, type) |
-			REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
-				       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
-			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
-	};
-	u32 size = ARRAY_SIZE(action);
 
 	init_waitqueue_head(&_wq.wq);
 
@@ -4822,13 +4812,102 @@ static int guc_send_invalidate_tlb(struct intel_guc *guc,
 /* Full TLB invalidation */
 int intel_guc_invalidate_tlb_engines(struct intel_guc *guc)
 {
-	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_ENGINES);
+	u32 action[] = {
+		INTEL_GUC_ACTION_TLB_INVALIDATION,
+		0,
+		REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK,
+			       INTEL_GUC_TLB_INVAL_ENGINES) |
+			REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
+				       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
+			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
+	};
+	u32 size = ARRAY_SIZE(action);
+	return guc_send_invalidate_tlb(guc, action, size);
+}
+
+/*
+ * Selective TLB Invalidation for Address Range:
+ * TLB's in the Address Range is Invalidated across all engines.
+ */
+int intel_guc_invalidate_tlb_page_selective(struct intel_guc *guc,
+					    enum intel_guc_tlb_inval_mode mode,
+					    u64 start, u64 length)
+{
+	u64 vm_total = BIT_ULL(RUNTIME_INFO(guc_to_gt(guc)->i915)->ppgtt_size);
+
+	/*
+	 * For page selective invalidations, this specifies the number of contiguous
+	 * PPGTT pages that needs to be invalidated.
+	 */
+	u32 address_mask = length >= vm_total ? 0 : ilog2(length) - ilog2(SZ_4K);
+	u32 action[] = {
+		INTEL_GUC_ACTION_TLB_INVALIDATION,
+		0,
+		REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK,
+			       INTEL_GUC_TLB_INVAL_PAGE_SELECTIVE) |
+			REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK, mode) |
+			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
+		0,
+		length >= vm_total ? 1 : lower_32_bits(start),
+		upper_32_bits(start),
+		address_mask,
+	};
+
+	GEM_BUG_ON(length < SZ_4K);
+	GEM_BUG_ON(!is_power_of_2(length));
+	GEM_BUG_ON(!IS_ALIGNED(start, length));
+	GEM_BUG_ON(range_overflows(start, length, vm_total));
+
+	return guc_send_invalidate_tlb(guc, action, ARRAY_SIZE(action));
+}
+
+/*
+ * Selective TLB Invalidation for Context:
+ * Invalidates all TLB's for a specific context across all engines.
+ */
+int intel_guc_invalidate_tlb_page_selective_ctx(struct intel_guc *guc,
+                                                enum intel_guc_tlb_inval_mode mode,
+                                                u64 start, u64 length, u32 ctxid)
+{
+        u64 vm_total = BIT_ULL(RUNTIME_INFO(guc_to_gt(guc)->i915)->ppgtt_size);
+        u32 address_mask = (ilog2(length) - ilog2(I915_GTT_PAGE_SIZE_4K));
+        u32 full_range = vm_total == length;
+        u32 action[] = {
+                INTEL_GUC_ACTION_TLB_INVALIDATION,
+                0,
+                REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK,
+			       INTEL_GUC_TLB_INVAL_PAGE_SELECTIVE_CTX) |
+                        REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK, mode) |
+                        INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
+                ctxid,
+                full_range ? full_range : lower_32_bits(start),
+                full_range ? 0 : upper_32_bits(start),
+                full_range ? 0 : address_mask,
+        };
+
+        GEM_BUG_ON(length < SZ_4K);
+        GEM_BUG_ON(!is_power_of_2(length));
+        GEM_BUG_ON(length & GENMASK(ilog2(SZ_16M) - 1, ilog2(SZ_2M) + 1));
+        GEM_BUG_ON(!IS_ALIGNED(start, length));
+        GEM_BUG_ON(range_overflows(start, length, vm_total));
+
+        return guc_send_invalidate_tlb(guc, action, ARRAY_SIZE(action));
 }
 
 /* GuC TLB Invalidation: Invalidate the TLB's of GuC itself. */
 int intel_guc_invalidate_tlb_guc(struct intel_guc *guc)
 {
-	return guc_send_invalidate_tlb(guc, INTEL_GUC_TLB_INVAL_GUC);
+	u32 action[] = {
+		INTEL_GUC_ACTION_TLB_INVALIDATION,
+		0,
+		REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_TYPE_MASK,
+			       INTEL_GUC_TLB_INVAL_GUC) |
+			REG_FIELD_PREP(INTEL_GUC_TLB_INVAL_MODE_MASK,
+				       INTEL_GUC_TLB_INVAL_MODE_HEAVY) |
+			INTEL_GUC_TLB_INVAL_FLUSH_CACHE,
+	};
+	u32 size = ARRAY_SIZE(action);
+	return guc_send_invalidate_tlb(guc, action, size);
 }
 
 int intel_guc_deregister_done_process_msg(struct intel_guc *guc,
-- 
2.25.1

