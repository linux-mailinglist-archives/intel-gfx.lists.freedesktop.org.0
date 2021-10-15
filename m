Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A65CC42E9DE
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Oct 2021 09:16:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89F736ECE5;
	Fri, 15 Oct 2021 07:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 940D06ECD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Oct 2021 07:16:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="214802489"
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="214802489"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2021 00:16:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,375,1624345200"; d="scan'208";a="525350766"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 15 Oct 2021 00:16:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Oct 2021 10:16:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Dave Airlie <airlied@redhat.com>,
	Jani Nikula <jani.nikula@intel.com>
Date: Fri, 15 Oct 2021 10:16:18 +0300
Message-Id: <20211015071625.593-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211015071625.593-1-ville.syrjala@linux.intel.com>
References: <20211015071625.593-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i915: Move PCH modeset code to its own
 file
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

Start moving the code for PCH modeset sequence/etc. to
its own file.

Still not sure about the file name though...

Cc: Dave Airlie <airlied@redhat.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
 drivers/gpu/drm/i915/display/intel_display.c  | 348 +----------------
 drivers/gpu/drm/i915/display/intel_display.h  |   5 -
 .../gpu/drm/i915/display/intel_pch_display.c  | 365 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_pch_display.h  |  22 ++
 6 files changed, 390 insertions(+), 352 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_pch_display.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_pch_display.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 96f3b8f6c50d..467872cca027 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -226,6 +226,7 @@ i915-y += \
 	display/intel_hotplug.o \
 	display/intel_lpe_audio.o \
 	display/intel_overlay.o \
+	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
 	display/intel_plane_initial.o \
 	display/intel_psr.o \
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index bf03bd0ecd43..54540138bd1d 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -45,6 +45,7 @@
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
+#include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
 
 /* Here's the desired hotplug mode */
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 995050443065..69549886fe5b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -96,6 +96,7 @@
 #include "intel_hotplug.h"
 #include "intel_overlay.h"
 #include "intel_panel.h"
+#include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
 #include "intel_pcode.h"
 #include "intel_pipe_crc.h"
@@ -454,80 +455,6 @@ static void assert_planes_disabled(struct intel_crtc *crtc)
 		assert_plane_disabled(plane);
 }
 
-void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
-				    enum pipe pipe)
-{
-	u32 val;
-	bool enabled;
-
-	val = intel_de_read(dev_priv, PCH_TRANSCONF(pipe));
-	enabled = !!(val & TRANS_ENABLE);
-	I915_STATE_WARN(enabled,
-	     "transcoder assertion failed, should be off on pipe %c but is still active\n",
-	     pipe_name(pipe));
-}
-
-static void assert_pch_dp_disabled(struct drm_i915_private *dev_priv,
-				   enum pipe pipe, enum port port,
-				   i915_reg_t dp_reg)
-{
-	enum pipe port_pipe;
-	bool state;
-
-	state = g4x_dp_port_enabled(dev_priv, dp_reg, port, &port_pipe);
-
-	I915_STATE_WARN(state && port_pipe == pipe,
-			"PCH DP %c enabled on transcoder %c, should be disabled\n",
-			port_name(port), pipe_name(pipe));
-
-	I915_STATE_WARN(HAS_PCH_IBX(dev_priv) && !state && port_pipe == PIPE_B,
-			"IBX PCH DP %c still using transcoder B\n",
-			port_name(port));
-}
-
-static void assert_pch_hdmi_disabled(struct drm_i915_private *dev_priv,
-				     enum pipe pipe, enum port port,
-				     i915_reg_t hdmi_reg)
-{
-	enum pipe port_pipe;
-	bool state;
-
-	state = intel_sdvo_port_enabled(dev_priv, hdmi_reg, &port_pipe);
-
-	I915_STATE_WARN(state && port_pipe == pipe,
-			"PCH HDMI %c enabled on transcoder %c, should be disabled\n",
-			port_name(port), pipe_name(pipe));
-
-	I915_STATE_WARN(HAS_PCH_IBX(dev_priv) && !state && port_pipe == PIPE_B,
-			"IBX PCH HDMI %c still using transcoder B\n",
-			port_name(port));
-}
-
-static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
-				      enum pipe pipe)
-{
-	enum pipe port_pipe;
-
-	assert_pch_dp_disabled(dev_priv, pipe, PORT_B, PCH_DP_B);
-	assert_pch_dp_disabled(dev_priv, pipe, PORT_C, PCH_DP_C);
-	assert_pch_dp_disabled(dev_priv, pipe, PORT_D, PCH_DP_D);
-
-	I915_STATE_WARN(intel_crt_port_enabled(dev_priv, PCH_ADPA, &port_pipe) &&
-			port_pipe == pipe,
-			"PCH VGA enabled on transcoder %c, should be disabled\n",
-			pipe_name(pipe));
-
-	I915_STATE_WARN(intel_lvds_port_enabled(dev_priv, PCH_LVDS, &port_pipe) &&
-			port_pipe == pipe,
-			"PCH LVDS enabled on transcoder %c, should be disabled\n",
-			pipe_name(pipe));
-
-	/* PCH SDVOB multiplex with HDMIB */
-	assert_pch_hdmi_disabled(dev_priv, pipe, PORT_B, PCH_HDMIB);
-	assert_pch_hdmi_disabled(dev_priv, pipe, PORT_C, PCH_HDMIC);
-	assert_pch_hdmi_disabled(dev_priv, pipe, PORT_D, PCH_HDMID);
-}
-
 void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 			 struct intel_digital_port *dig_port,
 			 unsigned int expected_mask)
