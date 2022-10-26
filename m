Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE9C60DEAC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 12:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19AF310E4A8;
	Wed, 26 Oct 2022 10:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1EF410E492
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 10:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666779114; x=1698315114;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GWEr+cg/MUA+w7tOkGV9l9LYjvDHogzUpXJJImNwSY8=;
 b=WbXevtH2EBaRpIFfHAQDJG7FhAuEYxNKcTQ0Gs9gf7QWWNsO3m9un1BI
 vEWdsqM5Bzy/anyHvqdjSNnJZGxXcnsSB7fm/9pFvuzYiwsOOD9MlAHH2
 lBcdgsSM7CLN5PEipzQj2SDp+pnwHLFO5eI3lmxJ/91VVAfwNIKtlpYR6
 ClEfoRIXyMAa34oe3anDH1++ytYoAqyajzPUHkqty4GfRimTyIMzpt0OF
 lTpsbDIeMcBxsofeh9sDs8KoFoq+F7r11SbNgHovPQe05vszUMTuwjB0y
 SpUXV7TawXg2KUoZjMelBka0JdI9Se66QsYMTvxfaiA1HmzHM1VF6LgJy g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="394222275"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="394222275"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 03:11:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="695305958"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="695305958"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 26 Oct 2022 03:11:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 13:11:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 13:11:32 +0300
Message-Id: <20221026101134.20865-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/sdvo: Get rid of the output
 type<->device index stuff
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

Get rid of this silly output type<->device index back and
forth and just pass the output type directly to the corresponding
output init function. This was already being done for TV outputs
anyway.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 47 +++++++++--------------
 1 file changed, 19 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index d7943f9a96e7..4784c05a1b71 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2622,7 +2622,7 @@ intel_sdvo_unselect_i2c_bus(struct intel_sdvo *sdvo)
 }
 
 static bool
-intel_sdvo_is_hdmi_connector(struct intel_sdvo *intel_sdvo, int device)
+intel_sdvo_is_hdmi_connector(struct intel_sdvo *intel_sdvo)
 {
 	return intel_sdvo_check_supp_encode(intel_sdvo);
 }
@@ -2727,7 +2727,7 @@ static struct intel_sdvo_connector *intel_sdvo_connector_alloc(void)
 }
 
 static bool
-intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
+intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, u16 type)
 {
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
 	struct drm_connector *connector;
@@ -2735,16 +2735,13 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	DRM_DEBUG_KMS("initialising DVI device %d\n", device);
+	DRM_DEBUG_KMS("initialising DVI type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
 		return false;
 
-	if (device == 0)
-		intel_sdvo_connector->output_flag = SDVO_OUTPUT_TMDS0;
-	else if (device == 1)
-		intel_sdvo_connector->output_flag = SDVO_OUTPUT_TMDS1;
+	intel_sdvo_connector->output_flag = type;
 
 	intel_connector = &intel_sdvo_connector->base;
 	connector = &intel_connector->base;
@@ -2764,7 +2761,7 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
 	encoder->encoder_type = DRM_MODE_ENCODER_TMDS;
 	connector->connector_type = DRM_MODE_CONNECTOR_DVID;
 
-	if (intel_sdvo_is_hdmi_connector(intel_sdvo, device)) {
+	if (intel_sdvo_is_hdmi_connector(intel_sdvo)) {
 		connector->connector_type = DRM_MODE_CONNECTOR_HDMIA;
 		intel_sdvo_connector->is_hdmi = true;
 	}
@@ -2781,14 +2778,14 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
 }
 
 static bool
-intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
+intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, u16 type)
 {
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	DRM_DEBUG_KMS("initialising TV type %d\n", type);
+	DRM_DEBUG_KMS("initialising TV type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
@@ -2820,14 +2817,14 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
 }
 
 static bool
-intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
+intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, u16 type)
 {
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
 	struct drm_connector *connector;
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	DRM_DEBUG_KMS("initialising analog device %d\n", device);
+	DRM_DEBUG_KMS("initialising analog type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
@@ -2839,10 +2836,7 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
 	encoder->encoder_type = DRM_MODE_ENCODER_DAC;
 	connector->connector_type = DRM_MODE_CONNECTOR_VGA;
 
-	if (device == 0)
-		intel_sdvo_connector->output_flag = SDVO_OUTPUT_RGB0;
-	else if (device == 1)
-		intel_sdvo_connector->output_flag = SDVO_OUTPUT_RGB1;
+	intel_sdvo_connector->output_flag = type;
 
 	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
 		kfree(intel_sdvo_connector);
@@ -2853,7 +2847,7 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
 }
 
 static bool
-intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
+intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, u16 type)
 {
 	struct drm_encoder *encoder = &intel_sdvo->base.base;
 	struct drm_i915_private *i915 = to_i915(encoder->dev);
@@ -2861,7 +2855,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	struct intel_connector *intel_connector;
 	struct intel_sdvo_connector *intel_sdvo_connector;
 
-	DRM_DEBUG_KMS("initialising LVDS device %d\n", device);
+	DRM_DEBUG_KMS("initialising LVDS type 0x%x\n", type);
 
 	intel_sdvo_connector = intel_sdvo_connector_alloc();
 	if (!intel_sdvo_connector)
@@ -2872,10 +2866,7 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	encoder->encoder_type = DRM_MODE_ENCODER_LVDS;
 	connector->connector_type = DRM_MODE_CONNECTOR_LVDS;
 
-	if (device == 0)
-		intel_sdvo_connector->output_flag = SDVO_OUTPUT_LVDS0;
-	else if (device == 1)
-		intel_sdvo_connector->output_flag = SDVO_OUTPUT_LVDS1;
+	intel_sdvo_connector->output_flag = type;
 
 	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
 		kfree(intel_sdvo_connector);
@@ -2950,11 +2941,11 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 	intel_sdvo_select_ddc_bus(i915, intel_sdvo);
 
 	if (flags & SDVO_OUTPUT_TMDS0)
-		if (!intel_sdvo_dvi_init(intel_sdvo, 0))
+		if (!intel_sdvo_dvi_init(intel_sdvo, SDVO_OUTPUT_TMDS0))
 			return false;
 
 	if (flags & SDVO_OUTPUT_TMDS1)
-		if (!intel_sdvo_dvi_init(intel_sdvo, 1))
+		if (!intel_sdvo_dvi_init(intel_sdvo, SDVO_OUTPUT_TMDS1))
 			return false;
 
 	/* TV has no XXX1 function block */
@@ -2971,19 +2962,19 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 			return false;
 
 	if (flags & SDVO_OUTPUT_RGB0)
-		if (!intel_sdvo_analog_init(intel_sdvo, 0))
+		if (!intel_sdvo_analog_init(intel_sdvo, SDVO_OUTPUT_RGB0))
 			return false;
 
 	if (flags & SDVO_OUTPUT_RGB1)
-		if (!intel_sdvo_analog_init(intel_sdvo, 1))
+		if (!intel_sdvo_analog_init(intel_sdvo, SDVO_OUTPUT_RGB1))
 			return false;
 
 	if (flags & SDVO_OUTPUT_LVDS0)
-		if (!intel_sdvo_lvds_init(intel_sdvo, 0))
+		if (!intel_sdvo_lvds_init(intel_sdvo, SDVO_OUTPUT_LVDS0))
 			return false;
 
 	if (flags & SDVO_OUTPUT_LVDS1)
-		if (!intel_sdvo_lvds_init(intel_sdvo, 1))
+		if (!intel_sdvo_lvds_init(intel_sdvo, SDVO_OUTPUT_LVDS1))
 			return false;
 
 	intel_sdvo->base.pipe_mask = ~0;
-- 
2.37.4

