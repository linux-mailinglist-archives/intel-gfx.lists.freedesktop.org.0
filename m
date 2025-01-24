Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D726EA1BA62
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 17:31:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FE8710E9F6;
	Fri, 24 Jan 2025 16:31:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b+LtLyZQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AE1110E9EB;
 Fri, 24 Jan 2025 16:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737736260; x=1769272260;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HABA11L4nLm7cKrDUxuUHRmdI/FrmuWsKHgL+B2LyLU=;
 b=b+LtLyZQaKhzuuJPxWh8cIEpwxMSgvZ9OToz2JBkvRb9tjCOLLYrjC2G
 s4ovs57MB9BxVJSqCR8Oxnr815djcs3kTR4psOZON2y4CvJuR2AufM678
 SQvqMTEUWdRrIXJ7z1623VOdE30kGaWfkRZW0yeeHM0bjkJKKS1f6RgNz
 rcr0Q7zBeudIN7QQjQqpen0oQ6pEOZeBvyxSSi1ims90+iQlT9CvT2rYA
 iihoB6019PdgypYoSpb3JBkbGIeczQ0w4OrmpKoizU/eoBHFP7H2wbm0V
 R99RLP9fFfeTh92xrikCYCNzJGra0BF4skqs0fs/5zCzWhQEfo7Pgd89W A==;
X-CSE-ConnectionGUID: jJCxZhMnTpOJKde0FaQ5tw==
X-CSE-MsgGUID: tTp5gSbUSZWq0xfN2JgCuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="42200444"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="42200444"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 08:30:59 -0800
X-CSE-ConnectionGUID: 7Xo4Ev6RTbaFNAE8Os7Sfw==
X-CSE-MsgGUID: mFp+1xUMTPqcmDmWaKZlvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="107925914"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jan 2025 08:30:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 Jan 2025 18:30:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/11] drm/i915: Convert intel_display_power_{get,
 put}*() to intel_display
Date: Fri, 24 Jan 2025 18:30:34 +0200
Message-ID: <20250124163040.8886-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
References: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pass intel_display to the display power stuff. These are spread
all over the place so tend to hinder clean conversions of whole
files.

