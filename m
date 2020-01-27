Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5419B14A9C6
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 19:26:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A57806E85D;
	Mon, 27 Jan 2020 18:26:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FCEA6E833
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 18:26:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:26:49 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="246468882"
Received: from scharfhe-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.52.61])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 10:26:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Jan 2020 20:26:08 +0200
Message-Id: <abcb2d44fd4d6e5f995a3520b327f746ae90428a.1580149467.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1580149467.git.jani.nikula@intel.com>
References: <cover.1580149467.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 6/8] drm/i915/dp: use intel_de_*() functions
 for register access
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The implicit "dev_priv" local variable use has been a long-standing pain
point in the register access macros I915_READ(), I915_WRITE(),
POSTING_READ(), I915_READ_FW(), and I915_WRITE_FW().

Replace them with the corresponding new display engine register
accessors intel_de_read(), intel_de_write(), intel_de_posting_read(),
intel_de_read_fw(), and intel_de_write_fw().

No functional changes.

Generated using the following semantic patch:

@@
expression REG, OFFSET;
@@
- I915_READ(REG)
+ intel_de_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- POSTING_READ(REG)
+ intel_de_posting_read(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE(REG, OFFSET)
+ intel_de_write(dev_priv, REG, OFFSET)

@@
expression REG;
@@
- I915_READ_FW(REG)
+ intel_de_read_fw(dev_priv, REG)

@@
expression REG, OFFSET;
@@
- I915_WRITE_FW(REG, OFFSET)
+ intel_de_write_fw(dev_priv, REG, OFFSET)

Acked-by: Chris Wilson <chris@chris-wilson.co.uk>
Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Acked-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 234 ++++++++++++------------
 1 file changed, 119 insertions(+), 115 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index e21bc339cb29..f4dede6253f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -267,7 +267,7 @@ static int cnl_max_source_rate(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
 	enum port port = dig_port->base.port;
 
-	u32 voltage = I915_READ(CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
+	u32 voltage = intel_de_read(dev_priv, CNL_PORT_COMP_DW3) & VOLTAGE_INFO_MASK;
 
 	/* Low voltage SKUs are limited to max of 5.4G */
 	if (voltage == VOLTAGE_INFO_0_85V)
@@ -756,7 +756,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	enum dpio_channel ch = vlv_pipe_to_channel(pipe);
 	u32 DP;
 
-	if (WARN(I915_READ(intel_dp->output_reg) & DP_PORT_EN,
+	if (WARN(intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN,
 		 "skipping pipe %c power sequencer kick due to [ENCODER:%d:%s] being active\n",
 		 pipe_name(pipe), intel_dig_port->base.base.base.id,
 		 intel_dig_port->base.base.name))
@@ -770,7 +770,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	/* Preserve the BIOS-computed detected bit. This is
 	 * supposed to be read-only.
 	 */
-	DP = I915_READ(intel_dp->output_reg) & DP_DETECTED;
+	DP = intel_de_read(dev_priv, intel_dp->output_reg) & DP_DETECTED;
 	DP |= DP_VOLTAGE_0_4 | DP_PRE_EMPHASIS_0;
 	DP |= DP_PORT_WIDTH(1);
 	DP |= DP_LINK_TRAIN_PAT_1;
@@ -780,7 +780,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	else
 		DP |= DP_PIPE_SEL(pipe);
 
-	pll_enabled = I915_READ(DPLL(pipe)) & DPLL_VCO_ENABLE;
+	pll_enabled = intel_de_read(dev_priv, DPLL(pipe)) & DPLL_VCO_ENABLE;
 
 	/*
 	 * The DPLL for the pipe must be enabled for this to work.
@@ -805,14 +805,14 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 	 * to make this power sequencer lock onto the port.
 	 * Otherwise even VDD force bit won't work.
 	 */
-	I915_WRITE(intel_dp->output_reg, DP);
-	POSTING_READ(intel_dp->output_reg);
+	intel_de_write(dev_priv, intel_dp->output_reg, DP);
+	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
-	I915_WRITE(intel_dp->output_reg, DP | DP_PORT_EN);
-	POSTING_READ(intel_dp->output_reg);
+	intel_de_write(dev_priv, intel_dp->output_reg, DP | DP_PORT_EN);
+	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
-	I915_WRITE(intel_dp->output_reg, DP & ~DP_PORT_EN);
-	POSTING_READ(intel_dp->output_reg);
+	intel_de_write(dev_priv, intel_dp->output_reg, DP & ~DP_PORT_EN);
+	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
 	if (!pll_enabled) {
 		vlv_force_pll_off(dev_priv, pipe);
@@ -934,13 +934,13 @@ typedef bool (*vlv_pipe_check)(struct drm_i915_private *dev_priv,
 static bool vlv_pipe_has_pp_on(struct drm_i915_private *dev_priv,
 			       enum pipe pipe)
 {
-	return I915_READ(PP_STATUS(pipe)) & PP_ON;
+	return intel_de_read(dev_priv, PP_STATUS(pipe)) & PP_ON;
 }
 
 static bool vlv_pipe_has_vdd_on(struct drm_i915_private *dev_priv,
 				enum pipe pipe)
 {
-	return I915_READ(PP_CONTROL(pipe)) & EDP_FORCE_VDD;
+	return intel_de_read(dev_priv, PP_CONTROL(pipe)) & EDP_FORCE_VDD;
 }
 
 static bool vlv_pipe_any(struct drm_i915_private *dev_priv,
@@ -957,7 +957,7 @@ vlv_initial_pps_pipe(struct drm_i915_private *dev_priv,
 	enum pipe pipe;
 
 	for (pipe = PIPE_A; pipe <= PIPE_B; pipe++) {
-		u32 port_sel = I915_READ(PP_ON_DELAYS(pipe)) &
+		u32 port_sel = intel_de_read(dev_priv, PP_ON_DELAYS(pipe)) &
 			PANEL_PORT_SELECT_MASK;
 
 		if (port_sel != PANEL_PORT_SELECT_VLV(port))
@@ -1120,12 +1120,13 @@ static int edp_notify_handler(struct notifier_block *this, unsigned long code,
 
 			pp_ctrl_reg = PP_CONTROL(pipe);
 			pp_div_reg  = PP_DIVISOR(pipe);
-			pp_div = I915_READ(pp_div_reg);
+			pp_div = intel_de_read(dev_priv, pp_div_reg);
 			pp_div &= PP_REFERENCE_DIVIDER_MASK;
 
 			/* 0x1F write to PP_DIV_REG sets max cycle delay */
-			I915_WRITE(pp_div_reg, pp_div | 0x1F);
-			I915_WRITE(pp_ctrl_reg, PANEL_UNLOCK_REGS);
+			intel_de_write(dev_priv, pp_div_reg, pp_div | 0x1F);
+			intel_de_write(dev_priv, pp_ctrl_reg,
+				       PANEL_UNLOCK_REGS);
 			msleep(intel_dp->panel_power_cycle_delay);
 		}
 	}
@@ -1143,7 +1144,7 @@ static bool edp_have_panel_power(struct intel_dp *intel_dp)
 	    intel_dp->pps_pipe == INVALID_PIPE)
 		return false;
 
-	return (I915_READ(_pp_stat_reg(intel_dp)) & PP_ON) != 0;
+	return (intel_de_read(dev_priv, _pp_stat_reg(intel_dp)) & PP_ON) != 0;
 }
 
 static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
@@ -1156,7 +1157,7 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
 	    intel_dp->pps_pipe == INVALID_PIPE)
 		return false;
 
-	return I915_READ(_pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
+	return intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)) & EDP_FORCE_VDD;
 }
 
 static void
@@ -1170,8 +1171,8 @@ intel_dp_check_edp(struct intel_dp *intel_dp)
 	if (!edp_have_panel_power(intel_dp) && !edp_have_panel_vdd(intel_dp)) {
 		WARN(1, "eDP powered off while attempting aux channel communication.\n");
 		drm_dbg_kms(&dev_priv->drm, "Status 0x%08x Control 0x%08x\n",
-			    I915_READ(_pp_stat_reg(intel_dp)),
-			    I915_READ(_pp_ctrl_reg(intel_dp)));
+			    intel_de_read(dev_priv, _pp_stat_reg(intel_dp)),
+			    intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)));
 	}
 }
 
