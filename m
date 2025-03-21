Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E98FBA6B929
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6712B10E79B;
	Fri, 21 Mar 2025 10:53:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X+rAnvt7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8958F10E79B;
 Fri, 21 Mar 2025 10:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554429; x=1774090429;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1u9bfGp0AoEXKISqQluC2+kUwHY6XaZi7qq02GXg42A=;
 b=X+rAnvt7Uku3mRk7xhzW9xhnSW+HEASOvXFg7vPb+NzVx+LTfifeC3mg
 hox4P1sNdcK4/p2YhZDUGuu5Q78lzclwjbNlQnSeXEWqmi+DjiStT5hKo
 5HscY7LO72iFHev/ImPEukMvY32ntAMq5Ob7n7CdEgmi4SCkxOETWm3VG
 zCV4srd5oaAucw3ktc0/wlpOSAjW0u6eRW2FIMkI8NmfuwlZ12jv5T3n2
 66QADu+Kmhd2Lrl0O/hXWvq60gnDmhr1RmwKUbDTZZG2YKi8yek5difSl
 HKm6vWK92EwFkbjPv/MYuAdZly/3dxBkAYeqdh+0R5yh0/rLIepQZT84l A==;
X-CSE-ConnectionGUID: W4SSRA9bRJqti+77or7czA==
X-CSE-MsgGUID: IC30F9tTQnq/iTbWUYXmqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="47697626"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="47697626"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:49 -0700
X-CSE-ConnectionGUID: YNKGuHsGQR62jhZiMN44lg==
X-CSE-MsgGUID: gm+VwH+TTySxz5b5z/R+Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="146595825"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/12] drm/i915/pch: convert intel_pch_display.[ch] to struct
 intel_display
Date: Fri, 21 Mar 2025 12:52:55 +0200
Message-Id: <0341f0c14a4770cfd41708200cd6c5416b8a17b9.1742554320.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
References: <cover.1742554320.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_pch_display.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_fifo_underrun.c    |   4 +-
 .../drm/i915/display/intel_modeset_setup.c    |   2 +-
 .../gpu/drm/i915/display/intel_pch_display.c  | 160 +++++++++---------
 .../gpu/drm/i915/display/intel_pch_display.h  |  10 +-
 4 files changed, 88 insertions(+), 88 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
index 3f47a3beb2e6..451cd26024f7 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
@@ -470,8 +470,6 @@ void intel_init_fifo_underrun_reporting(struct intel_display *display,
 					struct intel_crtc *crtc,
 					bool enable)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	crtc->cpu_fifo_underrun_disabled = !enable;
 
 	/*
@@ -483,6 +481,6 @@ void intel_init_fifo_underrun_reporting(struct intel_display *display,
 	 * PCH transcoders B and C would prevent enabling the south
 	 * error interrupt (see cpt_can_enable_serr_int()).
 	 */
-	if (intel_has_pch_trancoder(i915, crtc->pipe))
+	if (intel_has_pch_trancoder(display, crtc->pipe))
 		crtc->pch_fifo_underrun_disabled = !enable;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 312b21b1ab59..3cc915739677 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -947,7 +947,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 	/* HW state is read out, now we need to sanitize this mess. */
 	get_encoder_power_domains(i915);
 
-	intel_pch_sanitize(i915);
+	intel_pch_sanitize(display);
 
 	intel_cmtg_sanitize(display);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 0bfa84c758af..2c8a6673fa81 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -20,9 +20,11 @@
 #include "intel_pps.h"
 #include "intel_sdvo.h"
 
-bool intel_has_pch_trancoder(struct drm_i915_private *i915,
+bool intel_has_pch_trancoder(struct intel_display *display,
 			     enum pipe pch_transcoder)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	return HAS_PCH_IBX(i915) || HAS_PCH_CPT(i915) ||
 		(HAS_PCH_LPT_H(i915) && pch_transcoder == PIPE_A);
 }
@@ -37,11 +39,11 @@ enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc)
 		return crtc->pipe;
 }
 
-static void assert_pch_dp_disabled(struct drm_i915_private *dev_priv,
+static void assert_pch_dp_disabled(struct intel_display *display,
 				   enum pipe pipe, enum port port,
 				   i915_reg_t dp_reg)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe port_pipe;
 	bool state;
 
@@ -57,11 +59,11 @@ static void assert_pch_dp_disabled(struct drm_i915_private *dev_priv,
 				 port_name(port));
 }
 