@@ -562,154 +489,6 @@ void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 			 expected_mask);
 }
 
-static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum pipe pipe = crtc->pipe;
-	i915_reg_t reg;
-	u32 val, pipeconf_val;
-
-	/* Make sure PCH DPLL is enabled */
-	assert_shared_dpll_enabled(dev_priv, crtc_state->shared_dpll);
-
-	/* FDI must be feeding us bits for PCH ports */
-	assert_fdi_tx_enabled(dev_priv, pipe);
-	assert_fdi_rx_enabled(dev_priv, pipe);
-
-	if (HAS_PCH_CPT(dev_priv)) {
-		reg = TRANS_CHICKEN2(pipe);
-		val = intel_de_read(dev_priv, reg);
-		/*
-		 * Workaround: Set the timing override bit
-		 * before enabling the pch transcoder.
-		 */
-		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
-		/* Configure frame start delay to match the CPU */
-		val &= ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
-		val |= TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
-		intel_de_write(dev_priv, reg, val);
-	}
-
-	reg = PCH_TRANSCONF(pipe);
-	val = intel_de_read(dev_priv, reg);
-	pipeconf_val = intel_de_read(dev_priv, PIPECONF(pipe));
-
-	if (HAS_PCH_IBX(dev_priv)) {
-		/* Configure frame start delay to match the CPU */
-		val &= ~TRANS_FRAME_START_DELAY_MASK;
-		val |= TRANS_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
-
-		/*
-		 * Make the BPC in transcoder be consistent with
-		 * that in pipeconf reg. For HDMI we must use 8bpc
-		 * here for both 8bpc and 12bpc.
-		 */
-		val &= ~PIPECONF_BPC_MASK;
-		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-			val |= PIPECONF_8BPC;
-		else
-			val |= pipeconf_val & PIPECONF_BPC_MASK;
-	}
-
-	val &= ~TRANS_INTERLACE_MASK;
-	if ((pipeconf_val & PIPECONF_INTERLACE_MASK) == PIPECONF_INTERLACED_ILK) {
-		if (HAS_PCH_IBX(dev_priv) &&
-		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
-			val |= TRANS_LEGACY_INTERLACED_ILK;
-		else
-			val |= TRANS_INTERLACED;
-	} else {
-		val |= TRANS_PROGRESSIVE;
-	}
-
-	intel_de_write(dev_priv, reg, val | TRANS_ENABLE);
-	if (intel_de_wait_for_set(dev_priv, reg, TRANS_STATE_ENABLE, 100))
-		drm_err(&dev_priv->drm, "failed to enable transcoder %c\n",
-			pipe_name(pipe));
-}
-
-static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
-				      enum transcoder cpu_transcoder)
-{
-	u32 val, pipeconf_val;
-
-	/* FDI must be feeding us bits for PCH ports */
-	assert_fdi_tx_enabled(dev_priv, (enum pipe) cpu_transcoder);
-	assert_fdi_rx_enabled(dev_priv, PIPE_A);
-
-	val = intel_de_read(dev_priv, TRANS_CHICKEN2(PIPE_A));
-	/* Workaround: set timing override bit. */
-	val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
-	/* Configure frame start delay to match the CPU */
-	val &= ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
-	val |= TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
-	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
-
-	val = TRANS_ENABLE;
-	pipeconf_val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
-
-	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_HSW) ==
-	    PIPECONF_INTERLACED_ILK)
-		val |= TRANS_INTERLACED;
-	else
-		val |= TRANS_PROGRESSIVE;
-
-	intel_de_write(dev_priv, LPT_TRANSCONF, val);
-	if (intel_de_wait_for_set(dev_priv, LPT_TRANSCONF,
-				  TRANS_STATE_ENABLE, 100))
-		drm_err(&dev_priv->drm, "Failed to enable PCH transcoder\n");
-}
-
-static void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
-				       enum pipe pipe)
-{
-	i915_reg_t reg;
-	u32 val;
-
-	/* FDI relies on the transcoder */
-	assert_fdi_tx_disabled(dev_priv, pipe);
-	assert_fdi_rx_disabled(dev_priv, pipe);
-
-	/* Ports must be off as well */
-	assert_pch_ports_disabled(dev_priv, pipe);
-
-	reg = PCH_TRANSCONF(pipe);
-	val = intel_de_read(dev_priv, reg);
-	val &= ~TRANS_ENABLE;
-	intel_de_write(dev_priv, reg, val);
-	/* wait for PCH transcoder off, transcoder state */
-	if (intel_de_wait_for_clear(dev_priv, reg, TRANS_STATE_ENABLE, 50))
-		drm_err(&dev_priv->drm, "failed to disable transcoder %c\n",
-			pipe_name(pipe));
-
-	if (HAS_PCH_CPT(dev_priv)) {
-		/* Workaround: Clear the timing override chicken bit again. */
-		reg = TRANS_CHICKEN2(pipe);
-		val = intel_de_read(dev_priv, reg);
-		val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
-		intel_de_write(dev_priv, reg, val);
-	}
-}
-
-void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv)
-{
-	u32 val;
-
-	val = intel_de_read(dev_priv, LPT_TRANSCONF);
-	val &= ~TRANS_ENABLE;
-	intel_de_write(dev_priv, LPT_TRANSCONF, val);
-	/* wait for PCH transcoder off, transcoder state */
-	if (intel_de_wait_for_clear(dev_priv, LPT_TRANSCONF,
-				    TRANS_STATE_ENABLE, 50))
-		drm_err(&dev_priv->drm, "Failed to disable PCH transcoder\n");
-
-	/* Workaround: clear timing override bit. */
-	val = intel_de_read(dev_priv, TRANS_CHICKEN2(PIPE_A));
-	val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
-	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
-}
-
 enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