@@ -2527,7 +2528,7 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 	/* Preserve the BIOS-computed detected bit. This is
 	 * supposed to be read-only.
 	 */
-	intel_dp->DP = I915_READ(intel_dp->output_reg) & DP_DETECTED;
+	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg) & DP_DETECTED;
 
 	/* Handle DP bits in common between all three register formats */
 	intel_dp->DP |= DP_VOLTAGE_0_4 | DP_PRE_EMPHASIS_0;
@@ -2551,12 +2552,12 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 
 		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;
 
-		trans_dp = I915_READ(TRANS_DP_CTL(crtc->pipe));
+		trans_dp = intel_de_read(dev_priv, TRANS_DP_CTL(crtc->pipe));
 		if (drm_dp_enhanced_frame_cap(intel_dp->dpcd))
 			trans_dp |= TRANS_DP_ENH_FRAMING;
 		else
 			trans_dp &= ~TRANS_DP_ENH_FRAMING;
-		I915_WRITE(TRANS_DP_CTL(crtc->pipe), trans_dp);
+		intel_de_write(dev_priv, TRANS_DP_CTL(crtc->pipe), trans_dp);
 	} else {
 		if (IS_G4X(dev_priv) && pipe_config->limited_color_range)
 			intel_dp->DP |= DP_COLOR_RANGE_16_235;
@@ -2605,15 +2606,15 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 	drm_dbg_kms(&dev_priv->drm,
 		    "mask %08x value %08x status %08x control %08x\n",
 		    mask, value,
-		    I915_READ(pp_stat_reg),
-		    I915_READ(pp_ctrl_reg));
+		    intel_de_read(dev_priv, pp_stat_reg),
+		    intel_de_read(dev_priv, pp_ctrl_reg));
 
 	if (intel_de_wait_for_register(dev_priv, pp_stat_reg,
 				       mask, value, 5000))
 		drm_err(&dev_priv->drm,
 			"Panel status timeout: status %08x control %08x\n",
-			I915_READ(pp_stat_reg),
-			I915_READ(pp_ctrl_reg));
+			intel_de_read(dev_priv, pp_stat_reg),
+			intel_de_read(dev_priv, pp_ctrl_reg));
 
 	drm_dbg_kms(&dev_priv->drm, "Wait complete\n");
 }