-static void assert_pch_hdmi_disabled(struct drm_i915_private *dev_priv,
+static void assert_pch_hdmi_disabled(struct intel_display *display,
 				     enum pipe pipe, enum port port,
 				     i915_reg_t hdmi_reg)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum pipe port_pipe;
 	bool state;
 
@@ -77,15 +79,14 @@ static void assert_pch_hdmi_disabled(struct drm_i915_private *dev_priv,
 				 port_name(port));
 }
 
-static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
+static void assert_pch_ports_disabled(struct intel_display *display,
 				      enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
 	enum pipe port_pipe;
 
-	assert_pch_dp_disabled(dev_priv, pipe, PORT_B, PCH_DP_B);
-	assert_pch_dp_disabled(dev_priv, pipe, PORT_C, PCH_DP_C);
-	assert_pch_dp_disabled(dev_priv, pipe, PORT_D, PCH_DP_D);
+	assert_pch_dp_disabled(display, pipe, PORT_B, PCH_DP_B);
+	assert_pch_dp_disabled(display, pipe, PORT_C, PCH_DP_C);
+	assert_pch_dp_disabled(display, pipe, PORT_D, PCH_DP_D);
 
 	INTEL_DISPLAY_STATE_WARN(display,
 				 intel_crt_port_enabled(display, PCH_ADPA, &port_pipe) && port_pipe == pipe,
@@ -98,15 +99,14 @@ static void assert_pch_ports_disabled(struct drm_i915_private *dev_priv,
 				 pipe_name(pipe));
 
 	/* PCH SDVOB multiplex with HDMIB */
-	assert_pch_hdmi_disabled(dev_priv, pipe, PORT_B, PCH_HDMIB);
-	assert_pch_hdmi_disabled(dev_priv, pipe, PORT_C, PCH_HDMIC);
-	assert_pch_hdmi_disabled(dev_priv, pipe, PORT_D, PCH_HDMID);
+	assert_pch_hdmi_disabled(display, pipe, PORT_B, PCH_HDMIB);
+	assert_pch_hdmi_disabled(display, pipe, PORT_C, PCH_HDMIC);
+	assert_pch_hdmi_disabled(display, pipe, PORT_D, PCH_HDMID);
 }
 
-static void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
+static void assert_pch_transcoder_disabled(struct intel_display *display,
 					   enum pipe pipe)
 {
-	struct intel_display *display = &dev_priv->display;
 	u32 val;
 	bool enabled;
 
@@ -117,45 +117,45 @@ static void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
 				 pipe_name(pipe));
 }
 
-static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_priv,
+static void ibx_sanitize_pch_hdmi_port(struct intel_display *display,
 				       enum port port, i915_reg_t hdmi_reg)
 {
-	u32 val = intel_de_read(dev_priv, hdmi_reg);
+	u32 val = intel_de_read(display, hdmi_reg);
 
 	if (val & SDVO_ENABLE ||
 	    (val & SDVO_PIPE_SEL_MASK) == SDVO_PIPE_SEL(PIPE_A))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Sanitizing transcoder select for HDMI %c\n",
 		    port_name(port));
 
 	val &= ~SDVO_PIPE_SEL_MASK;
 	val |= SDVO_PIPE_SEL(PIPE_A);
 
-	intel_de_write(dev_priv, hdmi_reg, val);
+	intel_de_write(display, hdmi_reg, val);
 }
 
