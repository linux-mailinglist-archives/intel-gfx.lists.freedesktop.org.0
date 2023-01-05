Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF52365EC8E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 14:11:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D5410E722;
	Thu,  5 Jan 2023 13:11:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB54310E721
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 13:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672924290; x=1704460290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nVA1Cc88FnWXQstLGf1bbgkqj17oKrMZOK56U449jDg=;
 b=W2KjsjRclGg4QI1SlCcvs1oTMC9q4svxtSd4rcvcltwErvkPXo4Vjpl/
 U9F44uuWtFwUu0S+O4NzsXAAdrbGKqbDWZluanBO7JpYvcoj1iOdmb631
 YNbybDZDGZmsIXCqbvXTjHg9EDCAvaGUSsg0Y5fmOQXZS25D8fg/Olk6Z
 zQopTroQeJdgUw+CbZovlgEolQNeGNirmbJV7GIidUb8WoWMmefAQCNfm
 c/jYoiu1xaEJ6RzPZP/782pNoqeDZuNUlf36Sq/DNiVKSlYSYjkaA0Xvu
 1S1vIO5heXcg0JQlQUMa/L4c2nVwrhGYqPHe7r/bO0NocFXiEyRKXGOrf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="323429795"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="323429795"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:30 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="633129098"
X-IronPort-AV: E=Sophos;i="5.96,303,1665471600"; d="scan'208";a="633129098"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2023 05:11:27 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Jan 2023 14:10:44 +0100
Message-Id: <20230105131046.2173431-7-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230105131046.2173431-1-andrzej.hajda@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915/display/panel: use intel_de_rmw
 if possible in panel related code
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The helper makes the code more compact and readable.

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 .../gpu/drm/i915/display/intel_backlight.c    | 59 +++++++------------
 drivers/gpu/drm/i915/display/intel_pps.c      | 14 ++---
 drivers/gpu/drm/i915/display/intel_psr.c      | 40 ++++---------
 3 files changed, 37 insertions(+), 76 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 5b7da72c95b8c5..b088921c543eaa 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -349,8 +349,7 @@ static void lpt_disable_backlight(const struct drm_connector_state *old_conn_sta
 		intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
 	}
 
-	tmp = intel_de_read(i915, BLC_PWM_PCH_CTL1);
-	intel_de_write(i915, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
+	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
 }
 
 static void pch_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -361,11 +360,9 @@ static void pch_disable_backlight(const struct drm_connector_state *old_conn_sta
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(i915, BLC_PWM_CPU_CTL2);
-	intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
+	intel_de_rmw(i915, BLC_PWM_CPU_CTL2, BLM_PWM_ENABLE, 0);
 
-	tmp = intel_de_read(i915, BLC_PWM_PCH_CTL1);
-	intel_de_write(i915, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
+	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
 }
 
 static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -380,8 +377,7 @@ static void i965_disable_backlight(const struct drm_connector_state *old_conn_st
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(i915, BLC_PWM_CTL2);
-	intel_de_write(i915, BLC_PWM_CTL2, tmp & ~BLM_PWM_ENABLE);
+	tmp = intel_de_rmw(i915, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
 }
 
 static void vlv_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -393,8 +389,7 @@ static void vlv_disable_backlight(const struct drm_connector_state *old_conn_sta
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
-	intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), tmp & ~BLM_PWM_ENABLE);
+	tmp = intel_de_rmw(i915, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE, 0);
 }
 
 static void bxt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -402,19 +397,14 @@ static void bxt_disable_backlight(const struct drm_connector_state *old_conn_sta
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
-	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
-	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
-		       tmp & ~BXT_BLC_PWM_ENABLE);
+	intel_de_rmw(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		     BXT_BLC_PWM_ENABLE, 0);
 
-	if (panel->backlight.controller == 1) {
-		val = intel_de_read(i915, UTIL_PIN_CTL);
-		val &= ~UTIL_PIN_ENABLE;
-		intel_de_write(i915, UTIL_PIN_CTL, val);
-	}
+	if (panel->backlight.controller == 1)
+		intel_de_rmw(i915, UTIL_PIN_CTL, UTIL_PIN_ENABLE, 0);
 }
 
 static void cnp_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
@@ -422,13 +412,11 @@ static void cnp_disable_backlight(const struct drm_connector_state *old_conn_sta
 	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
-	u32 tmp;
 
 	intel_backlight_set_pwm_level(old_conn_state, val);
 
-	tmp = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
-	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
-		       tmp & ~BXT_BLC_PWM_ENABLE);
+	intel_de_rmw(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
+		     BXT_BLC_PWM_ENABLE, 0);
 }
 
 static void ext_pwm_disable_backlight(const struct drm_connector_state *old_conn_state, u32 level)
@@ -478,7 +466,7 @@ static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
-	u32 pch_ctl1, pch_ctl2, schicken;
+	u32 pch_ctl1, pch_ctl2;
 
 	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
 	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
@@ -487,21 +475,14 @@ static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
 		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
 	}
 
