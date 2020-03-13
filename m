Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B47451845DD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 12:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D2216EBC5;
	Fri, 13 Mar 2020 11:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17CB76EBCD
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 11:23:26 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 04:23:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,548,1574150400"; d="scan'208";a="237191859"
Received: from unknown (HELO chromeserver.iind.intel.com) ([10.223.246.82])
 by orsmga008.jf.intel.com with ESMTP; 13 Mar 2020 04:23:23 -0700
From: srinivasan.s@intel.com
To: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk,
 tvrtko.ursulin@intel.com
Date: Fri, 13 Mar 2020 16:42:58 +0530
Message-Id: <1584097979-158957-3-git-send-email-srinivasan.s@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
References: <1584097979-158957-1-git-send-email-srinivasan.s@intel.com>
Subject: [Intel-gfx] [PATCH v7 2/3] drm/i915: set optimum eu/slice/sub-slice
 configuration based on load type
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Srinivasan S <srinivasan.s@intel.com>

This patch will select optimum eu/slice/sub-slice configuration based on
type of load (low, medium, high) as input.
Based on our readings and experiments we have predefined set of optimum
configuration for each platform(CHT, KBL).
i915_gem_context_set_load_type will select optimum configuration from
pre-defined optimum configuration table(opt_config).

It also introduce flag update_render_config which can set by any
governor.

v2:
 * Move static optimum_config to device init time.
 * Rename function to appropriate name, fix data types and patch
 * ordering.
 * Rename prev_load_type to pending_load_type. (Tvrtko Ursulin)

v3:
 * Add safe guard check in i915_gem_context_set_load_type.
 * Rename struct from optimum_config to i915_sseu_optimum_config to
   avoid namespace clashes.
 * Reduces memcpy for space efficient.
 * Rebase.
 * Improved commit message. (Tvrtko Ursulin)

v4:
 * Move optimum config table to file scope. (Tvrtko Ursulin)

v5:
 * Adds optimal table of slice/sub-slice/EU for Gen 9 GT1.
 * Rebase.

v6:
 * Rebase.
 * Fix warnings.

V7:
 * Added static table of slice/subslice/EU for JSL GEN11-LP.
 * Rebase.

Signed-off-by: Srinivasan S <srinivasan.s@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 19 ++++++
 drivers/gpu/drm/i915/gem/i915_gem_context.h       |  2 +
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 32 ++++++++++
 drivers/gpu/drm/i915/gt/intel_lrc.c               | 41 ++++++++++++-
 drivers/gpu/drm/i915/i915_drv.h                   |  4 ++
 drivers/gpu/drm/i915/intel_device_info.c          | 74 ++++++++++++++++++++++-
 6 files changed, 167 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index d0ff999429ff..86f91aa1b688 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -881,9 +881,28 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
 	trace_i915_context_create(ctx);
 	atomic_set(&ctx->req_cnt, 0);
 
+	ctx->slice_cnt = hweight8(RUNTIME_INFO(i915)->sseu.slice_mask);
+	ctx->subslice_cnt = hweight8(RUNTIME_INFO(i915)->sseu.subslice_mask[0]);
+	ctx->eu_cnt = RUNTIME_INFO(i915)->sseu.eu_per_subslice;
+
 	return ctx;
 }
 
+void i915_gem_context_set_load_type(struct i915_gem_context *ctx,
+				enum gem_load_type type)
+{
+	struct drm_i915_private *dev_priv = ctx->i915;
+
+	if (GEM_WARN_ON(type > LOAD_TYPE_LAST))
+		return;
+
+	/* Call opt_config to get correct configuration for eu,slice,subslice */
+	ctx->slice_cnt = dev_priv->opt_config[type].slice;
+	ctx->subslice_cnt = dev_priv->opt_config[type].subslice;
+	ctx->eu_cnt = dev_priv->opt_config[type].eu;
+	ctx->pending_load_type = type;
+}
+
 static void init_contexts(struct i915_gem_contexts *gc)
 {
 	spin_lock_init(&gc->lock);
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index 57b7ae2893e1..70b75dc0cf98 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -133,6 +133,8 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 				    struct drm_file *file_priv);
 int i915_gem_context_reset_stats_ioctl(struct drm_device *dev, void *data,
 				       struct drm_file *file);
+void i915_gem_context_set_load_type(struct i915_gem_context *ctx,
+				enum gem_load_type type);
 
 static inline struct i915_gem_context *
 i915_gem_context_get(struct i915_gem_context *ctx)
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index e26e94a0ab07..1c7fcf584d4e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -46,6 +46,19 @@ struct i915_gem_engines_iter {
 	const struct i915_gem_engines *engines;
 };
 