-static void ibx_sanitize_pch_dp_port(struct drm_i915_private *dev_priv,
+static void ibx_sanitize_pch_dp_port(struct intel_display *display,
 				     enum port port, i915_reg_t dp_reg)
 {
-	u32 val = intel_de_read(dev_priv, dp_reg);
+	u32 val = intel_de_read(display, dp_reg);
 
 	if (val & DP_PORT_EN ||
 	    (val & DP_PIPE_SEL_MASK) == DP_PIPE_SEL(PIPE_A))
 		return;
 
-	drm_dbg_kms(&dev_priv->drm,
+	drm_dbg_kms(display->drm,
 		    "Sanitizing transcoder select for DP %c\n",
 		    port_name(port));
 
 	val &= ~DP_PIPE_SEL_MASK;
 	val |= DP_PIPE_SEL(PIPE_A);
 
-	intel_de_write(dev_priv, dp_reg, val);
+	intel_de_write(display, dp_reg, val);
 }
 
-static void ibx_sanitize_pch_ports(struct drm_i915_private *dev_priv)
+static void ibx_sanitize_pch_ports(struct intel_display *display)
 {
 	/*
 	 * The BIOS may select transcoder B on some of the PCH
@@ -168,14 +168,14 @@ static void ibx_sanitize_pch_ports(struct drm_i915_private *dev_priv)
 	 * (see. intel_dp_link_down(), intel_disable_hdmi(),
 	 * intel_disable_sdvo()).
 	 */
-	ibx_sanitize_pch_dp_port(dev_priv, PORT_B, PCH_DP_B);
-	ibx_sanitize_pch_dp_port(dev_priv, PORT_C, PCH_DP_C);
-	ibx_sanitize_pch_dp_port(dev_priv, PORT_D, PCH_DP_D);
+	ibx_sanitize_pch_dp_port(display, PORT_B, PCH_DP_B);
+	ibx_sanitize_pch_dp_port(display, PORT_C, PCH_DP_C);
+	ibx_sanitize_pch_dp_port(display, PORT_D, PCH_DP_D);
 
 	/* PCH SDVOB multiplex with HDMIB */
-	ibx_sanitize_pch_hdmi_port(dev_priv, PORT_B, PCH_HDMIB);
-	ibx_sanitize_pch_hdmi_port(dev_priv, PORT_C, PCH_HDMIC);
-	ibx_sanitize_pch_hdmi_port(dev_priv, PORT_D, PCH_HDMID);
+	ibx_sanitize_pch_hdmi_port(display, PORT_B, PCH_HDMIB);
+	ibx_sanitize_pch_hdmi_port(display, PORT_C, PCH_HDMIC);
+	ibx_sanitize_pch_hdmi_port(display, PORT_D, PCH_HDMID);
 }
 
 static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
@@ -225,31 +225,30 @@ void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
 static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_state,
 					   enum pipe pch_transcoder)
 {
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	intel_de_write(dev_priv, PCH_TRANS_HTOTAL(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder)));
-	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder)));
-	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_HSYNC(dev_priv, cpu_transcoder)));
-
-	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder)));
-	intel_de_write(dev_priv, PCH_TRANS_VBLANK(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder)));
-	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder)));
-	intel_de_write(dev_priv, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
-		       intel_de_read(dev_priv, TRANS_VSYNCSHIFT(dev_priv, cpu_transcoder)));
+	intel_de_write(display, PCH_TRANS_HTOTAL(pch_transcoder),
+		       intel_de_read(display, TRANS_HTOTAL(display, cpu_transcoder)));
+	intel_de_write(display, PCH_TRANS_HBLANK(pch_transcoder),
+		       intel_de_read(display, TRANS_HBLANK(display, cpu_transcoder)));
+	intel_de_write(display, PCH_TRANS_HSYNC(pch_transcoder),
+		       intel_de_read(display, TRANS_HSYNC(display, cpu_transcoder)));
+
+	intel_de_write(display, PCH_TRANS_VTOTAL(pch_transcoder),
+		       intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder)));
+	intel_de_write(display, PCH_TRANS_VBLANK(pch_transcoder),
+		       intel_de_read(display, TRANS_VBLANK(display, cpu_transcoder)));
+	intel_de_write(display, PCH_TRANS_VSYNC(pch_transcoder),
+		       intel_de_read(display, TRANS_VSYNC(display, cpu_transcoder)));
+	intel_de_write(display, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
+		       intel_de_read(display, TRANS_VSYNCSHIFT(display, cpu_transcoder)));
 }
 
 static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 	i915_reg_t reg;
@@ -326,18 +325,18 @@ static void ilk_disable_pch_transcoder(struct intel_crtc *crtc)
 	assert_fdi_rx_disabled(display, pipe);
 
 	/* Ports must be off as well */
-	assert_pch_ports_disabled(dev_priv, pipe);
+	assert_pch_ports_disabled(display, pipe);
 
 	reg = PCH_TRANSCONF(pipe);
-	intel_de_rmw(dev_priv, reg, TRANS_ENABLE, 0);
+	intel_de_rmw(display, reg, TRANS_ENABLE, 0);
 	/* wait for PCH transcoder off, transcoder state */
