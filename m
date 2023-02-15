Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9116972EA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 01:54:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D15810EA0E;
	Wed, 15 Feb 2023 00:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 772D210E10B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 00:54:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676422461; x=1707958461;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ukaavkjmI/GITsmlNAdNPKGlrfw6r/BKMgzoYCT3VBw=;
 b=IIF3oSlpG1mV06yrjQ4CYsJE0prX7i3DRzUYs85kEFpcO9xnxWGLTY5y
 hS6YmSBIkX/iAb3pAy5+ZKSYcZU6FMRprTv8yAiSIpAxhNqdYT7W57eQm
 GqQ6D/Ch0+cLHONxAFtnzJu+/7yhH7sZCKP0H7j1Y2Ira4m3nlgNy37C/
 Ckax6BbilfIPu2ns6rGBmxdxdFmpIGbSg7S6DAM8SDtn0+ambCHtxIn6B
 LG4z/5Dm0scnnn9MrSsyaJsXJW/hF7Hqoy4ItcJSPLhNdDud5g9eb49LY
 RJAgoNz6NMvQTZMvDgWeZhmSerKqzg224N3HhaRKkNTJFBpe7dkfNET4k w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="417536047"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="417536047"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="914951640"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="914951640"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:20 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 16:54:19 -0800
Message-Id: <20230215005419.2100887-10-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/perf: Add support for OA media
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MTL introduces additional OA units dedicated to media use cases. Add
support for programming these OA units.

UMD specific changes for GPUvis support:
https://patchwork.freedesktop.org/patch/522827/?series=114023
https://patchwork.freedesktop.org/patch/522822/?series=114023
https://patchwork.freedesktop.org/patch/522826/?series=114023
https://patchwork.freedesktop.org/patch/522828/?series=114023
https://patchwork.freedesktop.org/patch/522816/?series=114023
https://patchwork.freedesktop.org/patch/522825/?series=114023

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h          |   2 +
 drivers/gpu/drm/i915/i915_pci.c          |   1 +
 drivers/gpu/drm/i915/i915_perf.c         | 247 ++++++++++++++++++++---
 drivers/gpu/drm/i915/i915_perf_oa_regs.h |  78 +++++++
 drivers/gpu/drm/i915/i915_perf_types.h   |  40 ++++
 drivers/gpu/drm/i915/intel_device_info.h |   1 +
 include/uapi/drm/i915_drm.h              |   4 +
 7 files changed, 347 insertions(+), 26 deletions(-)

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
index 8f7306eaf43c..9fce3ea6a7dc 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -192,6 +192,7 @@
  */
 
 #include <linux/anon_inodes.h>
+#include <linux/nospec.h>
 #include <linux/sizes.h>
 #include <linux/uuid.h>
 
@@ -326,6 +327,13 @@ static const struct i915_oa_format oa_formats[I915_OA_FORMAT_MAX] = {
 	[I915_OA_FORMAT_A32u40_A4u32_B8_C8] = { 5, 256 },
 	[I915_OAR_FORMAT_A32u40_A4u32_B8_C8]    = { 5, 256 },
 	[I915_OA_FORMAT_A24u40_A14u32_B8_C8]    = { 5, 256 },
+	[I915_OAM_FORMAT_MPEC8u64_B8_C8]	= { 1, 192, TYPE_OAM, HDR_64_BIT },
+	[I915_OAM_FORMAT_MPEC8u32_B8_C8]	= { 2, 128, TYPE_OAM, HDR_64_BIT },
+};
+
+/* PERF_GROUP_OAG is unused for oa_base, drop it for mtl */
+static const u32 mtl_oa_base[] = {
+	[PERF_GROUP_OAM_SAMEDIA_0] = 0x393000,
 };
 
 #define SAMPLE_OA_REPORT      (1<<0)
@@ -418,11 +426,17 @@ static void free_oa_config_bo(struct i915_oa_config_bo *oa_bo)
 	kfree(oa_bo);
 }
 