@@ -1388,31 +1167,6 @@ bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv)
 	return false;
 }
 
-
-static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_state,
-					   enum pipe pch_transcoder)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-
-	intel_de_write(dev_priv, PCH_TRANS_HTOTAL(pch_transcoder),
-		       intel_de_read(dev_priv, HTOTAL(cpu_transcoder)));
-	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
-		       intel_de_read(dev_priv, HBLANK(cpu_transcoder)));
-	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
-		       intel_de_read(dev_priv, HSYNC(cpu_transcoder)));
-
-	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
-		       intel_de_read(dev_priv, VTOTAL(cpu_transcoder)));
-	intel_de_write(dev_priv, PCH_TRANS_VBLANK(pch_transcoder),
-		       intel_de_read(dev_priv, VBLANK(cpu_transcoder)));
-	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
-		       intel_de_read(dev_priv, VSYNC(cpu_transcoder)));
-	intel_de_write(dev_priv, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
-		       intel_de_read(dev_priv, VSYNCSHIFT(cpu_transcoder)));
-}
-
 /*
  * Finds the encoder associated with the given CRTC. This can only be
  * used when we know that the CRTC isn't feeding multiple encoders!
@@ -1443,106 +1197,6 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
 	return encoder;
 }
 
-/*
- * Enable PCH resources required for PCH ports:
- *   - PCH PLLs
- *   - FDI training & RX/TX
- *   - update transcoder timings
- *   - DP transcoding bits
- *   - transcoder
- */
-static void ilk_pch_enable(const struct intel_atomic_state *state,
-			   const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_device *dev = crtc->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
-	enum pipe pipe = crtc->pipe;
-	u32 temp;
-
-	assert_pch_transcoder_disabled(dev_priv, pipe);
-
-	/* For PCH output, training FDI link */
-	intel_fdi_link_train(crtc, crtc_state);
-
-	/* We need to program the right clock selection before writing the pixel
-	 * mutliplier into the DPLL. */
-	if (HAS_PCH_CPT(dev_priv)) {
-		u32 sel;
-
-		temp = intel_de_read(dev_priv, PCH_DPLL_SEL);
-		temp |= TRANS_DPLL_ENABLE(pipe);
-		sel = TRANS_DPLLB_SEL(pipe);
-		if (crtc_state->shared_dpll ==
-		    intel_get_shared_dpll_by_id(dev_priv, DPLL_ID_PCH_PLL_B))
-			temp |= sel;
-		else
-			temp &= ~sel;
-		intel_de_write(dev_priv, PCH_DPLL_SEL, temp);
-	}
-
-	/* XXX: pch pll's can be enabled any time before we enable the PCH
-	 * transcoder, and we actually should do this to not upset any PCH
-	 * transcoder that already use the clock when we share it.
-	 *
-	 * Note that enable_shared_dpll tries to do the right thing, but
-	 * get_shared_dpll unconditionally resets the pll - we need that to have
-	 * the right LVDS enable sequence. */
-	intel_enable_shared_dpll(crtc_state);
-
-	/* set transcoder timing, panel must allow it */
-	assert_pps_unlocked(dev_priv, pipe);
-	ilk_pch_transcoder_set_timings(crtc_state, pipe);
-
-	intel_fdi_normal_train(crtc);
-
-	/* For PCH DP, enable TRANS_DP_CTL */
-	if (HAS_PCH_CPT(dev_priv) &&
-	    intel_crtc_has_dp_encoder(crtc_state)) {
-		const struct drm_display_mode *adjusted_mode =
-			&crtc_state->hw.adjusted_mode;
-		u32 bpc = (intel_de_read(dev_priv, PIPECONF(pipe)) & PIPECONF_BPC_MASK) >> 5;
-		i915_reg_t reg = TRANS_DP_CTL(pipe);
-		enum port port;
-
-		temp = intel_de_read(dev_priv, reg);
-		temp &= ~(TRANS_DP_PORT_SEL_MASK |
-			  TRANS_DP_SYNC_MASK |
-			  TRANS_DP_BPC_MASK);
-		temp |= TRANS_DP_OUTPUT_ENABLE;
-		temp |= bpc << 9; /* same format but at 11:9 */
-
-		if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
-			temp |= TRANS_DP_HSYNC_ACTIVE_HIGH;
-		if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
-			temp |= TRANS_DP_VSYNC_ACTIVE_HIGH;
-
-		port = intel_get_crtc_new_encoder(state, crtc_state)->port;
-		drm_WARN_ON(dev, port < PORT_B || port > PORT_D);
-		temp |= TRANS_DP_PORT_SEL(port);
-
-		intel_de_write(dev_priv, reg, temp);
-	}
-
-	ilk_enable_pch_transcoder(crtc_state);
-}
-
-void lpt_pch_enable(const struct intel_crtc_state *crtc_state)
-{
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
-
-	assert_pch_transcoder_disabled(dev_priv, PIPE_A);
-
-	lpt_program_iclkip(crtc_state);
-
-	/* Set transcoder timing. */
-	ilk_pch_transcoder_set_timings(crtc_state, PIPE_A);
-
-	lpt_enable_pch_transcoder(dev_priv, cpu_transcoder);
-}
-
 static void cpt_verify_modeset(struct drm_i915_private *dev_priv,
 			       enum pipe pipe)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 39c18b8807f9..93c84f2174b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -541,8 +541,6 @@ int vlv_get_cck_clock(struct drm_i915_private *dev_priv,
 		      const char *name, u32 reg, int ref_freq);
 int vlv_get_cck_clock_hpll(struct drm_i915_private *dev_priv,
 			   const char *name, u32 reg);