-	if (intel_de_wait_for_clear(dev_priv, reg, TRANS_STATE_ENABLE, 50))
-		drm_err(&dev_priv->drm, "failed to disable transcoder %c\n",
+	if (intel_de_wait_for_clear(display, reg, TRANS_STATE_ENABLE, 50))
+		drm_err(display->drm, "failed to disable transcoder %c\n",
 			pipe_name(pipe));
 
 	if (HAS_PCH_CPT(dev_priv))
 		/* Workaround: Clear the timing override chicken bit again. */
-		intel_de_rmw(dev_priv, TRANS_CHICKEN2(pipe),
+		intel_de_rmw(display, TRANS_CHICKEN2(pipe),
 			     TRANS_CHICKEN2_TIMING_OVERRIDE, 0);
 }
 
@@ -366,14 +365,14 @@ void ilk_pch_pre_enable(struct intel_atomic_state *state,
 void ilk_pch_enable(struct intel_atomic_state *state,
 		    struct intel_crtc *crtc)
 {
-	struct intel_display *display = to_intel_display(state);
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	enum pipe pipe = crtc->pipe;
 	u32 temp;
 
-	assert_pch_transcoder_disabled(dev_priv, pipe);
+	assert_pch_transcoder_disabled(display, pipe);
 
 	/* For PCH output, training FDI link */
 	intel_fdi_link_train(crtc, crtc_state);
@@ -459,6 +458,7 @@ void ilk_pch_disable(struct intel_atomic_state *state,
 void ilk_pch_post_disable(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
 
@@ -466,12 +466,12 @@ void ilk_pch_post_disable(struct intel_atomic_state *state,
 
 	if (HAS_PCH_CPT(dev_priv)) {
 		/* disable TRANS_DP_CTL */
-		intel_de_rmw(dev_priv, TRANS_DP_CTL(pipe),
+		intel_de_rmw(display, TRANS_DP_CTL(pipe),
 			     TRANS_DP_OUTPUT_ENABLE | TRANS_DP_PORT_SEL_MASK,
 			     TRANS_DP_PORT_SEL_NONE);
 
 		/* disable DPLL_SEL */
-		intel_de_rmw(dev_priv, PCH_DPLL_SEL,
+		intel_de_rmw(display, PCH_DPLL_SEL,
 			     TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe), 0);
 	}
 
@@ -497,8 +497,8 @@ static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
 
 void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_shared_dpll *pll;
 	enum pipe pipe = crtc->pipe;
@@ -550,8 +550,6 @@ void ilk_pch_get_config(struct intel_crtc_state *crtc_state)
 static void lpt_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val, pipeconf_val;
 
@@ -559,49 +557,49 @@ static void lpt_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
 	assert_fdi_tx_enabled(display, (enum pipe)cpu_transcoder);
 	assert_fdi_rx_enabled(display, PIPE_A);
 
-	val = intel_de_read(dev_priv, TRANS_CHICKEN2(PIPE_A));
+	val = intel_de_read(display, TRANS_CHICKEN2(PIPE_A));
 	/* Workaround: set timing override bit. */
 	val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
 	/* Configure frame start delay to match the CPU */
 	val &= ~TRANS_CHICKEN2_FRAME_START_DELAY_MASK;
 	val |= TRANS_CHICKEN2_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
-	intel_de_write(dev_priv, TRANS_CHICKEN2(PIPE_A), val);
+	intel_de_write(display, TRANS_CHICKEN2(PIPE_A), val);
 
 	val = TRANS_ENABLE;
-	pipeconf_val = intel_de_read(dev_priv,
-				     TRANSCONF(dev_priv, cpu_transcoder));
+	pipeconf_val = intel_de_read(display,
+				     TRANSCONF(display, cpu_transcoder));
 
 	if ((pipeconf_val & TRANSCONF_INTERLACE_MASK_HSW) == TRANSCONF_INTERLACE_IF_ID_ILK)
 		val |= TRANS_INTERLACE_INTERLACED;
 	else
 		val |= TRANS_INTERLACE_PROGRESSIVE;
 
-	intel_de_write(dev_priv, LPT_TRANSCONF, val);
-	if (intel_de_wait_for_set(dev_priv, LPT_TRANSCONF,
+	intel_de_write(display, LPT_TRANSCONF, val);
+	if (intel_de_wait_for_set(display, LPT_TRANSCONF,
 				  TRANS_STATE_ENABLE, 100))
-		drm_err(&dev_priv->drm, "Failed to enable PCH transcoder\n");
+		drm_err(display->drm, "Failed to enable PCH transcoder\n");
 }
 
-static void lpt_disable_pch_transcoder(struct drm_i915_private *dev_priv)
+static void lpt_disable_pch_transcoder(struct intel_display *display)
 {
-	intel_de_rmw(dev_priv, LPT_TRANSCONF, TRANS_ENABLE, 0);
+	intel_de_rmw(display, LPT_TRANSCONF, TRANS_ENABLE, 0);
 	/* wait for PCH transcoder off, transcoder state */
-	if (intel_de_wait_for_clear(dev_priv, LPT_TRANSCONF,
+	if (intel_de_wait_for_clear(display, LPT_TRANSCONF,
 				    TRANS_STATE_ENABLE, 50))
-		drm_err(&dev_priv->drm, "Failed to disable PCH transcoder\n");
+		drm_err(display->drm, "Failed to disable PCH transcoder\n");
 
 	/* Workaround: clear timing override bit. */
-	intel_de_rmw(dev_priv, TRANS_CHICKEN2(PIPE_A), TRANS_CHICKEN2_TIMING_OVERRIDE, 0);
+	intel_de_rmw(display, TRANS_CHICKEN2(PIPE_A), TRANS_CHICKEN2_TIMING_OVERRIDE, 0);
 }
 
 void lpt_pch_enable(struct intel_atomic_state *state,
 		    struct intel_crtc *crtc)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 	const struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 
-	assert_pch_transcoder_disabled(dev_priv, PIPE_A);
+	assert_pch_transcoder_disabled(display, PIPE_A);
 
 	lpt_program_iclkip(crtc_state);
 
@@ -614,25 +612,27 @@ void lpt_pch_enable(struct intel_atomic_state *state,
 void lpt_pch_disable(struct intel_atomic_state *state,
 		     struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	lpt_disable_pch_transcoder(dev_priv);
+	lpt_disable_pch_transcoder(display);
 
 	lpt_disable_iclkip(dev_priv);
 }
 
 void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 tmp;
 
-	if ((intel_de_read(dev_priv, LPT_TRANSCONF) & TRANS_ENABLE) == 0)
+	if ((intel_de_read(display, LPT_TRANSCONF) & TRANS_ENABLE) == 0)
 		return;
 
 	crtc_state->has_pch_encoder = true;
 
-	tmp = intel_de_read(dev_priv, FDI_RX_CTL(PIPE_A));
+	tmp = intel_de_read(display, FDI_RX_CTL(PIPE_A));
 	crtc_state->fdi_lanes = ((FDI_DP_PORT_WIDTH_MASK & tmp) >>
 				 FDI_DP_PORT_WIDTH_SHIFT) + 1;
 
@@ -642,8 +642,10 @@ void lpt_pch_get_config(struct intel_crtc_state *crtc_state)
 	crtc_state->hw.adjusted_mode.crtc_clock = lpt_get_iclkip(dev_priv);
 }
 
-void intel_pch_sanitize(struct drm_i915_private *i915)
+void intel_pch_sanitize(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	if (HAS_PCH_IBX(i915))
-		ibx_sanitize_pch_ports(i915);
+		ibx_sanitize_pch_ports(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.h b/drivers/gpu/drm/i915/display/intel_pch_display.h
index 35f8288af3d1..cd6b3ed05887 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.h
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.h
@@ -9,14 +9,14 @@
 #include <linux/types.h>
 
 enum pipe;
-struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_link_m_n;
 
 #ifdef I915
-bool intel_has_pch_trancoder(struct drm_i915_private *i915,
+bool intel_has_pch_trancoder(struct intel_display *display,
 			     enum pipe pch_transcoder);
 enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc);
 
@@ -41,9 +41,9 @@ void intel_pch_transcoder_get_m1_n1(struct intel_crtc *crtc,
 void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
 				    struct intel_link_m_n *m_n);
 
-void intel_pch_sanitize(struct drm_i915_private *i915);
+void intel_pch_sanitize(struct intel_display *display);
 #else
-static inline bool intel_has_pch_trancoder(struct drm_i915_private *i915,
+static inline bool intel_has_pch_trancoder(struct intel_display *display,
 					   enum pipe pch_transcoder)
 {
 	return false;
@@ -90,7 +90,7 @@ static inline void intel_pch_transcoder_get_m2_n2(struct intel_crtc *crtc,
 						  struct intel_link_m_n *m_n)
 {
 }
-static inline void intel_pch_sanitize(struct drm_i915_private *i915)
+static inline void intel_pch_sanitize(struct intel_display *display)
 {
 }
 #endif
-- 
2.39.5