+static inline const
+struct i915_perf_regs *__oa_regs(struct i915_perf_stream *stream)
+{
+	return &stream->oa_buffer.group->regs;
+}
+
 static u32 gen12_oa_hw_tail_read(struct i915_perf_stream *stream)
 {
 	struct intel_uncore *uncore = stream->uncore;
 
-	return intel_uncore_read(uncore, GEN12_OAG_OATAILPTR) &
+	return intel_uncore_read(uncore, __oa_regs(stream)->oa_tail_ptr) &
 	       GEN12_OAG_OATAILPTR_MASK;
 }
 
@@ -886,7 +900,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		i915_reg_t oaheadptr;
 
 		oaheadptr = GRAPHICS_VER(stream->perf->i915) == 12 ?
-			    GEN12_OAG_OAHEADPTR : GEN8_OAHEADPTR;
+			    __oa_regs(stream)->oa_head_ptr :
+			    GEN8_OAHEADPTR;
 
 		spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
 
@@ -939,7 +954,8 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
 		return -EIO;
 
 	oastatus_reg = GRAPHICS_VER(stream->perf->i915) == 12 ?
-		       GEN12_OAG_OASTATUS : GEN8_OASTATUS;
+		       __oa_regs(stream)->oa_status :
+		       GEN8_OASTATUS;
 
 	oastatus = intel_uncore_read(uncore, oastatus_reg);
 
@@ -1643,6 +1659,18 @@ free_noa_wait(struct i915_perf_stream *stream)
 	i915_vma_unpin_and_release(&stream->noa_wait, 0);
 }
 
+/*
+ * intel_engine_lookup_user ensures that most of engine specific checks are
+ * taken care of, however, we can run into a case where the OA unit catering to
+ * the engine passed by the user is disabled for some reason. In such cases,
+ * ensure oa unit corresponding to an engine is functional. If there are no
+ * engines in the group, the unit is disabled.
+ */
+static bool oa_unit_functional(const struct intel_engine_cs *engine)
+{
+	return engine->oa_group && engine->oa_group->num_engines;
+}
+
 static bool engine_supports_oa(const struct intel_engine_cs *engine)
 {
 	enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
@@ -1651,11 +1679,29 @@ static bool engine_supports_oa(const struct intel_engine_cs *engine)
 		return false;
 
 	switch (platform) {
+	case INTEL_METEORLAKE:
+		return engine->class == RENDER_CLASS ||
+		       ((engine->class == VIDEO_DECODE_CLASS ||
+			 engine->class == VIDEO_ENHANCEMENT_CLASS) &&
+			engine->gt->type == GT_MEDIA);
 	default:
 		return engine->class == RENDER_CLASS;
 	}
 }
 
+static bool engine_class_supports_oa_format(struct intel_engine_cs *engine, int type)
+{
+	switch (engine->class) {
+	case RENDER_CLASS:
+		return type == TYPE_OAG;
+	case VIDEO_DECODE_CLASS:
+	case VIDEO_ENHANCEMENT_CLASS:
+		return type == TYPE_OAM;
+	default:
+		return false;
+	}
+}
+
 static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
@@ -1683,7 +1729,7 @@ static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 		drm_WARN_ON(&gt->i915->drm,
 			    intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc));
 
-	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
+	intel_uncore_forcewake_put(stream->uncore, g->fw_domains);
 	intel_engine_pm_put(stream->engine);
 
 	if (stream->ctx)
@@ -1807,8 +1853,8 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 
 	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
 