@@ -2674,7 +2675,7 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
 
 	lockdep_assert_held(&dev_priv->pps_mutex);
 
-	control = I915_READ(_pp_ctrl_reg(intel_dp));
+	control = intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp));
 	if (WARN_ON(!HAS_DDI(dev_priv) &&
 		    (control & PANEL_UNLOCK_MASK) != PANEL_UNLOCK_REGS)) {
 		control &= ~PANEL_UNLOCK_MASK;
@@ -2723,10 +2724,11 @@ static bool edp_panel_vdd_on(struct intel_dp *intel_dp)
 	pp_stat_reg = _pp_stat_reg(intel_dp);
 	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 
-	I915_WRITE(pp_ctrl_reg, pp);
-	POSTING_READ(pp_ctrl_reg);
+	intel_de_write(dev_priv, pp_ctrl_reg, pp);
+	intel_de_posting_read(dev_priv, pp_ctrl_reg);
 	drm_dbg_kms(&dev_priv->drm, "PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
-		    I915_READ(pp_stat_reg), I915_READ(pp_ctrl_reg));
+		    intel_de_read(dev_priv, pp_stat_reg),
+		    intel_de_read(dev_priv, pp_ctrl_reg));
 	/*
 	 * If the panel wasn't on, delay before accessing aux channel
 	 */
@@ -2789,12 +2791,13 @@ static void edp_panel_vdd_off_sync(struct intel_dp *intel_dp)
 	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 	pp_stat_reg = _pp_stat_reg(intel_dp);
 
-	I915_WRITE(pp_ctrl_reg, pp);
-	POSTING_READ(pp_ctrl_reg);
+	intel_de_write(dev_priv, pp_ctrl_reg, pp);
+	intel_de_posting_read(dev_priv, pp_ctrl_reg);
 
 	/* Make sure sequencer is idle before allowing subsequent activity */
 	drm_dbg_kms(&dev_priv->drm, "PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
-		    I915_READ(pp_stat_reg), I915_READ(pp_ctrl_reg));
+		    intel_de_read(dev_priv, pp_stat_reg),
+		    intel_de_read(dev_priv, pp_ctrl_reg));
 
 	if ((pp & PANEL_POWER_ON) == 0)
 		intel_dp->panel_power_off_time = ktime_get_boottime();
@@ -2883,24 +2886,24 @@ static void edp_panel_on(struct intel_dp *intel_dp)
 	if (IS_GEN(dev_priv, 5)) {
 		/* ILK workaround: disable reset around power sequence */
 		pp &= ~PANEL_POWER_RESET;
-		I915_WRITE(pp_ctrl_reg, pp);
-		POSTING_READ(pp_ctrl_reg);
+		intel_de_write(dev_priv, pp_ctrl_reg, pp);
+		intel_de_posting_read(dev_priv, pp_ctrl_reg);
 	}
 
 	pp |= PANEL_POWER_ON;
 	if (!IS_GEN(dev_priv, 5))
 		pp |= PANEL_POWER_RESET;
 
