Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0726AF687
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 21:16:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5366410E65D;
	Tue,  7 Mar 2023 20:16:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C521110E548
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 20:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678220179; x=1709756179;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6d1+X5y8FHG/xPhN6YBPCqetaBdq3NSNmbZ8qhF4r/A=;
 b=Yf5eEOEZzO8Zw6xluS/UjoA0LAnlQDptV7ibwYWghbATqb+6c/GFg7uw
 juvA1ay+X3JDEjrw958tPlxSGsmlF9412lnql3XTN3PTxzX3E8Qc5FZIP
 d7O0L4Wez+YhH8mtHriKgQ4d4MvmvyFUABUSF7jWNxMY2IZyCQ8rDs2K8
 ne3f1IW89Jbr7x+JWOua+Cfig5wbwjk8Qd0ajkXguwf0sUQtjhW7wDOgR
 ztEZIbjP3++TqJr5NURtWZhIroTqah+fwX5UpyaWm6LbTLpvW4PtSb5+P
 KFyQFUnRbQraocPlkImMjZUyryojRVPV7o0d/6YZXUXsioiYzjqluYJVl A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="338283960"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="338283960"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:16:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="679085958"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="679085958"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 12:16:18 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 Mar 2023 12:16:11 -0800
Message-Id: <20230307201611.773103-10-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
References: <20230307201611.773103-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 9/9] drm/i915/perf: Add support for OA media
 units
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

MTL introduces additional OA units dedicated to media use cases. Add
support for programming these OA units by passing the media engine class
and instance parameters.

UMD specific changes for GPUvis support:
https://patchwork.freedesktop.org/patch/522827/?series=114023
https://patchwork.freedesktop.org/patch/522822/?series=114023
https://patchwork.freedesktop.org/patch/522826/?series=114023
https://patchwork.freedesktop.org/patch/522828/?series=114023
https://patchwork.freedesktop.org/patch/522816/?series=114023
https://patchwork.freedesktop.org/patch/522825/?series=114023

v2: (Ashutosh)
- check for IP_VER(12, 70) instead of MTL
- remove PERF_GROUP_OAG comment in mtl_oa_base
- remove oa_buffer.group
- use engine->oa_group->type in engine_supports_oa_format
- remove fw_domains and use FORCEWAKE_ALL
- remove MPES/MPEC comment
- s/xehp/mtl/ in b counter validation function name
- remove engine_supports_oa in __oa_engine_group
- remove warn_ON from __oam_engine_group
- refactor oa_init_groups and oa_init_regs
- assign g->type correctly
- use enum oa_type definition

v3: (Ashutosh)
- Drop oa_unit_functional as engine_supports_oa is enough

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |   2 +
 drivers/gpu/drm/i915/i915_pci.c          |   1 +
 drivers/gpu/drm/i915/i915_perf.c         | 189 ++++++++++++++++++++---
 drivers/gpu/drm/i915/i915_perf_oa_regs.h |  78 ++++++++++
 drivers/gpu/drm/i915/i915_perf_types.h   |  30 ++++
 drivers/gpu/drm/i915/intel_device_info.h |   1 +
 include/uapi/drm/i915_drm.h              |   4 +
 7 files changed, 281 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0393273faa09..f3cacbf41c86 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -856,6 +856,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	(INTEL_INFO(dev_priv)->has_oa_bpc_reporting)
 #define HAS_OA_SLICE_CONTRIB_LIMITS(dev_priv) \
 	(INTEL_INFO(dev_priv)->has_oa_slice_contrib_limits)
+#define HAS_OAM(dev_priv) \
+	(INTEL_INFO(dev_priv)->has_oam)
 
 /*
  * Set this flag, when platform requires 64K GTT page sizes or larger for
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index a8d942b16223..621730b6551c 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1028,6 +1028,7 @@ static const struct intel_device_info adl_p_info = {
 	.has_mslice_steering = 1, \
 	.has_oa_bpc_reporting = 1, \
 	.has_oa_slice_contrib_limits = 1, \
+	.has_oam = 1, \
 	.has_rc6 = 1, \
 	.has_reset_engine = 1, \
 	.has_rps = 1, \
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 1b7059e9b10d..ff3b2083efe3 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -192,6 +192,7 @@
  */
 
 #include <linux/anon_inodes.h>
