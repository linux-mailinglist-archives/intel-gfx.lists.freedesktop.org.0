Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E96C639B21
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Nov 2022 14:42:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D705010E086;
	Sun, 27 Nov 2022 13:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AC1D10E086
 for <intel-gfx@lists.freedesktop.org>; Sun, 27 Nov 2022 13:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669556526; x=1701092526;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0/p7hVaYg3EskTavwxxPv5KFMiDIGqP9h/hPr2sVj/M=;
 b=Y0VaIXavbsZohSD8l/nFuX9M46CjReJ+9fD7TIC4xYcWdPqJGt/b0BUm
 WZ3gCK1QtbJ9zmmvgvU/S4NqcuSGhnGLNULjTKsB4OTNvPcJ0fJU3JojA
 U2xJQoAilfpLKXqK5x6Xw1LwD0Y6hke9+ZezJFr5ms+hIZFL+EzaE4L0E
 yufLuuYkMQFREflZb4QycxBvE3AnKsyOb0eBFe6meY/INyzzw6lEy68g7
 RDKW7jEirtDVMwS5DFhk6CFzhZiPZnUku3Dem36CLNxYtZ3L43sYRwxr+
 8w0gvsxmmQtpKkDv5ULKoiDcpnCuuGiP8tiptSutncVs/zO2mzgYLMNpg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="298028714"
X-IronPort-AV: E=Sophos;i="5.96,198,1665471600"; d="scan'208";a="298028714"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2022 05:42:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10544"; a="749066726"
X-IronPort-AV: E=Sophos;i="5.96,198,1665471600"; d="scan'208";a="749066726"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 27 Nov 2022 05:42:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sun, 27 Nov 2022 15:42:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 27 Nov 2022 15:42:01 +0200
Message-Id: <20221127134201.16146-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221125173156.31689-10-ville.syrjala@linux.intel.com>
References: <20221125173156.31689-10-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 9/9] drm/i915: Improve PPS debugs
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Always include both the encoder and PPS instance information
in the debug prints so that we know what piece of hardware
we're actually dealing with.

v2: Make sure pps is selected before debug prints/etc. in
    intel_pps_vdd_on_unlocked() on vlv/chv
    There is no pps on pipe C on chv

Cc: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 188 +++++++++++++++--------
 1 file changed, 122 insertions(+), 66 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 880c530d5832..44f4d801c6bd 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -22,6 +22,34 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 static void pps_init_delays(struct intel_dp *intel_dp);
 static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd);
 
+static const char *pps_name(struct drm_i915_private *i915,
+			    struct intel_pps *pps)
+{
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
+		switch (pps->pps_pipe) {
+		case PIPE_A:
+			return "PPS A";
+		case PIPE_B:
+			return "PPS B";
+		default:
+			MISSING_CASE(pps->pps_pipe);
+			break;
+		}
+	} else {
+		switch (pps->pps_idx) {
+		case 0:
+			return "PPS 0";
+		case 1:
+			return "PPS 1";
+		default:
+			MISSING_CASE(pps->pps_idx);
+			break;
+		}
+	}
+
+	return "PPS <invalid>";
+}
+
 intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -60,15 +88,15 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 
 	if (drm_WARN(&dev_priv->drm,
 		     intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN,
-		     "skipping pipe %c power sequencer kick due to [ENCODER:%d:%s] being active\n",
-		     pipe_name(pipe), dig_port->base.base.base.id,
-		     dig_port->base.base.name))
+		     "skipping %s kick due to [ENCODER:%d:%s] being active\n",
+		     pps_name(dev_priv, &intel_dp->pps),
+		     dig_port->base.base.base.id, dig_port->base.base.name))
 		return;
 
 	drm_dbg_kms(&dev_priv->drm,
-		    "kicking pipe %c power sequencer for [ENCODER:%d:%s]\n",
-		    pipe_name(pipe), dig_port->base.base.base.id,
-		    dig_port->base.base.name);
+		    "kicking %s for [ENCODER:%d:%s]\n",
+		    pps_name(dev_priv, &intel_dp->pps),
+		    dig_port->base.base.base.id, dig_port->base.base.name);
 
 	/* Preserve the BIOS-computed detected bit. This is
 	 * supposed to be read-only.
@@ -95,7 +123,7 @@ vlv_power_sequencer_kick(struct intel_dp *intel_dp)
 
 		if (vlv_force_pll_on(dev_priv, pipe, vlv_get_dpll(dev_priv))) {
 			drm_err(&dev_priv->drm,
-				"Failed to force on pll for pipe %c!\n",
+				"Failed to force on PLL for pipe %c!\n",
 				pipe_name(pipe));
 			return;
 		}
@@ -190,10 +218,9 @@ vlv_power_sequencer_pipe(struct intel_dp *intel_dp)
 	intel_dp->pps.pps_pipe = pipe;
 
 	drm_dbg_kms(&dev_priv->drm,
-		    "picked pipe %c power sequencer for [ENCODER:%d:%s]\n",
-		    pipe_name(intel_dp->pps.pps_pipe),
-		    dig_port->base.base.base.id,
-		    dig_port->base.base.name);
+		    "picked %s for [ENCODER:%d:%s]\n",
+		    pps_name(dev_priv, &intel_dp->pps),
+		    dig_port->base.base.base.id, dig_port->base.base.name);
 
 	/* init power sequencer on this pipe and port */
 	pps_init_delays(intel_dp);
