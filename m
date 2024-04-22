Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B469C8AC31C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Apr 2024 05:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A81F1126FE;
	Mon, 22 Apr 2024 03:35:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UwjlnUe2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC75B1126FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Apr 2024 03:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713756940; x=1745292940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EtSiwMPiKrbHqwl6Iuy3AT/xqH542v/Bj21gksmpm7I=;
 b=UwjlnUe2xOy6qhomeMUrjUyhGWoXsNCRmxvbM5MvuUHDiVdIzx3u0mfr
 PB7HTDGM2+JK/NSMe9SrAv/2AxypRqngEjF5VSHJfzrF6rxHWSuW+xF9c
 Ng0xFF0Ay1ZrdPOHpnc09ZGxpSMcaWSAVSbjlmGV9wG707OrUdEksmdpU
 siPsUViwNzaQkf44W8e5I53rL7kaSLK3nhDh1kU2mWHUcNeT5wMZB/01x
 FCtoQBulauMXnJGCjNvjOoDJsUYlTA4lXfDfM6HtnwZJFYE/6leR51/pz
 NsY553xsGASTfjIfuqgITIlWlKXHBj4TFtBn23CPN+IpBdbm/CzORO+F9 w==;
X-CSE-ConnectionGUID: fuMQBRd1SoCTbOZII/Dvww==
X-CSE-MsgGUID: IUcDhJqIRJ+deUQJwsaJ6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11051"; a="9158251"
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; 
   d="scan'208";a="9158251"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2024 20:35:40 -0700
X-CSE-ConnectionGUID: Sme7I6fGQMK2zX1fPZwMDA==
X-CSE-MsgGUID: RGKnFLBkTs6Dzus8qTsstQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,219,1708416000"; d="scan'208";a="23907408"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa009.fm.intel.com with ESMTP; 21 Apr 2024 20:35:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 naveen1.kumar@intel.com, sebastian.wick@redhat.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 5/6] drm/i915/dp: Enable AUX based backlight for HDR
Date: Mon, 22 Apr 2024 09:02:54 +0530
Message-ID: <20240422033256.713902-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240422033256.713902-1-suraj.kandpal@intel.com>
References: <20240422033256.713902-1-suraj.kandpal@intel.com>
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

--v6
-Use intel_dp_has_gamut_dip to check if we have capability
to send sdp [Ville]
-Seprate filling of all hdr tcon related bits into it's
own function.
-Check eotf data to make sure we are in HDR mode [Sebastian]

--v7
-Fix confusion function name for hdr mode check [Jani]
-Fix the condition which tells us if we are in HDR mode or not
[Sebastian]

--v8
-Call fill_hdr_tcon_param unconditionally as some parameters may not
be dependent on the fact if we are in hdr mode or not [Sebastian]
-Fix some conditions after change in hdr mode check [Sebastian]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 98 ++++++++++++++++---
 1 file changed, 87 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index b61bad218994..e23694257ea5 100644
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
@@ -127,9 +122,6 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 	if (ret != sizeof(tcon_cap))
 		return false;
 
-	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
-		return false;
-
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Detected %s HDR backlight interface version %d\n",
 		    connector->base.base.id, connector->base.name,
 		    is_intel_tcon_cap(tcon_cap) ? "Intel" : "unsupported", tcon_cap[0]);
@@ -137,6 +129,9 @@ intel_dp_aux_supports_hdr_backlight(struct intel_connector *connector)
 	if (!is_intel_tcon_cap(tcon_cap))
 		return false;
 
