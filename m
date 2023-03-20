Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8EC6C0B5F
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 08:31:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E3D10E20F;
	Mon, 20 Mar 2023 07:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D7EB10E20F
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 07:31:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679297474; x=1710833474;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0r4IIyEwUYjQWs98pixgK3NvY5bZ1EoxrefRRZwm4Rk=;
 b=jmsERhZN4pLBOXTQQ/fR52DTYsTycxPgN0HJnICJmt7fvodUzUNnFfe4
 I6qocHmnTrclWs83uBTs1o2zl9RTEQtjksWqW7bYhFSN8KpgdAh9kH/Wn
 cNBwqGn0uSnjB9mjaiVaKpAI33mcYAtiSz//RVmenXn9wC1noMfLCaRhw
 IGXBgOdsnUYvBEbkJ7j7o/8vPCH5+Mj2Y2G54J8BSe8R7msGFQFDGLM9l
 0clH6w7OUsA2rqUKv69UWVBtdJDto7EAKGpjEQdGYBvmcoiId1Ce4+VOJ
 u66ecPwHnr9/uO1N7LmLfnPaL+HoXj/GUzxF5VWhNrslOf+wPKKUEaTrx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="322436971"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="322436971"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 00:31:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="749968747"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="749968747"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmsmga004.fm.intel.com with ESMTP; 20 Mar 2023 00:31:11 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 09:31:10 +0200
Message-Id: <20230320073110.29969-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/display: Communicate display power
 demands to pcode
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display to communicate display pipe count/CDCLK/voltage configuration
to Pcode for more accurate power accounting for gen >= 12.
Existing sequence is only sending the voltage value to the Pcode.
Adding new sequence with current cdclk associate with voltage value masking.
Adding pcode request when any pipe power well will disable or enable.

v2: - Make intel_cdclk_need_serialize static to make CI compiler happy.
v3: - Removed redundant return(Jani Nikula)
    - Changed intel_cdclk_power_usage_to_pcode_(pre|post)_notification to be
      static and also naming to intel_cdclk_pcode_(pre|post)_notify(Jani Nikula)
    - Changed u8 to be u16 for cdclk parameter in intel_pcode_notify function,
      as according to BSpec it requires 10 bits(Jani Nikula)
    - Replaced dev_priv's with i915's(Jani Nikula)
    - Simplified expression in intel_cdclk_need_serialize(Jani Nikula)
    - Removed redundant kernel-doc and indentation(Jani Nikula)
v4: - Fixed some checkpatch warnings

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 156 +++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h            |  14 ++
 2 files changed, 159 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 084a483f9776..4d4ebe5fbee1 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1932,10 +1932,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 		 * NOOP - No Pcode communication needed for
 		 * Display versions 14 and beyond
 		 */;
-	else if (DISPLAY_VER(dev_priv) >= 11)
+	else if (DISPLAY_VER(dev_priv) >= 11 && !IS_DG2(dev_priv))
 		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
 				      cdclk_config->voltage_level);