@@ -297,17 +324,15 @@ vlv_initial_power_sequencer_setup(struct intel_dp *intel_dp)
 	/* didn't find one? just let vlv_power_sequencer_pipe() pick one when needed */
 	if (intel_dp->pps.pps_pipe == INVALID_PIPE) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "no initial power sequencer for [ENCODER:%d:%s]\n",
-			    dig_port->base.base.base.id,
-			    dig_port->base.base.name);
+			    "[ENCODER:%d:%s] no initial power sequencer\n",
+			    dig_port->base.base.base.id, dig_port->base.base.name);
 		return;
 	}
 
 	drm_dbg_kms(&dev_priv->drm,
-		    "initial power sequencer for [ENCODER:%d:%s]: pipe %c\n",
-		    dig_port->base.base.base.id,
-		    dig_port->base.base.name,
-		    pipe_name(intel_dp->pps.pps_pipe));
+		    "[ENCODER:%d:%s] initial power sequencer: %s\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(dev_priv, &intel_dp->pps));
 }
 
 static int intel_num_pps(struct drm_i915_private *i915)
@@ -386,14 +411,14 @@ pps_initial_setup(struct intel_dp *intel_dp)
 		intel_dp->pps.pps_idx = bxt_initial_pps_idx(i915, pps_any);
 
 		drm_dbg_kms(&i915->drm,
-			    "[ENCODER:%d:%s] no initial power sequencer, assuming %d\n",
+			    "[ENCODER:%d:%s] no initial power sequencer, assuming %s\n",
 			    encoder->base.base.id, encoder->base.name,
-			    intel_dp->pps.pps_idx);
+			    pps_name(i915, &intel_dp->pps));
 	} else {
 		drm_dbg_kms(&i915->drm,
-			    "[ENCODER:%d:%s] initial power sequencer: %d\n",
+			    "[ENCODER:%d:%s] initial power sequencer: %s\n",
 			    encoder->base.base.id, encoder->base.name,
-			    intel_dp->pps.pps_idx);
+			    pps_name(i915, &intel_dp->pps));
 	}
 
 	return intel_pps_is_valid(intel_dp);