+#include <linux/nospec.h>
 #include <linux/sizes.h>
 #include <linux/uuid.h>
 
@@ -326,6 +327,12 @@ static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
 	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
 	[I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    = { 5, 256 },
 	[I915_OA_FORMAT_A24u40_A14u32_B8_C8]    = { 5, 256 },
+	[I915_OAM_FORMAT_MPEC8u64_B8_C8]	= { 1, 192, TYPE_OAM, HDR_64_BIT },
+	[I915_OAM_FORMAT_MPEC8u32_B8_C8]	= { 2, 128, TYPE_OAM, HDR_64_BIT },
+};
+
+static const u32 mtl_oa_base[] = {
+	[PERF_GROUP_OAM_SAMEDIA_0] = 0x393000,
 };
 
 #define SAMPLE_OA_REPORT      (1<<0)
@@ -418,11 +425,17 @@ static void free_oa_config_bo(struct i915_oa_config_bo *oa_bo)
 	kfree(oa_bo);
 }
 
+static inline const
+struct i915_perf_regs *__oa_regs(struct i915_perf_stream *stream)
+{
+	return &stream->engine->oa_group->regs;
+}
+
 static u32 gen12_oa_hw_tail_read(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
-	return intel_uncore_read(uncore, GEN12_OAG_OATAILPTR) &
+	return intel_uncore_read(uncore, __oa_regs(stream)->oa_tail_ptr) &
 	       GEN12_OAG_OATAILPTR_MASK;
 }
 
@@ -875,7 +888,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		i915_reg_t oaheadptr;
 
 		oaheadptr = GRAPHICS_VER(stream->perf->i915) == 12 ?
-			    GEN12_OAG_OAHEADPTR : GEN8_OAHEADPTR;
+			    __oa_regs(stream)->oa_head_ptr :
+			    GEN8_OAHEADPTR;
 
 		spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
 
@@ -928,7 +942,8 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
 		return -EIO;
 
 	oastatus_reg = GRAPHICS_VER(stream->perf->i915) == 12 ?
-		       GEN12_OAG_OASTATUS : GEN8_OASTATUS;
+		       __oa_regs(stream)->oa_status :
+		       GEN8_OASTATUS;
 
 	oastatus = intel_uncore_read(uncore, oastatus_reg);
 
@@ -1637,6 +1652,11 @@ static bool engine_supports_oa(const struct intel_engine_cs *engine)
 	return engine->oa_group;
 }
 
+static bool engine_supports_oa_format(struct intel_engine_cs *engine, int type)
+{
+	return engine->oa_group && engine->oa_group->type == type;
+}
+
 static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
@@ -1788,8 +1808,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 
 	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
 