-	else
+	if (DISPLAY_VER(dev_priv) < 11) {
 		/*
 		 * The timeout isn't specified, the 2ms used here is based on
 		 * experiment.
@@ -1946,7 +1946,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
 					      HSW_PCODE_DE_WRITE_FREQ_REQ,
 					      cdclk_config->voltage_level,
 					      150, 2);
-
+	}
 	if (ret) {
 		drm_err(&dev_priv->drm,
 			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
@@ -2242,6 +2242,38 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
 		    cdclk_config->voltage_level);
 }
 
+static void intel_pcode_notify(struct drm_i915_private *i915,
+			       u8 voltage_level,
+			       u8 active_pipe_count,
+			       u16 cdclk,
+			       bool cdclk_update_valid,
+			       bool pipe_count_update_valid)
+{
+	int ret;
+	u32 update_mask = 0;
+
+	if (DISPLAY_VER(i915) < 12)
+		return;
+
+	update_mask = DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, active_pipe_count, voltage_level);
+
+	if (cdclk_update_valid)
+		update_mask |= DISPLAY_TO_PCODE_CDCLK_VALID;
+
+	if (pipe_count_update_valid)
+		update_mask |= DISPLAY_TO_PCODE_PIPE_COUNT_VALID;
+
+	ret = skl_pcode_request(&i915->uncore, SKL_PCODE_CDCLK_CONTROL,
+				SKL_CDCLK_PREPARE_FOR_CHANGE |
+				update_mask,
+				SKL_CDCLK_READY_FOR_CHANGE,
+				SKL_CDCLK_READY_FOR_CHANGE, 3);
+	if (ret)
+		drm_err(&i915->drm,
+			"Failed to inform PCU about display config (err %d)\n",
+			ret);
+}
+
 /**
  * intel_set_cdclk - Push the CDCLK configuration to the hardware
  * @dev_priv: i915 device
@@ -2311,6 +2343,88 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	}
 }
 
+static void intel_cdclk_pcode_pre_notify(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_cdclk_state *old_cdclk_state =
+		intel_atomic_get_old_cdclk_state(state);
+	const struct intel_cdclk_state *new_cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
+	unsigned int cdclk = 0; u8 voltage_level, num_active_pipes = 0;
+	bool change_cdclk, update_pipe_count;
+
+	if (!intel_cdclk_changed(&old_cdclk_state->actual,
+				 &new_cdclk_state->actual) &&
+				 new_cdclk_state->active_pipes ==
+				 old_cdclk_state->active_pipes)
+		return;
+
+	/* According to "Sequence Before Frequency Change", voltage level set to 0x3 */
+	voltage_level = DISPLAY_TO_PCODE_VOLTAGE_MAX;
+
+	change_cdclk = new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk;
+	update_pipe_count = hweight8(new_cdclk_state->active_pipes) >
+			    hweight8(old_cdclk_state->active_pipes);
+
+	/*
+	 * According to "Sequence Before Frequency Change",
+	 * if CDCLK is increasing, set bits 25:16 to upcoming CDCLK,
+	 * if CDCLK is decreasing or not changing, set bits 25:16 to current CDCLK,
+	 * which basically means we choose the maximum of old and new CDCLK, if we know both
+	 */
+	if (change_cdclk)
+		cdclk = max(new_cdclk_state->actual.cdclk, old_cdclk_state->actual.cdclk);
+
+	/*
+	 * According to "Sequence For Pipe Count Change",
+	 * if pipe count is increasing, set bits 25:16 to upcoming pipe count
+	 * (power well is enabled)
+	 * no action if it is decreasing, before the change
+	 */
+	if (update_pipe_count)
+		num_active_pipes = hweight8(new_cdclk_state->active_pipes);
+
+	intel_pcode_notify(i915, voltage_level, num_active_pipes, cdclk,
+			   change_cdclk, update_pipe_count);
+}
+
+static void intel_cdclk_pcode_post_notify(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_cdclk_state *new_cdclk_state =
+		intel_atomic_get_new_cdclk_state(state);
+	const struct intel_cdclk_state *old_cdclk_state =
+		intel_atomic_get_old_cdclk_state(state);
+	unsigned int cdclk = 0; u8 voltage_level, num_active_pipes = 0;
+	bool update_cdclk, update_pipe_count;
+
+	/* According to "Sequence After Frequency Change", set voltage to used level */
+	voltage_level = new_cdclk_state->actual.voltage_level;
+
+	update_cdclk = new_cdclk_state->actual.cdclk != old_cdclk_state->actual.cdclk;
+	update_pipe_count = hweight8(new_cdclk_state->active_pipes) <
+			    hweight8(old_cdclk_state->active_pipes);
+
+	/*
+	 * According to "Sequence After Frequency Change",
+	 * set bits 25:16 to current CDCLK
+	 */
+	if (update_cdclk)
+		cdclk = new_cdclk_state->actual.cdclk;
+
+	/*
+	 * According to "Sequence For Pipe Count Change",
+	 * if pipe count is decreasing, set bits 25:16 to current pipe count,
+	 * after the change(power well is disabled)
+	 * no action if it is increasing, after the change
+	 */
+	if (update_pipe_count)
+		num_active_pipes = hweight8(new_cdclk_state->active_pipes);
+
+	intel_pcode_notify(i915, voltage_level, num_active_pipes, cdclk,
+			   update_cdclk, update_pipe_count);
+}
+
 /**
  * intel_set_cdclk_pre_plane_update - Push the CDCLK state to the hardware
  * @state: intel atomic state
@@ -2321,7 +2435,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 void
 intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2332,11 +2446,14 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 				 &new_cdclk_state->actual))
 		return;
 
+	if (DISPLAY_VER(i915) >= 12)
+		intel_cdclk_pcode_pre_notify(state);
+
 	if (pipe == INVALID_PIPE ||
 	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
-		drm_WARN_ON(&dev_priv->drm, !new_cdclk_state->base.changed);
+		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
+		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
 	}
 }
 
@@ -2350,7 +2467,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 void
 intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 {
-	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_cdclk_state *old_cdclk_state =
 		intel_atomic_get_old_cdclk_state(state);
 	const struct intel_cdclk_state *new_cdclk_state =
@@ -2361,11 +2478,14 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 				 &new_cdclk_state->actual))
 		return;
 
+	if (DISPLAY_VER(i915) >= 12)
+		intel_cdclk_pcode_post_notify(state);
+
 	if (pipe != INVALID_PIPE &&
 	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
-		drm_WARN_ON(&dev_priv->drm, !new_cdclk_state->base.changed);
+		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
+		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
 	}
 }
 
@@ -2871,6 +2991,21 @@ int intel_cdclk_init(struct drm_i915_private *dev_priv)
 	return 0;
 }
 
+static bool intel_cdclk_need_serialize(struct drm_i915_private *i915,
+				       const struct intel_cdclk_state *old_cdclk_state,
+				       const struct intel_cdclk_state *new_cdclk_state)
+{
+	bool power_well_cnt_changed = hweight8(old_cdclk_state->active_pipes) !=
+				      hweight8(new_cdclk_state->active_pipes);
+	bool cdclk_changed = intel_cdclk_changed(&old_cdclk_state->actual,
+						 &new_cdclk_state->actual);
+	/*
+	 * We need to poke hw for gen >= 12, because we notify PCode if
+	 * pipe power well count changes.
+	 */
+	return cdclk_changed || (DISPLAY_VER(i915) >= 12 && power_well_cnt_changed);
+}
+
 int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
