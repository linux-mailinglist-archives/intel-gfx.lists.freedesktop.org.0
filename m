Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0964B63B710
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 02:22:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004AF10E235;
	Tue, 29 Nov 2022 01:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D28110E235
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 01:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669684916; x=1701220916;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=p8E2NqEab5XPoZVNMpYjXyWiyXbNRccob+c9GxNv7rQ=;
 b=jX0Eznp42azLnxdfMpbmh2+3s1Ox89Rh/nR9+b0pvOY/6aCP5VztrfNy
 2veqLcbYypbNmuJ36PDAZRBiMUUTgMoAOQyhOXOgSEeSqvJekJZdg9xxF
 wvOYDUXtfSQqPWAObAW9wDYQMZTSBBaA/fHBHe6qkePFbrnSq4WhWgEhl
 MSBVeGXQ5l5C/4UfyN66/dfkcrcjSrbzRtFtch/lbJCdnY9wPhlGLxbiD
 5mryyQBQkH/tSgFdQv9un+tbafGpNi0SOzmmk1up7NmdoFFCxbTdoSoVr
 3bpF/iuZkoN66DOJZDEZOJMH7qCkLyWvcWErRmCtwk1WvzTjQPhUldKGv A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="315021465"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="315021465"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 17:21:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="732364717"
X-IronPort-AV: E=Sophos;i="5.96,201,1665471600"; d="scan'208";a="732364717"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 17:21:51 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Nov 2022 17:21:46 -0800
Message-Id: <20221129012146.995006-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Add support for 32 bit OAG
 formats in MTL
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As part of OA support for MTL,

- Enable 32 bit OAG formats for MTL.
- 0x200c is repurposed on MTL. Use a separate mux table to verify oa
  configs passed by user.
- Similar to ACM, OA/CS timestamp is mismatched on MTL. Add MTL to the
  WA.
- On MTL, gt->scratch was using stolen lmem. An MI_SRM to stolen lmem is
  hanging. Add a page in noa_wait BO to save/restore GPR registers for
  the noa_wait logic.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_types.h |  6 ---
 drivers/gpu/drm/i915/i915_perf.c         | 49 ++++++++++++++++++------
 2 files changed, 38 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index c1d9cd255e06..13dffe0a3d20 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -296,12 +296,6 @@ enum intel_gt_scratch_field {
 
 	/* 8 bytes */
 	INTEL_GT_SCRATCH_FIELD_COHERENTL3_WA = 256,
-
-	/* 6 * 8 bytes */
-	INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR = 2048,
-
-	/* 4 bytes */
-	INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1 = 2096,
 };
 
 #endif /* __INTEL_GT_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 00e09bb18b13..a735b9540113 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1842,8 +1842,7 @@ static u32 *save_restore_register(struct i915_perf_stream *stream, u32 *cs,
 	for (d = 0; d < dword_count; d++) {
 		*cs++ = cmd;
 		*cs++ = i915_mmio_reg_offset(reg) + 4 * d;
-		*cs++ = intel_gt_scratch_offset(stream->engine->gt,
-						offset) + 4 * d;
+		*cs++ = i915_ggtt_offset(stream->noa_wait) + offset + 4 * d;
 		*cs++ = 0;
 	}
 
@@ -1876,7 +1875,13 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 					  MI_PREDICATE_RESULT_2_ENGINE(base) :
 					  MI_PREDICATE_RESULT_1(RENDER_RING_BASE);
 
-	bo = i915_gem_object_create_internal(i915, 4096);
+	/*
+	 * gt->scratch was being used to save/restore the GPR registers, but on
+	 * MTL the scratch uses stolen lmem. An MI_SRM to this memory region
+	 * causes an engine hang. Instead allocate an additional page here to
+	 * save/restore GPR registers
+	 */
+	bo = i915_gem_object_create_internal(i915, 8192);
 	if (IS_ERR(bo)) {
 		drm_err(&i915->drm,
 			"Failed to allocate NOA wait batchbuffer\n");
@@ -1910,14 +1915,19 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 		goto err_unpin;
 	}
 
+	stream->noa_wait = vma;
+
+#define GPR_SAVE_OFFSET 4096
+#define PREDICATE_SAVE_OFFSET 4160
+
 	/* Save registers. */
 	for (i = 0; i < N_CS_GPR; i++)
 		cs = save_restore_register(
 			stream, cs, true /* save */, CS_GPR(i),
-			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
+			GPR_SAVE_OFFSET + 8 * i, 2);
 	cs = save_restore_register(
 		stream, cs, true /* save */, mi_predicate_result,
-		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
+		PREDICATE_SAVE_OFFSET, 1);
 
 	/* First timestamp snapshot location. */
 	ts0 = cs;
@@ -2033,10 +2043,10 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	for (i = 0; i < N_CS_GPR; i++)
 		cs = save_restore_register(
 			stream, cs, false /* restore */, CS_GPR(i),
-			INTEL_GT_SCRATCH_FIELD_PERF_CS_GPR + 8 * i, 2);
+			GPR_SAVE_OFFSET + 8 * i, 2);
 	cs = save_restore_register(
 		stream, cs, false /* restore */, mi_predicate_result,
-		INTEL_GT_SCRATCH_FIELD_PERF_PREDICATE_RESULT_1, 1);
+		PREDICATE_SAVE_OFFSET, 1);
 
 	/* And return to the ring. */
 	*cs++ = MI_BATCH_BUFFER_END;
@@ -2046,7 +2056,6 @@ static int alloc_noa_wait(struct i915_perf_stream *stream)
 	i915_gem_object_flush_map(bo);
 	__i915_gem_object_release_map(bo);
 
-	stream->noa_wait = vma;
 	goto out_ww;
 
 err_unpin:
@@ -3127,8 +3136,11 @@ get_sseu_config(struct intel_sseu *out_sseu,
  */
 u32 i915_perf_oa_timestamp_frequency(struct drm_i915_private *i915)
 {
-	/* Wa_18013179988:dg2 */
-	if (IS_DG2(i915)) {
+	/*
+	 * Wa_18013179988:dg2
+	 * Wa_14015846243:mtl
+	 */
+	if (IS_DG2(i915) || IS_METEORLAKE(i915)) {
 		intel_wakeref_t wakeref;
 		u32 reg, shift;
 
@@ -4306,6 +4318,17 @@ static const struct i915_range gen12_oa_mux_regs[] = {
 	{}
 };
 
+/*
+ * Ref: 14010536224:
+ * 0x20cc is repurposed on MTL, so use a separate array for MTL.
+ */
+static const struct i915_range mtl_oa_mux_regs[] = {
+	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
+	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
+	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
+	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
+};
+
 static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
 	return reg_in_range_table(addr, gen7_oa_b_counters);
@@ -4349,7 +4372,10 @@ static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 
 static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
 {
-	return reg_in_range_table(addr, gen12_oa_mux_regs);
+	if (IS_METEORLAKE(perf->i915))
+		return reg_in_range_table(addr, mtl_oa_mux_regs);
+	else
+		return reg_in_range_table(addr, gen12_oa_mux_regs);
 }
 
 static u32 mask_reg_value(u32 reg, u32 val)
@@ -4746,6 +4772,7 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 		break;
 
 	case INTEL_DG2:
+	case INTEL_METEORLAKE:
 		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
 		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
 		break;
-- 
2.36.1