-	I915_WRITE(pp_ctrl_reg, pp);
-	POSTING_READ(pp_ctrl_reg);
+	intel_de_write(dev_priv, pp_ctrl_reg, pp);
+	intel_de_posting_read(dev_priv, pp_ctrl_reg);
 
 	wait_panel_on(intel_dp);
 	intel_dp->last_power_on = jiffies;
 
 	if (IS_GEN(dev_priv, 5)) {
 		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
-		I915_WRITE(pp_ctrl_reg, pp);
-		POSTING_READ(pp_ctrl_reg);
+		intel_de_write(dev_priv, pp_ctrl_reg, pp);
+		intel_de_posting_read(dev_priv, pp_ctrl_reg);
 	}
 }
 
@@ -2944,8 +2947,8 @@ static void edp_panel_off(struct intel_dp *intel_dp)
 
 	intel_dp->want_panel_vdd = false;
 
-	I915_WRITE(pp_ctrl_reg, pp);
-	POSTING_READ(pp_ctrl_reg);
+	intel_de_write(dev_priv, pp_ctrl_reg, pp);
+	intel_de_posting_read(dev_priv, pp_ctrl_reg);
 
 	wait_panel_off(intel_dp);
 	intel_dp->panel_power_off_time = ktime_get_boottime();
@@ -2986,8 +2989,8 @@ static void _intel_edp_backlight_on(struct intel_dp *intel_dp)
 		pp = ilk_get_pp_control(intel_dp);
 		pp |= EDP_BLC_ENABLE;
 
-		I915_WRITE(pp_ctrl_reg, pp);
-		POSTING_READ(pp_ctrl_reg);
+		intel_de_write(dev_priv, pp_ctrl_reg, pp);
+		intel_de_posting_read(dev_priv, pp_ctrl_reg);
 	}
 }
 
@@ -3022,8 +3025,8 @@ static void _intel_edp_backlight_off(struct intel_dp *intel_dp)
 		pp = ilk_get_pp_control(intel_dp);
 		pp &= ~EDP_BLC_ENABLE;
 
-		I915_WRITE(pp_ctrl_reg, pp);
-		POSTING_READ(pp_ctrl_reg);
+		intel_de_write(dev_priv, pp_ctrl_reg, pp);
+		intel_de_posting_read(dev_priv, pp_ctrl_reg);
 	}
 
 	intel_dp->last_backlight_off = jiffies;
