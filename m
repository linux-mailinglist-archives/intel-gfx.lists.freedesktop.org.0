Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5B4874C64
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 11:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D332910F396;
	Thu,  7 Mar 2024 10:31:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IwPMYMH5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 629BF10F396
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Mar 2024 10:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709807480; x=1741343480;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oWeehcKI1brOacDNJJOovUNIFTusQiIgdNwCSMfRXxQ=;
 b=IwPMYMH5sMegxeTzg5Tqz4/9vxVqgsmCrBH4hBPfkBEOkVmIcd2GoAAr
 Zx2e8Lfd+8gEVtz6hAkZpp4Xe4tFiO13W/8sMwpGT7i8VSR7nzeNEpbdH
 LUBxqQskaOaaCPNF0Mnoh3pk1zd8NsYlMKhOCxxI3eCweNztR4oOATFLT
 MYppVaxVlKEcW2K70E0hIcCdqc8cHpQBgsbwXaGHWot67WITF3XDeDvN5
 oPwMHDjai8OZKyDlVN6BFaVkufLIXq4DqRgIctPEVM8VYaeWSr/UTNQrO
 8/0n88TAOV722M5Uju2lZJwrucsv4tIQ75SZ3pqPvS3GkAylHogBZMikq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="21992140"
X-IronPort-AV: E=Sophos;i="6.06,211,1705392000"; d="scan'208";a="21992140"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 02:31:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,211,1705392000"; d="scan'208";a="10004140"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa010.fm.intel.com with ESMTP; 07 Mar 2024 02:31:18 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ankit.k.nautiyal@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/dp: Enable AUX based backlight for HDR
Date: Thu,  7 Mar 2024 15:59:27 +0530
Message-ID: <20240307102927.1872131-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240306085915.1861083-1-suraj.kandpal@intel.com>
References: <20240306085915.1861083-1-suraj.kandpal@intel.com>
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

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../drm/i915/display/intel_dp_aux_backlight.c | 33 ++++++++++++++-----
 1 file changed, 25 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 4f58efdc688a..cba7b8f5dad4 100644
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
@@ -318,11 +322,24 @@ intel_dp_aux_hdr_setup_backlight(struct intel_connector *connector, enum pipe pi
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