@@ -520,15 +545,20 @@ static bool edp_have_panel_vdd(struct intel_dp *intel_dp)
 void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
 	if (!edp_have_panel_power(intel_dp) && !edp_have_panel_vdd(intel_dp)) {
 		drm_WARN(&dev_priv->drm, 1,
-			 "eDP powered off while attempting aux channel communication.\n");
+			 "[ENCODER:%d:%s] %s powered off while attempting AUX CH communication.\n",
+			 dig_port->base.base.base.id, dig_port->base.base.name,
+			 pps_name(dev_priv, &intel_dp->pps));
 		drm_dbg_kms(&dev_priv->drm,
-			    "PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+			    "[ENCODER:%d:%s] %s PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+			    dig_port->base.base.base.id, dig_port->base.base.name,
+			    pps_name(dev_priv, &intel_dp->pps),
 			    intel_de_read(dev_priv, _pp_stat_reg(intel_dp)),
 			    intel_de_read(dev_priv, _pp_ctrl_reg(intel_dp)));
 	}
@@ -546,10 +576,10 @@ void intel_pps_check_power_unlocked(struct intel_dp *intel_dp)
 static void intel_pps_verify_state(struct intel_dp *intel_dp);
 
 static void wait_panel_status(struct intel_dp *intel_dp,
-				       u32 mask,
-				       u32 value)
+			      u32 mask, u32 value)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 
 	lockdep_assert_held(&dev_priv->display.pps.mutex);
@@ -560,7 +590,9 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
 
 	drm_dbg_kms(&dev_priv->drm,
-		    "mask: 0x%08x value: 0x%08x PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+		    "[ENCODER:%d:%s] %s mask: 0x%08x value: 0x%08x PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(dev_priv, &intel_dp->pps),
 		    mask, value,
 		    intel_de_read(dev_priv, pp_stat_reg),
 		    intel_de_read(dev_priv, pp_ctrl_reg));
@@ -568,7 +600,9 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 	if (intel_de_wait_for_register(dev_priv, pp_stat_reg,
 				       mask, value, 5000))
 		drm_err(&dev_priv->drm,
-			"Panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+			dig_port->base.base.base.id, dig_port->base.base.name,
+			pps_name(dev_priv, &intel_dp->pps),
 			intel_de_read(dev_priv, pp_stat_reg),
 			intel_de_read(dev_priv, pp_ctrl_reg));
 
@@ -578,26 +612,35 @@ static void wait_panel_status(struct intel_dp *intel_dp,
 static void wait_panel_on(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-	drm_dbg_kms(&i915->drm, "Wait for panel power on\n");
+	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] %s wait for panel power on\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(i915, &intel_dp->pps));
 	wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
 }
 
 static void wait_panel_off(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
-	drm_dbg_kms(&i915->drm, "Wait for panel power off time\n");
+	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] %s wait for panel power off time\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(i915, &intel_dp->pps));
 	wait_panel_status(intel_dp, IDLE_OFF_MASK, IDLE_OFF_VALUE);
 }
 
 static void wait_panel_power_cycle(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	ktime_t panel_power_on_time;
 	s64 panel_power_off_duration;
 
-	drm_dbg_kms(&i915->drm, "Wait for panel power cycle\n");
+	drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] %s wait for panel power cycle\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(i915, &intel_dp->pps));
 
 	/* take the difference of current time and panel power off time
 	 * and then make panel wait for t11_t12 if needed. */
@@ -684,9 +727,12 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
 							    intel_aux_power_domain(dig_port));
 
-	drm_dbg_kms(&dev_priv->drm, "Turning [ENCODER:%d:%s] VDD on\n",
-		    dig_port->base.base.base.id,
-		    dig_port->base.base.name);
+	pp_stat_reg = _pp_stat_reg(intel_dp);
+	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
+
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turning VDD on\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(dev_priv, &intel_dp->pps));
 
 	if (!edp_have_panel_power(intel_dp))
 		wait_panel_power_cycle(intel_dp);
@@ -694,12 +740,11 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 	pp = ilk_get_pp_control(intel_dp);
 	pp |= EDP_FORCE_VDD;
 
-	pp_stat_reg = _pp_stat_reg(intel_dp);
-	pp_ctrl_reg = _pp_ctrl_reg(intel_dp);
-
 	intel_de_write(dev_priv, pp_ctrl_reg, pp);
 	intel_de_posting_read(dev_priv, pp_ctrl_reg);