@@ -3074,7 +3077,7 @@ static void assert_dp_port(struct intel_dp *intel_dp, bool state)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	bool cur_state = I915_READ(intel_dp->output_reg) & DP_PORT_EN;
+	bool cur_state = intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN;
 
 	I915_STATE_WARN(cur_state != state,
 			"[ENCODER:%d:%s] state assertion failure (expected %s, current %s)\n",
@@ -3085,7 +3088,7 @@ static void assert_dp_port(struct intel_dp *intel_dp, bool state)
 
 static void assert_edp_pll(struct drm_i915_private *dev_priv, bool state)
 {
-	bool cur_state = I915_READ(DP_A) & DP_PLL_ENABLE;
+	bool cur_state = intel_de_read(dev_priv, DP_A) & DP_PLL_ENABLE;
 
 	I915_STATE_WARN(cur_state != state,
 			"eDP PLL state assertion failure (expected %s, current %s)\n",
@@ -3114,8 +3117,8 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 	else
 		intel_dp->DP |= DP_PLL_FREQ_270MHZ;
 
-	I915_WRITE(DP_A, intel_dp->DP);
-	POSTING_READ(DP_A);
+	intel_de_write(dev_priv, DP_A, intel_dp->DP);
+	intel_de_posting_read(dev_priv, DP_A);
 	udelay(500);
 
 	/*
@@ -3129,8 +3132,8 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 
 	intel_dp->DP |= DP_PLL_ENABLE;
 
-	I915_WRITE(DP_A, intel_dp->DP);
-	POSTING_READ(DP_A);
+	intel_de_write(dev_priv, DP_A, intel_dp->DP);
+	intel_de_posting_read(dev_priv, DP_A);
 	udelay(200);
 }
 
@@ -3148,8 +3151,8 @@ static void ilk_edp_pll_off(struct intel_dp *intel_dp,
 
 	intel_dp->DP &= ~DP_PLL_ENABLE;
 
-	I915_WRITE(DP_A, intel_dp->DP);
-	POSTING_READ(DP_A);
+	intel_de_write(dev_priv, DP_A, intel_dp->DP);
+	intel_de_posting_read(dev_priv, DP_A);
 	udelay(200);
 }
 
@@ -3229,7 +3232,7 @@ static bool cpt_dp_port_selected(struct drm_i915_private *dev_priv,
 	enum pipe p;
 
 	for_each_pipe(dev_priv, p) {
-		u32 val = I915_READ(TRANS_DP_CTL(p));
+		u32 val = intel_de_read(dev_priv, TRANS_DP_CTL(p));
 
 		if ((val & TRANS_DP_PORT_SEL_MASK) == TRANS_DP_PORT_SEL(port)) {
 			*pipe = p;
@@ -3253,7 +3256,7 @@ bool intel_dp_port_enabled(struct drm_i915_private *dev_priv,
 	bool ret;
 	u32 val;
 
-	val = I915_READ(dp_reg);
+	val = intel_de_read(dev_priv, dp_reg);
 
 	ret = val & DP_PORT_EN;
 
@@ -3305,12 +3308,13 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 	else
 		pipe_config->output_types |= BIT(INTEL_OUTPUT_DP);
 
-	tmp = I915_READ(intel_dp->output_reg);
+	tmp = intel_de_read(dev_priv, intel_dp->output_reg);
 
 	pipe_config->has_audio = tmp & DP_AUDIO_OUTPUT_ENABLE && port != PORT_A;
 
 	if (HAS_PCH_CPT(dev_priv) && port != PORT_A) {
-		u32 trans_dp = I915_READ(TRANS_DP_CTL(crtc->pipe));
+		u32 trans_dp = intel_de_read(dev_priv,
+					     TRANS_DP_CTL(crtc->pipe));
 
 		if (trans_dp & TRANS_DP_HSYNC_ACTIVE_HIGH)
 			flags |= DRM_MODE_FLAG_PHSYNC;
@@ -3344,7 +3348,7 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 	intel_dp_get_m_n(crtc, pipe_config);
 
 	if (port == PORT_A) {
-		if ((I915_READ(DP_A) & DP_PLL_FREQ_MASK) == DP_PLL_FREQ_162MHZ)
+		if ((intel_de_read(dev_priv, DP_A) & DP_PLL_FREQ_MASK) == DP_PLL_FREQ_162MHZ)
 			pipe_config->port_clock = 162000;
 		else
 			pipe_config->port_clock = 270000;
@@ -3469,7 +3473,7 @@ _intel_dp_set_link_train(struct intel_dp *intel_dp,
 			    dp_train_pat & train_pat_mask);
 
 	if (HAS_DDI(dev_priv)) {
-		u32 temp = I915_READ(intel_dp->regs.dp_tp_ctl);
+		u32 temp = intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
 
 		if (dp_train_pat & DP_LINK_SCRAMBLING_DISABLE)
 			temp |= DP_TP_CTL_SCRAMBLE_DISABLE;
@@ -3495,7 +3499,7 @@ _intel_dp_set_link_train(struct intel_dp *intel_dp,
 			temp |= DP_TP_CTL_LINK_TRAIN_PAT4;
 			break;
 		}
-		I915_WRITE(intel_dp->regs.dp_tp_ctl, temp);
+		intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, temp);
 
 	} else if ((IS_IVYBRIDGE(dev_priv) && port == PORT_A) ||
 		   (HAS_PCH_CPT(dev_priv) && port != PORT_A)) {
@@ -3559,8 +3563,8 @@ static void intel_dp_enable_port(struct intel_dp *intel_dp,
 	if (old_crtc_state->has_audio)
 		intel_dp->DP |= DP_AUDIO_OUTPUT_ENABLE;
 
-	I915_WRITE(intel_dp->output_reg, intel_dp->DP);
-	POSTING_READ(intel_dp->output_reg);
+	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
 static void intel_enable_dp(struct intel_encoder *encoder,
@@ -3570,7 +3574,7 @@ static void intel_enable_dp(struct intel_encoder *encoder,
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
-	u32 dp_reg = I915_READ(intel_dp->output_reg);
+	u32 dp_reg = intel_de_read(dev_priv, intel_dp->output_reg);
 	enum pipe pipe = crtc->pipe;
 	intel_wakeref_t wakeref;
 
@@ -3665,8 +3669,8 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 		    "detaching pipe %c power sequencer from [ENCODER:%d:%s]\n",
 		    pipe_name(pipe), intel_dig_port->base.base.base.id,
 		    intel_dig_port->base.base.name);
-	I915_WRITE(pp_on_reg, 0);
-	POSTING_READ(pp_on_reg);
+	intel_de_write(dev_priv, pp_on_reg, 0);
+	intel_de_posting_read(dev_priv, pp_on_reg);
 
 	intel_dp->pps_pipe = INVALID_PIPE;
 }
@@ -4177,8 +4181,8 @@ intel_dp_set_signal_levels(struct intel_dp *intel_dp)
 
 	intel_dp->DP = (intel_dp->DP & ~mask) | signal_levels;
 
-	I915_WRITE(intel_dp->output_reg, intel_dp->DP);
-	POSTING_READ(intel_dp->output_reg);
+	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
 void
@@ -4191,8 +4195,8 @@ intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
 
 	_intel_dp_set_link_train(intel_dp, &intel_dp->DP, dp_train_pat);
 
-	I915_WRITE(intel_dp->output_reg, intel_dp->DP);
-	POSTING_READ(intel_dp->output_reg);
+	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 }
 
 void intel_dp_set_idle_link_train(struct intel_dp *intel_dp)
@@ -4205,10 +4209,10 @@ void intel_dp_set_idle_link_train(struct intel_dp *intel_dp)
 	if (!HAS_DDI(dev_priv))
 		return;
 
-	val = I915_READ(intel_dp->regs.dp_tp_ctl);
+	val = intel_de_read(dev_priv, intel_dp->regs.dp_tp_ctl);
 	val &= ~DP_TP_CTL_LINK_TRAIN_MASK;
 	val |= DP_TP_CTL_LINK_TRAIN_IDLE;
-	I915_WRITE(intel_dp->regs.dp_tp_ctl, val);
+	intel_de_write(dev_priv, intel_dp->regs.dp_tp_ctl, val);
 
 	/*
 	 * Until TGL on PORT_A we can have only eDP in SST mode. There the only
@@ -4236,7 +4240,7 @@ intel_dp_link_down(struct intel_encoder *encoder,
 	enum port port = encoder->port;
 	u32 DP = intel_dp->DP;
 
-	if (WARN_ON((I915_READ(intel_dp->output_reg) & DP_PORT_EN) == 0))
+	if (WARN_ON((intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN) == 0))
 		return;
 
 	drm_dbg_kms(&dev_priv->drm, "\n");
@@ -4249,12 +4253,12 @@ intel_dp_link_down(struct intel_encoder *encoder,
 		DP &= ~DP_LINK_TRAIN_MASK;
 		DP |= DP_LINK_TRAIN_PAT_IDLE;
 	}
-	I915_WRITE(intel_dp->output_reg, DP);
-	POSTING_READ(intel_dp->output_reg);
+	intel_de_write(dev_priv, intel_dp->output_reg, DP);
+	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
 	DP &= ~(DP_PORT_EN | DP_AUDIO_OUTPUT_ENABLE);
-	I915_WRITE(intel_dp->output_reg, DP);
-	POSTING_READ(intel_dp->output_reg);
+	intel_de_write(dev_priv, intel_dp->output_reg, DP);
+	intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
 	/*
 	 * HW workaround for IBX, we need to move the port
@@ -4273,12 +4277,12 @@ intel_dp_link_down(struct intel_encoder *encoder,
 		DP &= ~(DP_PIPE_SEL_MASK | DP_LINK_TRAIN_MASK);
 		DP |= DP_PORT_EN | DP_PIPE_SEL(PIPE_A) |
 			DP_LINK_TRAIN_PAT_1;
-		I915_WRITE(intel_dp->output_reg, DP);
-		POSTING_READ(intel_dp->output_reg);
+		intel_de_write(dev_priv, intel_dp->output_reg, DP);
+		intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
 		DP &= ~DP_PORT_EN;
-		I915_WRITE(intel_dp->output_reg, DP);
-		POSTING_READ(intel_dp->output_reg);
+		intel_de_write(dev_priv, intel_dp->output_reg, DP);
+		intel_de_posting_read(dev_priv, intel_dp->output_reg);
 
 		intel_wait_for_vblank_if_active(dev_priv, PIPE_A);
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, true);
@@ -5401,7 +5405,7 @@ static bool ibx_digital_port_connected(struct intel_encoder *encoder)
 		return false;
 	}
 
-	return I915_READ(SDEISR) & bit;
+	return intel_de_read(dev_priv, SDEISR) & bit;
 }
 
 static bool cpt_digital_port_connected(struct intel_encoder *encoder)
@@ -5424,7 +5428,7 @@ static bool cpt_digital_port_connected(struct intel_encoder *encoder)
 		return false;
 	}
 
-	return I915_READ(SDEISR) & bit;
+	return intel_de_read(dev_priv, SDEISR) & bit;
 }
 
 static bool spt_digital_port_connected(struct intel_encoder *encoder)
@@ -5443,7 +5447,7 @@ static bool spt_digital_port_connected(struct intel_encoder *encoder)
 		return cpt_digital_port_connected(encoder);
 	}
 
-	return I915_READ(SDEISR) & bit;
+	return intel_de_read(dev_priv, SDEISR) & bit;
 }
 
 static bool g4x_digital_port_connected(struct intel_encoder *encoder)
@@ -5466,7 +5470,7 @@ static bool g4x_digital_port_connected(struct intel_encoder *encoder)
 		return false;
 	}
 
-	return I915_READ(PORT_HOTPLUG_STAT) & bit;
+	return intel_de_read(dev_priv, PORT_HOTPLUG_STAT) & bit;
 }
 
 static bool gm45_digital_port_connected(struct intel_encoder *encoder)
@@ -5489,7 +5493,7 @@ static bool gm45_digital_port_connected(struct intel_encoder *encoder)
 		return false;
 	}
 
-	return I915_READ(PORT_HOTPLUG_STAT) & bit;
+	return intel_de_read(dev_priv, PORT_HOTPLUG_STAT) & bit;
 }
 
 static bool ilk_digital_port_connected(struct intel_encoder *encoder)
@@ -5497,7 +5501,7 @@ static bool ilk_digital_port_connected(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	if (encoder->hpd_pin == HPD_PORT_A)
-		return I915_READ(DEISR) & DE_DP_A_HOTPLUG;
+		return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG;
 	else
 		return ibx_digital_port_connected(encoder);
 }
@@ -5507,7 +5511,7 @@ static bool snb_digital_port_connected(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	if (encoder->hpd_pin == HPD_PORT_A)
-		return I915_READ(DEISR) & DE_DP_A_HOTPLUG;
+		return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG;
 	else
 		return cpt_digital_port_connected(encoder);
 }
@@ -5517,7 +5521,7 @@ static bool ivb_digital_port_connected(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	if (encoder->hpd_pin == HPD_PORT_A)
-		return I915_READ(DEISR) & DE_DP_A_HOTPLUG_IVB;
+		return intel_de_read(dev_priv, DEISR) & DE_DP_A_HOTPLUG_IVB;
 	else
 		return cpt_digital_port_connected(encoder);
 }
@@ -5527,7 +5531,7 @@ static bool bdw_digital_port_connected(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 
 	if (encoder->hpd_pin == HPD_PORT_A)
-		return I915_READ(GEN8_DE_PORT_ISR) & GEN8_PORT_DP_A_HOTPLUG;
+		return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & GEN8_PORT_DP_A_HOTPLUG;
 	else
 		return cpt_digital_port_connected(encoder);
 }
@@ -5552,16 +5556,16 @@ static bool bxt_digital_port_connected(struct intel_encoder *encoder)
 		return false;
 	}
 
-	return I915_READ(GEN8_DE_PORT_ISR) & bit;
+	return intel_de_read(dev_priv, GEN8_DE_PORT_ISR) & bit;
 }
 
 static bool intel_combo_phy_connected(struct drm_i915_private *dev_priv,
 				      enum phy phy)
 {
 	if (HAS_PCH_MCC(dev_priv) && phy == PHY_C)
-		return I915_READ(SDEISR) & SDE_TC_HOTPLUG_ICP(PORT_TC1);
+		return intel_de_read(dev_priv, SDEISR) & SDE_TC_HOTPLUG_ICP(PORT_TC1);
 
-	return I915_READ(SDEISR) & SDE_DDI_HOTPLUG_ICP(phy);
+	return intel_de_read(dev_priv, SDEISR) & SDE_DDI_HOTPLUG_ICP(phy);
 }
 
 static bool icp_digital_port_connected(struct intel_encoder *encoder)
@@ -6552,7 +6556,7 @@ void intel_dp_encoder_reset(struct drm_encoder *encoder)
 	intel_wakeref_t wakeref;
 
 	if (!HAS_DDI(dev_priv))
-		intel_dp->DP = I915_READ(intel_dp->output_reg);
+		intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
 
 	if (lspcon->active)
 		lspcon_resume(lspcon);
@@ -6730,10 +6734,10 @@ intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_seq *seq)
 
 	/* Ensure PPS is unlocked */
 	if (!HAS_DDI(dev_priv))
-		I915_WRITE(regs.pp_ctrl, pp_ctl);
+		intel_de_write(dev_priv, regs.pp_ctrl, pp_ctl);
 
-	pp_on = I915_READ(regs.pp_on);
-	pp_off = I915_READ(regs.pp_off);
+	pp_on = intel_de_read(dev_priv, regs.pp_on);
+	pp_off = intel_de_read(dev_priv, regs.pp_off);
 
 	/* Pull timing values out of registers */
 	seq->t1_t3 = REG_FIELD_GET(PANEL_POWER_UP_DELAY_MASK, pp_on);
@@ -6744,7 +6748,7 @@ intel_pps_readout_hw_state(struct intel_dp *intel_dp, struct edp_power_seq *seq)
 	if (i915_mmio_reg_valid(regs.pp_div)) {
 		u32 pp_div;
 
-		pp_div = I915_READ(regs.pp_div);
+		pp_div = intel_de_read(dev_priv, regs.pp_div);
 
 		seq->t11_t12 = REG_FIELD_GET(PANEL_POWER_CYCLE_DELAY_MASK, pp_div) * 1000;
 	} else {
@@ -6910,7 +6914,7 @@ intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
 
 		pp &= ~EDP_FORCE_VDD;
 
-		I915_WRITE(regs.pp_ctrl, pp);
+		intel_de_write(dev_priv, regs.pp_ctrl, pp);
 	}
 
 	pp_on = REG_FIELD_PREP(PANEL_POWER_UP_DELAY_MASK, seq->t1_t3) |
@@ -6941,32 +6945,31 @@ intel_dp_init_panel_power_sequencer_registers(struct intel_dp *intel_dp,
 
 	pp_on |= port_sel;
 
-	I915_WRITE(regs.pp_on, pp_on);
-	I915_WRITE(regs.pp_off, pp_off);
+	intel_de_write(dev_priv, regs.pp_on, pp_on);
+	intel_de_write(dev_priv, regs.pp_off, pp_off);
 
 	/*
 	 * Compute the divisor for the pp clock, simply match the Bspec formula.
 	 */
 	if (i915_mmio_reg_valid(regs.pp_div)) {
-		I915_WRITE(regs.pp_div,
-			   REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) |
-			   REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000)));
+		intel_de_write(dev_priv, regs.pp_div,
+			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000)));
 	} else {
 		u32 pp_ctl;
 
-		pp_ctl = I915_READ(regs.pp_ctrl);
+		pp_ctl = intel_de_read(dev_priv, regs.pp_ctrl);
 		pp_ctl &= ~BXT_POWER_CYCLE_DELAY_MASK;
 		pp_ctl |= REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000));
