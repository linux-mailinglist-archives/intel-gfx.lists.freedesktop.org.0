Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBF1A82E71
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 20:19:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B224010E6FF;
	Wed,  9 Apr 2025 18:19:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YFv34l8K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 533DB10E6F0;
 Wed,  9 Apr 2025 18:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744222742; x=1775758742;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R7N2fZPDv7MhWUSOxSpswDyzNJzsBIqDQM9gNPvLwOw=;
 b=YFv34l8KQqtEDXuu7TVR/8xJGG3oL63qlR6K1HDfdGUhxr0ERP2+RhYk
 5JNcAgGEfDxsp5LmlqoaqNsdlHlKAe589CTUfOiFx6wfEtg5U/N0zTEY6
 DRVZvI5oirhf2mR6KYpBE40gpdjYC+abhdMrazj1RlITO/Hr+k5D5kRik
 Y1FCvl+PoO61+m/kqsWpQShd/XepRD0YmWiLwuCpYgUMI/lC9DXtZ+tl/
 dELVmOAnSurqPgp2Gg+/6+Vv2Q1kFsGxzep32wv9/k7J0HZEJoIYlp0PH
 k1qFJGlS7NUEzsebPFx5DbaDcuhfvu6tEDS+EY/PwyHJe0Co0NlBQTi3j Q==;
X-CSE-ConnectionGUID: xq4pht96SfytYN4x83AZxg==
X-CSE-MsgGUID: 11UcXzkwTv6yZ61hLa4nZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="45729998"
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="45729998"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:19:02 -0700
X-CSE-ConnectionGUID: M+5ft+QiTESc1E982hzJ4g==
X-CSE-MsgGUID: hgE2MuvMS2uAdKi4iJim9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,201,1739865600"; d="scan'208";a="165879068"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 11:19:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/14] drm/i915/hdmi: switch to display->platform based
 platform detection
Date: Wed,  9 Apr 2025 21:17:52 +0300
Message-Id: <02659f1144180f328167734f7e31499833749c8d.1744222449.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744222449.git.jani.nikula@intel.com>
References: <cover.1744222449.git.jani.nikula@intel.com>
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

Prefer display->platform based platform detection over the old IS_*()
macros.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 44 +++++++++++------------
 1 file changed, 20 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index f9fa17e1f584..120c63dfdd02 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -769,7 +769,7 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
 				 struct intel_crtc_state *crtc_state,
 				 struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct hdmi_spd_infoframe *frame = &crtc_state->infoframes.spd.spd;
 	int ret;
 
@@ -779,7 +779,7 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
 	crtc_state->infoframes.enable |=
 		intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_SPD);
 
-	if (IS_DGFX(i915))
+	if (display->platform.dgfx)
 		ret = hdmi_spd_infoframe_init(frame, "Intel", "Discrete gfx");
 	else
 		ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