-	if (HAS_PCH_LPT(i915)) {
-		schicken = intel_de_read(i915, SOUTH_CHICKEN2);
-		if (panel->backlight.alternate_pwm_increment)
-			schicken |= LPT_PWM_GRANULARITY;
-		else
-			schicken &= ~LPT_PWM_GRANULARITY;
-		intel_de_write(i915, SOUTH_CHICKEN2, schicken);
-	} else {
-		schicken = intel_de_read(i915, SOUTH_CHICKEN1);
-		if (panel->backlight.alternate_pwm_increment)
-			schicken |= SPT_PWM_GRANULARITY;
-		else
-			schicken &= ~SPT_PWM_GRANULARITY;
-		intel_de_write(i915, SOUTH_CHICKEN1, schicken);
-	}
+	if (HAS_PCH_LPT(i915))
+		intel_de_rmw(i915, SOUTH_CHICKEN2, LPT_PWM_GRANULARITY,
+			     panel->backlight.alternate_pwm_increment ?
+			     LPT_PWM_GRANULARITY : 0);
+	else
+		intel_de_rmw(i915, SOUTH_CHICKEN1, SPT_PWM_GRANULARITY,
+			     panel->backlight.alternate_pwm_increment ?
+			     SPT_PWM_GRANULARITY : 0);
 
 	pch_ctl2 = panel->backlight.pwm_level_max << 16;
 	intel_de_write(i915, BLC_PWM_PCH_CTL2, pch_ctl2);
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 7b21438edd9bc5..a4e00cab5f0ed8 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1534,17 +1534,13 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
 	/*
 	 * Compute the divisor for the pp clock, simply match the Bspec formula.
 	 */
-	if (i915_mmio_reg_valid(regs.pp_div)) {
+	if (i915_mmio_reg_valid(regs.pp_div))
 		intel_de_write(dev_priv, regs.pp_div,
 			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000)));
-	} else {
-		u32 pp_ctl;
-
-		pp_ctl = intel_de_read(dev_priv, regs.pp_ctrl);
-		pp_ctl &= ~BXT_POWER_CYCLE_DELAY_MASK;
-		pp_ctl |= REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000));
-		intel_de_write(dev_priv, regs.pp_ctrl, pp_ctl);
-	}
+	else
+		intel_de_rmw(dev_priv, regs.pp_ctrl, BXT_POWER_CYCLE_DELAY_MASK,
+			     REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK,
+					    DIV_ROUND_UP(seq->t11_t12, 1000)));
 
 	drm_dbg_kms(&dev_priv->drm,
 		    "panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\n",
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index d0d774219cc5ea..a0518c2f2668ce 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -153,7 +153,7 @@ static void psr_irq_control(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	i915_reg_t imr_reg;
-	u32 mask, val;
+	u32 mask;
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		imr_reg = TRANS_PSR_IMR(intel_dp->psr.transcoder);
@@ -165,10 +165,7 @@ static void psr_irq_control(struct intel_dp *intel_dp)
 		mask |= psr_irq_post_exit_bit_get(intel_dp) |
 			psr_irq_pre_entry_bit_get(intel_dp);
 
-	val = intel_de_read(dev_priv, imr_reg);
-	val &= ~psr_irq_mask_get(intel_dp);
-	val |= ~mask;
-	intel_de_write(dev_priv, imr_reg, val);
+	intel_de_rmw(dev_priv, imr_reg, psr_irq_mask_get(intel_dp), ~mask);
 }
 
 static void psr_event_print(struct drm_i915_private *i915,
@@ -246,8 +243,6 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 	}
 
 	if (psr_iir & psr_irq_psr_error_bit_get(intel_dp)) {
-		u32 val;
-
 		drm_warn(&dev_priv->drm, "[transcoder %s] PSR aux error\n",
 			 transcoder_name(cpu_transcoder));
 
@@ -261,9 +256,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 		 * again so we don't care about unmask the interruption
 		 * or unset irq_aux_error.
 		 */
-		val = intel_de_read(dev_priv, imr_reg);
-		val |= psr_irq_psr_error_bit_get(intel_dp);
-		intel_de_write(dev_priv, imr_reg, val);
+		intel_de_rmw(dev_priv, imr_reg, 0, psr_irq_psr_error_bit_get(intel_dp));
 
 		schedule_work(&intel_dp->psr.work);
 	}
@@ -638,13 +631,10 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 				     u32 idle_frames)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	u32 val;
 
 	idle_frames <<=  EDP_PSR2_IDLE_FRAME_SHIFT;
-	val = intel_de_read(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder));
-	val &= ~EDP_PSR2_IDLE_FRAME_MASK;
-	val |= idle_frames;
-	intel_de_write(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder), val);
+	intel_de_rmw(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder),
+		     EDP_PSR2_IDLE_FRAME_MASK, idle_frames);
 }
 
 static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
@@ -1144,19 +1134,13 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 
 	psr_irq_control(intel_dp);
 
-	if (intel_dp->psr.dc3co_exitline) {
-		u32 val;
-
-		/*
-		 * TODO: if future platforms supports DC3CO in more than one
-		 * transcoder, EXITLINE will need to be unset when disabling PSR
-		 */
-		val = intel_de_read(dev_priv, EXITLINE(cpu_transcoder));
-		val &= ~EXITLINE_MASK;
-		val |= intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT;
-		val |= EXITLINE_ENABLE;
-		intel_de_write(dev_priv, EXITLINE(cpu_transcoder), val);
-	}
+	/*
+	 * TODO: if future platforms supports DC3CO in more than one
+	 * transcoder, EXITLINE will need to be unset when disabling PSR
+	 */
+	if (intel_dp->psr.dc3co_exitline)
+		intel_de_rmw(dev_priv, EXITLINE(cpu_transcoder), EXITLINE_MASK,
+			     intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT | EXITLINE_ENABLE);
 
 	if (HAS_PSR_HW_TRACKING(dev_priv) && HAS_PSR2_SEL_FETCH(dev_priv))
 		intel_de_rmw(dev_priv, CHICKEN_PAR1_1, IGNORE_PSR2_HW_TRACKING,
-- 
2.34.1