-	drm_dbg_kms(&dev_priv->drm, "PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(dev_priv, &intel_dp->pps),
 		    intel_de_read(dev_priv, pp_stat_reg),
 		    intel_de_read(dev_priv, pp_ctrl_reg));
 	/*
@@ -707,9 +752,9 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 	 */
 	if (!edp_have_panel_power(intel_dp)) {
 		drm_dbg_kms(&dev_priv->drm,
-			    "[ENCODER:%d:%s] panel power wasn't enabled\n",
-			    dig_port->base.base.base.id,
-			    dig_port->base.base.name);
+			    "[ENCODER:%d:%s] %s panel power wasn't enabled\n",
+			    dig_port->base.base.base.id, dig_port->base.base.name,
+			    pps_name(dev_priv, &intel_dp->pps));
 		msleep(intel_dp->pps.panel_power_up_delay);
 	}
 
@@ -724,6 +769,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
  */
 void intel_pps_vdd_on(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	intel_wakeref_t wakeref;
 	bool vdd;
 
@@ -733,9 +779,10 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
 	vdd = false;
 	with_intel_pps_lock(intel_dp, wakeref)
 		vdd = intel_pps_vdd_on_unlocked(intel_dp);
-	I915_STATE_WARN(!vdd, "[ENCODER:%d:%s] VDD already requested on\n",
+	I915_STATE_WARN(!vdd, "[ENCODER:%d:%s] %s VDD already requested on\n",
 			dp_to_dig_port(intel_dp)->base.base.base.id,
-			dp_to_dig_port(intel_dp)->base.base.name);
+			dp_to_dig_port(intel_dp)->base.base.name,
+			pps_name(i915, &intel_dp->pps));
 }
 
 static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
@@ -753,9 +800,9 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 	if (!edp_have_panel_vdd(intel_dp))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "Turning [ENCODER:%d:%s] VDD off\n",
-		    dig_port->base.base.base.id,
-		    dig_port->base.base.name);
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turning VDD off\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(dev_priv, &intel_dp->pps));
 
 	pp = ilk_get_pp_control(intel_dp);
 	pp &= ~EDP_FORCE_VDD;
@@ -767,7 +814,9 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 	intel_de_posting_read(dev_priv, pp_ctrl_reg);
 
 	/* Make sure sequencer is idle before allowing subsequent activity */
-	drm_dbg_kms(&dev_priv->drm, "PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(dev_priv, &intel_dp->pps),
 		    intel_de_read(dev_priv, pp_stat_reg),
 		    intel_de_read(dev_priv, pp_ctrl_reg));
 
@@ -842,9 +891,10 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	I915_STATE_WARN(!intel_dp->pps.want_panel_vdd, "[ENCODER:%d:%s] VDD not forced on",
+	I915_STATE_WARN(!intel_dp->pps.want_panel_vdd, "[ENCODER:%d:%s] %s VDD not forced on",
 			dp_to_dig_port(intel_dp)->base.base.base.id,
-			dp_to_dig_port(intel_dp)->base.base.name);
+			dp_to_dig_port(intel_dp)->base.base.name,
+			pps_name(dev_priv, &intel_dp->pps));
 
 	intel_dp->pps.want_panel_vdd = false;
 
@@ -865,14 +915,16 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "Turn [ENCODER:%d:%s] panel power on\n",
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turn panel power on\n",
 		    dp_to_dig_port(intel_dp)->base.base.base.id,
-		    dp_to_dig_port(intel_dp)->base.base.name);
+		    dp_to_dig_port(intel_dp)->base.base.name,
+		    pps_name(dev_priv, &intel_dp->pps));
 
 	if (drm_WARN(&dev_priv->drm, edp_have_panel_power(intel_dp),
-		     "[ENCODER:%d:%s] panel power already on\n",
+		     "[ENCODER:%d:%s] %s panel power already on\n",
 		     dp_to_dig_port(intel_dp)->base.base.base.id,
-		     dp_to_dig_port(intel_dp)->base.base.name))
+		     dp_to_dig_port(intel_dp)->base.base.name,
+		     pps_name(dev_priv, &intel_dp->pps)))
 		return;
 
 	wait_panel_power_cycle(intel_dp);