+enum gem_load_type {
+	LOAD_TYPE_LOW,
+	LOAD_TYPE_MEDIUM,
+	LOAD_TYPE_HIGH,
+	LOAD_TYPE_LAST
+};
+
+struct i915_sseu_optimum_config {
+	u8 slice;
+	u8 subslice;
+	u8 eu;
+};
+
 /**
  * struct i915_gem_context - client state
  *
@@ -177,6 +190,25 @@ struct i915_gem_context {
 	 */
 	atomic_t req_cnt;
 
+	/** slice_cnt: used to set the # of slices to be enabled. */
+	u8 slice_cnt;
+
+	/** subslice_cnt: used to set the # of subslices to be enabled. */
+	u8 subslice_cnt;
+
+	/** eu_cnt: used to set the # of eu to be enabled. */
+	u8 eu_cnt;
+
+	/** load_type: The designated load_type (high/medium/low) for a given
+	 *  number of pending commands in the command queue.
+	 */
+	enum gem_load_type load_type;
+
+	/** pending_load_type: The earlier load type that the GPU was configured
+	 *  for (high/medium/low).
+	 */
+	enum gem_load_type pending_load_type;
+
 	/**
 	 * @name: arbitrary name, used for user debug
 	 *
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index c58fc4329944..3b085b4eb4fb 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -2996,6 +2996,34 @@ static void execlists_context_unpin(struct intel_context *ce)
 	i915_gem_object_unpin_map(ce->state->obj);
 }
 
+static u32
+get_context_rpcs_config(struct i915_gem_context *ctx)
+{
+	u32 rpcs = 0;
+	struct drm_i915_private *dev_priv = ctx->i915;
+
+	if (INTEL_GEN(dev_priv) < 8)
+		return 0;
+	if (RUNTIME_INFO(dev_priv)->sseu.has_slice_pg) {
+		rpcs |= GEN8_RPCS_S_CNT_ENABLE;
+		rpcs |= ctx->slice_cnt << GEN8_RPCS_S_CNT_SHIFT;
+		rpcs |= GEN8_RPCS_ENABLE;
+	}
+
+	if (RUNTIME_INFO(dev_priv)->sseu.has_subslice_pg) {
+		rpcs |= GEN8_RPCS_SS_CNT_ENABLE;
+		rpcs |= ctx->subslice_cnt << GEN8_RPCS_SS_CNT_SHIFT;
+		rpcs |= GEN8_RPCS_ENABLE;
+	}
+
+	if (RUNTIME_INFO(dev_priv)->sseu.has_eu_pg) {
+		rpcs |= ctx->eu_cnt << GEN8_RPCS_EU_MIN_SHIFT;
+		rpcs |= ctx->eu_cnt << GEN8_RPCS_EU_MAX_SHIFT;
+		rpcs |= GEN8_RPCS_ENABLE;
+	}
+	return rpcs;
+}
+
 static void
 __execlists_update_reg_state(const struct intel_context *ce,
 			     const struct intel_engine_cs *engine,
@@ -3014,8 +3042,14 @@ __execlists_update_reg_state(const struct intel_context *ce,
 
 	/* RPCS */
 	if (engine->class == RENDER_CLASS) {
-		regs[CTX_R_PWR_CLK_STATE] =
-			intel_sseu_make_rpcs(engine->i915, &ce->sseu);
+		if (engine->i915->predictive_load_enable) {
+			regs[CTX_R_PWR_CLK_STATE] =
+				get_context_rpcs_config(ce->gem_context);
+
+		} else {
+			regs[CTX_R_PWR_CLK_STATE] =
+				intel_sseu_make_rpcs(engine->i915, &ce->sseu);
+		}
 
 		i915_oa_init_reg_state(ce, engine);
 	}