@@ -2892,8 +3027,7 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	if (intel_cdclk_changed(&old_cdclk_state->actual,
-				&new_cdclk_state->actual)) {
+	if (intel_cdclk_need_serialize(dev_priv, old_cdclk_state, new_cdclk_state)) {
 		/*
 		 * Also serialize commits across all crtcs
 		 * if the actual hw needs to be poked.
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 9db6b3f06a74..fe230e6ff029 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6413,6 +6413,20 @@
 #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
 #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
 #define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
+#define   DISPLAY_TO_PCODE_CDCLK_MAX		0x28D
+#define   DISPLAY_TO_PCODE_VOLTAGE_MASK		REG_GENMASK(1, 0)
+#define	  DISPLAY_TO_PCODE_VOLTAGE_MAX		DISPLAY_TO_PCODE_VOLTAGE_MASK
+#define   DISPLAY_TO_PCODE_CDCLK_VALID		REG_BIT(27)
+#define   DISPLAY_TO_PCODE_PIPE_COUNT_VALID	REG_BIT(31)
+#define   DISPLAY_TO_PCODE_CDCLK_MASK		REG_GENMASK(25, 16)
+#define   DISPLAY_TO_PCODE_PIPE_COUNT_MASK	REG_GENMASK(30, 28)
+#define   DISPLAY_TO_PCODE_CDCLK(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_CDCLK_MASK, (x))
+#define   DISPLAY_TO_PCODE_PIPE_COUNT(x)	REG_FIELD_PREP(DISPLAY_TO_PCODE_PIPE_COUNT_MASK, (x))
+#define   DISPLAY_TO_PCODE_VOLTAGE(x)		REG_FIELD_PREP(DISPLAY_TO_PCODE_VOLTAGE_MASK, (x))
+#define   DISPLAY_TO_PCODE_UPDATE_MASK(cdclk, num_pipes, voltage_level) \
+		((DISPLAY_TO_PCODE_CDCLK(cdclk)) | \
+		(DISPLAY_TO_PCODE_PIPE_COUNT(num_pipes)) | \
+		(DISPLAY_TO_PCODE_VOLTAGE(voltage_level)))
 #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
 #define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
 #define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 0)
-- 
2.37.3

