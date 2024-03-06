Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 152908731B5
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 10:01:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61BA510E1DB;
	Wed,  6 Mar 2024 09:01:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ANViRKBH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EF3010E1DB
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 09:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709715668; x=1741251668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3mtmPbrb7/nJyunKv3Av4aAXpyJfe4NeGsxXqbvO23M=;
 b=ANViRKBH2kAZNAuut7zqqLaYAzjbPlrQWsgZmDI4Eo29vpZyTdf9b52H
 DNX4BWIa0VXWkNZZSbT1DChbxrtckoMq5H04KyzUjjWWjRPwxS8M7Bt+2
 MlMVYX8+gnFPW1aiqKs9t8iJWi72kRpvBK6Qcl9+81bDk4ciTSp0zzdaf
 KBYNpeU7xRSApWVAaQMR6ShdQz+TaPO6I6cYh8Bj2F4F+IwHEUYaRWcrN
 Zg/znHDEZqzIE85EAdY8ndtpTF+0qg2TaLItNs0WShRVE1zj4Y/DWk9XJ
 7K8uMiwhH7orM2STpx1XEEayGlIt1J4s+nEicYOUAGHk6zcTL/Swx1v1f g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="7258445"
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; 
   d="scan'208";a="7258445"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 01:01:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,207,1705392000"; 
   d="scan'208";a="9561682"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa007.fm.intel.com with ESMTP; 06 Mar 2024 01:01:04 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp: Enable AUX based backlight for HDR
Date: Wed,  6 Mar 2024 14:29:15 +0530
Message-ID: <20240306085915.1861083-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240305103757.1856179-1-suraj.kandpal@intel.com>
References: <20240305103757.1856179-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 30 ++++++++++++++-----
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 4f58efdc688a..1b6f14dacf3b 100644
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
@@ -221,7 +216,7 @@ intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct intel_panel *panel = &connector->panel;
 
-	if (panel->backlight.edp.intel.sdr_uses_aux) {
+	if (panel->backlight.edp.intel.sdr_uses_aux || conn_state->hdr_output_metadata) {
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
 		const u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
@@ -251,8 +246,15 @@ intel_dp_aux_hdr_enable_backlight(const struct intel_crtc_state *crtc_state,
 	}
 
 	ctrl = old_ctrl;
-	if (panel->backlight.edp.intel.sdr_uses_aux) {
+	if (panel->backlight.edp.intel.sdr_uses_aux || conn_state->hdr_output_metadata) {
 		ctrl |= INTEL_EDP_HDR_TCON_BRIGHTNESS_AUX_ENABLE;
+
+		if (conn_state->hdr_output_metadata) {
+			ctrl |= INTEL_EDP_HDR_TCON_SEGMENTED_BACKLIGHT_ENABLE;
+			ctrl |= INTEL_EDP_HDR_TCON_2084_DECODE_ENABLE;
+			ctrl |= INTEL_EDP_HDR_TCON_2020_GAMUT_ENABLE;
+		}
+
 		intel_dp_aux_hdr_set_aux_backlight(conn_state, level);
 	} else {
 		u32 pwm_level = intel_backlight_level_to_pwm(connector, level);
@@ -292,9 +294,11 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
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
@@ -318,11 +322,21 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
 		panel->backlight.min = 0;
 	}
 
+	buf[0] = connector->base.hdr_sink_metadata.hdmi_type1.max_cll & 0xFF;
+	buf[1] = (connector->base.hdr_sink_metadata.hdmi_type1.max_cll & 0xFF00) >> 8;
+	buf[2] = connector->base.hdr_sink_metadata.hdmi_type1.max_fall & 0xFF;
+	buf[3] = (connector->base.hdr_sink_metadata.hdmi_type1.max_fall & 0xFF00) >> 8;
+
+	ret = drm_dp_dpcd_write(&intel_dp->aux, INTEL_EDP_HDR_CONTENT_LUMINANCE, buf,
+				sizeof(buf));
+	if (ret < 0)
+		drm_dbg_kms(&i915->drm,
+			    "Not able to write content luminence to DPCD register err:-%d\n", ret);
+
 	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Using AUX HDR interface for backlight control (range %d..%d)\n",
 		    connector->base.base.id, connector->base.name,
 		    panel->backlight.min, panel->backlight.max);
 
-
 	panel->backlight.level = intel_dp_aux_hdr_get_backlight(connector, pipe);
 	panel->backlight.enabled = panel->backlight.level != 0;
 
-- 
2.43.2