@@ -989,7 +989,7 @@ static bool intel_hdmi_set_gcp_infoframe(struct intel_encoder *encoder,
 
 	if (HAS_DDI(display))
 		reg = HSW_TVIDEO_DIP_GCP(display, crtc_state->cpu_transcoder);
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	else if (display->platform.valleyview || display->platform.cherryview)
 		reg = VLV_TVIDEO_DIP_GCP(crtc->pipe);
 	else if (HAS_PCH_SPLIT(dev_priv))
 		reg = TVIDEO_DIP_GCP(crtc->pipe);
@@ -1015,7 +1015,7 @@ void intel_hdmi_read_gcp_infoframe(struct intel_encoder *encoder,
 
 	if (HAS_DDI(display))
 		reg = HSW_TVIDEO_DIP_GCP(display, crtc_state->cpu_transcoder);
-	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	else if (display->platform.valleyview || display->platform.cherryview)
 		reg = VLV_TVIDEO_DIP_GCP(crtc->pipe);
 	else if (HAS_PCH_SPLIT(dev_priv))
 		reg = TVIDEO_DIP_GCP(crtc->pipe);
@@ -1029,9 +1029,9 @@ static void intel_hdmi_compute_gcp_infoframe(struct intel_encoder *encoder,
 					     struct intel_crtc_state *crtc_state,
 					     struct drm_connector_state *conn_state)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 
-	if (IS_G4X(dev_priv) || !crtc_state->has_infoframe)
+	if (display->platform.g4x || !crtc_state->has_infoframe)
 		return;
 
 	crtc_state->infoframes.enable |=
@@ -1539,7 +1539,6 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
 	struct intel_display *display = to_intel_display(dig_port);
 	struct intel_hdmi *hdmi = &dig_port->hdmi;
 	struct intel_connector *connector = hdmi->attached_connector;
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 	int ret;
 
 	if (!enable)
@@ -1558,7 +1557,7 @@ int intel_hdmi_hdcp_toggle_signalling(struct intel_digital_port *dig_port,
 	 * WA: To fix incorrect positioning of the window of
 	 * opportunity and enc_en signalling in KABYLAKE.
 	 */
-	if (IS_KABYLAKE(dev_priv) && enable)
+	if (display->platform.kabylake && enable)
 		return kbl_repositioning_enc_en_signal(connector,
 						       cpu_transcoder);
 
@@ -1814,14 +1813,13 @@ static const struct intel_hdcp_shim intel_hdmi_hdcp_shim = {
 static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	int max_tmds_clock, vbt_max_tmds_clock;
 
-	if (DISPLAY_VER(display) >= 13 || IS_ALDERLAKE_S(dev_priv))
+	if (DISPLAY_VER(display) >= 13 || display->platform.alderlake_s)
 		max_tmds_clock = 600000;
 	else if (DISPLAY_VER(display) >= 10)
 		max_tmds_clock = 594000;
-	else if (DISPLAY_VER(display) >= 8 || IS_HASWELL(dev_priv))
+	else if (DISPLAY_VER(display) >= 8 || display->platform.haswell)
 		max_tmds_clock = 300000;
 	else if (DISPLAY_VER(display) >= 5)
 		max_tmds_clock = 225000;
@@ -1880,7 +1878,6 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 		      bool has_hdmi_sink)
 {
 	struct intel_display *display = to_intel_display(hdmi);
-	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	struct intel_encoder *encoder = &hdmi_to_dig_port(hdmi)->base;
 
 	if (clock < 25000)
@@ -1890,16 +1887,16 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
 		return MODE_CLOCK_HIGH;
 
 	/* GLK DPLL can't generate 446-480 MHz */
-	if (IS_GEMINILAKE(dev_priv) && clock > 446666 && clock < 480000)
+	if (display->platform.geminilake && clock > 446666 && clock < 480000)
 		return MODE_CLOCK_RANGE;
 
 	/* BXT/GLK DPLL can't generate 223-240 MHz */
-	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
+	if ((display->platform.geminilake || display->platform.broxton) &&
 	    clock > 223333 && clock < 240000)
 		return MODE_CLOCK_RANGE;
 
 	/* CHV DPLL can't generate 216-240 MHz */
-	if (IS_CHERRYVIEW(dev_priv) && clock > 216000 && clock < 240000)
+	if (display->platform.cherryview && clock > 216000 && clock < 240000)
 		return MODE_CLOCK_RANGE;
 
 	/* ICL+ combo PHY PLL can't generate 500-533.2 MHz */
@@ -2440,7 +2437,6 @@ static void
 intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 {
 	struct intel_display *display = to_intel_display(connector->dev);
-	struct drm_i915_private *dev_priv = to_i915(connector->dev);
 	struct intel_hdmi *hdmi = intel_attached_hdmi(to_intel_connector(connector));
 	struct intel_encoder *encoder = &hdmi_to_dig_port(hdmi)->base;
 	struct i2c_adapter *ddc = connector->ddc;
@@ -2481,7 +2477,7 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector)
 		    hdmi->dp_dual_mode.max_tmds_clock);
 
 	/* Older VBTs are often buggy and can't be trusted :( Play it safe. */
-	if ((DISPLAY_VER(display) >= 8 || IS_HASWELL(dev_priv)) &&
+	if ((DISPLAY_VER(display) >= 8 || display->platform.haswell) &&
 	    !intel_bios_encoder_supports_dp_dual_mode(encoder->devdata)) {
 		drm_dbg_kms(display->drm,
 			    "Ignoring DP dual mode adaptor max TMDS clock for native HDMI port\n");
@@ -2898,24 +2894,24 @@ static u8 intel_hdmi_default_ddc_pin(struct intel_encoder *encoder)
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	u8 ddc_pin;
 
-	if (IS_ALDERLAKE_S(dev_priv))
+	if (display->platform.alderlake_s)
 		ddc_pin = adls_encoder_to_ddc_pin(encoder);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
 		ddc_pin = dg1_encoder_to_ddc_pin(encoder);
-	else if (IS_ROCKETLAKE(dev_priv))
+	else if (display->platform.rocketlake)
 		ddc_pin = rkl_encoder_to_ddc_pin(encoder);
 	else if (DISPLAY_VER(display) == 9 && HAS_PCH_TGP(dev_priv))
 		ddc_pin = gen9bc_tgp_encoder_to_ddc_pin(encoder);
-	else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
+	else if ((display->platform.jasperlake || display->platform.elkhartlake) &&
 		 HAS_PCH_TGP(dev_priv))
 		ddc_pin = mcc_encoder_to_ddc_pin(encoder);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		ddc_pin = icl_encoder_to_ddc_pin(encoder);
 	else if (HAS_PCH_CNP(dev_priv))
 		ddc_pin = cnp_encoder_to_ddc_pin(encoder);
-	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
+	else if (display->platform.geminilake || display->platform.broxton)
 		ddc_pin = bxt_encoder_to_ddc_pin(encoder);
-	else if (IS_CHERRYVIEW(dev_priv))
+	else if (display->platform.cherryview)
 		ddc_pin = chv_encoder_to_ddc_pin(encoder);
 	else
 		ddc_pin = g4x_encoder_to_ddc_pin(encoder);
@@ -2992,12 +2988,12 @@ void intel_infoframe_init(struct intel_digital_port *dig_port)
 	struct drm_i915_private *dev_priv =
 		to_i915(dig_port->base.base.dev);
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
+	if (display->platform.valleyview || display->platform.cherryview) {
 		dig_port->write_infoframe = vlv_write_infoframe;
 		dig_port->read_infoframe = vlv_read_infoframe;
 		dig_port->set_infoframes = vlv_set_infoframes;
 		dig_port->infoframes_enabled = vlv_infoframes_enabled;
-	} else if (IS_G4X(dev_priv)) {
+	} else if (display->platform.g4x) {
 		dig_port->write_infoframe = g4x_write_infoframe;
 		dig_port->read_infoframe = g4x_read_infoframe;
 		dig_port->set_infoframes = g4x_set_infoframes;
-- 
2.39.5