+	if (!(tcon_cap[1] & INTEL_EDP_HDR_TCON_BRIGHTNESS_NITS_CAP))
+		return false;
+
 	/*
 	 * If we don't have HDR static metadata there is no way to
 	 * runtime detect used range for nits based control. For now
@@ -225,13 +220,27 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
 			connector->base.base.id, connector->base.name);
 }
 
+static bool
+intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
+{
+	struct hdr_output_metadata *hdr_metadata;
+
+	if (!conn_state->hdr_output_metadata)
+		return false;
+
+	hdr_metadata = conn_state->hdr_output_metadata->data;
+
+	return hdr_metadata->hdmi_metadata_type1.eotf == HDMI_EOTF_SMPTE_ST2084;
+}
+
 static void
 intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct intel_panel *panel = &connector->panel;
 
-	if (panel->backlight.edp.intel.sdr_uses_aux) {
+	if (intel_dp_in_hdr_mode(conn_state) ||
+	    panel->backlight.edp.intel.sdr_uses_aux) {
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
 		const u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
@@ -240,6 +249,64 @@ intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32
 	}
 }
 
+static void
+intel_dp_aux_write_content_luminance(struct intel_connector *connector,
+				     struct hdr_output_metadata *hdr_metadata)
+{
+	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	int ret;
+	u8 buf[4];
+
+	if (!intel_dp_has_gamut_metadata_dip(connector->encoder))
+		return;
+
+	buf[0] = hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF;
+	buf[1] = (hdr_metadata->hdmi_metadata_type1.max_cll & 0xFF00) >> 8;
+	buf[2] = hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF;
+	buf[3] = (hdr_metadata->hdmi_metadata_type1.max_fall & 0xFF00) >> 8;
+
+	ret = drm_dp_dpcd_write(&intel_dp->aux,
+				INTEL_EDP_HDR_CONTENT_LUMINANCE,
+				buf, sizeof(buf));
+	if (ret < 0)
+		drm_dbg_kms(&i915->drm,
+			    "Content Luminance DPCD reg write failed, err:-%d\n",
+			    ret);
+}
+
+static void
+intel_dp_aux_fill_hdr_tcon_params(const struct drm_connector_state *conn_state, u8 *ctrl)
+{
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_panel *panel = &connector->panel;
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+
+	/*
+	 * According to spec segmented backlight needs to be set whenever panel is in
+	 * HDR mode.
+	 */
+	if (intel_dp_in_hdr_mode(conn_state)) {
+		*ctrl |= INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
+		*ctrl |= INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
+	}
+
+	if (DISPLAY_VER(i915) < 11)
+		*ctrl &= ~INTEL_EDP_HDR_TCON_TONE_MAPPING_ENABLE;
+
+	if (panel->backlight.edp.intel.supports_2020_gamut &&
+	    (conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_RGB ||
+	     conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_YCC ||
+	     conn_state->colorspace == DRM_MODE_COLORIMETRY_BT2020_CYCC))
+		*ctrl |= INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
+
+	if (panel->backlight.edp.intel.supports_sdp_colorimetry &&
+	    intel_dp_has_gamut_metadata_dip(connector->encoder))
+		*ctrl |= INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
+	else
+		*ctrl &= ~INTEL_EDP_HDR_TCON_SDP_OVERRIDE_AUX;
+}
+
 static void
 intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 				  const struct drm_connector_state *conn_state, u32 level)
@@ -248,6 +315,7 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 	struct intel_panel *panel = &connector->panel;
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
+	struct hdr_output_metadata *hdr_metadata;
 	int ret;
 	u8 old_ctrl, ctrl;
 
@@ -261,8 +329,10 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 	}
 
 	ctrl = old_ctrl;
-	if (panel->backlight.edp.intel.sdr_uses_aux) {
+	if (intel_dp_in_hdr_mode(conn_state) ||
+	    panel->backlight.edp.intel.sdr_uses_aux) {
 		ctrl |= INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
+
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
 		u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
@@ -272,10 +342,17 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 		ctrl &= ~INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
 	}
 
+	intel_dp_aux_fill_hdr_tcon_params(conn_state, &ctrl);
+
 	if (ctrl != old_ctrl &&
 	    drm_dp_dpcd_writeb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, ctrl) != 1)
 		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to configure DPCD brightness controls\n",
 			connector->base.base.id, connector->base.name);
+
+	if (intel_dp_in_hdr_mode(conn_state)) {
+		hdr_metadata = conn_state->hdr_output_metadata->data;
+		intel_dp_aux_write_content_luminance(connector, hdr_metadata);
+	}
 }
 
 static void
@@ -332,7 +409,6 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 		    connector->base.base.id, connector->base.name,
 		    panel->backlight.min, panel->backlight.max);
 
-
 	panel->backlight.level = intel_dp_aux_hdr_get_backlight(connector, pipe);
 	panel->backlight.enabled = panel->backlight.level != 0;
 
-- 
2.43.2