-		I915_WRITE(regs.pp_ctrl, pp_ctl);
+		intel_de_write(dev_priv, regs.pp_ctrl, pp_ctl);
 	}
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\n",
-		    I915_READ(regs.pp_on),
-		    I915_READ(regs.pp_off),
+		    intel_de_read(dev_priv, regs.pp_on),
+		    intel_de_read(dev_priv, regs.pp_off),
 		    i915_mmio_reg_valid(regs.pp_div) ?
-		    I915_READ(regs.pp_div) :
-		    (I915_READ(regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
+		    intel_de_read(dev_priv, regs.pp_div) :
+		    (intel_de_read(dev_priv, regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
 }
 
 static void intel_dp_pps_init(struct intel_dp *intel_dp)
@@ -7057,7 +7060,7 @@ static void intel_dp_set_drrs_state(struct drm_i915_private *dev_priv,
 		i915_reg_t reg = PIPECONF(crtc_state->cpu_transcoder);
 		u32 val;
 
-		val = I915_READ(reg);
+		val = intel_de_read(dev_priv, reg);
 		if (index > DRRS_HIGH_RR) {
 			if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 				val |= PIPECONF_EDP_RR_MODE_SWITCH_VLV;
@@ -7069,7 +7072,7 @@ static void intel_dp_set_drrs_state(struct drm_i915_private *dev_priv,
 			else
 				val &= ~PIPECONF_EDP_RR_MODE_SWITCH;
 		}
-		I915_WRITE(reg, val);
+		intel_de_write(dev_priv, reg, val);
 	}
 
 	dev_priv->drrs.refresh_rate_type = index;
@@ -7526,7 +7529,7 @@ intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
 	intel_dp->active_pipe = INVALID_PIPE;
 
 	/* Preserve the current hw state. */
-	intel_dp->DP = I915_READ(intel_dp->output_reg);
+	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
 	intel_dp->attached_connector = intel_connector;
 
 	if (intel_dp_is_port_edp(dev_priv, port)) {
@@ -7607,8 +7610,9 @@ intel_dp_init_connector(struct intel_digital_port *intel_dig_port,
 	 * generated on the port when a cable is not attached.
 	 */
 	if (IS_G45(dev_priv)) {
-		u32 temp = I915_READ(PEG_BAND_GAP_DATA);
-		I915_WRITE(PEG_BAND_GAP_DATA, (temp & ~0xf) | 0xd);
+		u32 temp = intel_de_read(dev_priv, PEG_BAND_GAP_DATA);
+		intel_de_write(dev_priv, PEG_BAND_GAP_DATA,
+			       (temp & ~0xf) | 0xd);
 	}
 
 	return true;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