-void lpt_pch_enable(const struct intel_crtc_state *crtc_state);
-void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);
 void intel_init_display_hooks(struct drm_i915_private *dev_priv);
 unsigned int intel_fb_xy_to_linear(int x, int y,
 				   const struct intel_plane_state *state,
@@ -578,9 +576,6 @@ struct drm_framebuffer *
 intel_framebuffer_create(struct drm_i915_gem_object *obj,
 			 struct drm_mode_fb_cmd2 *mode_cmd);
 
-void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
-				    enum pipe pipe);
-
 bool intel_fuzzy_clock_check(int clock1, int clock2);
 
 void intel_display_prepare_reset(struct drm_i915_private *dev_priv);
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
new file mode 100644
index 000000000000..0056c2fe49ec
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -0,0 +1,365 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#include "g4x_dp.h"
+#include "intel_crt.h"
+#include "intel_de.h"
+#include "intel_display_types.h"
+#include "intel_fdi.h"
+#include "intel_lvds.h"
+#include "intel_pch_display.h"
+#include "intel_pch_refclk.h"
+#include "intel_pps.h"
+#include "intel_sdvo.h"
+
+static void assert_pch_dp_disabled(struct drm_i915_private *dev_priv,
+				   enum pipe pipe, enum port port,
+				   i915_reg_t dp_reg)
+{
+	enum pipe port_pipe;
+	bool state;
+
+	state = g4x_dp_port_enabled(dev_priv, dp_reg, port, &port_pipe);
+
+	I915_STATE_WARN(state && port_pipe == pipe,
+			"PCH DP %c enabled on transcoder %c, should be disabled\n",
+			port_name(port), pipe_name(pipe));
+
+	I915_STATE_WARN(HAS_PCH_IBX(dev_priv) && !state && port_pipe == PIPE_B,
+			"IBX PCH DP %c still using transcoder B\n",
+			port_name(port));
+}
+
+static void assert_pch_hdmi_disabled(struct drm_i915_private *dev_priv,
+				     enum pipe pipe, enum port port,
+				     i915_reg_t hdmi_reg)
+{
+	enum pipe port_pipe;
+	bool state;
+
+	state = intel_sdvo_port_enabled(dev_priv, hdmi_reg, &port_pipe);
+
+	I915_STATE_WARN(state && port_pipe == pipe,
+			"PCH HDMI %c enabled on transcoder %c, should be disabled\n",
+			port_name(port), pipe_name(pipe));
+
+	I915_STATE_WARN(HAS_PCH_IBX(dev_priv) && !state && port_pipe == PIPE_B,
+			"IBX PCH HDMI %c still using transcoder B\n",
+			port_name(port));
+}
+
+static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
+				      enum pipe pipe)
+{
+	enum pipe port_pipe;
+
+	assert_pch_dp_disabled(dev_priv, pipe, PORT_B, PCH_DP_B);
+	assert_pch_dp_disabled(dev_priv, pipe, PORT_C, PCH_DP_C);
+	assert_pch_dp_disabled(dev_priv, pipe, PORT_D, PCH_DP_D);
+
+	I915_STATE_WARN(intel_crt_port_enabled(dev_priv, PCH_ADPA, &port_pipe) &&
+			port_pipe == pipe,
+			"PCH VGA enabled on transcoder %c, should be disabled\n",
+			pipe_name(pipe));
+
+	I915_STATE_WARN(intel_lvds_port_enabled(dev_priv, PCH_LVDS, &port_pipe) &&
+			port_pipe == pipe,
+			"PCH LVDS enabled on transcoder %c, should be disabled\n",
+			pipe_name(pipe));
+
+	/* PCH SDVOB multiplex with HDMIB */
+	assert_pch_hdmi_disabled(dev_priv, pipe, PORT_B, PCH_HDMIB);
+	assert_pch_hdmi_disabled(dev_priv, pipe, PORT_C, PCH_HDMIC);
+	assert_pch_hdmi_disabled(dev_priv, pipe, PORT_D, PCH_HDMID);
+}
+
+static void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
+					   enum pipe pipe)
+{
+	u32 val;
+	bool enabled;
+
+	val = intel_de_read(dev_priv, PCH_TRANSCONF(pipe));
+	enabled = !!(val & TRANS_ENABLE);
+	I915_STATE_WARN(enabled,
+			"transcoder assertion failed, should be off on pipe %c but is still active\n",
+			pipe_name(pipe));
+}
+
+static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_state,
+					   enum pipe pch_transcoder)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	intel_de_write(dev_priv, PCH_TRANS_HTOTAL(pch_transcoder),
+		       intel_de_read(dev_priv, HTOTAL(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
+		       intel_de_read(dev_priv, HBLANK(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
+		       intel_de_read(dev_priv, HSYNC(cpu_transcoder)));
+
+	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
+		       intel_de_read(dev_priv, VTOTAL(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_VBLANK(pch_transcoder),
+		       intel_de_read(dev_priv, VBLANK(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
+		       intel_de_read(dev_priv, VSYNC(cpu_transcoder)));
+	intel_de_write(dev_priv, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
+		       intel_de_read(dev_priv, VSYNCSHIFT(cpu_transcoder)));
+}
+
+static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	i915_reg_t reg;
+	u32 val, pipeconf_val;
+
+	/* Make sure PCH DPLL is enabled */
+	assert_shared_dpll_enabled(dev_priv, crtc_state->shared_dpll);
+
+	/* FDI must be feeding us bits for PCH ports */
+	assert_fdi_tx_enabled(dev_priv, pipe);
+	assert_fdi_rx_enabled(dev_priv, pipe);
+
+	if (HAS_PCH_CPT(dev_priv)) {
+		reg = TRANS_CHICKEN2(pipe);
+		val = intel_de_read(dev_priv, reg);
+		/*
+		 * Workaround: Set the timing override bit
+		 * before enabling the pch transcoder.
+		 */
+		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
+		/* Configure frame start delay to match the CPU */
+		val &= ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
+		val |= TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
+		intel_de_write(dev_priv, reg, val);
+	}
+
+	reg = PCH_TRANSCONF(pipe);
+	val = intel_de_read(dev_priv, reg);
+	pipeconf_val = intel_de_read(dev_priv, PIPECONF(pipe));
+
+	if (HAS_PCH_IBX(dev_priv)) {
+		/* Configure frame start delay to match the CPU */
+		val &= ~TRANS_FRAME_START_DELAY_MASK;
+		val |= TRANS_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
+
+		/*
+		 * Make the BPC in transcoder be consistent with
+		 * that in pipeconf reg. For HDMI we must use 8bpc
+		 * here for both 8bpc and 12bpc.
+		 */
+		val &= ~PIPECONF_BPC_MASK;
+		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+			val |= PIPECONF_8BPC;
+		else
+			val |= pipeconf_val & PIPECONF_BPC_MASK;
+	}
+
+	val &= ~TRANS_INTERLACE_MASK;
+	if ((pipeconf_val & PIPECONF_INTERLACE_MASK) == PIPECONF_INTERLACED_ILK) {
+		if (HAS_PCH_IBX(dev_priv) &&
+		    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_SDVO))
+			val |= TRANS_LEGACY_INTERLACED_ILK;
+		else
+			val |= TRANS_INTERLACED;
+	} else {
+		val |= TRANS_PROGRESSIVE;
+	}
+
+	intel_de_write(dev_priv, reg, val | TRANS_ENABLE);
+	if (intel_de_wait_for_set(dev_priv, reg, TRANS_STATE_ENABLE, 100))
+		drm_err(&dev_priv->drm, "failed to enable transcoder %c\n",
+			pipe_name(pipe));
+}
+
+void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
+				enum pipe pipe)
+{
+	i915_reg_t reg;
+	u32 val;
+
+	/* FDI relies on the transcoder */
+	assert_fdi_tx_disabled(dev_priv, pipe);
+	assert_fdi_rx_disabled(dev_priv, pipe);
+
+	/* Ports must be off as well */
+	assert_pch_ports_disabled(dev_priv, pipe);
+
+	reg = PCH_TRANSCONF(pipe);
+	val = intel_de_read(dev_priv, reg);
+	val &= ~TRANS_ENABLE;
+	intel_de_write(dev_priv, reg, val);
+	/* wait for PCH transcoder off, transcoder state */
+	if (intel_de_wait_for_clear(dev_priv, reg, TRANS_STATE_ENABLE, 50))
+		drm_err(&dev_priv->drm, "failed to disable transcoder %c\n",
+			pipe_name(pipe));
+
+	if (HAS_PCH_CPT(dev_priv)) {
+		/* Workaround: Clear the timing override chicken bit again. */
+		reg = TRANS_CHICKEN2(pipe);
+		val = intel_de_read(dev_priv, reg);
+		val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
+		intel_de_write(dev_priv, reg, val);
+	}
+}
+
+/*
+ * Enable PCH resources required for PCH ports:
+ *   - PCH PLLs
+ *   - FDI training & RX/TX
+ *   - update transcoder timings
+ *   - DP transcoding bits
+ *   - transcoder
+ */
+void ilk_pch_enable(const struct intel_atomic_state *state,
+		    const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_device *dev = crtc->base.dev;
+	struct drm_i915_private *dev_priv = to_i915(dev);
+	enum pipe pipe = crtc->pipe;
+	u32 temp;
+
+	assert_pch_transcoder_disabled(dev_priv, pipe);
+
+	/* For PCH output, training FDI link */
+	intel_fdi_link_train(crtc, crtc_state);
+
+	/*
+	 * We need to program the right clock selection
+	 * before writing the pixel multiplier into the DPLL.
+	 */
+	if (HAS_PCH_CPT(dev_priv)) {
+		u32 sel;
+
+		temp = intel_de_read(dev_priv, PCH_DPLL_SEL);
+		temp |= TRANS_DPLL_ENABLE(pipe);
+		sel = TRANS_DPLLB_SEL(pipe);
+		if (crtc_state->shared_dpll ==
+		    intel_get_shared_dpll_by_id(dev_priv, DPLL_ID_PCH_PLL_B))
+			temp |= sel;
+		else
+			temp &= ~sel;
+		intel_de_write(dev_priv, PCH_DPLL_SEL, temp);
+	}
+
+	/*
+	 * XXX: pch pll's can be enabled any time before we enable the PCH
+	 * transcoder, and we actually should do this to not upset any PCH
+	 * transcoder that already use the clock when we share it.
+	 *
+	 * Note that enable_shared_dpll tries to do the right thing, but
+	 * get_shared_dpll unconditionally resets the pll - we need that
+	 * to have the right LVDS enable sequence.
+	 */
+	intel_enable_shared_dpll(crtc_state);
+
+	/* set transcoder timing, panel must allow it */
+	assert_pps_unlocked(dev_priv, pipe);
+	ilk_pch_transcoder_set_timings(crtc_state, pipe);
+
+	intel_fdi_normal_train(crtc);
+
+	/* For PCH DP, enable TRANS_DP_CTL */
+	if (HAS_PCH_CPT(dev_priv) &&
+	    intel_crtc_has_dp_encoder(crtc_state)) {
+		const struct drm_display_mode *adjusted_mode =
+			&crtc_state->hw.adjusted_mode;
+		u32 bpc = (intel_de_read(dev_priv, PIPECONF(pipe)) & PIPECONF_BPC_MASK) >> 5;
+		i915_reg_t reg = TRANS_DP_CTL(pipe);
+		enum port port;
+
+		temp = intel_de_read(dev_priv, reg);
+		temp &= ~(TRANS_DP_PORT_SEL_MASK |
+			  TRANS_DP_SYNC_MASK |
+			  TRANS_DP_BPC_MASK);
+		temp |= TRANS_DP_OUTPUT_ENABLE;
+		temp |= bpc << 9; /* same format but at 11:9 */
+
+		if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
+			temp |= TRANS_DP_HSYNC_ACTIVE_HIGH;
+		if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
+			temp |= TRANS_DP_VSYNC_ACTIVE_HIGH;
+
+		port = intel_get_crtc_new_encoder(state, crtc_state)->port;
+		drm_WARN_ON(dev, port < PORT_B || port > PORT_D);
+		temp |= TRANS_DP_PORT_SEL(port);
+
+		intel_de_write(dev_priv, reg, temp);
+	}
+
+	ilk_enable_pch_transcoder(crtc_state);
+}
+
+static void lpt_enable_pch_transcoder(struct drm_i915_private *dev_priv,
+				      enum transcoder cpu_transcoder)
+{
+	u32 val, pipeconf_val;
+
+	/* FDI must be feeding us bits for PCH ports */
+	assert_fdi_tx_enabled(dev_priv, (enum pipe) cpu_transcoder);
+	assert_fdi_rx_enabled(dev_priv, PIPE_A);
+
+	val = intel_de_read(dev_priv, TRANS_CHICKEN2(PIPE_A));
+	/* Workaround: set timing override bit. */
+	val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
+	/* Configure frame start delay to match the CPU */
+	val &= ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
+	val |= TRANS_CHICKEN2_FRAME_START_DELAY(dev_priv->framestart_delay - 1);
+	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
+
+	val = TRANS_ENABLE;
+	pipeconf_val = intel_de_read(dev_priv, PIPECONF(cpu_transcoder));
+
+	if ((pipeconf_val & PIPECONF_INTERLACE_MASK_HSW) ==
+	    PIPECONF_INTERLACED_ILK)
+		val |= TRANS_INTERLACED;
+	else
+		val |= TRANS_PROGRESSIVE;
+
+	intel_de_write(dev_priv, LPT_TRANSCONF, val);
+	if (intel_de_wait_for_set(dev_priv, LPT_TRANSCONF,
+				  TRANS_STATE_ENABLE, 100))
+		drm_err(&dev_priv->drm, "Failed to enable PCH transcoder\n");
+}
+
+void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv)
+{
+	u32 val;
+
+	val = intel_de_read(dev_priv, LPT_TRANSCONF);
+	val &= ~TRANS_ENABLE;
+	intel_de_write(dev_priv, LPT_TRANSCONF, val);
+	/* wait for PCH transcoder off, transcoder state */
+	if (intel_de_wait_for_clear(dev_priv, LPT_TRANSCONF,
+				    TRANS_STATE_ENABLE, 50))
+		drm_err(&dev_priv->drm, "Failed to disable PCH transcoder\n");
+
+	/* Workaround: clear timing override bit. */
+	val = intel_de_read(dev_priv, TRANS_CHICKEN2(PIPE_A));
+	val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
+	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
+}
+
+void lpt_pch_enable(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+
+	assert_pch_transcoder_disabled(dev_priv, PIPE_A);
+
+	lpt_program_iclkip(crtc_state);
+
+	/* Set transcoder timing. */
+	ilk_pch_transcoder_set_timings(crtc_state, PIPE_A);
+
+	lpt_enable_pch_transcoder(dev_priv, cpu_transcoder);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
new file mode 100644
index 000000000000..6eba1fd667ea
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -0,0 +1,22 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2021 Intel Corporation
+ */
+
+#ifndef _INTEL_PCH_DISPLAY_H_
+#define _INTEL_PCH_DISPLAY_H_
+
+enum pipe;
+struct drm_i915_private;
+struct intel_atomic_state;
+struct intel_crtc_state;
+
+void ilk_disable_pch_transcoder(struct drm_i915_private *dev_priv,
+				enum pipe pipe);
+void ilk_pch_enable(const struct intel_atomic_state *state,
+		    const struct intel_crtc_state *crtc_state);
+
+void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv);
+void lpt_pch_enable(const struct intel_crtc_state *crtc_state);
+
+#endif
-- 
2.32.0