-	intel_uncore_write(uncore, GEN12_OAG_OASTATUS, 0);
-	intel_uncore_write(uncore, GEN12_OAG_OAHEADPTR,
+	intel_uncore_write(uncore, __oa_regs(stream)->oa_status, 0);
+	intel_uncore_write(uncore, __oa_regs(stream)->oa_head_ptr,
 			   gtt_offset & GEN12_OAG_OAHEADPTR_MASK);
 	stream->oa_buffer.head = gtt_offset;
 
@@ -1820,9 +1866,9 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
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
@@ -2582,7 +2628,8 @@ gen8_modify_self(struct intel_context *ce,
 	return err;
 }
 
-static int gen8_configure_context(struct i915_gem_context *ctx,
+static int gen8_configure_context(struct i915_perf_stream *stream,
+				  struct i915_gem_context *ctx,
 				  struct flex *flex, unsigned int count)
 {
 	struct i915_gem_engines_iter it;
@@ -2592,7 +2639,8 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
 	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
 		GEM_BUG_ON(ce == ce->engine->kernel_context);
 
-		if (!engine_supports_oa(ce->engine))
+		if (!engine_supports_oa(ce->engine) ||
+		    ce->engine->class != stream->engine->class)
 			continue;
 
 		/* Otherwise OA settings will be set upon first use */
@@ -2723,7 +2771,7 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 
 		spin_unlock(&i915->gem.contexts.lock);
 
-		err = gen8_configure_context(ctx, regs, num_regs);
+		err = gen8_configure_context(stream, ctx, regs, num_regs);
 		if (err) {
 			i915_gem_context_put(ctx);
 			return err;
@@ -2743,7 +2791,8 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 	for_each_uabi_engine(engine, i915) {
 		struct intel_context *ce = engine->kernel_context;
 
-		if (!engine_supports_oa(ce->engine))
+		if (!engine_supports_oa(ce->engine) ||
+		    ce->engine->class != stream->engine->class)
 			continue;
 
 		regs[0].value = intel_sseu_make_rpcs(engine->gt, &ce->sseu);
@@ -2768,6 +2817,9 @@ gen12_configure_all_contexts(struct i915_perf_stream *stream,
 		},
 	};
 
+	if (stream->engine->class != RENDER_CLASS)
+		return 0;
+
 	return oa_configure_all_contexts(stream,
 					 regs, ARRAY_SIZE(regs),
 					 active);
@@ -2897,7 +2949,7 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 				   _MASKED_BIT_ENABLE(GEN12_DISABLE_DOP_GATING));
 	}
 
-	intel_uncore_write(uncore, GEN12_OAG_OA_DEBUG,
+	intel_uncore_write(uncore, __oa_regs(stream)->oa_debug,
 			   /* Disable clk ratio reports, like previous Gens. */
 			   _MASKED_BIT_ENABLE(GEN12_OAG_OA_DEBUG_DISABLE_CLK_RATIO_REPORTS |
 					      GEN12_OAG_OA_DEBUG_INCLUDE_CLK_RATIO) |
@@ -2907,7 +2959,7 @@ gen12_enable_metric_set(struct i915_perf_stream *stream,
 			    */
 			   oag_report_ctx_switches(stream));
 
-	intel_uncore_write(uncore, GEN12_OAG_OAGLBCTXCTRL, periodic ?
+	intel_uncore_write(uncore, __oa_regs(stream)->oa_ctx_ctrl, periodic ?
 			   (GEN12_OAG_OAGLBCTXCTRL_COUNTER_RESUME |
 			    GEN12_OAG_OAGLBCTXCTRL_TIMER_ENABLE |
 			    (period_exponent << GEN12_OAG_OAGLBCTXCTRL_TIMER_PERIOD_SHIFT))
@@ -3061,8 +3113,8 @@ static void gen8_oa_enable(struct i915_perf_stream *stream)
 
 static void gen12_oa_enable(struct i915_perf_stream *stream)
 {
-	struct intel_uncore *uncore = stream->uncore;
-	u32 report_format = stream->oa_buffer.format->format;
+	const struct i915_perf_regs *regs;
+	u32 val;
 
 	/*
 	 * If we don't want OA reports from the OA buffer, then we don't even
@@ -3073,9 +3125,11 @@ static void gen12_oa_enable(struct i915_perf_stream *stream)
 
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
@@ -3127,9 +3181,9 @@ static void gen12_oa_disable(struct i915_perf_stream *stream)
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
@@ -3332,6 +3386,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 
 	stream->sample_size = sizeof(struct drm_i915_perf_record_header);
 
+	stream->oa_buffer.group = g;
 	stream->oa_buffer.format = &perf->oa_formats[props->oa_format];
 	if (drm_WARN_ON(&i915->drm, stream->oa_buffer.format->size == 0))
 		return -EINVAL;
@@ -3382,7 +3437,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	 *   references will effectively disable RC6.
 	 */
 	intel_engine_pm_get(stream->engine);
-	intel_uncore_forcewake_get(stream->uncore, FORCEWAKE_ALL);
+	intel_uncore_forcewake_get(stream->uncore, g->fw_domains);
 
 	/*
 	 * Wa_16011777198:dg2: GuC resets render as part of the Wa. This causes
@@ -3443,7 +3498,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 		intel_guc_slpc_unset_gucrc_mode(&gt->uc.guc.slpc);
 
 err_fw:
-	intel_uncore_forcewake_put(stream->uncore, FORCEWAKE_ALL);
+	intel_uncore_forcewake_put(stream->uncore, g->fw_domains);
 	intel_engine_pm_put(stream->engine);
 
 	free_oa_configs(stream);
@@ -4041,6 +4096,7 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	u8 class, instance;
 	bool config_sseu = false;
 	struct drm_i915_gem_context_param_sseu user_sseu;
+	const struct i915_oa_format *f;
 
 	memset(props, 0, sizeof(struct perf_open_properties));
 	props->poll_oa_period = DEFAULT_POLL_PERIOD_NS;
@@ -4206,6 +4262,17 @@ static int read_properties_unlocked(struct i915_perf *perf,
 	if (!engine_supports_oa(props->engine))
 		return -EINVAL;
 
+	if (!oa_unit_functional(props->engine))
+		return -ENODEV;
+
+	i = array_index_nospec(props->oa_format, I915_OA_FORMAT_MAX);
+	f = &perf->oa_formats[i];
+	if (!engine_class_supports_oa_format(props->engine, f->type)) {
+		DRM_DEBUG("Invalid OA format %d for class %d\n",
+			  f->type, props->engine->class);
+		return -EINVAL;
+	}
+
 	if (config_sseu) {
 		ret = get_sseu_config(&props->sseu, props->engine, &user_sseu);
 		if (ret) {
@@ -4385,6 +4452,14 @@ static const struct i915_range gen12_oa_b_counters[] = {
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
@@ -4431,13 +4506,16 @@ static const struct i915_range gen12_oa_mux_regs[] = {
 
 /*
  * Ref: 14010536224:
- * 0x20cc is repurposed on MTL, so use a separate array for MTL.
+ * 0x20cc is repurposed on MTL, so use a separate array for MTL. Also add the
+ * MPES/MPEC registers.
  */
 static const struct i915_range mtl_oa_mux_regs[] = {
 	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
 	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
 	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
 	{ .start = 0x9884, .end = 0x9888 },	/* NOA_WRITE */
+	{ .start = 0x38d100, .end = 0x38d114},	/* VISACTL */
+	{}
 };
 
 static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
@@ -4475,10 +4553,26 @@ static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 	return reg_in_range_table(addr, gen12_oa_b_counters);
 }
 
+static bool xehp_is_valid_oam_b_counter_addr(struct i915_perf *perf, u32 addr)
+{
+	enum intel_platform platform = INTEL_INFO(perf->i915)->platform;
+
+	if (!HAS_OAM(perf->i915))
+		return false;
+
+	switch (platform) {
+	case INTEL_METEORLAKE:
+		return reg_in_range_table(addr, mtl_oam_b_counters);
+	default:
+		return false;
+	}
+}
+
 static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
 {
 	return reg_in_range_table(addr, xehp_oa_b_counters) ||
-		reg_in_range_table(addr, gen12_oa_b_counters);
+		reg_in_range_table(addr, gen12_oa_b_counters) ||
+		xehp_is_valid_oam_b_counter_addr(perf, addr);
 }
 
 static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
@@ -4848,11 +4942,39 @@ static u32 __num_perf_groups_per_gt(struct intel_gt *gt)
 	enum intel_platform platform = INTEL_INFO(gt->i915)->platform;
 
 	switch (platform) {
+	case INTEL_METEORLAKE:
+		return 1;
 	default:
 		return 1;
 	}
 }
 
+static u32 __oam_engine_group(struct intel_engine_cs *engine)
+{
+	enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
+	struct intel_gt *gt = engine->gt;
+	u32 group = PERF_GROUP_INVALID;
+
+	switch (platform) {
+	case INTEL_METEORLAKE:
+		/*
+		 * There's 1 SAMEDIA gt and 1 OAM per SAMEDIA gt. All media slices
+		 * within the gt use the same OAM. All MTL SKUs list 1 SA MEDIA.
+		 */
+		drm_WARN_ON(&engine->i915->drm,
+			    engine->gt->type != GT_MEDIA);
+
+		group = PERF_GROUP_OAM_SAMEDIA_0;
+		break;
+	default:
+		break;
+	}
+
+	drm_WARN_ON(&gt->i915->drm, group >= __num_perf_groups_per_gt(gt));
+
+	return group;
+}
+
 static u32 __oa_engine_group(struct intel_engine_cs *engine)
 {
 	if (!engine_supports_oa(engine))
@@ -4862,11 +4984,58 @@ static u32 __oa_engine_group(struct intel_engine_cs *engine)
 	case RENDER_CLASS:
 		return PERF_GROUP_OAG;
 
+	case VIDEO_DECODE_CLASS:
+	case VIDEO_ENHANCEMENT_CLASS:
+		return __oam_engine_group(engine);
+
 	default:
 		return PERF_GROUP_INVALID;
 	}
 }
 
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
+static void oa_init_regs(struct intel_gt *gt, u32 id)
+{
+	struct i915_perf_group *group = &gt->perf.group[id];
+	struct i915_perf_regs *regs = &group->regs;
+
+	if (id == PERF_GROUP_OAG && gt->type != GT_MEDIA)
+		*regs = __oag_regs();
+	else if (IS_METEORLAKE(gt->i915))
+		*regs = __oam_regs(mtl_oa_base[id]);
+	else
+		drm_WARN(&gt->i915->drm, 1, "Unsupported platform for OA\n");
+}
+
 static void oa_init_groups(struct intel_gt *gt)
 {
 	int i, num_groups = gt->perf.num_perf_groups;
@@ -4883,6 +5052,24 @@ static void oa_init_groups(struct intel_gt *gt)
 		g->oa_unit_id = perf->oa_unit_ids++;
 
 		g->gt = gt;
+		oa_init_regs(gt, i);
+		g->fw_domains = FORCEWAKE_ALL;
+		if (i == PERF_GROUP_OAG) {
+			g->type = TYPE_OAG;
+
+			/*
+			 * Enabling all fw domains for OAG caps the max GT
+			 * frequency to media FF max. This could be less than
+			 * what the user sets through the sysfs and perf
+			 * measurements could be skewed. Since some platforms
+			 * have separate OAM units to measure media perf, do not
+			 * enable media fw domains for OAG.
+			 */
+			if (HAS_OAM(gt->i915))
+				g->fw_domains = FORCEWAKE_GT | FORCEWAKE_RENDER;
+		} else {
+			g->type = TYPE_OAM;
+		}
 	}
 }
 
@@ -4972,9 +5159,15 @@ static void oa_init_supported_formats(struct i915_perf *perf)
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
@@ -5219,8 +5412,10 @@ int i915_perf_ioctl_version(void)
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
index 8ccb0b89d019..5b2c3bab60f8 100644
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
+enum {
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
 
@@ -317,6 +337,11 @@ struct i915_perf_stream {
 		 * @tail: The last verified tail that can be read by userspace.
 		 */
 		u32 tail;
+
+		/**
+		 * @group: The group object for this OA buffer.
+		 */
+		struct i915_perf_group *group;
 	} oa_buffer;
 
 	/**
@@ -431,6 +456,21 @@ struct i915_perf_group {
 	 * @engine_mask: A mask of engines using a single OA buffer.
 	 */
 	intel_engine_mask_t engine_mask;
+
+	/*
+	 * @regs: OA buffer register group for programming the OA unit.
+	 */
+	struct i915_perf_regs regs;
+
+	/*
+	 * @type: Type of OA buffer, OAM, OAG etc.
+	 */
+	int type;
+
+	/*
+	 * @fw_domains: forcewake domains required for this group.
+	 */
+	enum forcewake_domains fw_domains;
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
index b6922b52d85c..70bfa6530dbc 100644
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

