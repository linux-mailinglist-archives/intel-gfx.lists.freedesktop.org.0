Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE17965E61
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 12:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAABA10E9D7;
	Fri, 30 Aug 2024 10:16:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NaIo6gdk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D785310E9A9;
 Fri, 30 Aug 2024 10:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725012987; x=1756548987;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pdtzYZYwDxMOYTht55SWJAo1XOap93tGfk2lumptMmI=;
 b=NaIo6gdkj5oLfQneunxmsI2VU4sXTwh5vrBl7bBipbSYLBCcJG7H/PzM
 EH3q2ptKE7KH7n889yvMgWrWkNkTuBQ3L/xNeSJ2ak+qPycLRFlJau7EP
 vQYJ1dZoCv8bbO9xp9WqbGHCZng/qq9zHkzK7q3phciXcTgHUNZaO0jvB
 wu1Ali/SaIidw70zzJn6OGpgz65JDKEwJ9VvqfYojUF3b+NMzH06tR4Xk
 vreHWzmTccjyW4azs5a9SZuks8pSGbgc0NbqO21/6tLnea4CcPcsdDMQC
 oRMiq7apsgotJOemt+yrAsbEFmQMY5mRW9fdASpvgRxWCJZAimS1q91UR w==;
X-CSE-ConnectionGUID: KmOHLMYXRteWSY+BwOBkvQ==
X-CSE-MsgGUID: 81hAjEUeQOmWgFzO2TvFbA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23164440"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23164440"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:12 -0700
X-CSE-ConnectionGUID: gnntGqKcRreKoIXC9SnQMA==
X-CSE-MsgGUID: EKLk4kHyS16XUEnUXV28Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="68252467"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.88])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 03:16:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/11] drm/i915/dp: convert g4x_dp.[ch] to struct intel_display
Date: Fri, 30 Aug 2024 13:15:40 +0300
Message-Id: <b80ffb6373e9e3daaba0762ff7aebe168511b3a7.1725012870.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725012870.git.jani.nikula@intel.com>
References: <cover.1725012870.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
g4x_dp.[ch] to struct intel_display.

