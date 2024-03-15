Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1331587C86B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 06:07:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CA9F10E333;
	Fri, 15 Mar 2024 05:07:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ChZaGwqH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D9E210E333
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Mar 2024 05:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710479270; x=1742015270;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BEAY4BDNQEOQGRTmTJScIG84i+M4+YR5TjfeRzYaIYM=;
 b=ChZaGwqH28+tILuLfpfkzxzZx8DnF9DGVcUnbnclTndRb8hs65vj6TnA
 TSPUyGxKKBI9Nog9z0p8jJaOtWF15c96NzkBKShFrOBoO4RJ8sqHwEZ+b
 bQKPh3e9OsoGH/dipQRTttgI0aw6TdwZYtSA1t9pyo9MBPiU5hH7UcPDY
 FnYdHoCfEzvVIG7bYwrv4Dw9OnhkbgOR6GEimIm+0ItR+kcP5XJUMlz38
 a7nEFJsCAiY3m1iYMHRom11Rqcp2mP+1ncPavAnnC1JU+fTTGYxM/IMts
 u/9+Zgtlmyt8cH8nbcaHcZtbIfnOs7npQxvdUdZll79xm6aZl+bBaS093 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="27806404"
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; d="scan'208";a="27806404"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 22:07:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; d="scan'208";a="17211051"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa004.jf.intel.com with ESMTP; 14 Mar 2024 22:07:47 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp: Enable AUX based backlight for HDR
Date: Fri, 15 Mar 2024 10:35:30 +0530
Message-ID: <20240315050529.1987425-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240311053212.1958303-1-suraj.kandpal@intel.com>
References: <20240311053212.1958303-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

As of now whenerver HDR is switched on we use the PWM to change the
backlight as opposed to AUX based backlight changes in terms of nits.
This patch writes to the appropriate DPCD registers to enable aux
based backlight using values in nits.

--v2
-Fix max_cll and max_fall assignment [Jani]
-Fix the size sent in drm_dpcd_write [Jani]

--v3
-Content Luminance needs to be sent only for pre-ICL after that
it is directly picked up from hdr metadata [Ville]

--v4
-Add checks for HDR TCON cap bits [Ville]
-Check eotf of hdr_output_data and sets bits base of that value.

--v5
-Fix capability check bits.
-Check colorspace before setting BT2020

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 +
 .../drm/i915/display/intel_dp_aux_backlight.c | 57 ++++++++++++++++---
 2 files changed, 52 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e67cd5b02e84..271bb609106d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -401,6 +401,9 @@ struct intel_panel {
 			} vesa;
 			struct {
 				bool sdr_uses_aux;
+				bool supports_2084_decode;
+				bool supports_2020_gamut;
+				bool supports_segmented_backlight;
 			} intel;
 		} edp;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 4f58efdc688a..f927e259b540 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -40,11 +40,6 @@
 #include "intel_dp.h"
 #include "intel_dp_aux_backlight.h"
 
-/* TODO:
- * Implement HDR, right now we just implement the bare minimum to bring us back into SDR mode so we
- * can make people's backlights work in the mean time
- */
-
 /*
  * DP AUX registers for Intel's proprietary HDR backlight interface. We define
  * them here since we'll likely be the only driver to ever use these.
@@ -158,6 +153,12 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 
 	panel->backlight.edp.intel.sdr_uses_aux =
 		tcon_cap[2] & INTEL_EDP_SDR_TCON_BRIGHTNESS_AUX_CAP;
+	panel->backlight.edp.intel.supports_2084_decode =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_2084_DECODE_CAP;
+	panel->backlight.edp.intel.supports_2020_gamut =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_2020_GAMUT_CAP;
+	panel->backlight.edp.intel.supports_segmented_backlight =
+		tcon_cap[1] & INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_CAP;
 
 	return true;
 }
@@ -206,6 +207,9 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	u8 buf[4] = {};
 
+	if (level < 20)
+		level = 20;
+
 	buf[0] = level & 0xFF;
 	buf[1] = (level & 0xFF00) >> 8;
 
@@ -221,7 +225,7 @@ intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct intel_panel *panel = &connector->panel;
 
-	if (panel->backlight.edp.intel.sdr_uses_aux) {
+	if (panel->backlight.edp.intel.sdr_uses_aux || conn_state->hdr_output_metadata) {
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
 		const u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
@@ -251,8 +255,30 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 	}
 
 	ctrl = old_ctrl;
-	if (panel->backlight.edp.intel.sdr_uses_aux) {
+	if (panel->backlight.edp.intel.sdr_uses_aux || conn_state->hdr_output_metadata) {
 		ctrl |= INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
+
+		if (conn_state->hdr_output_metadata) {
+			struct hdr_output_metadata *hdr_metadata =
+				conn_state->hdr_output_metadata->data;
+
+			if (panel->backlight.edp.intel.supports_segmented_backlight &&
+			    hdr_metadata->hdmi_metadata_type1.eotf >=
+			    HDMI_EOTF_TRADITIONAL_GAMMA_HDR)
+				ctrl |= INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
+			if (panel->backlight.edp.intel.supports_2084_decode &&
+			    hdr_metadata->hdmi_metadata_type1.eotf ==
+			    HDMI_EOTF_SMPTE_ST2084)
+				ctrl |= INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
+			if (panel->backlight.edp.intel.supports_2020_gamut &&
+			    hdr_metadata->hdmi_metadata_type1.eotf >=
+			    HDMI_EOTF_TRADITIONAL_GAMMA_HDR &&
+			    (conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_RGB ||
+			    conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_YCC ||
+			    conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_CYCC))
+				ctrl |= INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
+		}
+
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
 		u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
@@ -292,9 +318,11 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 {
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_panel *panel = &connector->panel;
+	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	struct drm_luminance_range_info *luminance_range =
 		&connector->base.display_info.luminance_range;
 	int ret;
+	u8 buf[4];
 
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDR backlight is controlled through %s\n",
 		    connector->base.base.id, connector->base.name,
@@ -318,11 +346,24 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 		panel->backlight.min = 0;
 	}
 
+	if (DISPLAY_VER(i915) < 11) {
+		buf[0] = connector->base.hdr_sink_metadata.hdmi_type1.max_cll & 0xFF;
+		buf[1] = (connector->base.hdr_sink_metadata.hdmi_type1.max_cll & 0xFF00) >> 8;
+		buf[2] = connector->base.hdr_sink_metadata.hdmi_type1.max_fall & 0xFF;
+		buf[3] = (connector->base.hdr_sink_metadata.hdmi_type1.max_fall & 0xFF00) >> 8;
+
+		ret = drm_dp_dpcd_write(&intel_dp->aux, INTEL_EDP_HDR_CONTENT_LUMINANCE, buf,
+					sizeof(buf));
+		if (ret < 0)
+			drm_dbg_kms(&i915->drm,
+				    "Content Luminance DPCD reg write failed, err:-%d\n",
+				    ret);
+	}
+
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
 		    connector->base.base.id, connector->base.name,
 		    panel->backlight.min, panel->backlight.max);
 
-
 	panel->backlight.level = intel_dp_aux_hdr_get_backlight(connector, pipe);
 	panel->backlight.enabled = panel->backlight.level != 0;
 
-- 
2.43.2