@@ -926,12 +978,14 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "Turn [ENCODER:%d:%s] panel power off\n",
-		    dig_port->base.base.base.id, dig_port->base.base.name);
+	drm_dbg_kms(&dev_priv->drm, "[ENCODER:%d:%s] %s turn panel power off\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(dev_priv, &intel_dp->pps));
 
 	drm_WARN(&dev_priv->drm, !intel_dp->pps.want_panel_vdd,
-		 "Need [ENCODER:%d:%s] VDD to turn off panel\n",
-		 dig_port->base.base.base.id, dig_port->base.base.name);
+		 "[ENCODER:%d:%s] %s need VDD to turn off panel\n",
+		 dig_port->base.base.base.id, dig_port->base.base.name,
+		 pps_name(dev_priv, &intel_dp->pps));
 
 	pp = ilk_get_pp_control(intel_dp);
 	/* We need to switch off panel power _and_ force vdd, for otherwise some
@@ -1066,9 +1120,9 @@ static void vlv_detach_power_sequencer(struct intel_dp *intel_dp)
 	 * from a port.
 	 */
 	drm_dbg_kms(&dev_priv->drm,
-		    "detaching pipe %c power sequencer from [ENCODER:%d:%s]\n",
-		    pipe_name(pipe), dig_port->base.base.base.id,
-		    dig_port->base.base.name);
+		    "detaching %s from [ENCODER:%d:%s]\n",
+		    pps_name(dev_priv, &intel_dp->pps),
+		    dig_port->base.base.base.id, dig_port->base.base.name);
 	intel_de_write(dev_priv, pp_on_reg, 0);
 	intel_de_posting_read(dev_priv, pp_on_reg);
 
@@ -1086,7 +1140,7 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		drm_WARN(&dev_priv->drm, intel_dp->pps.active_pipe == pipe,
-			 "stealing pipe %c power sequencer from active [ENCODER:%d:%s]\n",
+			 "stealing PPS %c from active [ENCODER:%d:%s]\n",
 			 pipe_name(pipe), encoder->base.base.id,
 			 encoder->base.name);
 
@@ -1094,7 +1148,7 @@ static void vlv_steal_power_sequencer(struct drm_i915_private *dev_priv,
 			continue;
 
 		drm_dbg_kms(&dev_priv->drm,
-			    "stealing pipe %c power sequencer from [ENCODER:%d:%s]\n",
+			    "stealing PPS %c from [ENCODER:%d:%s]\n",
 			    pipe_name(pipe), encoder->base.base.id,
 			    encoder->base.name);
 
@@ -1139,9 +1193,9 @@ void vlv_pps_init(struct intel_encoder *encoder,
 	intel_dp->pps.pps_pipe = crtc->pipe;
 
 	drm_dbg_kms(&dev_priv->drm,
-		    "initializing pipe %c power sequencer for [ENCODER:%d:%s]\n",
-		    pipe_name(intel_dp->pps.pps_pipe), encoder->base.base.id,
-		    encoder->base.name);
+		    "initializing %s for [ENCODER:%d:%s]\n",
+		    pps_name(dev_priv, &intel_dp->pps),
+		    encoder->base.base.id, encoder->base.name);
 
 	/* init power sequencer on this pipe and port */
 	pps_init_delays(intel_dp);
@@ -1165,7 +1219,9 @@ static void pps_vdd_init(struct intel_dp *intel_dp)
 	 * indefinitely.
 	 */
 	drm_dbg_kms(&dev_priv->drm,
-		    "VDD left on by BIOS, adjusting state tracking\n");
+		    "[ENCODER:%d:%s] %s VDD left on by BIOS, adjusting state tracking\n",
+		    dig_port->base.base.base.id, dig_port->base.base.name,
+		    pps_name(dev_priv, &intel_dp->pps));
 	drm_WARN_ON(&dev_priv->drm, intel_dp->pps.vdd_wakeref);
 	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
 							    intel_aux_power_domain(dig_port));
-- 
2.37.4

