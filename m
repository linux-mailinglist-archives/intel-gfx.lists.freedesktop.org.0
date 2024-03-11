Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 877F3877AA1
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Mar 2024 06:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2231410E0FC;
	Mon, 11 Mar 2024 05:34:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yffy4k8x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BA6810E0FC
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Mar 2024 05:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710135244; x=1741671244;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VtFUuRjUd3kn/eFzkKHJGuU+fo/kIIsAVJURnMR9usc=;
 b=Yffy4k8xmU8oF4LRUIDemWd7dxVmItafvW8EgOmhfwEfknu4027Qs+2Y
 PEVldNSUJ/QJ9OeKi3xfKpJB3uXPv2vYYJuWWEywo1dx6W981egnWrEtb
 dURMCfCLnEC5yiruQpMh+jRXsEEdDHi3YFFgyeii7wZJbhUk4tpNf1TAx
 jc9D9DtpHvaaGAIJnbd2VCmwdkIQGr3VlibjYqt8u0kD7HF40ngpp4M6J
 Xb7APxaYXQnCE/334v6Dr6g/B4YW/+iqWG3cZj/BGEzRYMm0vldQ6YdLS
 VFoZSwm77qjhhtyLoGVj7HMGwyJWYRTIEWlakJSmo19OGZ+dFPfiFnQDu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11009"; a="22303863"
X-IronPort-AV: E=Sophos;i="6.07,115,1708416000"; d="scan'208";a="22303863"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2024 22:34:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,115,1708416000"; d="scan'208";a="15701490"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa003.jf.intel.com with ESMTP; 10 Mar 2024 22:34:00 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp: Enable AUX based backlight for HDR
Date: Mon, 11 Mar 2024 11:02:12 +0530
Message-ID: <20240311053212.1958303-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240307102927.1872131-1-suraj.kandpal@intel.com>
References: <20240307102927.1872131-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 ++
 .../drm/i915/display/intel_dp_aux_backlight.c | 51 ++++++++++++++++---
 2 files changed, 46 insertions(+), 8 deletions(-)

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
index 4f58efdc688a..74270c4755e7 100644
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
+		tcon_cap[2] & INTEL_EDP_HDR_TCON_2084_DECODE_CAP;
+	panel->backlight.edp.intel.supports_2020_gamut =
+		tcon_cap[2] & INTEL_EDP_HDR_TCON_2020_GAMUT_CAP;
+	panel->backlight.edp.intel.supports_segmented_backlight =
+		tcon_cap[2] & INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_CAP;
 
 	return true;
 }
@@ -221,7 +222,7 @@ intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct intel_panel *panel = &connector->panel;
 
-	if (panel->backlight.edp.intel.sdr_uses_aux) {
+	if (panel->backlight.edp.intel.sdr_uses_aux || conn_state->hdr_output_metadata) {
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
 		const u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
@@ -251,8 +252,27 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
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
+			    HDMI_EOTF_TRADITIONAL_GAMMA_HDR)
+				ctrl |= INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
+		}
+
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
 		u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
@@ -292,9 +312,11 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
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
@@ -318,11 +340,24 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
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