-	intel_uncore_write(uncore, GEN12_OAG_OASTATUS, 0);
-	intel_uncore_write(uncore, GEN12_OAG_OAHEADPTR,
+	intel_uncore_write(uncore, __oa_regs(stream)->oa_status, 0);
+	intel_uncore_write(uncore, __oa_regs(stream)->oa_head_ptr,
 			   gtt_offset & GEN12_OAG_OAHEADPTR_MASK);
 	stream->oa_buffer.head = gtt_offset;
 
@@ -1801,9 +1821,9 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 	 *  to enable proper functionality of the overflow
 	 *  bit."
 	 */
-	intel_uncore_write(uncore, GEN12_OAG_OABUFFER, gtt_offset |
+	intel_uncore_write(uncore, __oa_regs(stream)->oa_buffer, gtt_offset |
 			   OABUFFER_SIZE_16M | GEN8_OABUFFER_MEM_SELECT_GGTT);
-	intel_uncore_write(uncore, GEN12_OAG_OATAILPTR,
+	intel_uncore_write(uncore, __oa_regs(stream)->oa_tail_ptr,
 			   gtt_offset & GEN12_OAG_OATAILPTR_MASK);
 
 	/* Mark that we need updated tail pointers to read from... */
@@ -2563,7 +2583,8 @@ gen8_modify_self(struct intel_context *ce,
 	return err;
 }
 
-static int gen8_configure_context(struct i915_gem_context *ctx,
+static int gen8_configure_context(struct i915_perf_stream *stream,
+				  struct i915_gem_context *ctx,
 				  struct flex *flex, unsigned int count)
 {
 	struct i915_gem_engines_iter it;
@@ -2573,7 +2594,8 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
 	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
 		GEM_BUG_ON(ce == ce->engine->kernel_context);
 
-		if (!engine_supports_oa(ce->engine))
+		if (!engine_supports_oa(ce->engine) ||
+		    ce->engine->class != stream->engine->class)
 			continue;
 
 		/* Otherwise OA settings will be set upon first use */
@@ -2704,7 +2726,7 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 
 		spin_unlock(&i915->gem.contexts.lock);
 
-		err = gen8_configure_context(ctx, regs, num_regs);
+		err = gen8_configure_context(stream, ctx, regs, num_regs);
 		if (err) {
 			i915_gem_context_put(ctx);
 			return err;
@@ -2724,7 +2746,8 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 	for_each_uabi_engine(engine, i915) {
 		struct intel_context *ce = engine->kernel_context;
 
-		if (!engine_supports_oa(ce->engine))
+		if (!engine_supports_oa(ce->engine) ||
+		    ce->engine->class != stream->engine->class)
 			continue;
 
 		regs[0].value = intel_sseu_make_rpcs(engine->gt, &ce->sseu);
@@ -2749,6 +2772,9 @@ gen12_configure_all_contexts(struct i915_perf_stream *stream,
 		},
 	};
 
+	if (stream->engine->class != RENDER_CLASS)
+		return 0;
+
 	return oa_configure_all_contexts(stream,
 					 regs, ARRAY_SIZE(regs),
 					 active);
@@ -2878,7 +2904,7 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 				   _MASKED_BIT_ENABLE(GEN12_DISABLE_DOP_GATING));
 	}
 
-	intel_uncore_write(uncore, GEN12_OAG_OA_DEBUG,
+	intel_uncore_write(uncore, __oa_regs(stream)->oa_debug,
 			   /* Disable clk ratio reports, like previous Gens. */
 			   _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
 					      GEN12_OAG_OA_DEBUG_INCLUDE_CLK_RATIO) |
@@ -2888,7 +2914,7 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 			    */
 			   oag_report_ctx_switches(stream));
 
-	intel_uncore_write(uncore, GEN12_OAG_OAGLBCTXCTRL, periodic ?
+	intel_uncore_write(uncore, __oa_regs(stream)->oa_ctx_ctrl, periodic ?
 			   (GEN12_OAG_OAGLBCTXCTRL_COUNTER_RESUME |
 			    GEN12_OAG_OAGLBCTXCTRL_TIMER_ENABLE |
 			    (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
@@ -3042,8 +3068,8 @@ static void gen8_oa_enable(struct i915_perf_stream *stream)
 
 static void gen12_oa_enable(struct i915_perf_stream *stream)
 {
-	struct intel_uncore *uncore = stream->uncore;
-	u32 report_format = stream->oa_buffer.format->format;
+	const struct i915_perf_regs *regs;
+	u32 val;
 
 	/*
 	 * If we don't want OA reports from the OA buffer, then we don't even
@@ -3054,9 +3080,11 @@ static void gen12_oa_enable(struct i915_perf_stream *stream)
 
 	gen12_init_oa_buffer(stream);
 
-	intel_uncore_write(uncore, GEN12_OAG_OACONTROL,
-			   (report_format << GEN12_OAG_OACONTROL_OA_COUNTER_FORMAT_SHIFT) |
-			   GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE);
+	regs = __oa_regs(stream);
+	val = (stream->oa_buffer.format->format << regs->oa_ctrl_counter_format_shift) |
+	      GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE;
+
+	intel_uncore_write(stream->uncore, regs->oa_ctrl, val);
 }
 
 /**
@@ -3108,9 +3136,9 @@ static void gen12_oa_disable(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
-	intel_uncore_write(uncore, GEN12_OAG_OACONTROL, 0);
+	intel_uncore_write(uncore, __oa_regs(stream)->oa_ctrl, 0);
 	if (intel_wait_for_register(uncore,
-				    GEN12_OAG_OACONTROL,
+				    __oa_regs(stream)->oa_ctrl,
 				    GEN12_OAG_OACONTROL_OA_COUNTER_ENABLE, 0,
 				    50))
 		drm_err(&stream->perf->i915->drm,
@@ -4011,6 +4039,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 				    struct perf_open_properties *props)
 {
 	struct drm_i915_gem_context_param_sseu user_sseu;
+	const struct i915_oa_format *f;
 	u64 __user *uprop = uprops;
 	bool config_sseu = false;
 	u8 class, instance;
@@ -4185,6 +4214,14 @@ static int read_properties_unlocked(struct i915_perf *perf,
 		return -EINVAL;
 	}
 
+	i = array_index_nospec(props->oa_format, I915_OA_FORMAT_MAX);
+	f = &perf->oa_formats[i];
+	if (!engine_supports_oa_format(props->engine, f->type)) {
+		DRM_DEBUG("Invalid OA format %d for class %d\n",
+			  f->type, props->engine->class);
+		return -EINVAL;
+	}
+
 	if (config_sseu) {
 		ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
 		if (ret) {
@@ -4365,6 +4402,14 @@ static const struct i915_range gen12_oa_b_counters[] = {
 	{}
 };
 
+static const struct i915_range mtl_oam_b_counters[] = {
+	{ .start = 0x393000, .end = 0x39301c },	/* GEN12_OAM_STARTTRIG1[1-8] */
+	{ .start = 0x393020, .end = 0x39303c },	/* GEN12_OAM_REPORTTRIG1[1-8] */
+	{ .start = 0x393040, .end = 0x39307c },	/* GEN12_OAM_CEC[0-7][0-1] */
+	{ .start = 0x393200, .end = 0x39323C },	/* MPES[0-7] */
+	{}
+};
+
 static const struct i915_range xehp_oa_b_counters[] = {
 	{ .start = 0xdc48, .end = 0xdc48 },	/* OAA_ENABLE_REG */
 	{ .start = 0xdd00, .end = 0xdd48 },	/* OAG_LCE0_0 - OAA_LENABLE_REG */
@@ -4418,6 +4463,8 @@ static const struct i915_range mtl_oa_mux_regs[] = {
 	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
 	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
 	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
+	{ .start = 0x38d100, .end = 0x38d114},	/* VISACTL */
+	{}
 };
 
 static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
@@ -4455,10 +4502,20 @@ static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 	return reg_in_range_table(addr, gen12_oa_b_counters);
 }
 
+static bool mtl_is_valid_oam_b_counter_addr(struct i915_perf *perf, u32 addr)
+{
+	if (HAS_OAM(perf->i915) &&
+	    GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
+		return reg_in_range_table(addr, mtl_oam_b_counters);
+
+	return false;
+}
+
 static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
 	return reg_in_range_table(addr, xehp_oa_b_counters) ||
-		reg_in_range_table(addr, gen12_oa_b_counters);
+		reg_in_range_table(addr, gen12_oa_b_counters) ||
+		mtl_is_valid_oam_b_counter_addr(perf, addr);
 }
 
 static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
@@ -4828,12 +4885,86 @@ static u32 num_perf_groups_per_gt(struct intel_gt *gt)
 	return 1;
 }
 
+static u32 __oam_engine_group(struct intel_engine_cs *engine)
+{
+	if (GRAPHICS_VER_FULL(engine->i915) >= IP_VER(12, 70)) {
+		/*
+		 * There's 1 SAMEDIA gt and 1 OAM per SAMEDIA gt. All media slices
+		 * within the gt use the same OAM. All MTL SKUs list 1 SA MEDIA.
+		 */
+		drm_WARN_ON(&engine->i915->drm,
+			    engine->gt->type != GT_MEDIA);
+
+		return PERF_GROUP_OAM_SAMEDIA_0;
+	}
+
+	return PERF_GROUP_INVALID;
+}
+
 static u32 __oa_engine_group(struct intel_engine_cs *engine)
 {
-	if (engine->class == RENDER_CLASS)
+	switch (engine->class) {
+	case RENDER_CLASS:
 		return PERF_GROUP_OAG;
-	else
+
+	case VIDEO_DECODE_CLASS:
+	case VIDEO_ENHANCEMENT_CLASS:
+		return __oam_engine_group(engine);
+
+	default:
 		return PERF_GROUP_INVALID;
+	}
+}
+
+static struct i915_perf_regs __oam_regs(u32 base)
+{
+	return (struct i915_perf_regs) {
+		base,
+		GEN12_OAM_HEAD_POINTER(base),
+		GEN12_OAM_TAIL_POINTER(base),
+		GEN12_OAM_BUFFER(base),
+		GEN12_OAM_CONTEXT_CONTROL(base),
+		GEN12_OAM_CONTROL(base),
+		GEN12_OAM_DEBUG(base),
+		GEN12_OAM_STATUS(base),
+		GEN12_OAM_CONTROL_COUNTER_FORMAT_SHIFT,
+	};
+}
+
+static struct i915_perf_regs __oag_regs(void)
+{
+	return (struct i915_perf_regs) {
+		0,
+		GEN12_OAG_OAHEADPTR,
+		GEN12_OAG_OATAILPTR,
+		GEN12_OAG_OABUFFER,
+		GEN12_OAG_OAGLBCTXCTRL,
+		GEN12_OAG_OACONTROL,
+		GEN12_OAG_OA_DEBUG,
+		GEN12_OAG_OASTATUS,
+		GEN12_OAG_OACONTROL_OA_COUNTER_FORMAT_SHIFT,
+	};
+}
+
+static void oa_init_groups(struct intel_gt *gt)
+{
+	int i, num_groups = gt->perf.num_perf_groups;
+
+	for (i = 0; i < num_groups; i++) {
+		struct i915_perf_group *g = &gt->perf.group[i];
+
+		/* Fused off engines can result in a group with num_engines == 0 */
+		if (g->num_engines == 0)
+			continue;
+
+		if (i == PERF_GROUP_OAG && gt->type != GT_MEDIA) {
+			g->regs = __oag_regs();
+			g->type = TYPE_OAG;
+		} else if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70)) {
+			g->regs = __oam_regs(mtl_oa_base[i]);
+			g->type = TYPE_OAM;
+		}
+	}
 }
 
 static int oa_init_gt(struct intel_gt *gt)
@@ -4860,6 +4991,8 @@ static int oa_init_gt(struct intel_gt *gt)
 	gt->perf.num_perf_groups = num_groups;
 	gt->perf.group = g;
 
+	oa_init_groups(gt);
+
 	return 0;
 }
 
@@ -4917,9 +5050,15 @@ static void oa_init_supported_formats(struct i915_perf *perf)
 		break;
 
 	case INTEL_DG2:
+		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
+		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
+		break;
+
 	case INTEL_METEORLAKE:
 		oa_format_add(perf, I915_OAR_FORMAT_A32u40_A4u32_B8_C8);
 		oa_format_add(perf, I915_OA_FORMAT_A24u40_A14u32_B8_C8);
+		oa_format_add(perf, I915_OAM_FORMAT_MPEC8u64_B8_C8);
+		oa_format_add(perf, I915_OAM_FORMAT_MPEC8u32_B8_C8);
 		break;
 
 	default:
@@ -5164,8 +5303,10 @@ int i915_perf_ioctl_version(void)
 	 *
 	 * 6: Add DRM_I915_PERF_PROP_OA_ENGINE_CLASS and
 	 *    DRM_I915_PERF_PROP_OA_ENGINE_INSTANCE
+	 *
+	 * 7: Add support for video decode and enhancement classes.
 	 */
-	return 6;
+	return 7;
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
index 381d94101610..ba103875e19f 100644
--- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
+++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
@@ -138,4 +138,82 @@
 #define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
 #define   GEN12_SQCNT1_OABPC			REG_BIT(29)
 
+/* Gen12 OAM unit */
+#define GEN12_OAM_HEAD_POINTER_OFFSET   (0x1a0)
+#define  GEN12_OAM_HEAD_POINTER_MASK    0xffffffc0
+
+#define GEN12_OAM_TAIL_POINTER_OFFSET   (0x1a4)
+#define  GEN12_OAM_TAIL_POINTER_MASK    0xffffffc0
+
+#define GEN12_OAM_BUFFER_OFFSET         (0x1a8)
+#define  GEN12_OAM_BUFFER_SIZE_MASK     (0x7)
+#define  GEN12_OAM_BUFFER_SIZE_SHIFT    (3)
+#define  GEN12_OAM_BUFFER_MEMORY_SELECT REG_BIT(0) /* 0: PPGTT, 1: GGTT */
+
+#define GEN12_OAM_CONTEXT_CONTROL_OFFSET              (0x1bc)
+#define  GEN12_OAM_CONTEXT_CONTROL_TIMER_PERIOD_SHIFT 2
+#define  GEN12_OAM_CONTEXT_CONTROL_TIMER_ENABLE       REG_BIT(1)
+#define  GEN12_OAM_CONTEXT_CONTROL_COUNTER_RESUME     REG_BIT(0)
+
+#define GEN12_OAM_CONTROL_OFFSET                (0x194)
+#define  GEN12_OAM_CONTROL_COUNTER_FORMAT_SHIFT 1
+#define  GEN12_OAM_CONTROL_COUNTER_ENABLE       REG_BIT(0)
+
+#define GEN12_OAM_DEBUG_OFFSET                      (0x198)
+#define  GEN12_OAM_DEBUG_BUFFER_SIZE_SELECT         REG_BIT(12)
+#define  GEN12_OAM_DEBUG_INCLUDE_CLK_RATIO          REG_BIT(6)
+#define  GEN12_OAM_DEBUG_DISABLE_CLK_RATIO_REPORTS  REG_BIT(5)
+#define  GEN12_OAM_DEBUG_DISABLE_GO_1_0_REPORTS     REG_BIT(2)
+#define  GEN12_OAM_DEBUG_DISABLE_CTX_SWITCH_REPORTS REG_BIT(1)
+
+#define GEN12_OAM_STATUS_OFFSET            (0x19c)
+#define  GEN12_OAM_STATUS_COUNTER_OVERFLOW REG_BIT(2)
+#define  GEN12_OAM_STATUS_BUFFER_OVERFLOW  REG_BIT(1)
+#define  GEN12_OAM_STATUS_REPORT_LOST      REG_BIT(0)
+
+#define GEN12_OAM_MMIO_TRG_OFFSET	(0x1d0)
+
+#define GEN12_OAM_MMIO_TRG(base) \
+	_MMIO((base) + GEN12_OAM_MMIO_TRG_OFFSET)
+
+#define GEN12_OAM_HEAD_POINTER(base) \
+	_MMIO((base) + GEN12_OAM_HEAD_POINTER_OFFSET)
+#define GEN12_OAM_TAIL_POINTER(base) \
+	_MMIO((base) + GEN12_OAM_TAIL_POINTER_OFFSET)
+#define GEN12_OAM_BUFFER(base) \
+	_MMIO((base) + GEN12_OAM_BUFFER_OFFSET)
+#define GEN12_OAM_CONTEXT_CONTROL(base) \
+	_MMIO((base) + GEN12_OAM_CONTEXT_CONTROL_OFFSET)
+#define GEN12_OAM_CONTROL(base) \
+	_MMIO((base) + GEN12_OAM_CONTROL_OFFSET)
+#define GEN12_OAM_DEBUG(base) \
+	_MMIO((base) + GEN12_OAM_DEBUG_OFFSET)
+#define GEN12_OAM_STATUS(base) \
+	_MMIO((base) + GEN12_OAM_STATUS_OFFSET)
+
+#define GEN12_OAM_CEC0_0_OFFSET		(0x40)
+#define GEN12_OAM_CEC7_1_OFFSET		(0x7c)
+#define GEN12_OAM_CEC0_0(base) \
+	_MMIO((base) + GEN12_OAM_CEC0_0_OFFSET)
+#define GEN12_OAM_CEC7_1(base) \
+	_MMIO((base) + GEN12_OAM_CEC7_1_OFFSET)
+
+#define GEN12_OAM_STARTTRIG1_OFFSET	(0x00)
+#define GEN12_OAM_STARTTRIG8_OFFSET	(0x1c)
+#define GEN12_OAM_STARTTRIG1(base) \
+	_MMIO((base) + GEN12_OAM_STARTTRIG1_OFFSET)
+#define GEN12_OAM_STARTTRIG8(base) \
+	_MMIO((base) + GEN12_OAM_STARTTRIG8_OFFSET)
+
+#define GEN12_OAM_REPORTTRIG1_OFFSET	(0x20)
+#define GEN12_OAM_REPORTTRIG8_OFFSET	(0x3c)
+#define GEN12_OAM_REPORTTRIG1(base) \
+	_MMIO((base) + GEN12_OAM_REPORTTRIG1_OFFSET)
+#define GEN12_OAM_REPORTTRIG8(base) \
+	_MMIO((base) + GEN12_OAM_REPORTTRIG8_OFFSET)
+
+#define GEN12_OAM_PERF_COUNTER_B0_OFFSET	(0x84)
+#define GEN12_OAM_PERF_COUNTER_B(base, idx) \
+	_MMIO((base) + GEN12_OAM_PERF_COUNTER_B0_OFFSET + 4 * (idx))
+
 #endif /* __INTEL_PERF_OA_REGS__ */
diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
index 0342134a0012..517b296128a9 100644
--- a/drivers/gpu/drm/i915/i915_perf_types.h
+++ b/drivers/gpu/drm/i915/i915_perf_types.h
@@ -20,6 +20,7 @@
 #include "gt/intel_engine_types.h"
 #include "gt/intel_sseu.h"
 #include "i915_reg_defs.h"
+#include "intel_uncore.h"
 #include "intel_wakeref.h"
 
 struct drm_i915_private;
@@ -33,6 +34,7 @@ struct intel_engine_cs;
 
 enum {
 	PERF_GROUP_OAG = 0,
+	PERF_GROUP_OAM_SAMEDIA_0 = 0,
 
 	PERF_GROUP_MAX,
 	PERF_GROUP_INVALID = U32_MAX,
@@ -43,9 +45,27 @@ enum report_header {
 	HDR_64_BIT,
 };
 
+struct i915_perf_regs {
+	u32 base;
+	i915_reg_t oa_head_ptr;
+	i915_reg_t oa_tail_ptr;
+	i915_reg_t oa_buffer;
+	i915_reg_t oa_ctx_ctrl;
+	i915_reg_t oa_ctrl;
+	i915_reg_t oa_debug;
+	i915_reg_t oa_status;
+	u32 oa_ctrl_counter_format_shift;
+};
+
+enum oa_type {
+	TYPE_OAG,
+	TYPE_OAM,
+};
+
 struct i915_oa_format {
 	u32 format;
 	int size;
+	int type;
 	enum report_header header;
 };
 
@@ -416,6 +436,16 @@ struct i915_perf_group {
 	 * @num_engines: The number of engines using this OA unit.
 	 */
 	u32 num_engines;
+
+	/*
+	 * @regs: OA buffer register group for programming the OA unit.
+	 */
+	struct i915_perf_regs regs;
+
+	/*
+	 * @type: Type of OA unit - OAM, OAG etc.
+	 */
+	enum oa_type type;
 };
 
 struct i915_perf_gt {
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 80bda653d61b..45e218327f44 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -166,6 +166,7 @@ enum intel_ppgtt_type {
 	func(has_mslice_steering); \
 	func(has_oa_bpc_reporting); \
 	func(has_oa_slice_contrib_limits); \
+	func(has_oam); \
 	func(has_one_eu_per_fuse_bit); \
 	func(has_pxp); \
 	func(has_rc6); \
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 250ad04ea00a..e0f736deb4c0 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -2676,6 +2676,10 @@ enum drm_i915_oa_format {
 	I915_OAR_FORMAT_A32u40_A4u32_B8_C8,
 	I915_OA_FORMAT_A24u40_A14u32_B8_C8,
 
+	/* MTL OAM */
+	I915_OAM_FORMAT_MPEC8u64_B8_C8,
+	I915_OAM_FORMAT_MPEC8u32_B8_C8,
+
 	I915_OA_FORMAT_MAX	    /* non-ABI */
 };
 
-- 
2.36.1