TODO: The gt part/unpark power domain shenanigans need some
kind of more abstract interface...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  5 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  5 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  5 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        | 11 +--
 drivers/gpu/drm/i915/display/intel_audio.c    |  6 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  8 +-
 drivers/gpu/drm/i915/display/intel_crt.c      | 16 ++--
 drivers/gpu/drm/i915/display/intel_cursor.c   | 10 ++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 13 ++-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 63 ++++++++------
 drivers/gpu/drm/i915/display/intel_display.c  | 53 +++++++-----
 .../drm/i915/display/intel_display_debugfs.c  |  5 +-
 .../gpu/drm/i915/display/intel_display_irq.c  | 10 +--
 .../drm/i915/display/intel_display_power.c    | 85 +++++++++----------
 .../drm/i915/display/intel_display_power.h    | 54 ++++++------
 drivers/gpu/drm/i915/display/intel_dmc.c      |  7 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  7 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  5 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 55 +++++++-----
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 10 +--
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 10 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  5 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |  5 +-
 .../drm/i915/display/intel_modeset_setup.c    |  6 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  5 +-
 drivers/gpu/drm/i915/display/intel_pps.c      | 18 ++--
 drivers/gpu/drm/i915/display/intel_sprite.c   | 17 ++--
 drivers/gpu/drm/i915/display/intel_tc.c       | 78 +++++++++--------
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  5 +-
 drivers/gpu/drm/i915/display/intel_vga.c      |  5 +-
 .../drm/i915/display/skl_universal_plane.c    |  5 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  5 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  4 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  6 +-
 34 files changed, 311 insertions(+), 296 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 434de337814c..7eb5b4915f2c 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -305,12 +305,13 @@ bool g4x_dp_port_enabled(struct drm_i915_private *dev_priv,
 static bool intel_dp_get_hw_state(struct intel_encoder *encoder,
 				  enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	intel_wakeref_t wakeref;
 	bool ret;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     encoder->power_domain);
 	if (!wakeref)
 		return false;
@@ -318,7 +319,7 @@ static bool intel_dp_get_hw_state(struct intel_encoder *encoder,
 	ret = g4x_dp_port_enabled(dev_priv, intel_dp->output_reg,
 				  encoder->port, pipe);
 
-	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
+	intel_display_power_put(display, encoder->power_domain, wakeref);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 3aaa7f9e9210..7f13cf9b1a2e 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -66,19 +66,20 @@ static void intel_hdmi_prepare(struct intel_encoder *encoder,
 static bool intel_hdmi_get_hw_state(struct intel_encoder *encoder,
 				    enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 	intel_wakeref_t wakeref;
 	bool ret;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     encoder->power_domain);
 	if (!wakeref)
 		return false;
 
 	ret = intel_sdvo_port_enabled(dev_priv, intel_hdmi->hdmi_reg, pipe);
 
-	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
+	intel_display_power_put(display, encoder->power_domain, wakeref);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 949014802e52..3876b50d2324 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -681,6 +681,7 @@ static bool i9xx_plane_can_async_flip(u64 modifier)
 static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 				    enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
@@ -694,7 +695,7 @@ static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 	 * display power wells.
 	 */
 	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
@@ -707,7 +708,7 @@ static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 	else
 		*pipe = REG_FIELD_GET(DISP_PIPE_SEL_MASK, val);
 
-	intel_display_power_put(dev_priv, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ee1c3fb500a7..0f2a19690c18 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -387,13 +387,12 @@ static void gen11_dsi_program_esc_clk_div(struct intel_encoder *encoder,
 static void get_dsi_io_power_domains(struct intel_dsi *intel_dsi)
 {
 	struct intel_display *display = to_intel_display(&intel_dsi->base);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	enum port port;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		drm_WARN_ON(display->drm, intel_dsi->io_wakeref[port]);
 		intel_dsi->io_wakeref[port] =
-			intel_display_power_get(dev_priv,
+			intel_display_power_get(display,
 						port == PORT_A ?
 						POWER_DOMAIN_PORT_DDI_IO_A :
 						POWER_DOMAIN_PORT_DDI_IO_B);
@@ -1385,7 +1384,6 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
 static void gen11_dsi_disable_io_power(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
 
@@ -1393,7 +1391,7 @@ static void gen11_dsi_disable_io_power(struct intel_encoder *encoder)
 		intel_wakeref_t wakeref;
 
 		wakeref = fetch_and_zero(&intel_dsi->io_wakeref[port]);
-		intel_display_power_put(dev_priv,
+		intel_display_power_put(display,
 					port == PORT_A ?
 					POWER_DOMAIN_PORT_DDI_IO_A :
 					POWER_DOMAIN_PORT_DDI_IO_B,
@@ -1697,7 +1695,6 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 				   enum pipe *pipe)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum transcoder dsi_trans;
 	intel_wakeref_t wakeref;
@@ -1705,7 +1702,7 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 	bool ret = false;
 	u32 tmp;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     encoder->power_domain);
 	if (!wakeref)
 		return false;
@@ -1736,7 +1733,7 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 		ret = tmp & TRANSCONF_ENABLE;
 	}
 out:
-	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
+	intel_display_power_put(display, encoder->power_domain, wakeref);
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index f145f83346ca..aaba438ab41e 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1037,13 +1037,12 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
 static unsigned long intel_audio_component_get_power(struct device *kdev)
 {
 	struct intel_display *display = to_intel_display(kdev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 
 	/* Catch potential impedance mismatches before they occur! */
 	BUILD_BUG_ON(sizeof(intel_wakeref_t) > sizeof(unsigned long));
 
-	wakeref = intel_display_power_get(i915, POWER_DOMAIN_AUDIO_PLAYBACK);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_AUDIO_PLAYBACK);
 
 	if (display->audio.power_refcount++ == 0) {
 		if (DISPLAY_VER(display) >= 9) {
@@ -1070,7 +1069,6 @@ static void intel_audio_component_put_power(struct device *kdev,
 					    unsigned long cookie)
 {
 	struct intel_display *display = to_intel_display(kdev);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref = (intel_wakeref_t)cookie;
 
 	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
@@ -1078,7 +1076,7 @@ static void intel_audio_component_put_power(struct device *kdev,
 		if (display->platform.geminilake)
 			glk_force_audio_cdclk(display, false);
 
-	intel_display_power_put(i915, POWER_DOMAIN_AUDIO_PLAYBACK, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_AUDIO_PLAYBACK, wakeref);
 }
 
 static void intel_audio_component_codec_wake_override(struct device *kdev,
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b520231833b7..435241cddca4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -658,7 +658,7 @@ static void vlv_set_cdclk(struct intel_display *display,
 	 * a system suspend.  So grab the display core domain, which covers
 	 * the HW blocks needed for the following programming.
 	 */
-	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_DISPLAY_CORE);
 
 	vlv_iosf_sb_get(dev_priv,
 			BIT(VLV_IOSF_SB_CCK) |
@@ -718,7 +718,7 @@ static void vlv_set_cdclk(struct intel_display *display,
 
 	vlv_program_pfi_credits(display);
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 }
 
 static void chv_set_cdclk(struct intel_display *display,
@@ -747,7 +747,7 @@ static void chv_set_cdclk(struct intel_display *display,
 	 * a system suspend.  So grab the display core domain, which covers
 	 * the HW blocks needed for the following programming.
 	 */
-	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_DISPLAY_CORE);
 
 	vlv_punit_get(dev_priv);
 	val = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
@@ -767,7 +767,7 @@ static void chv_set_cdclk(struct intel_display *display,
 
 	vlv_program_pfi_credits(display);
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 }
 
 static int bdw_calc_cdclk(int min_cdclk)
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index b5367e059ee3..aa46c14ce225 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -108,19 +108,18 @@ static bool intel_crt_get_hw_state(struct intel_encoder *encoder,
 				   enum pipe *pipe)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_crt *crt = intel_encoder_to_crt(encoder);
 	intel_wakeref_t wakeref;
 	bool ret;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     encoder->power_domain);
 	if (!wakeref)
 		return false;
 
 	ret = intel_crt_port_enabled(display, crt->adpa_reg, pipe);
 
-	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
+	intel_display_power_put(display, encoder->power_domain, wakeref);
 
 	return ret;
 }
@@ -858,7 +857,6 @@ intel_crt_detect(struct drm_connector *connector,
 		 bool force)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct intel_encoder *encoder = &crt->base;
 	struct drm_atomic_state *state;
@@ -876,7 +874,7 @@ intel_crt_detect(struct drm_connector *connector,
 		return connector->status;
 
 	if (display->params.load_detect_test) {
-		wakeref = intel_display_power_get(dev_priv, encoder->power_domain);
+		wakeref = intel_display_power_get(display, encoder->power_domain);
 		goto load_detect;
 	}
 
@@ -884,7 +882,7 @@ intel_crt_detect(struct drm_connector *connector,
 	if (dmi_check_system(intel_spurious_crt_detect))
 		return connector_status_disconnected;
 
-	wakeref = intel_display_power_get(dev_priv, encoder->power_domain);
+	wakeref = intel_display_power_get(display, encoder->power_domain);
 
 	if (I915_HAS_HOTPLUG(display)) {
 		/* We can not rely on the HPD pin always being correctly wired
@@ -941,7 +939,7 @@ intel_crt_detect(struct drm_connector *connector,
 	}
 
 out:
-	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
+	intel_display_power_put(display, encoder->power_domain, wakeref);
 
 	return status;
 }
@@ -959,7 +957,7 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	if (!intel_display_driver_check_access(display))
 		return drm_edid_connector_add_modes(connector);
 
-	wakeref = intel_display_power_get(dev_priv, encoder->power_domain);
+	wakeref = intel_display_power_get(display, encoder->power_domain);
 
 	ret = intel_crt_ddc_get_modes(connector, connector->ddc);
 	if (ret || !IS_G4X(dev_priv))
@@ -970,7 +968,7 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	ret = intel_crt_ddc_get_modes(connector, ddc);
 
 out:
-	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
+	intel_display_power_put(display, encoder->power_domain, wakeref);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 819e61b26b7d..fe6cfd9eee06 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -326,13 +326,14 @@ static void i845_cursor_disable_arm(struct intel_dsb *dsb,
 static bool i845_cursor_get_hw_state(struct intel_plane *plane,
 				     enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(PIPE_A);
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
@@ -340,7 +341,7 @@ static bool i845_cursor_get_hw_state(struct intel_plane *plane,
 
 	*pipe = PIPE_A;
 
-	intel_display_power_put(dev_priv, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 
 	return ret;
 }
@@ -728,6 +729,7 @@ static void i9xx_cursor_disable_arm(struct intel_dsb *dsb,
 static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 				     enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
@@ -740,7 +742,7 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 	 * display power wells.
 	 */
 	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
@@ -753,7 +755,7 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 	else
 		*pipe = REG_FIELD_GET(MCURSOR_PIPE_SEL_MASK, val);
 
-	intel_display_power_put(dev_priv, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 48b0b9755b2b..a2c32842fa60 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -73,10 +73,9 @@ static u8 intel_cx0_get_owned_lane_mask(struct intel_encoder *encoder)
 static void
 assert_dc_off(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	bool enabled;
 
-	enabled = intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF);
+	enabled = intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF);
 	drm_WARN_ON(display->drm, !enabled);
 }
 
@@ -103,12 +102,12 @@ static void intel_cx0_program_msgbus_timer(struct intel_encoder *encoder)
  */
 static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_encoder *encoder)
 {
-	intel_wakeref_t wakeref;
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	intel_wakeref_t wakeref;
 
 	intel_psr_pause(intel_dp);
-	wakeref = intel_display_power_get(i915, POWER_DOMAIN_DC_OFF);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_DC_OFF);
 	intel_cx0_program_msgbus_timer(encoder);
 
 	return wakeref;
@@ -116,11 +115,11 @@ static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_encoder *enc
 
 static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_wakeref_t wakeref)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 	intel_psr_resume(intel_dp);
-	intel_display_power_put(i915, POWER_DOMAIN_DC_OFF, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DC_OFF, wakeref);
 }
 
 static void intel_clear_response_ready_flag(struct intel_encoder *encoder,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index dc319f37b1be..d7b9b271ca53 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -705,19 +705,20 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 			       enum transcoder cpu_transcoder,
 			       bool enable, u32 hdcp_mask)
 {
+	struct intel_display *display = to_intel_display(intel_encoder);
 	struct drm_device *dev = intel_encoder->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	intel_wakeref_t wakeref;
 	int ret = 0;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     intel_encoder->power_domain);
 	if (drm_WARN_ON(dev, !wakeref))
 		return -ENXIO;
 
 	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder),
 		     hdcp_mask, enable ? hdcp_mask : 0);
-	intel_display_power_put(dev_priv, intel_encoder->power_domain, wakeref);
+	intel_display_power_put(display, intel_encoder->power_domain, wakeref);
 	return ret;
 }
 
@@ -734,7 +735,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 	u32 ddi_mode;
 	bool ret;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     encoder->power_domain);
 	if (!wakeref)
 		return false;
@@ -775,7 +776,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 	}
 
 out:
-	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
+	intel_display_power_put(display, encoder->power_domain, wakeref);
 
 	return ret;
 }
@@ -794,7 +795,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	*pipe_mask = 0;
 	*is_dp_mst = false;
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     encoder->power_domain);
 	if (!wakeref)
 		return;
@@ -831,7 +832,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 		u32 port_mask, ddi_select, ddi_mode;
 		intel_wakeref_t trans_wakeref;
 
-		trans_wakeref = intel_display_power_get_if_enabled(dev_priv,
+		trans_wakeref = intel_display_power_get_if_enabled(display,
 								   POWER_DOMAIN_TRANSCODER(cpu_transcoder));
 		if (!trans_wakeref)
 			continue;
@@ -846,7 +847,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 
 		tmp = intel_de_read(dev_priv,
 				    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
-		intel_display_power_put(dev_priv, POWER_DOMAIN_TRANSCODER(cpu_transcoder),
+		intel_display_power_put(display, POWER_DOMAIN_TRANSCODER(cpu_transcoder),
 					trans_wakeref);
 
 		if ((tmp & port_mask) != ddi_select)
@@ -911,7 +912,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 				encoder->base.base.id, encoder->base.name, tmp);
 	}
 
-	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
+	intel_display_power_put(display, encoder->power_domain, wakeref);
 }
 
 bool intel_ddi_get_hw_state(struct intel_encoder *encoder,
@@ -963,23 +964,23 @@ static void
 main_link_aux_power_domain_get(struct intel_digital_port *dig_port,
 			       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	enum intel_display_power_domain domain =
 		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
 
-	drm_WARN_ON(&i915->drm, dig_port->aux_wakeref);
+	drm_WARN_ON(display->drm, dig_port->aux_wakeref);
 
 	if (domain == POWER_DOMAIN_INVALID)
 		return;
 
-	dig_port->aux_wakeref = intel_display_power_get(i915, domain);
+	dig_port->aux_wakeref = intel_display_power_get(display, domain);
 }
 
 static void
 main_link_aux_power_domain_put(struct intel_digital_port *dig_port,
 			       const struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	enum intel_display_power_domain domain =
 		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
 	intel_wakeref_t wf;
@@ -988,13 +989,13 @@ main_link_aux_power_domain_put(struct intel_digital_port *dig_port,
 	if (!wf)
 		return;
 
-	intel_display_power_put(i915, domain, wf);
+	intel_display_power_put(display, domain, wf);
 }
 
 static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 					struct intel_crtc_state *crtc_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port;
 
 	/*
@@ -1002,15 +1003,15 @@ static void intel_ddi_get_power_domains(struct intel_encoder *encoder,
 	 * happen since fake-MST encoders don't set their get_power_domains()
 	 * hook.
 	 */
-	if (drm_WARN_ON(&dev_priv->drm,
+	if (drm_WARN_ON(display->drm,
 			intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST)))
 		return;
 
 	dig_port = enc_to_dig_port(encoder);
 
 	if (!intel_tc_port_in_tbt_alt_mode(dig_port)) {
-		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
-		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
+		drm_WARN_ON(display->drm, dig_port->ddi_io_wakeref);
+		dig_port->ddi_io_wakeref = intel_display_power_get(display,
 								   dig_port->ddi_io_power_domain);
 	}
 
@@ -2721,6 +2722,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
@@ -2767,7 +2769,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 5. If IO power is controlled through PWR_WELL_CTL, Enable IO Power */
 	if (!intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
-		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
+		dig_port->ddi_io_wakeref = intel_display_power_get(display,
 								   dig_port->ddi_io_power_domain);
 	}
 
@@ -2868,6 +2870,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 				  const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
@@ -2896,7 +2899,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
 
 	if (!intel_tc_port_in_tbt_alt_mode(dig_port)) {
 		drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
-		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
+		dig_port->ddi_io_wakeref = intel_display_power_get(display,
 								   dig_port->ddi_io_power_domain);
 	}
 
@@ -2963,6 +2966,7 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
 				      const struct intel_crtc_state *crtc_state,
 				      const struct drm_connector_state *conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
@@ -2971,7 +2975,7 @@ static void intel_ddi_pre_enable_hdmi(struct intel_atomic_state *state,
 	intel_ddi_enable_clock(encoder, crtc_state);
 
 	drm_WARN_ON(&dev_priv->drm, dig_port->ddi_io_wakeref);
-	dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
+	dig_port->ddi_io_wakeref = intel_display_power_get(display,
 							   dig_port->ddi_io_power_domain);
 
 	icl_program_mg_dp_mode(dig_port, crtc_state);
@@ -3130,6 +3134,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 				      const struct intel_crtc_state *old_crtc_state,
 				      const struct drm_connector_state *old_conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_dp *intel_dp = &dig_port->dp;
@@ -3181,7 +3186,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	wakeref = fetch_and_zero(&dig_port->ddi_io_wakeref);
 
 	if (wakeref)
-		intel_display_power_put(dev_priv,
+		intel_display_power_put(display,
 					dig_port->ddi_io_power_domain,
 					wakeref);
 
@@ -3198,6 +3203,7 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 					const struct intel_crtc_state *old_crtc_state,
 					const struct drm_connector_state *old_conn_state)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
@@ -3216,7 +3222,7 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 
 	wakeref = fetch_and_zero(&dig_port->ddi_io_wakeref);
 	if (wakeref)
-		intel_display_power_put(dev_priv,
+		intel_display_power_put(display,
 					dig_port->ddi_io_power_domain,
 					wakeref);
 
@@ -3893,10 +3899,12 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 static bool intel_ddi_is_audio_enabled(struct drm_i915_private *dev_priv,
 				       enum transcoder cpu_transcoder)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	if (cpu_transcoder == TRANSCODER_EDP)
 		return false;
 
-	if (!intel_display_power_is_enabled(dev_priv, POWER_DOMAIN_AUDIO_MMIO))
+	if (!intel_display_power_is_enabled(display, POWER_DOMAIN_AUDIO_MMIO))
 		return false;
 
 	return intel_de_read(dev_priv, HSW_AUD_PIN_ELD_CP_VLD) &
@@ -3972,6 +3980,7 @@ static enum transcoder bdw_transcoder_master_readout(struct drm_i915_private *de
 
 static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	u32 transcoders = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 		BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
@@ -3985,7 +3994,7 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 		intel_wakeref_t trans_wakeref;
 
 		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
-		trans_wakeref = intel_display_power_get_if_enabled(dev_priv,
+		trans_wakeref = intel_display_power_get_if_enabled(display,
 								   power_domain);
 
 		if (!trans_wakeref)
@@ -3995,7 +4004,7 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 		    crtc_state->cpu_transcoder)
 			crtc_state->sync_mode_slaves_mask |= BIT(cpu_transcoder);
 
-		intel_display_power_put(dev_priv, power_domain, trans_wakeref);
+		intel_display_power_put(display, power_domain, trans_wakeref);
 	}
 
 	drm_WARN_ON(&dev_priv->drm,
@@ -4610,13 +4619,13 @@ static int intel_ddi_compute_config_late(struct intel_encoder *encoder,
 
 static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->dev);
+	struct intel_display *display = to_intel_display(encoder->dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(to_intel_encoder(encoder));
 
 	intel_dp_encoder_flush_work(encoder);
 	if (intel_encoder_is_tc(&dig_port->base))
 		intel_tc_port_cleanup(dig_port);
-	intel_display_power_flush_work(i915);
+	intel_display_power_flush_work(display);
 
 	drm_encoder_cleanup(encoder);
 	kfree(dig_port->hdcp_port_data.streams);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 51e87ef3e4e4..466997946e71 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -432,13 +432,13 @@ void assert_transcoder(struct drm_i915_private *dev_priv,
 		state = true;
 
 	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (wakeref) {
 		u32 val = intel_de_read(dev_priv,
 					TRANSCONF(dev_priv, cpu_transcoder));
 		cur_state = !!(val & TRANSCONF_ENABLE);
 
-		intel_display_power_put(dev_priv, power_domain, wakeref);
+		intel_display_power_put(display, power_domain, wakeref);
 	} else {
 		cur_state = false;
 	}
@@ -2160,8 +2160,8 @@ static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 					  struct intel_power_domain_mask *old_domains)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum intel_display_power_domain domain;
 	struct intel_power_domain_mask domains, new_domains;
 
@@ -2177,7 +2177,7 @@ void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 		      POWER_DOMAIN_NUM);
 
 	for_each_power_domain(domain, &new_domains)
-		intel_display_power_get_in_set(dev_priv,
+		intel_display_power_get_in_set(display,
 					       &crtc->enabled_power_domains,
 					       domain);
 }
@@ -2185,7 +2185,9 @@ void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
 void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
 					  struct intel_power_domain_mask *domains)
 {
-	intel_display_power_put_mask_in_set(to_i915(crtc->base.dev),
+	struct intel_display *display = to_intel_display(crtc);
+
+	intel_display_power_put_mask_in_set(display,
 					    &crtc->enabled_power_domains,
 					    domains);
 }
@@ -3221,6 +3223,7 @@ bdw_get_pipe_misc_output_format(struct intel_crtc *crtc)
 static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 				 struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
@@ -3228,7 +3231,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(crtc->pipe);
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
@@ -3322,7 +3325,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	ret = true;
 
 out:
-	intel_display_power_put(dev_priv, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 
 	return ret;
 }
@@ -3603,6 +3606,7 @@ static void ilk_get_pfit_config(struct intel_crtc_state *crtc_state)
 static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 				struct intel_crtc_state *pipe_config)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum intel_display_power_domain power_domain;
@@ -3611,7 +3615,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(crtc->pipe);
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
@@ -3676,7 +3680,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	ret = true;
 
 out:
-	intel_display_power_put(dev_priv, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 
 	return ret;
 }
@@ -3698,13 +3702,14 @@ static u8 joiner_pipes(struct drm_i915_private *i915)
 static bool transcoder_ddi_func_is_enabled(struct drm_i915_private *dev_priv,
 					   enum transcoder cpu_transcoder)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	u32 tmp = 0;
 
 	power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 
-	with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref)
+	with_intel_display_power_if_enabled(display, power_domain, wakeref)
 		tmp = intel_de_read(dev_priv,
 				    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
 
@@ -3730,7 +3735,7 @@ static void enabled_uncompressed_joiner_pipes(struct intel_display *display,
 		intel_wakeref_t wakeref;
 
 		power_domain = POWER_DOMAIN_PIPE(pipe);
-		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
+		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
 			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (tmp & UNCOMPRESSED_JOINER_PRIMARY)
@@ -3760,7 +3765,7 @@ static void enabled_bigjoiner_pipes(struct intel_display *display,
 		intel_wakeref_t wakeref;
 
 		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
-		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
+		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
 			u32 tmp = intel_de_read(display, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (!(tmp & BIG_JOINER_ENABLE))
@@ -3831,7 +3836,7 @@ static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
 		intel_wakeref_t wakeref;
 
 		power_domain = intel_dsc_power_domain(crtc, (enum transcoder)pipe);
-		with_intel_display_power_if_enabled(i915, power_domain, wakeref) {
+		with_intel_display_power_if_enabled(display, power_domain, wakeref) {
 			u32 tmp = intel_de_read(i915, ICL_PIPE_DSS_CTL1(pipe));
 
 			if (!(tmp & ULTRA_JOINER_ENABLE))
@@ -3977,6 +3982,7 @@ static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
 
 static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
@@ -3996,7 +4002,7 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
 		u32 tmp = 0;
 
 		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
-		with_intel_display_power_if_enabled(dev_priv, power_domain, wakeref)
+		with_intel_display_power_if_enabled(display, power_domain, wakeref)
 			tmp = intel_de_read(dev_priv,
 					    TRANS_DDI_FUNC_CTL(dev_priv, cpu_transcoder));
 
@@ -4081,6 +4087,7 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 				     struct intel_crtc_state *pipe_config,
 				     struct intel_display_power_domain_set *power_domain_set)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	unsigned long enabled_transcoders;
@@ -4099,7 +4106,7 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
 	 */
 	pipe_config->cpu_transcoder = ffs(enabled_transcoders) - 1;
 
-	if (!intel_display_power_get_in_set_if_enabled(dev_priv, power_domain_set,
+	if (!intel_display_power_get_in_set_if_enabled(display, power_domain_set,
 						       POWER_DOMAIN_TRANSCODER(pipe_config->cpu_transcoder)))
 		return false;
 
@@ -4133,7 +4140,7 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
 		else
 			cpu_transcoder = TRANSCODER_DSI_C;
 
-		if (!intel_display_power_get_in_set_if_enabled(dev_priv, power_domain_set,
+		if (!intel_display_power_get_in_set_if_enabled(display, power_domain_set,
 							       POWER_DOMAIN_TRANSCODER(cpu_transcoder)))
 			continue;
 
@@ -4186,7 +4193,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	bool active;
 	u32 tmp;
 
-	if (!intel_display_power_get_in_set_if_enabled(dev_priv, &crtc->hw_readout_power_domains,
+	if (!intel_display_power_get_in_set_if_enabled(display, &crtc->hw_readout_power_domains,
 						       POWER_DOMAIN_PIPE(crtc->pipe)))
 		return false;
 
@@ -4238,7 +4245,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 		pipe_config->ips_linetime =
 			REG_FIELD_GET(HSW_IPS_LINETIME_MASK, tmp);
 
-	if (intel_display_power_get_in_set_if_enabled(dev_priv, &crtc->hw_readout_power_domains,
+	if (intel_display_power_get_in_set_if_enabled(display, &crtc->hw_readout_power_domains,
 						      POWER_DOMAIN_PIPE_PANEL_FITTER(crtc->pipe))) {
 		if (DISPLAY_VER(dev_priv) >= 9)
 			skl_scaler_get_config(pipe_config);
@@ -4267,7 +4274,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	}
 
 out:
-	intel_display_power_put_all_in_set(dev_priv, &crtc->hw_readout_power_domains);
+	intel_display_power_put_all_in_set(display, &crtc->hw_readout_power_domains);
 
 	return active;
 }
@@ -7198,6 +7205,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 static void intel_pre_update_crtc(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *old_crtc_state =
 		intel_atomic_get_old_crtc_state(state, crtc);
@@ -7232,7 +7240,7 @@ static void intel_pre_update_crtc(struct intel_atomic_state *state,
 
 	intel_fbc_update(state, crtc);
 
-	drm_WARN_ON(&i915->drm, !intel_display_power_is_enabled(i915, POWER_DOMAIN_DC_OFF));
+	drm_WARN_ON(display->drm, !intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF));
 
 	if (!modeset &&
 	    intel_crtc_needs_color_update(new_crtc_state) &&
@@ -7753,6 +7761,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 
 static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct drm_device *dev = state->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
@@ -7804,7 +7813,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 * the CSC latched register values with the readout (see
 	 * skl_read_csc() and skl_color_commit_noarm()).
 	 */
-	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DC_OFF);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_DC_OFF);
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
@@ -7962,7 +7971,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
 	 * toggling overhead at and above 60 FPS.
 	 */
-	intel_display_power_put_async_delay(dev_priv, POWER_DOMAIN_DC_OFF, wakeref, 17);
+	intel_display_power_put_async_delay(display, POWER_DOMAIN_DC_OFF, wakeref, 17);
 	intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
 
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 926f09c35084..feecabd81274 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -86,10 +86,11 @@ static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
 static int i915_sr_status(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
+	struct intel_display *display = &dev_priv->display;
 	intel_wakeref_t wakeref;
 	bool sr_enabled = false;
 
-	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_INIT);
 
 	if (DISPLAY_VER(dev_priv) >= 9)
 		/* no global SR status; inspect per-plane WM */;
@@ -105,7 +106,7 @@ static int i915_sr_status(struct seq_file *m, void *unused)
 	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		sr_enabled = intel_de_read(dev_priv, FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
 
 	seq_printf(m, "self-refresh: %s\n", str_enabled_disabled(sr_enabled));
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index d9734fcd0d45..0f68b0a34ca9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1617,7 +1617,7 @@ void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
 	intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
 
 	for_each_pipe(dev_priv, pipe)
-		if (intel_display_power_is_enabled(dev_priv,
+		if (intel_display_power_is_enabled(display,
 						   POWER_DOMAIN_PIPE(pipe)))
 			intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
@@ -1644,7 +1644,7 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 			enum intel_display_power_domain domain;
 
 			domain = POWER_DOMAIN_TRANSCODER(trans);
-			if (!intel_display_power_is_enabled(dev_priv, domain))
+			if (!intel_display_power_is_enabled(display, domain))
 				continue;
 
 			intel_de_write(display,
@@ -1660,7 +1660,7 @@ void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
 	}
 
 	for_each_pipe(dev_priv, pipe)
-		if (intel_display_power_is_enabled(dev_priv,
+		if (intel_display_power_is_enabled(display,
 						   POWER_DOMAIN_PIPE(pipe)))
 			intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_REGS(pipe));
 
@@ -1887,7 +1887,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 			enum intel_display_power_domain domain;
 
 			domain = POWER_DOMAIN_TRANSCODER(trans);
-			if (!intel_display_power_is_enabled(dev_priv, domain))
+			if (!intel_display_power_is_enabled(display, domain))
 				continue;
 
 			intel_display_irq_regs_assert_irr_is_zero(display,
@@ -1900,7 +1900,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 	for_each_pipe(dev_priv, pipe) {
 		dev_priv->display.irq.de_irq_mask[pipe] = ~de_pipe_masked;
 
-		if (intel_display_power_is_enabled(dev_priv,
+		if (intel_display_power_is_enabled(display,
 						   POWER_DOMAIN_PIPE(pipe)))
 			intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_REGS(pipe),
 						    dev_priv->display.irq.de_irq_mask[pipe],
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 14ae60749f02..cfc5c0b4f907 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -224,7 +224,7 @@ static bool __intel_display_power_is_enabled(struct intel_display *display,
 
 /**
  * intel_display_power_is_enabled - check for a power domain
- * @dev_priv: i915 device instance
+ * @display: display device instance
  * @domain: power domain to check
  *
  * This function can be used to check the hw power domain state. It is mostly
@@ -239,10 +239,9 @@ static bool __intel_display_power_is_enabled(struct intel_display *display,
  * Returns:
  * True when the power domain is enabled, false otherwise.
  */
-bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
+bool intel_display_power_is_enabled(struct intel_display *display,
 				    enum intel_display_power_domain domain)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct i915_power_domains *power_domains = &display->power.domains;
 	bool ret;
 
@@ -500,7 +499,7 @@ __intel_display_power_get_domain(struct intel_display *display,
 
 /**
  * intel_display_power_get - grab a power domain reference
- * @dev_priv: i915 device instance
+ * @display: display device instance
  * @domain: power domain to reference
  *
  * This function grabs a power domain reference for @domain and ensures that the
@@ -510,10 +509,10 @@ __intel_display_power_get_domain(struct intel_display *display,
  * Any power domain reference obtained by this function must have a symmetric
  * call to intel_display_power_put() to release the reference again.
  */
-intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
+intel_wakeref_t intel_display_power_get(struct intel_display *display,
 					enum intel_display_power_domain domain)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	intel_wakeref_t wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
 
@@ -526,7 +525,7 @@ intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
 
 /**
  * intel_display_power_get_if_enabled - grab a reference for an enabled display power domain
- * @dev_priv: i915 device instance
+ * @display: display device instance
  * @domain: power domain to reference
  *
  * This function grabs a power domain reference for @domain and ensures that the
@@ -537,10 +536,10 @@ intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
  * call to intel_display_power_put() to release the reference again.
  */
 intel_wakeref_t
-intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
+intel_display_power_get_if_enabled(struct intel_display *display,
 				   enum intel_display_power_domain domain)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	intel_wakeref_t wakeref;
 	bool is_enabled;
@@ -696,7 +695,7 @@ intel_display_power_put_async_work(struct work_struct *work)
 
 /**
  * __intel_display_power_put_async - release a power domain reference asynchronously
- * @i915: i915 device instance
+ * @display: display device instance
  * @domain: power domain to reference
  * @wakeref: wakeref acquired for the reference that is being released
  * @delay_ms: delay of powering down the power domain
@@ -707,12 +706,12 @@ intel_display_power_put_async_work(struct work_struct *work)
  * The power down is delayed by @delay_ms if this is >= 0, or by a default
  * 100 ms otherwise.
  */
-void __intel_display_power_put_async(struct drm_i915_private *i915,
+void __intel_display_power_put_async(struct intel_display *display,
 				     enum intel_display_power_domain domain,
 				     intel_wakeref_t wakeref,
 				     int delay_ms)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_runtime_pm *rpm = &i915->runtime_pm;
 	intel_wakeref_t work_wakeref = intel_runtime_pm_get_raw(rpm);
@@ -754,7 +753,7 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
 
 /**
  * intel_display_power_flush_work - flushes the async display power disabling work
- * @i915: i915 device instance
+ * @display: display device instance
  *
  * Flushes any pending work that was scheduled by a preceding
  * intel_display_power_put_async() call, completing the disabling of the
@@ -764,9 +763,9 @@ void __intel_display_power_put_async(struct drm_i915_private *i915,
  * function returns; to ensure that the work handler isn't running use
  * intel_display_power_flush_work_sync() instead.
  */
-void intel_display_power_flush_work(struct drm_i915_private *i915)
+void intel_display_power_flush_work(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_power_domain_mask async_put_mask;
 	intel_wakeref_t work_wakeref;
@@ -800,10 +799,9 @@ void intel_display_power_flush_work(struct drm_i915_private *i915)
 static void
 intel_display_power_flush_work_sync(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 
-	intel_display_power_flush_work(i915);
+	intel_display_power_flush_work(display);
 	cancel_async_put_work(power_domains, true);
 
 	verify_async_put_domains_state(power_domains);
@@ -814,7 +812,7 @@ intel_display_power_flush_work_sync(struct intel_display *display)
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 /**
  * intel_display_power_put - release a power domain reference
- * @dev_priv: i915 device instance
+ * @display: display device instance
  * @domain: power domain to reference
  * @wakeref: wakeref acquired for the reference that is being released
  *
@@ -822,11 +820,11 @@ intel_display_power_flush_work_sync(struct intel_display *display)
  * intel_display_power_get() and might power down the corresponding hardware
  * block right away if this is the last reference.
  */
-void intel_display_power_put(struct drm_i915_private *dev_priv,
+void intel_display_power_put(struct intel_display *display,
 			     enum intel_display_power_domain domain,
 			     intel_wakeref_t wakeref)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	__intel_display_power_put(display, domain);
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
@@ -834,7 +832,7 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
 #else
 /**
  * intel_display_power_put_unchecked - release an unchecked power domain reference
- * @dev_priv: i915 device instance
+ * @display: display device instance
  * @domain: power domain to reference
  *
  * This function drops the power domain reference obtained by
@@ -845,10 +843,10 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
  * tracking when the corresponding debug kconfig option is disabled, should not
  * be used otherwise.
  */
-void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
+void intel_display_power_put_unchecked(struct intel_display *display,
 				       enum intel_display_power_domain domain)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	__intel_display_power_put(display, domain);
 	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
@@ -856,16 +854,15 @@ void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
 #endif
 
 void
-intel_display_power_get_in_set(struct drm_i915_private *i915,
+intel_display_power_get_in_set(struct intel_display *display,
 			       struct intel_display_power_domain_set *power_domain_set,
 			       enum intel_display_power_domain domain)
 {
-	struct intel_display *display = &i915->display;
 	intel_wakeref_t __maybe_unused wf;
 
 	drm_WARN_ON(display->drm, test_bit(domain, power_domain_set->mask.bits));
 
-	wf = intel_display_power_get(i915, domain);
+	wf = intel_display_power_get(display, domain);
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 	power_domain_set->wakerefs[domain] = wf;
 #endif
@@ -873,16 +870,15 @@ intel_display_power_get_in_set(struct drm_i915_private *i915,
 }
 
 bool
-intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
+intel_display_power_get_in_set_if_enabled(struct intel_display *display,
 					  struct intel_display_power_domain_set *power_domain_set,
 					  enum intel_display_power_domain domain)
 {
-	struct intel_display *display = &i915->display;
 	intel_wakeref_t wf;
 
 	drm_WARN_ON(display->drm, test_bit(domain, power_domain_set->mask.bits));
 
-	wf = intel_display_power_get_if_enabled(i915, domain);
+	wf = intel_display_power_get_if_enabled(display, domain);
 	if (!wf)
 		return false;
 
@@ -895,11 +891,10 @@ intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
 }
 
 void
-intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
+intel_display_power_put_mask_in_set(struct intel_display *display,
 				    struct intel_display_power_domain_set *power_domain_set,
 				    struct intel_power_domain_mask *mask)
 {
-	struct intel_display *display = &i915->display;
 	enum intel_display_power_domain domain;
 
 	drm_WARN_ON(display->drm,
@@ -911,7 +906,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
 #endif
-		intel_display_power_put(i915, domain, wf);
+		intel_display_power_put(display, domain, wf);
 		clear_bit(domain, power_domain_set->mask.bits);
 	}
 }
@@ -999,7 +994,7 @@ static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
  * intel_power_domains_init - initializes the power domain structures
  * @display: display device instance
  *
- * Initializes the power domain structures for @dev_priv depending upon the
+ * Initializes the power domain structures for @display depending upon the
  * supported platform.
  */
 int intel_power_domains_init(struct intel_display *display)
@@ -1963,12 +1958,12 @@ void intel_power_domains_init_hw(struct intel_display *display, bool resume)
 	 */
 	drm_WARN_ON(display->drm, power_domains->init_wakeref);
 	power_domains->init_wakeref =
-		intel_display_power_get(i915, POWER_DOMAIN_INIT);
+		intel_display_power_get(display, POWER_DOMAIN_INIT);
 
 	/* Disable power support if the user asked so. */
 	if (!display->params.disable_power_well) {
 		drm_WARN_ON(display->drm, power_domains->disable_wakeref);
-		display->power.domains.disable_wakeref = intel_display_power_get(i915,
+		display->power.domains.disable_wakeref = intel_display_power_get(display,
 										 POWER_DOMAIN_INIT);
 	}
 	intel_power_domains_sync_hw(display);
@@ -1995,7 +1990,7 @@ void intel_power_domains_driver_remove(struct intel_display *display)
 
 	/* Remove the refcount we took to keep power well support disabled. */
 	if (!display->params.disable_power_well)
-		intel_display_power_put(i915, POWER_DOMAIN_INIT,
+		intel_display_power_put(display, POWER_DOMAIN_INIT,
 					fetch_and_zero(&display->power.domains.disable_wakeref));
 
 	intel_display_power_flush_work_sync(display);
@@ -2051,11 +2046,10 @@ void intel_power_domains_sanitize_state(struct intel_display *display)
  */
 void intel_power_domains_enable(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref __maybe_unused =
 		fetch_and_zero(&display->power.domains.init_wakeref);
 
-	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
 	intel_power_domains_verify_state(display);
 }
 
@@ -2068,12 +2062,11 @@ void intel_power_domains_enable(struct intel_display *display)
  */
 void intel_power_domains_disable(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 
 	drm_WARN_ON(display->drm, power_domains->init_wakeref);
 	power_domains->init_wakeref =
-		intel_display_power_get(i915, POWER_DOMAIN_INIT);
+		intel_display_power_get(display, POWER_DOMAIN_INIT);
 
 	intel_power_domains_verify_state(display);
 }
@@ -2091,12 +2084,11 @@ void intel_power_domains_disable(struct intel_display *display)
  */
 void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 	intel_wakeref_t wakeref __maybe_unused =
 		fetch_and_zero(&power_domains->init_wakeref);
 
-	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
 
 	/*
 	 * In case of suspend-to-idle (aka S0ix) on a DMC platform without DC9
@@ -2107,7 +2099,7 @@ void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
 	 */
 	if (!(power_domains->allowed_dc_mask & DC_STATE_EN_DC9) && s2idle &&
 	    intel_dmc_has_payload(display)) {
-		intel_display_power_flush_work(i915);
+		intel_display_power_flush_work(display);
 		intel_power_domains_verify_state(display);
 		return;
 	}
@@ -2117,10 +2109,10 @@ void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
 	 * power wells if power domains must be deinitialized for suspend.
 	 */
 	if (!display->params.disable_power_well)
-		intel_display_power_put(i915, POWER_DOMAIN_INIT,
+		intel_display_power_put(display, POWER_DOMAIN_INIT,
 					fetch_and_zero(&display->power.domains.disable_wakeref));
 
-	intel_display_power_flush_work(i915);
+	intel_display_power_flush_work(display);
 	intel_power_domains_verify_state(display);
 
 	if (DISPLAY_VER(display) >= 11)
@@ -2145,7 +2137,6 @@ void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
  */
 void intel_power_domains_resume(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct i915_power_domains *power_domains = &display->power.domains;
 
 	if (power_domains->display_core_suspended) {
@@ -2154,7 +2145,7 @@ void intel_power_domains_resume(struct intel_display *display)
 	} else {
 		drm_WARN_ON(display->drm, power_domains->init_wakeref);
 		power_domains->init_wakeref =
-			intel_display_power_get(i915, POWER_DOMAIN_INIT);
+			intel_display_power_get(display, POWER_DOMAIN_INIT);
 	}
 
 	intel_power_domains_verify_state(display);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 7b294eec4431..b5d67b6c73cf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -184,88 +184,88 @@ void intel_display_power_resume(struct intel_display *display);
 void intel_display_power_set_target_dc_state(struct intel_display *display,
 					     u32 state);
 
-bool intel_display_power_is_enabled(struct drm_i915_private *dev_priv,
+bool intel_display_power_is_enabled(struct intel_display *display,
 				    enum intel_display_power_domain domain);
-intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
+intel_wakeref_t intel_display_power_get(struct intel_display *display,
 					enum intel_display_power_domain domain);
 intel_wakeref_t
-intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
+intel_display_power_get_if_enabled(struct intel_display *display,
 				   enum intel_display_power_domain domain);
-void __intel_display_power_put_async(struct drm_i915_private *i915,
+void __intel_display_power_put_async(struct intel_display *display,
 				     enum intel_display_power_domain domain,
 				     intel_wakeref_t wakeref,
 				     int delay_ms);
-void intel_display_power_flush_work(struct drm_i915_private *i915);
+void intel_display_power_flush_work(struct intel_display *display);
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
-void intel_display_power_put(struct drm_i915_private *dev_priv,
+void intel_display_power_put(struct intel_display *display,
 			     enum intel_display_power_domain domain,
 			     intel_wakeref_t wakeref);
 static inline void
-intel_display_power_put_async(struct drm_i915_private *i915,
+intel_display_power_put_async(struct intel_display *display,
 			      enum intel_display_power_domain domain,
 			      intel_wakeref_t wakeref)
 {
-	__intel_display_power_put_async(i915, domain, wakeref, -1);
+	__intel_display_power_put_async(display, domain, wakeref, -1);
 }
 
 static inline void
-intel_display_power_put_async_delay(struct drm_i915_private *i915,
+intel_display_power_put_async_delay(struct intel_display *display,
 				    enum intel_display_power_domain domain,
 				    intel_wakeref_t wakeref,
 				    int delay_ms)
 {
-	__intel_display_power_put_async(i915, domain, wakeref, delay_ms);
+	__intel_display_power_put_async(display, domain, wakeref, delay_ms);
 }
 #else
 void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
 				       enum intel_display_power_domain domain);
 
 static inline void
-intel_display_power_put(struct drm_i915_private *i915,
+intel_display_power_put(struct intel_display *display,
 			enum intel_display_power_domain domain,
 			intel_wakeref_t wakeref)
 {
-	intel_display_power_put_unchecked(i915, domain);
+	intel_display_power_put_unchecked(display, domain);
 }
 
 static inline void
-intel_display_power_put_async(struct drm_i915_private *i915,
+intel_display_power_put_async(struct intel_display *display,
 			      enum intel_display_power_domain domain,
 			      intel_wakeref_t wakeref)
 {
-	__intel_display_power_put_async(i915, domain, INTEL_WAKEREF_DEF, -1);
+	__intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, -1);
 }
 
 static inline void
-intel_display_power_put_async_delay(struct drm_i915_private *i915,
+intel_display_power_put_async_delay(struct intel_display *display,
 				    enum intel_display_power_domain domain,
 				    intel_wakeref_t wakeref,
 				    int delay_ms)
 {
-	__intel_display_power_put_async(i915, domain, INTEL_WAKEREF_DEF, delay_ms);
+	__intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, delay_ms);
 }
 #endif
 
 void
-intel_display_power_get_in_set(struct drm_i915_private *i915,
+intel_display_power_get_in_set(struct intel_display *display,
 			       struct intel_display_power_domain_set *power_domain_set,
 			       enum intel_display_power_domain domain);
 
 bool
-intel_display_power_get_in_set_if_enabled(struct drm_i915_private *i915,
+intel_display_power_get_in_set_if_enabled(struct intel_display *display,
 					  struct intel_display_power_domain_set *power_domain_set,
 					  enum intel_display_power_domain domain);
 
 void
-intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
+intel_display_power_put_mask_in_set(struct intel_display *display,
 				    struct intel_display_power_domain_set *power_domain_set,
 				    struct intel_power_domain_mask *mask);
 
 static inline void
-intel_display_power_put_all_in_set(struct drm_i915_private *i915,
+intel_display_power_put_all_in_set(struct intel_display *display,
 				   struct intel_display_power_domain_set *power_domain_set)
 {
-	intel_display_power_put_mask_in_set(i915, power_domain_set, &power_domain_set->mask);
+	intel_display_power_put_mask_in_set(display, power_domain_set, &power_domain_set->mask);
 }
 
 void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m);
@@ -296,12 +296,12 @@ enum dbuf_slice {
 void gen9_dbuf_slices_update(struct drm_i915_private *dev_priv,
 			     u8 req_slices);
 
-#define with_intel_display_power(i915, domain, wf) \
-	for ((wf) = intel_display_power_get((i915), (domain)); (wf); \
-	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = NULL)
+#define with_intel_display_power(display, domain, wf) \
+	for ((wf) = intel_display_power_get((display), (domain)); (wf); \
+	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)
 
-#define with_intel_display_power_if_enabled(i915, domain, wf) \
-	for ((wf) = intel_display_power_get_if_enabled((i915), (domain)); (wf); \
-	     intel_display_power_put_async((i915), (domain), (wf)), (wf) = NULL)
+#define with_intel_display_power_if_enabled(display, domain, wf) \
+	for ((wf) = intel_display_power_get_if_enabled((display), (domain)); (wf); \
+	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)
 
 #endif /* __INTEL_DISPLAY_POWER_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 221d3abda791..fa6944e55d95 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -992,19 +992,16 @@ static int parse_dmc_fw(struct intel_dmc *dmc, const struct firmware *fw)
 
 static void intel_dmc_runtime_pm_get(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
 	drm_WARN_ON(display->drm, display->dmc.wakeref);
-	display->dmc.wakeref = intel_display_power_get(i915, POWER_DOMAIN_INIT);
+	display->dmc.wakeref = intel_display_power_get(display, POWER_DOMAIN_INIT);
 }
 
 static void intel_dmc_runtime_pm_put(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref __maybe_unused =
 		fetch_and_zero(&display->dmc.wakeref);
 
-	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
 }
 
 static const char *dmc_fallback_path(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a286e5e31c4d..161ebfb7094f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5481,13 +5481,13 @@ void intel_digital_port_unlock(struct intel_encoder *encoder)
  */
 bool intel_digital_port_connected_locked(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_glitch_free = intel_tc_port_handles_hpd_glitches(dig_port);
 	bool is_connected = false;
 	intel_wakeref_t wakeref;
 
-	with_intel_display_power(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
 		unsigned long wait_expires = jiffies + msecs_to_jiffies_timeout(4);
 
 		do {
@@ -6536,7 +6536,6 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	struct intel_dp *intel_dp = &dig_port->dp;
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_device *dev = encoder->base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
 	enum port port = encoder->port;
 	int type;
 
@@ -6636,7 +6635,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	return true;
 
 fail:
-	intel_display_power_flush_work(dev_priv);
+	intel_display_power_flush_work(display);
 	drm_connector_cleanup(&connector->base);
 
 	return false;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 40c697476b72..ec27bbd70bcf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -243,7 +243,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	i915_reg_t ch_ctl, ch_data[5];
 	u32 aux_clock_divider;
 	enum intel_display_power_domain aux_domain;
@@ -272,7 +271,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 
 	aux_domain = intel_aux_power_domain(dig_port);
 
-	aux_wakeref = intel_display_power_get(i915, aux_domain);
+	aux_wakeref = intel_display_power_get(display, aux_domain);
 	pps_wakeref = intel_pps_lock(intel_dp);
 
 	/*
@@ -432,7 +431,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 		intel_pps_vdd_off_unlocked(intel_dp, false);
 
 	intel_pps_unlock(intel_dp, pps_wakeref);
-	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
+	intel_display_power_put_async(display, aux_domain, aux_wakeref);
 out_unlock:
 	intel_digital_port_unlock(encoder);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index b8fa04d3cd5c..cb2ef317d219 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -228,8 +228,10 @@ intel_tc_pll_enable_reg(struct drm_i915_private *i915,
 static void _intel_enable_shared_dpll(struct drm_i915_private *i915,
 				      struct intel_shared_dpll *pll)
 {
+	struct intel_display *display = &i915->display;
+
 	if (pll->info->power_domain)
-		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
+		pll->wakeref = intel_display_power_get(display, pll->info->power_domain);
 
 	pll->info->funcs->enable(i915, pll, &pll->state.hw_state);
 	pll->on = true;
@@ -238,11 +240,13 @@ static void _intel_enable_shared_dpll(struct drm_i915_private *i915,
 static void _intel_disable_shared_dpll(struct drm_i915_private *i915,
 				       struct intel_shared_dpll *pll)
 {
+	struct intel_display *display = &i915->display;
+
 	pll->info->funcs->disable(i915, pll);
 	pll->on = false;
 
 	if (pll->info->power_domain)
-		intel_display_power_put(i915, pll->info->power_domain, pll->wakeref);
+		intel_display_power_put(display, pll->info->power_domain, pll->wakeref);
 }
 
 /**
@@ -525,12 +529,13 @@ static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *i915,
 				      struct intel_shared_dpll *pll,
 				      struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct intel_display *display = &i915->display;
 	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 	const enum intel_dpll_id id = pll->info->id;
 	intel_wakeref_t wakeref;
 	u32 val;
 
-	wakeref = intel_display_power_get_if_enabled(i915,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
@@ -540,7 +545,7 @@ static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *i915,
 	hw_state->fp0 = intel_de_read(i915, PCH_FP0(id));
 	hw_state->fp1 = intel_de_read(i915, PCH_FP1(id));
 
-	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return val & DPLL_VCO_ENABLE;
 }
@@ -747,12 +752,13 @@ static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *i915,
 				       struct intel_shared_dpll *pll,
 				       struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct intel_display *display = &i915->display;
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	const enum intel_dpll_id id = pll->info->id;
 	intel_wakeref_t wakeref;
 	u32 val;
 
-	wakeref = intel_display_power_get_if_enabled(i915,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
@@ -760,7 +766,7 @@ static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *i915,
 	val = intel_de_read(i915, WRPLL_CTL(id));
 	hw_state->wrpll = val;
 
-	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return val & WRPLL_PLL_ENABLE;
 }
@@ -769,11 +775,12 @@ static bool hsw_ddi_spll_get_hw_state(struct drm_i915_private *i915,
 				      struct intel_shared_dpll *pll,
 				      struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct intel_display *display = &i915->display;
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	intel_wakeref_t wakeref;
 	u32 val;
 
-	wakeref = intel_display_power_get_if_enabled(i915,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
@@ -781,7 +788,7 @@ static bool hsw_ddi_spll_get_hw_state(struct drm_i915_private *i915,
 	val = intel_de_read(i915, SPLL_CTL);
 	hw_state->spll = val;
 
-	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return val & SPLL_PLL_ENABLE;
 }
@@ -1425,6 +1432,7 @@ static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 				     struct intel_shared_dpll *pll,
 				     struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct intel_display *display = &i915->display;
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
@@ -1432,7 +1440,7 @@ static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 	bool ret;
 	u32 val;
 
-	wakeref = intel_display_power_get_if_enabled(i915,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
@@ -1454,7 +1462,7 @@ static bool skl_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 	ret = true;
 
 out:
-	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return ret;
 }
@@ -1463,6 +1471,7 @@ static bool skl_ddi_dpll0_get_hw_state(struct drm_i915_private *i915,
 				       struct intel_shared_dpll *pll,
 				       struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct intel_display *display = &i915->display;
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
@@ -1470,7 +1479,7 @@ static bool skl_ddi_dpll0_get_hw_state(struct drm_i915_private *i915,
 	u32 val;
 	bool ret;
 
-	wakeref = intel_display_power_get_if_enabled(i915,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
@@ -1488,7 +1497,7 @@ static bool skl_ddi_dpll0_get_hw_state(struct drm_i915_private *i915,
 	ret = true;
 
 out:
-	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return ret;
 }
@@ -2172,7 +2181,7 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 
 	bxt_port_to_phy_channel(display, port, &phy, &ch);
 
-	wakeref = intel_display_power_get_if_enabled(i915,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
@@ -2234,7 +2243,7 @@ static bool bxt_ddi_pll_get_hw_state(struct drm_i915_private *i915,
 	ret = true;
 
 out:
-	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return ret;
 }
@@ -3541,6 +3550,7 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *i915,
 				struct intel_shared_dpll *pll,
 				struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct intel_display *display = &i915->display;
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(id);
@@ -3550,7 +3560,7 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *i915,
 
 	i915_reg_t enable_reg = intel_tc_pll_enable_reg(i915, pll);
 
-	wakeref = intel_display_power_get_if_enabled(i915,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
@@ -3600,7 +3610,7 @@ static bool mg_pll_get_hw_state(struct drm_i915_private *i915,
 
 	ret = true;
 out:
-	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 	return ret;
 }
 
@@ -3608,6 +3618,7 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
 				 struct intel_shared_dpll *pll,
 				 struct intel_dpll_hw_state *dpll_hw_state)
 {
+	struct intel_display *display = &i915->display;
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(id);
@@ -3615,7 +3626,7 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
 	bool ret = false;
 	u32 val;
 
-	wakeref = intel_display_power_get_if_enabled(i915,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
@@ -3672,7 +3683,7 @@ static bool dkl_pll_get_hw_state(struct drm_i915_private *i915,
 
 	ret = true;
 out:
-	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 	return ret;
 }
 
@@ -3681,13 +3692,14 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *i915,
 				 struct intel_dpll_hw_state *dpll_hw_state,
 				 i915_reg_t enable_reg)
 {
+	struct intel_display *display = &i915->display;
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
 	intel_wakeref_t wakeref;
 	bool ret = false;
 	u32 val;
 
-	wakeref = intel_display_power_get_if_enabled(i915,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     POWER_DOMAIN_DISPLAY_CORE);
 	if (!wakeref)
 		return false;
@@ -3733,7 +3745,7 @@ static bool icl_pll_get_hw_state(struct drm_i915_private *i915,
 
 	ret = true;
 out:
-	intel_display_power_put(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 	return ret;
 }
 
@@ -4508,12 +4520,13 @@ bool intel_dpll_get_hw_state(struct drm_i915_private *i915,
 static void readout_dpll_hw_state(struct drm_i915_private *i915,
 				  struct intel_shared_dpll *pll)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_crtc *crtc;
 
 	pll->on = intel_dpll_get_hw_state(i915, pll, &pll->state.hw_state);
 
 	if (pll->on && pll->info->power_domain)
-		pll->wakeref = intel_display_power_get(i915, pll->info->power_domain);
+		pll->wakeref = intel_display_power_get(display, pll->info->power_domain);
 
 	pll->state.pipe_mask = 0;
 	for_each_intel_crtc(&i915->drm, crtc) {
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 807cf606e7a8..abf457e68ee9 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -761,11 +761,10 @@ gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct intel_display *display = bus->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 	int ret;
 
-	wakeref = intel_display_power_get(i915, POWER_DOMAIN_GMBUS);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_GMBUS);
 
 	if (bus->force_bit) {
 		ret = i2c_bit_algo.master_xfer(adapter, msgs, num);
@@ -777,7 +776,7 @@ gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
 			bus->force_bit |= GMBUS_FORCE_BIT_RETRY;
 	}
 
-	intel_display_power_put(i915, POWER_DOMAIN_GMBUS, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_GMBUS, wakeref);
 
 	return ret;
 }
@@ -786,7 +785,6 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct intel_display *display = bus->display;
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	u8 cmd = DRM_HDCP_DDC_AKSV;
 	u8 buf[DRM_HDCP_KSV_LEN] = {};
 	struct i2c_msg msgs[] = {
@@ -806,7 +804,7 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	intel_wakeref_t wakeref;
 	int ret;
 
-	wakeref = intel_display_power_get(i915, POWER_DOMAIN_GMBUS);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_GMBUS);
 	mutex_lock(&display->gmbus.mutex);
 
 	/*
@@ -817,7 +815,7 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	ret = do_gmbus_xfer(adapter, msgs, ARRAY_SIZE(msgs), GMBUS_AKSV_SELECT);
 
 	mutex_unlock(&display->gmbus.mutex);
-	intel_display_power_put(i915, POWER_DOMAIN_GMBUS, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_GMBUS, wakeref);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 3b51238022f4..015110fc57a2 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2491,14 +2491,13 @@ static bool
 intel_hdmi_set_edid(struct drm_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	struct i2c_adapter *ddc = connector->ddc;
 	intel_wakeref_t wakeref;
 	const struct drm_edid *drm_edid;
 	bool connected = false;
 
-	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_GMBUS);
 
 	drm_edid = drm_edid_read_ddc(connector, ddc);
 
@@ -2521,7 +2520,7 @@ intel_hdmi_set_edid(struct drm_connector *connector)
 		connected = true;
 	}
 
-	intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_GMBUS, wakeref);
 
 	cec_notifier_set_phys_addr(intel_hdmi->cec_notifier,
 				   connector->display_info.source_physical_address);
@@ -2534,7 +2533,6 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
 	enum drm_connector_status status = connector_status_disconnected;
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	struct intel_encoder *encoder = &hdmi_to_dig_port(intel_hdmi)->base;
 	intel_wakeref_t wakeref;
@@ -2548,7 +2546,7 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 	if (!intel_display_driver_check_access(display))
 		return connector->status;
 
-	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_GMBUS);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_GMBUS);
 
 	if (DISPLAY_VER(display) >= 11 &&
 	    !intel_digital_port_connected(encoder))
@@ -2560,7 +2558,7 @@ intel_hdmi_detect(struct drm_connector *connector, bool force)
 		status = connector_status_connected;
 
 out:
-	intel_display_power_put(dev_priv, POWER_DOMAIN_GMBUS, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_GMBUS, wakeref);
 
 	if (status != connector_status_connected)
 		cec_notifier_phys_addr_invalidate(intel_hdmi->cec_notifier);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index c0d48f651dab..d2e0002c5dc3 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -732,6 +732,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 	struct drm_i915_private *dev_priv =
 		container_of(work, struct drm_i915_private,
 			     display.hotplug.poll_init_work);
+	struct intel_display *display = &dev_priv->display;
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
 	intel_wakeref_t wakeref;
@@ -747,7 +748,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 	 * and so risk an endless loop of this same sequence.
 	 */
 	if (!enabled) {
-		wakeref = intel_display_power_get(dev_priv,
+		wakeref = intel_display_power_get(display,
 						  POWER_DOMAIN_DISPLAY_CORE);
 		drm_WARN_ON(&dev_priv->drm,
 			    READ_ONCE(dev_priv->display.hotplug.poll_enabled));
@@ -789,7 +790,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 	if (!enabled) {
 		i915_hpd_poll_detect_connectors(dev_priv);
 
-		intel_display_power_put(dev_priv,
+		intel_display_power_put(display,
 					POWER_DOMAIN_DISPLAY_CORE,
 					wakeref);
 	}
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 4b0dce169d4e..e86b3a86db82 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -102,18 +102,19 @@ bool intel_lvds_port_enabled(struct drm_i915_private *i915,
 static bool intel_lvds_get_hw_state(struct intel_encoder *encoder,
 				    enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
 	intel_wakeref_t wakeref;
 	bool ret;
 
-	wakeref = intel_display_power_get_if_enabled(i915, encoder->power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, encoder->power_domain);
 	if (!wakeref)
 		return false;
 
 	ret = intel_lvds_port_enabled(i915, lvds_encoder->reg, pipe);
 
-	intel_display_power_put(i915, encoder->power_domain, wakeref);
+	intel_display_power_put(display, encoder->power_domain, wakeref);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 9a2bea19f17b..bbde70b35712 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -176,7 +176,7 @@ static void intel_crtc_disable_noatomic_complete(struct intel_crtc *crtc)
 	intel_fbc_disable(crtc);
 	intel_update_watermarks(i915);
 
-	intel_display_power_put_all_in_set(i915, &crtc->enabled_power_domains);
+	intel_display_power_put_all_in_set(display, &crtc->enabled_power_domains);
 
 	cdclk_state->min_cdclk[pipe] = 0;
 	cdclk_state->min_voltage_level[pipe] = 0;
@@ -968,7 +968,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 	struct intel_crtc *crtc;
 	intel_wakeref_t wakeref;
 
-	wakeref = intel_display_power_get(i915, POWER_DOMAIN_INIT);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_INIT);
 
 	intel_early_display_was(i915);
 	intel_modeset_readout_hw_state(i915);
@@ -1025,7 +1025,7 @@ void intel_modeset_setup_hw_state(struct drm_i915_private *i915,
 			intel_modeset_put_crtc_power_domains(crtc, &put_domains);
 	}
 
-	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
 
 	intel_power_domains_sanitize_state(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 90efc6f64e52..10e26c3db946 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -582,6 +582,7 @@ int intel_crtc_verify_crc_source(struct drm_crtc *crtc, const char *source_name,
 int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
 {
 	struct intel_crtc *crtc = to_intel_crtc(_crtc);
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	struct intel_pipe_crc *pipe_crc = &crtc->pipe_crc;
 	enum intel_display_power_domain power_domain;
@@ -598,7 +599,7 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
 	}
 
 	power_domain = POWER_DOMAIN_PIPE(pipe);
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Trying to capture CRC while pipe is off\n");
@@ -628,7 +629,7 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
 	if (!enable)
 		intel_crtc_crc_setup_workarounds(crtc, false);
 
-	intel_display_power_put(dev_priv, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index c0f65749a3f6..ef6effaf82e0 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -65,13 +65,12 @@ static const char *pps_name(struct intel_dp *intel_dp)
 intel_wakeref_t intel_pps_lock(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 
 	/*
 	 * See vlv_pps_reset_all() why we need a power domain reference here.
 	 */
-	wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_DISPLAY_CORE);
+	wakeref = intel_display_power_get(display, POWER_DOMAIN_DISPLAY_CORE);
 	mutex_lock(&display->pps.mutex);
 
 	return wakeref;
@@ -81,10 +80,9 @@ intel_wakeref_t intel_pps_unlock(struct intel_dp *intel_dp,
 				 intel_wakeref_t wakeref)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 
 	mutex_unlock(&display->pps.mutex);
-	intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 
 	return NULL;
 }
@@ -741,7 +739,6 @@ static  u32 ilk_get_pp_control(struct intel_dp *intel_dp)
 bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	u32 pp;
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
@@ -759,7 +756,7 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 		return need_to_disable;
 
 	drm_WARN_ON(display->drm, intel_dp->pps.vdd_wakeref);
-	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
+	intel_dp->pps.vdd_wakeref = intel_display_power_get(display,
 							    intel_aux_power_domain(dig_port));
 
 	pp_stat_reg = _pp_stat_reg(intel_dp);
@@ -825,7 +822,6 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp)
 static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	u32 pp;
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
@@ -863,7 +859,7 @@ static void intel_pps_vdd_off_sync_unlocked(struct intel_dp *intel_dp)
 		intel_dp_invalidate_source_oui(intel_dp);
 	}
 
-	intel_display_power_put(dev_priv,
+	intel_display_power_put(display,
 				intel_aux_power_domain(dig_port),
 				fetch_and_zero(&intel_dp->pps.vdd_wakeref));
 }
@@ -1036,7 +1032,6 @@ void intel_pps_on(struct intel_dp *intel_dp)
 void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	u32 pp;
 	i915_reg_t pp_ctrl_reg;
@@ -1074,7 +1069,7 @@ void intel_pps_off_unlocked(struct intel_dp *intel_dp)
 	intel_dp_invalidate_source_oui(intel_dp);
 
 	/* We got a reference when we enabled the VDD. */
-	intel_display_power_put(dev_priv,
+	intel_display_power_put(display,
 				intel_aux_power_domain(dig_port),
 				fetch_and_zero(&intel_dp->pps.vdd_wakeref));
 }
@@ -1338,7 +1333,6 @@ void vlv_pps_port_disable(struct intel_encoder *encoder,
 static void pps_vdd_init(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 
 	lockdep_assert_held(&display->pps.mutex);
@@ -1357,7 +1351,7 @@ static void pps_vdd_init(struct intel_dp *intel_dp)
 		    dig_port->base.base.base.id, dig_port->base.base.name,
 		    pps_name(intel_dp));
 	drm_WARN_ON(display->drm, intel_dp->pps.vdd_wakeref);
-	intel_dp->pps.vdd_wakeref = intel_display_power_get(dev_priv,
+	intel_dp->pps.vdd_wakeref = intel_display_power_get(display,
 							    intel_aux_power_domain(dig_port));
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 7b3b7be7d5b8..abb54d7c9608 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -452,15 +452,14 @@ static bool
 vlv_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
 {
-	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
+	struct intel_display *display = to_intel_display(plane);
 	enum intel_display_power_domain power_domain;
 	enum plane_id plane_id = plane->id;
 	intel_wakeref_t wakeref;
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
@@ -468,7 +467,7 @@ vlv_sprite_get_hw_state(struct intel_plane *plane,
 
 	*pipe = plane->pipe;
 
-	intel_display_power_put(dev_priv, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 
 	return ret;
 }
@@ -884,13 +883,12 @@ ivb_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
 {
 	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
@@ -898,7 +896,7 @@ ivb_sprite_get_hw_state(struct intel_plane *plane,
 
 	*pipe = plane->pipe;
 
-	intel_display_power_put(dev_priv, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 
 	return ret;
 }
@@ -1217,13 +1215,12 @@ g4x_sprite_get_hw_state(struct intel_plane *plane,
 			enum pipe *pipe)
 {
 	struct intel_display *display = to_intel_display(plane->base.dev);
-	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	intel_wakeref_t wakeref;
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
@@ -1231,7 +1228,7 @@ g4x_sprite_get_hw_state(struct intel_plane *plane,
 
 	*pipe = plane->pipe;
 
-	intel_display_power_put(dev_priv, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 13811244c82b..e9e9ee5d345a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -187,11 +187,11 @@ bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
 static intel_wakeref_t
 __tc_cold_block(struct intel_tc_port *tc, enum intel_display_power_domain *domain)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 
 	*domain = tc_phy_cold_off_domain(tc);
 
-	return intel_display_power_get(i915, *domain);
+	return intel_display_power_get(display, *domain);
 }
 
 static intel_wakeref_t
@@ -211,9 +211,9 @@ static void
 __tc_cold_unblock(struct intel_tc_port *tc, enum intel_display_power_domain domain,
 		  intel_wakeref_t wakeref)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 
-	intel_display_power_put(i915, domain, wakeref);
+	intel_display_power_put(display, domain, wakeref);
 }
 
 static void
@@ -230,21 +230,21 @@ tc_cold_unblock(struct intel_tc_port *tc, intel_wakeref_t wakeref)
 static void
 assert_display_core_power_enabled(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 
-	drm_WARN_ON(&i915->drm,
-		    !intel_display_power_is_enabled(i915, POWER_DOMAIN_DISPLAY_CORE));
+	drm_WARN_ON(display->drm,
+		    !intel_display_power_is_enabled(display, POWER_DOMAIN_DISPLAY_CORE));
 }
 
 static void
 assert_tc_cold_blocked(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	bool enabled;
 
-	enabled = intel_display_power_is_enabled(i915,
+	enabled = intel_display_power_is_enabled(display,
 						 tc_phy_cold_off_domain(tc));
-	drm_WARN_ON(&i915->drm, !enabled);
+	drm_WARN_ON(display->drm, !enabled);
 }
 
 static enum intel_display_power_domain
@@ -258,10 +258,10 @@ tc_port_power_domain(struct intel_tc_port *tc)
 static void
 assert_tc_port_power_enabled(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 
-	drm_WARN_ON(&i915->drm,
-		    !intel_display_power_is_enabled(i915, tc_port_power_domain(tc)));
+	drm_WARN_ON(display->drm,
+		    !intel_display_power_is_enabled(display, tc_port_power_domain(tc)));
 }
 
 static u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
@@ -296,12 +296,13 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 
 static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
+	struct intel_display *display = to_intel_display(dig_port);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
 	intel_wakeref_t wakeref;
 	u32 val, pin_assignment;
 
-	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
 		val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
 
 	pin_assignment =
@@ -321,11 +322,11 @@ static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 
 static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	intel_wakeref_t wakeref;
 	u32 pin_mask;
 
-	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
 		pin_mask = intel_tc_port_get_pin_assignment_mask(dig_port);
 
 	switch (pin_mask) {
@@ -342,11 +343,11 @@ static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 
 static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	struct intel_display *display = to_intel_display(dig_port);
 	intel_wakeref_t wakeref;
 	u32 lane_mask = 0;
 
-	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref)
 		lane_mask = intel_tc_port_get_lane_mask(dig_port);
 
 	switch (lane_mask) {
@@ -488,6 +489,7 @@ icl_tc_phy_cold_off_domain(struct intel_tc_port *tc)
 
 static u32 icl_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	u32 isr_bit = i915->display.hotplug.pch_hpd[dig_port->base.hpd_pin];
@@ -496,7 +498,7 @@ static u32 icl_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	u32 pch_isr;
 	u32 mask = 0;
 
-	with_intel_display_power(i915, tc_phy_cold_off_domain(tc), wakeref) {
+	with_intel_display_power(display, tc_phy_cold_off_domain(tc), wakeref) {
 		fia_isr = intel_de_read(i915, PORT_TX_DFLEXDPSP(tc->phy_fia));
 		pch_isr = intel_de_read(i915, SDEISR);
 	}
@@ -730,11 +732,12 @@ tgl_tc_phy_cold_off_domain(struct intel_tc_port *tc)
 
 static void tgl_tc_phy_init(struct intel_tc_port *tc)
 {
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	intel_wakeref_t wakeref;
 	u32 val;
 
-	with_intel_display_power(i915, tc_phy_cold_off_domain(tc), wakeref)
+	with_intel_display_power(display, tc_phy_cold_off_domain(tc), wakeref)
 		val = intel_de_read(i915, PORT_TX_DFLEXDPSP(FIA1));
 
 	drm_WARN_ON(&i915->drm, val == 0xffffffff);
@@ -771,6 +774,7 @@ adlp_tc_phy_cold_off_domain(struct intel_tc_port *tc)
 
 static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
@@ -781,7 +785,7 @@ static u32 adlp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	u32 pch_isr;
 	u32 mask = 0;
 
-	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
 		cpu_isr = intel_de_read(i915, GEN11_DE_HPD_ISR);
 		pch_isr = intel_de_read(i915, SDEISR);
 	}
@@ -851,22 +855,23 @@ static bool adlp_tc_phy_is_owned(struct intel_tc_port *tc)
 
 static void adlp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum intel_display_power_domain port_power_domain =
 		tc_port_power_domain(tc);
 	intel_wakeref_t port_wakeref;
 
-	port_wakeref = intel_display_power_get(i915, port_power_domain);
+	port_wakeref = intel_display_power_get(display, port_power_domain);
 
 	tc->mode = tc_phy_get_current_mode(tc);
 	if (tc->mode != TC_PORT_DISCONNECTED)
 		tc->lock_wakeref = tc_cold_block(tc);
 
-	intel_display_power_put(i915, port_power_domain, port_wakeref);
+	intel_display_power_put(display, port_power_domain, port_wakeref);
 }
 
 static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 {
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	enum intel_display_power_domain port_power_domain =
 		tc_port_power_domain(tc);
@@ -877,7 +882,7 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 		return true;
 	}
 
-	port_wakeref = intel_display_power_get(i915, port_power_domain);
+	port_wakeref = intel_display_power_get(display, port_power_domain);
 
 	if (!adlp_tc_phy_take_ownership(tc, true) &&
 	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
@@ -898,7 +903,7 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 	if (!tc_phy_verify_legacy_or_dp_alt_mode(tc, required_lanes))
 		goto out_unblock_tc_cold;
 
-	intel_display_power_put(i915, port_power_domain, port_wakeref);
+	intel_display_power_put(display, port_power_domain, port_wakeref);
 
 	return true;
 
@@ -907,19 +912,19 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 out_release_phy:
 	adlp_tc_phy_take_ownership(tc, false);
 out_put_port_power:
-	intel_display_power_put(i915, port_power_domain, port_wakeref);
+	intel_display_power_put(display, port_power_domain, port_wakeref);
 
 	return false;
 }
 
 static void adlp_tc_phy_disconnect(struct intel_tc_port *tc)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum intel_display_power_domain port_power_domain =
 		tc_port_power_domain(tc);
 	intel_wakeref_t port_wakeref;
 
-	port_wakeref = intel_display_power_get(i915, port_power_domain);
+	port_wakeref = intel_display_power_get(display, port_power_domain);
 
 	tc_cold_unblock(tc, fetch_and_zero(&tc->lock_wakeref));
 
@@ -934,7 +939,7 @@ static void adlp_tc_phy_disconnect(struct intel_tc_port *tc)
 		MISSING_CASE(tc->mode);
 	}
 
-	intel_display_power_put(i915, port_power_domain, port_wakeref);
+	intel_display_power_put(display, port_power_domain, port_wakeref);
 }
 
 static void adlp_tc_phy_init(struct intel_tc_port *tc)
@@ -959,6 +964,7 @@ static const struct intel_tc_phy_ops adlp_tc_phy_ops = {
  */
 static u32 xelpdp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 {
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct drm_i915_private *i915 = tc_to_i915(tc);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	enum hpd_pin hpd_pin = dig_port->base.hpd_pin;
@@ -969,7 +975,7 @@ static u32 xelpdp_tc_phy_hpd_live_status(struct intel_tc_port *tc)
 	u32 pch_isr;
 	u32 mask = 0;
 
-	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
+	with_intel_display_power(display, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
 		pica_isr = intel_de_read(i915, PICAINTERRUPT_ISR);
 		pch_isr = intel_de_read(i915, SDEISR);
 	}
@@ -1436,25 +1442,25 @@ static void tc_phy_init(struct intel_tc_port *tc)
 static void intel_tc_port_reset_mode(struct intel_tc_port *tc,
 				     int required_lanes, bool force_disconnect)
 {
-	struct drm_i915_private *i915 = tc_to_i915(tc);
+	struct intel_display *display = to_intel_display(tc->dig_port);
 	struct intel_digital_port *dig_port = tc->dig_port;
 	enum tc_port_mode old_tc_mode = tc->mode;
 
-	intel_display_power_flush_work(i915);
+	intel_display_power_flush_work(display);
 	if (!intel_tc_cold_requires_aux_pw(dig_port)) {
 		enum intel_display_power_domain aux_domain;
 		bool aux_powered;
 
 		aux_domain = intel_aux_power_domain(dig_port);
-		aux_powered = intel_display_power_is_enabled(i915, aux_domain);
-		drm_WARN_ON(&i915->drm, aux_powered);
+		aux_powered = intel_display_power_is_enabled(display, aux_domain);
+		drm_WARN_ON(display->drm, aux_powered);
 	}
 
 	tc_phy_disconnect(tc);
 	if (!force_disconnect)
 		tc_phy_connect(tc, required_lanes);
 
-	drm_dbg_kms(&i915->drm, "Port %s: TC port mode reset (%s -> %s)\n",
+	drm_dbg_kms(display->drm, "Port %s: TC port mode reset (%s -> %s)\n",
 		    tc->port_name,
 		    tc_port_mode_name(old_tc_mode),
 		    tc_port_mode_name(tc->mode));
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 932435a7f88d..6e7151346382 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -962,6 +962,7 @@ static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state)
 
 void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -974,7 +975,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 
 	power_domain = intel_dsc_power_domain(crtc, cpu_transcoder);
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return;
 
@@ -994,7 +995,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 
 	intel_dsc_get_pps_config(crtc_state);
 out:
-	intel_display_power_put(dev_priv, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 }
 
 static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index fd18dd07ae49..684b5d1bc87c 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -59,7 +59,6 @@ void intel_vga_redisable_power_on(struct intel_display *display)
 
 void intel_vga_redisable(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 
 	/*
@@ -71,13 +70,13 @@ void intel_vga_redisable(struct intel_display *display)
 	 * follow the "don't touch the power well if we don't need it" policy
 	 * the rest of the driver uses.
 	 */
-	wakeref = intel_display_power_get_if_enabled(i915, POWER_DOMAIN_VGA);
+	wakeref = intel_display_power_get_if_enabled(display, POWER_DOMAIN_VGA);
 	if (!wakeref)
 		return;
 
 	intel_vga_redisable_power_on(display);
 
-	intel_display_power_put(i915, POWER_DOMAIN_VGA, wakeref);
+	intel_display_power_put(display, POWER_DOMAIN_VGA, wakeref);
 }
 
 void intel_vga_reset_io_mem(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 91eba560c0ab..24dbad253443 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -922,6 +922,7 @@ static bool
 skl_plane_get_hw_state(struct intel_plane *plane,
 		       enum pipe *pipe)
 {
+	struct intel_display *display = to_intel_display(plane);
 	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 	enum intel_display_power_domain power_domain;
 	enum plane_id plane_id = plane->id;
@@ -929,7 +930,7 @@ skl_plane_get_hw_state(struct intel_plane *plane,
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
-	wakeref = intel_display_power_get_if_enabled(dev_priv, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return false;
 
@@ -937,7 +938,7 @@ skl_plane_get_hw_state(struct intel_plane *plane,
 
 	*pipe = plane->pipe;
 
-	intel_display_power_put(dev_priv, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 45fe4aaeb450..1c4510d520e8 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -836,6 +836,7 @@ static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 				      struct skl_ddb_entry *ddb_y,
 				      u16 *min_ddb, u16 *interim_ddb)
 {
+	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum intel_display_power_domain power_domain;
 	enum pipe pipe = crtc->pipe;
@@ -843,7 +844,7 @@ static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 	enum plane_id plane_id;
 
 	power_domain = POWER_DOMAIN_PIPE(pipe);
-	wakeref = intel_display_power_get_if_enabled(i915, power_domain);
+	wakeref = intel_display_power_get_if_enabled(display, power_domain);
 	if (!wakeref)
 		return;
 
@@ -855,7 +856,7 @@ static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 					   &min_ddb[plane_id],
 					   &interim_ddb[plane_id]);
 
-	intel_display_power_put(i915, power_domain, wakeref);
+	intel_display_power_put(display, power_domain, wakeref);
 }
 
 struct dbuf_slice_conf_entry {
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 14973e9cb899..f6be1cd5d270 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -947,7 +947,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 
 	drm_dbg_kms(display->drm, "\n");
 
-	wakeref = intel_display_power_get_if_enabled(dev_priv,
+	wakeref = intel_display_power_get_if_enabled(display,
 						     encoder->power_domain);
 	if (!wakeref)
 		return false;
@@ -1007,7 +1007,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 	}
 
 out_put_power:
-	intel_display_power_put(dev_priv, encoder->power_domain, wakeref);
+	intel_display_power_put(display, encoder->power_domain, wakeref);
 
 	return active;
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index c08fdb65cc69..175fa2db0551 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -70,6 +70,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
 {
 	struct intel_gt *gt = container_of(wf, typeof(*gt), wakeref);
 	struct drm_i915_private *i915 = gt->i915;
+	struct intel_display *display = &i915->display;
 
 	GT_TRACE(gt, "\n");
 
@@ -84,7 +85,7 @@ static int __gt_unpark(struct intel_wakeref *wf)
 	 * Work around it by grabbing a GT IRQ power domain whilst there is any
 	 * GT activity, preventing any DC state transitions.
 	 */
-	gt->awake = intel_display_power_get(i915, POWER_DOMAIN_GT_IRQ);
+	gt->awake = intel_display_power_get(display, POWER_DOMAIN_GT_IRQ);
 	GEM_BUG_ON(!gt->awake);
 
 	intel_rc6_unpark(&gt->rc6);
@@ -103,6 +104,7 @@ static int __gt_park(struct intel_wakeref *wf)
 	struct intel_gt *gt = container_of(wf, typeof(*gt), wakeref);
 	intel_wakeref_t wakeref = fetch_and_zero(&gt->awake);
 	struct drm_i915_private *i915 = gt->i915;
+	struct intel_display *display = &i915->display;
 
 	GT_TRACE(gt, "\n");
 
@@ -120,7 +122,7 @@ static int __gt_park(struct intel_wakeref *wf)
 
 	/* Defer dropping the display power well for 100ms, it's slow! */
 	GEM_BUG_ON(!wakeref);
-	intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
+	intel_display_power_put_async(display, POWER_DOMAIN_GT_IRQ, wakeref);
 
 	return 0;
 }
-- 
2.45.3