@@ -3040,6 +3074,9 @@ __execlists_context_pin(struct intel_context *ce,
 	ce->lrc_reg_state = vaddr + LRC_STATE_PN * PAGE_SIZE;
 	__execlists_update_reg_state(ce, engine, ce->ring->tail);
 
+	if (ce->gem_context->load_type != ce->gem_context->pending_load_type)
+		ce->gem_context->load_type = ce->gem_context->pending_load_type;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 19195bde4921..f039f644b44c 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -926,6 +926,10 @@ struct drm_i915_private {
 	/* protects panel power sequencer state */
 	struct mutex pps_mutex;
 
+	/* optimal slice/subslice/EU configuration state */
+	struct i915_sseu_optimum_config *opt_config;
+	int predictive_load_enable;
+
 	unsigned int fsb_freq, mem_freq, is_ddr3;
 	unsigned int skl_preferred_vco_freq;
 	unsigned int max_cdclk_freq;
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d7fe12734db8..0af260bbb02d 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -899,6 +899,41 @@ void intel_device_info_subplatform_init(struct drm_i915_private *i915)
 	RUNTIME_INFO(i915)->platform_mask[pi] |= mask;
 }
 
+/* static table of slice/subslice/EU for Cherryview */
+static const struct i915_sseu_optimum_config chv_config[LOAD_TYPE_LAST] = {
+	{1, 1, 4},	/* Low */
+	{1, 1, 6},	/* Medium */
+	{1, 2, 6}	/* High */
+};
+
+/* static table of slice/subslice/EU for GLK GT1 */
+static const struct i915_sseu_optimum_config glk_gt1_config[LOAD_TYPE_LAST] = {
+	{1, 2, 2},	/* Low */
+	{1, 2, 3},	/* Medium */
+	{1, 2, 6}	/* High */
+};
+
+/* static table of slice/subslice/EU for KBL GT2 */
+static const struct i915_sseu_optimum_config kbl_gt2_config[LOAD_TYPE_LAST] = {
+	{1, 3, 2},	/* Low */
+	{1, 3, 4},	/* Medium */
+	{1, 3, 8}	/* High */
+};
+
+/* static table of slice/subslice/EU for KBL GT3 */
+static const struct i915_sseu_optimum_config kbl_gt3_config[LOAD_TYPE_LAST] = {
+	{2, 3, 4},	/* Low */
+	{2, 3, 6},	/* Medium */
+	{2, 3, 8}	/* High */
+};
+
+/* static table of slice/subslice/EU for JSL GEN11LP */
+static struct i915_sseu_optimum_config jsl_gen11lp_config[LOAD_TYPE_LAST] = {
+	{1, 4, 4},      /* Low */
+	{1, 4, 6},      /* Medium */
+	{1, 4, 8}       /* High */
+};
+
 /**
  * intel_device_info_runtime_init - initialize runtime info
  * @dev_priv: the i915 device
@@ -920,6 +955,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	struct intel_device_info *info = mkwrite_device_info(dev_priv);
 	struct intel_runtime_info *runtime = RUNTIME_INFO(dev_priv);
 	enum pipe pipe;
+	struct i915_sseu_optimum_config *opt_config = NULL;
 
 	if (INTEL_GEN(dev_priv) >= 10) {
 		for_each_pipe(dev_priv, pipe)
@@ -1027,16 +1063,48 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	/* Initialize slice/subslice/EU info */
 	if (IS_HASWELL(dev_priv))
 		hsw_sseu_info_init(dev_priv);
-	else if (IS_CHERRYVIEW(dev_priv))
+	else if (IS_CHERRYVIEW(dev_priv)) {
 		cherryview_sseu_info_init(dev_priv);
+		opt_config = (struct i915_sseu_optimum_config *)chv_config;
+		BUILD_BUG_ON(ARRAY_SIZE(chv_config) != LOAD_TYPE_LAST);
+	}
 	else if (IS_BROADWELL(dev_priv))
 		bdw_sseu_info_init(dev_priv);
-	else if (IS_GEN(dev_priv, 9))
+	else if (IS_GEN(dev_priv, 9)) {
 		gen9_sseu_info_init(dev_priv);
+
+		switch (info->gt) {
+		default: /* fall through */
+		case 1:
+			opt_config = (struct i915_sseu_optimum_config *)
+						glk_gt1_config;
+			BUILD_BUG_ON(ARRAY_SIZE(glk_gt1_config)
+						!= LOAD_TYPE_LAST);
+		break;
+		case 2:
+			opt_config = (struct i915_sseu_optimum_config *)
+						kbl_gt2_config;
+			BUILD_BUG_ON(ARRAY_SIZE(kbl_gt2_config)
+						!= LOAD_TYPE_LAST);
+		break;
+		case 3:
+			opt_config = (struct i915_sseu_optimum_config *)
+						kbl_gt3_config;
+			BUILD_BUG_ON(ARRAY_SIZE(kbl_gt3_config)
+						!= LOAD_TYPE_LAST);
+		break;
+		}
+	}
 	else if (IS_GEN(dev_priv, 10))
 		gen10_sseu_info_init(dev_priv);
-	else if (IS_GEN(dev_priv, 11))
+	else if (IS_GEN(dev_priv, 11)) {
 		gen11_sseu_info_init(dev_priv);
+				opt_config = &jsl_gen11lp_config[0];
+		BUILD_BUG_ON(ARRAY_SIZE(jsl_gen11lp_config)
+					!= LOAD_TYPE_LAST);
+		if (opt_config)
+			dev_priv->opt_config = opt_config;
+	}
 	else if (INTEL_GEN(dev_priv) >= 12)
 		gen12_sseu_info_init(dev_priv);
 
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