Some stragglers are left behind where needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c | 152 ++++++++++++++------------
 1 file changed, 82 insertions(+), 70 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index c2128b46bdbd..526c8c4d7b53 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -89,6 +89,7 @@ void g4x_dp_set_clock(struct intel_encoder *encoder,
 static void intel_dp_prepare(struct intel_encoder *encoder,
 			     const struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	enum port port = encoder->port;
@@ -118,7 +119,7 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 	/* Preserve the BIOS-computed detected bit. This is
 	 * supposed to be read-only.
 	 */
-	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg) & DP_DETECTED;
+	intel_dp->DP = intel_de_read(display, intel_dp->output_reg) & DP_DETECTED;
 
 	/* Handle DP bits in common between all three register formats */
 	intel_dp->DP |= DP_VOLTAGE_0_4 | DP_PRE_EMPHASIS_0;
@@ -140,7 +141,7 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 	} else if (HAS_PCH_CPT(dev_priv) && port != PORT_A) {
 		intel_dp->DP |= DP_LINK_TRAIN_OFF_CPT;
 
-		intel_de_rmw(dev_priv, TRANS_DP_CTL(crtc->pipe),
+		intel_de_rmw(display, TRANS_DP_CTL(crtc->pipe),
 			     TRANS_DP_ENH_FRAMING,
 			     pipe_config->enhanced_framing ?
 			     TRANS_DP_ENH_FRAMING : 0);
@@ -166,9 +167,10 @@ static void intel_dp_prepare(struct intel_encoder *encoder,
 
 static void assert_dp_port(struct intel_dp *intel_dp, bool state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
-	bool cur_state = intel_de_read(dev_priv, intel_dp->output_reg) & DP_PORT_EN;
+	bool cur_state = intel_de_read(display, intel_dp->output_reg) & DP_PORT_EN;
 
 	I915_STATE_WARN(dev_priv, cur_state != state,
 			"[ENCODER:%d:%s] state assertion failure (expected %s, current %s)\n",
@@ -179,7 +181,8 @@ static void assert_dp_port(struct intel_dp *intel_dp, bool state)
 
 static void assert_edp_pll(struct drm_i915_private *dev_priv, bool state)
 {
-	bool cur_state = intel_de_read(dev_priv, DP_A) & DP_PLL_ENABLE;
+	struct intel_display *display = &dev_priv->display;
+	bool cur_state = intel_de_read(display, DP_A) & DP_PLL_ENABLE;
 
 	I915_STATE_WARN(dev_priv, cur_state != state,
 			"eDP PLL state assertion failure (expected %s, current %s)\n",
@@ -191,6 +194,7 @@ static void assert_edp_pll(struct drm_i915_private *dev_priv, bool state)
 static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 			   const struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
@@ -198,7 +202,7 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 	assert_dp_port_disabled(intel_dp);
 	assert_edp_pll_disabled(dev_priv);
 
-	drm_dbg_kms(&dev_priv->drm, "enabling eDP PLL for clock %d\n",
+	drm_dbg_kms(display->drm, "enabling eDP PLL for clock %d\n",
 		    pipe_config->port_clock);
 
 	intel_dp->DP &= ~DP_PLL_FREQ_MASK;
@@ -208,8 +212,8 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 	else
 		intel_dp->DP |= DP_PLL_FREQ_270MHZ;
 
-	intel_de_write(dev_priv, DP_A, intel_dp->DP);
-	intel_de_posting_read(dev_priv, DP_A);
+	intel_de_write(display, DP_A, intel_dp->DP);
+	intel_de_posting_read(display, DP_A);
 	udelay(500);
 
 	/*
@@ -223,14 +227,15 @@ static void ilk_edp_pll_on(struct intel_dp *intel_dp,
 
 	intel_dp->DP |= DP_PLL_ENABLE;
 
-	intel_de_write(dev_priv, DP_A, intel_dp->DP);
-	intel_de_posting_read(dev_priv, DP_A);
+	intel_de_write(display, DP_A, intel_dp->DP);
+	intel_de_posting_read(display, DP_A);
 	udelay(200);
 }
 
 static void ilk_edp_pll_off(struct intel_dp *intel_dp,
 			    const struct intel_crtc_state *old_crtc_state)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
@@ -238,22 +243,23 @@ static void ilk_edp_pll_off(struct intel_dp *intel_dp,
 	assert_dp_port_disabled(intel_dp);
 	assert_edp_pll_enabled(dev_priv);
 
-	drm_dbg_kms(&dev_priv->drm, "disabling eDP PLL\n");
+	drm_dbg_kms(display->drm, "disabling eDP PLL\n");
 
 	intel_dp->DP &= ~DP_PLL_ENABLE;
 
-	intel_de_write(dev_priv, DP_A, intel_dp->DP);
-	intel_de_posting_read(dev_priv, DP_A);
+	intel_de_write(display, DP_A, intel_dp->DP);
+	intel_de_posting_read(display, DP_A);
 	udelay(200);
 }
 
 static bool cpt_dp_port_selected(struct drm_i915_private *dev_priv,
 				 enum port port, enum pipe *pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe p;
 
-	for_each_pipe(dev_priv, p) {
-		u32 val = intel_de_read(dev_priv, TRANS_DP_CTL(p));
+	for_each_pipe(display, p) {
+		u32 val = intel_de_read(display, TRANS_DP_CTL(p));
 
 		if ((val & TRANS_DP_PORT_SEL_MASK) == TRANS_DP_PORT_SEL(port)) {
 			*pipe = p;
@@ -261,7 +267,7 @@ static bool cpt_dp_port_selected(struct drm_i915_private *dev_priv,
 		}
 	}
 
-	drm_dbg_kms(&dev_priv->drm, "No pipe for DP port %c found\n",
+	drm_dbg_kms(display->drm, "No pipe for DP port %c found\n",
 		    port_name(port));
 
 	/* must initialize pipe to something for the asserts */
@@ -274,10 +280,11 @@ bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
 			 i915_reg_t dp_reg, enum port port,
 			 enum pipe *pipe)
 {
+	struct intel_display *display = &dev_priv->display;
 	bool ret;
 	u32 val;
 
-	val = intel_de_read(dev_priv, dp_reg);
+	val = intel_de_read(display, dp_reg);
 
 	ret = val & DP_PORT_EN;
 
@@ -333,6 +340,7 @@ static void g4x_dp_get_m_n(struct intel_crtc_state *crtc_state)
 static void intel_dp_get_config(struct intel_encoder *encoder,
 				struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u32 tmp, flags = 0;
@@ -344,12 +352,12 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 	else
 		pipe_config->output_types |= BIT(INTEL_OUTPUT_DP);
 
-	tmp = intel_de_read(dev_priv, intel_dp->output_reg);
+	tmp = intel_de_read(display, intel_dp->output_reg);
 
 	pipe_config->has_audio = tmp & DP_AUDIO_OUTPUT_ENABLE && port != PORT_A;
 
 	if (HAS_PCH_CPT(dev_priv) && port != PORT_A) {
-		u32 trans_dp = intel_de_read(dev_priv,
+		u32 trans_dp = intel_de_read(display,
 					     TRANS_DP_CTL(crtc->pipe));
 
 		if (trans_dp & TRANS_DP_ENH_FRAMING)
@@ -390,7 +398,7 @@ static void intel_dp_get_config(struct intel_encoder *encoder,
 	g4x_dp_get_m_n(pipe_config);
 
 	if (port == PORT_A) {
-		if ((intel_de_read(dev_priv, DP_A) & DP_PLL_FREQ_MASK) == DP_PLL_FREQ_162MHZ)
+		if ((intel_de_read(display, DP_A) & DP_PLL_FREQ_MASK) == DP_PLL_FREQ_162MHZ)
 			pipe_config->port_clock = 162000;
 		else
 			pipe_config->port_clock = 270000;
@@ -410,17 +418,18 @@ static void
 intel_dp_link_down(struct intel_encoder *encoder,
 		   const struct intel_crtc_state *old_crtc_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
 	enum port port = encoder->port;
 
-	if (drm_WARN_ON(&dev_priv->drm,
-			(intel_de_read(dev_priv, intel_dp->output_reg) &
+	if (drm_WARN_ON(display->drm,
+			(intel_de_read(display, intel_dp->output_reg) &
 			 DP_PORT_EN) == 0))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	if ((IS_IVYBRIDGE(dev_priv) && port == PORT_A) ||
 	    (HAS_PCH_CPT(dev_priv) && port != PORT_A)) {
@@ -430,12 +439,12 @@ intel_dp_link_down(struct intel_encoder *encoder,
 		intel_dp->DP &= ~DP_LINK_TRAIN_MASK;
 		intel_dp->DP |= DP_LINK_TRAIN_PAT_IDLE;
 	}
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
-	intel_de_posting_read(dev_priv, intel_dp->output_reg);
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(display, intel_dp->output_reg);
 
 	intel_dp->DP &= ~DP_PORT_EN;
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
-	intel_de_posting_read(dev_priv, intel_dp->output_reg);
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(display, intel_dp->output_reg);
 
 	/*
 	 * HW workaround for IBX, we need to move the port
@@ -454,12 +463,12 @@ intel_dp_link_down(struct intel_encoder *encoder,
 		intel_dp->DP &= ~(DP_PIPE_SEL_MASK | DP_LINK_TRAIN_MASK);
 		intel_dp->DP |= DP_PORT_EN | DP_PIPE_SEL(PIPE_A) |
 			DP_LINK_TRAIN_PAT_1;
-		intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
-		intel_de_posting_read(dev_priv, intel_dp->output_reg);
+		intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+		intel_de_posting_read(display, intel_dp->output_reg);
 
 		intel_dp->DP &= ~DP_PORT_EN;
-		intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
-		intel_de_posting_read(dev_priv, intel_dp->output_reg);
+		intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+		intel_de_posting_read(display, intel_dp->output_reg);
 
 		intel_wait_for_vblank_if_active(dev_priv, PIPE_A);
 		intel_set_cpu_fifo_underrun_reporting(dev_priv, PIPE_A, true);
@@ -480,7 +489,7 @@ static void g4x_dp_audio_enable(struct intel_encoder *encoder,
 				const struct intel_crtc_state *crtc_state,
 				const struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	if (!crtc_state->has_audio)
@@ -488,7 +497,7 @@ static void g4x_dp_audio_enable(struct intel_encoder *encoder,
 
 	/* Enable audio presence detect */
 	intel_dp->DP |= DP_AUDIO_OUTPUT_ENABLE;
-	intel_de_write(i915, intel_dp->output_reg, intel_dp->DP);
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
 
 	intel_audio_codec_enable(encoder, crtc_state, conn_state);
 }
@@ -497,7 +506,7 @@ static void g4x_dp_audio_disable(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *old_crtc_state,
 				 const struct drm_connector_state *old_conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	if (!old_crtc_state->has_audio)
@@ -507,7 +516,7 @@ static void g4x_dp_audio_disable(struct intel_encoder *encoder,
 
 	/* Disable audio presence detect */
 	intel_dp->DP &= ~DP_AUDIO_OUTPUT_ENABLE;
-	intel_de_write(i915, intel_dp->output_reg, intel_dp->DP);
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
 }
 
 static void intel_disable_dp(struct intel_atomic_state *state,
@@ -596,7 +605,7 @@ cpt_set_link_train(struct intel_dp *intel_dp,
 		   const struct intel_crtc_state *crtc_state,
 		   u8 dp_train_pat)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	intel_dp->DP &= ~DP_LINK_TRAIN_MASK_CPT;
 
@@ -615,8 +624,8 @@ cpt_set_link_train(struct intel_dp *intel_dp,
 		return;
 	}
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
-	intel_de_posting_read(dev_priv, intel_dp->output_reg);
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(display, intel_dp->output_reg);
 }
 
 static void
@@ -624,7 +633,7 @@ g4x_set_link_train(struct intel_dp *intel_dp,
 		   const struct intel_crtc_state *crtc_state,
 		   u8 dp_train_pat)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	intel_dp->DP &= ~DP_LINK_TRAIN_MASK;
 
@@ -643,14 +652,14 @@ g4x_set_link_train(struct intel_dp *intel_dp,
 		return;
 	}
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
-	intel_de_posting_read(dev_priv, intel_dp->output_reg);
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(display, intel_dp->output_reg);
 }
 
 static void intel_dp_enable_port(struct intel_dp *intel_dp,
 				 const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
 
 	/* enable with pattern 1 (as per spec) */
 
@@ -665,8 +674,8 @@ static void intel_dp_enable_port(struct intel_dp *intel_dp,
 	 */
 	intel_dp->DP |= DP_PORT_EN;
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
-	intel_de_posting_read(dev_priv, intel_dp->output_reg);
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(display, intel_dp->output_reg);
 }
 
 static void intel_enable_dp(struct intel_atomic_state *state,
@@ -674,12 +683,13 @@ static void intel_enable_dp(struct intel_atomic_state *state,
 			    const struct intel_crtc_state *pipe_config,
 			    const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	u32 dp_reg = intel_de_read(dev_priv, intel_dp->output_reg);
+	u32 dp_reg = intel_de_read(display, intel_dp->output_reg);
 	intel_wakeref_t wakeref;
 
-	if (drm_WARN_ON(&dev_priv->drm, dp_reg & DP_PORT_EN))
+	if (drm_WARN_ON(display->drm, dp_reg & DP_PORT_EN))
 		return;
 
 	with_intel_pps_lock(intel_dp, wakeref) {
@@ -1026,21 +1036,21 @@ static void
 g4x_set_signal_levels(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u8 train_set = intel_dp->train_set[0];
 	u32 signal_levels;
 
 	signal_levels = g4x_signal_levels(train_set);
 
-	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
+	drm_dbg_kms(display->drm, "Using signal levels %08x\n",
 		    signal_levels);
 
 	intel_dp->DP &= ~(DP_VOLTAGE_MASK | DP_PRE_EMPHASIS_MASK);
 	intel_dp->DP |= signal_levels;
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
-	intel_de_posting_read(dev_priv, intel_dp->output_reg);
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(display, intel_dp->output_reg);
 }
 
 /* SNB CPU eDP voltage swing and pre-emphasis control */
@@ -1074,21 +1084,21 @@ static void
 snb_cpu_edp_set_signal_levels(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u8 train_set = intel_dp->train_set[0];
 	u32 signal_levels;
 
 	signal_levels = snb_cpu_edp_signal_levels(train_set);
 
-	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
+	drm_dbg_kms(display->drm, "Using signal levels %08x\n",
 		    signal_levels);
 
 	intel_dp->DP &= ~EDP_LINK_TRAIN_VOL_EMP_MASK_SNB;
 	intel_dp->DP |= signal_levels;
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
-	intel_de_posting_read(dev_priv, intel_dp->output_reg);
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(display, intel_dp->output_reg);
 }
 
 /* IVB CPU eDP voltage swing and pre-emphasis control */
@@ -1126,21 +1136,21 @@ static void
 ivb_cpu_edp_set_signal_levels(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	u8 train_set = intel_dp->train_set[0];
 	u32 signal_levels;
 
 	signal_levels = ivb_cpu_edp_signal_levels(train_set);
 
-	drm_dbg_kms(&dev_priv->drm, "Using signal levels %08x\n",
+	drm_dbg_kms(display->drm, "Using signal levels %08x\n",
 		    signal_levels);
 
 	intel_dp->DP &= ~EDP_LINK_TRAIN_VOL_EMP_MASK_IVB;
 	intel_dp->DP |= signal_levels;
 
-	intel_de_write(dev_priv, intel_dp->output_reg, intel_dp->DP);
-	intel_de_posting_read(dev_priv, intel_dp->output_reg);
+	intel_de_write(display, intel_dp->output_reg, intel_dp->DP);
+	intel_de_posting_read(display, intel_dp->output_reg);
 }
 
 /*
@@ -1185,15 +1195,15 @@ intel_dp_hotplug(struct intel_encoder *encoder,
 
 static bool ibx_digital_port_connected(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->display.hotplug.pch_hpd[encoder->hpd_pin];
+	struct intel_display *display = to_intel_display(encoder);
+	u32 bit = display->hotplug.pch_hpd[encoder->hpd_pin];
 
-	return intel_de_read(dev_priv, SDEISR) & bit;
+	return intel_de_read(display, SDEISR) & bit;
 }
 
 static bool g4x_digital_port_connected(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	u32 bit;
 
 	switch (encoder->hpd_pin) {
@@ -1211,15 +1221,15 @@ static bool g4x_digital_port_connected(struct intel_encoder *encoder)
 		return false;
 	}
 
-	return intel_de_read(dev_priv, PORT_HOTPLUG_STAT(dev_priv)) & bit;
+	return intel_de_read(display, PORT_HOTPLUG_STAT(display)) & bit;
 }
 
 static bool ilk_digital_port_connected(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 bit = dev_priv->display.hotplug.hpd[encoder->hpd_pin];
+	struct intel_display *display = to_intel_display(encoder);
+	u32 bit = display->hotplug.hpd[encoder->hpd_pin];
 
-	return intel_de_read(dev_priv, DEISR) & bit;
+	return intel_de_read(display, DEISR) & bit;
 }
 
 static void g4x_dp_suspend_complete(struct intel_encoder *encoder)
@@ -1241,7 +1251,8 @@ static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
 
 enum pipe vlv_active_pipe(struct intel_dp *intel_dp)
 {
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	enum pipe pipe;
 
@@ -1254,10 +1265,11 @@ enum pipe vlv_active_pipe(struct intel_dp *intel_dp)
 
 static void intel_dp_encoder_reset(struct drm_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder->dev);
 	struct drm_i915_private *dev_priv = to_i915(encoder->dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(to_intel_encoder(encoder));
 
-	intel_dp->DP = intel_de_read(dev_priv, intel_dp->output_reg);
+	intel_dp->DP = intel_de_read(display, intel_dp->output_reg);
 
 	intel_dp->reset_link_params = true;
 
@@ -1293,7 +1305,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 
 	/* FIXME bail? */
 	if (!devdata)
-		drm_dbg_kms(&dev_priv->drm, "No VBT child device for DP-%c\n",
+		drm_dbg_kms(display->drm, "No VBT child device for DP-%c\n",
 			    port_name(port));
 
 	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
@@ -1313,7 +1325,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 
 	mutex_init(&dig_port->hdcp_mutex);
 
-	if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
+	if (drm_encoder_init(display->drm, &intel_encoder->base,
 			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			     "DP %c", port_name(port)))
 		goto err_encoder_init;
@@ -1397,7 +1409,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 
 	dig_port->hpd_pulse = intel_dp_hpd_pulse;
 
-	if (HAS_GMCH(dev_priv)) {
+	if (HAS_GMCH(display)) {
 		dig_port->connected = g4x_digital_port_connected;
 	} else {
 		if (port == PORT_A)
-- 
2.39.2

