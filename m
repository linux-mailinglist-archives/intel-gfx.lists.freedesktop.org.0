Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0057B610D8E
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 11:44:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B74B10E7C2;
	Fri, 28 Oct 2022 09:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0923910E7BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666950232; x=1698486232;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8dTU5bPuHTCF9A5xP8dxBFOiWYDXVbxY/hO3kKmAbmE=;
 b=jAISOqbxlg0Ua9YOlapIMYMfNLnNz3aHz6GItMsJtIMKvPTTSeHOtJiL
 4vFDJmjyYlVwDvCWygKgne5xpHaQHN3QhQcfpND+TEw39f772kEGruoIq
 KhGsqiKuDIXzH+ZpUe0R6RdBlnk5GS5u02bNL9LxWnWIPkzOv/ykHEmdn
 Zkzel+y0f5MZhCwlw6W/WxnMMg/750IJ9VLZ4jmydqZemSe5ZnAo/pMv1
 pa78E6xRYIsNTaos2f0FRhfgNvXyiQI5MapOV+05x1Iqac+Z5/qpio9Xf
 00g2/80da01XOxvLorOPa97a6VRq2W5r4dNe4cu/33TMKNvbJNEWYDKce A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="335094657"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="335094657"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:43:52 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="758026588"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="758026588"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 02:43:50 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Oct 2022 15:14:05 +0530
Message-Id: <20221028094411.3673476-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
References: <20221028094411.3673476-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 3/9] drm/i915/dp: Replace intel_dp.dfp
 members with the new crtc_state sink_format
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

The decision to use DFP output format conversion capabilities should be
during compute_config phase.

This patch uses the members of intel_dp->dfp to only store the
format conversion capabilities of the DP device and uses the crtc_state
sink_format member, to program the protocol-converter for
colorspace/format conversion.

v2: Use sink_format to determine the color conversion config for the
pcon (Ville).

v3: Fix typo: missing 'break' in switch case (lkp kernel test robot).

v4: Add helper to check if DP supports YCBCR420.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 122 ++++++++++++++++--------
 1 file changed, 84 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 0e4f7b467970..95d0c653db7f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -790,6 +790,7 @@ intel_dp_output_format(struct intel_connector *connector,
 		       enum intel_output_format sink_format)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (!connector->base.ycbcr_420_allowed ||
 	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
@@ -799,6 +800,10 @@ intel_dp_output_format(struct intel_connector *connector,
 	    intel_dp->dfp.ycbcr_444_to_420)
 		return INTEL_OUTPUT_FORMAT_RGB;
 
+	/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
+	if (DISPLAY_VER(i915) >= 11 && intel_dp->dfp.ycbcr420_passthrough)
+		return INTEL_OUTPUT_FORMAT_YCBCR420;
+
 	if (intel_dp->dfp.ycbcr_444_to_420)
 		return INTEL_OUTPUT_FORMAT_YCBCR444;
 	else
@@ -2668,6 +2673,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	bool ycbcr444_to_420 = false;
+	bool rgb_to_ycbcr = false;
 	u8 tmp;
 
 	if (intel_dp->dpcd[DP_DPCD_REV] < 0x13)
@@ -2684,8 +2691,35 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
 			    str_enable_disable(intel_dp->has_hdmi_sink));
 
-	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
-		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
+	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+		switch (crtc_state->output_format) {
+		case INTEL_OUTPUT_FORMAT_YCBCR420:
+			/*
+			 * sink_format is YCBCR420, output_format is also YCBCR420:
+			 * Passthrough.
+			 */
+			break;
+		case INTEL_OUTPUT_FORMAT_YCBCR444:
+			/*
+			 * sink_format is YCBCR420, output_format is YCBCR444:
+			 * Downsample.
+			 */
+			ycbcr444_to_420 = true;
+			break;
+		case INTEL_OUTPUT_FORMAT_RGB:
+			/*
+			 * sink_format is YCBCR420, output_format is RGB:
+			 * Convert to YCBCR444 and Downsample.
+			 */
+			rgb_to_ycbcr = true;
+			ycbcr444_to_420 = true;
+			break;
+		default:
+			break;
+		}
+	}
+
+	tmp = ycbcr444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
 
 	if (drm_dp_dpcd_writeb(&intel_dp->aux,
 			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
@@ -2693,13 +2727,12 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
 			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
 
-	tmp = intel_dp->dfp.rgb_to_ycbcr ?
-		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
+	tmp = rgb_to_ycbcr ? DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
 
 	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
 		drm_dbg_kms(&i915->drm,
-			   "Failed to %s protocol converter RGB->YCbCr conversion mode\n",
-			   str_enable_disable(tmp));
+			    "Failed to %s protocol converter RGB->YCbCr conversion mode\n",
+			    str_enable_disable(tmp));
 }
 
 bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
@@ -4544,57 +4577,70 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
 	intel_dp_get_pcon_dsc_cap(intel_dp);
 }
 
-static void
-intel_dp_update_420(struct intel_dp *intel_dp)
+static bool
+intel_dp_can_ycbcr420(struct intel_connector *connector)
 {
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
-	struct intel_connector *connector = intel_dp->attached_connector;
-	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
+	bool is_branch = drm_dp_is_branch(intel_dp->dpcd);
 
 	/* No YCbCr output support on gmch platforms */
 	if (HAS_GMCH(i915))
-		return;
+		return false;
 
 	/*
 	 * ILK doesn't seem capable of DP YCbCr output. The
 	 * displayed image is severly corrupted. SNB+ is fine.
 	 */
 	if (IS_IRONLAKE(i915))
-		return;
+		return false;
+	/*
+	 * For Display < 11, YCBCR420 output possible only
+	 * if DFP supports 444->420 conversion.
+	 */
+	if (DISPLAY_VER(i915) < 11)
+		return is_branch && intel_dp->dfp.ycbcr_444_to_420;
+
+	/*
+	 * For Display > 11:
+	 * If not a branch device, can support YCBCR420.
+	 */
+	if (!is_branch)
+		return true;
+
+	/*
+	 * If branch device then either:
+	 * 1. PCONs should support YCBCR420 Passthrough
+	 * i.e.Source uses CSC, scaler to convert RGB->YCBCR420 and
+	 * sends YCBCR420 to PCON. PCON 'passrthrough' YCBCR420 to sink.
+	 * Or
+	 * 2. PCONs should support 444->420
+	 * (Source sends YCBCR444 PCON converts YCBCR444->420)
+	 * (Source sends RGB4444 PCON converts RGB->YCBCR444 and YCBCR444->YCBCR420)
+	 */
+	return intel_dp->dfp.ycbcr420_passthrough || intel_dp->dfp.ycbcr_444_to_420;
+}
 
-	is_branch = drm_dp_is_branch(intel_dp->dpcd);
-	ycbcr_420_passthrough =
+static void
+intel_dp_update_420(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct intel_connector *connector = intel_dp->attached_connector;
+
+	intel_dp->dfp.ycbcr420_passthrough =
 		drm_dp_downstream_420_passthrough(intel_dp->dpcd,
 						  intel_dp->downstream_ports);
 	/* on-board LSPCON always assumed to support 4:4:4->4:2:0 conversion */
-	ycbcr_444_to_420 =
+	intel_dp->dfp.ycbcr_444_to_420 =
 		dp_to_dig_port(intel_dp)->lspcon.active ||
 		drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
 							intel_dp->downstream_ports);
-	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
-								 intel_dp->downstream_ports,
-								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
-
-	if (DISPLAY_VER(i915) >= 11) {
-		/* Let PCON convert from RGB->YCbCr if possible */
-		if (is_branch && rgb_to_ycbcr && ycbcr_444_to_420) {
-			intel_dp->dfp.rgb_to_ycbcr = true;
-			intel_dp->dfp.ycbcr_444_to_420 = true;
-			connector->base.ycbcr_420_allowed = true;
-		} else {
-		/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
-			intel_dp->dfp.ycbcr_444_to_420 =
-				ycbcr_444_to_420 && !ycbcr_420_passthrough;
+	intel_dp->dfp.rgb_to_ycbcr =
+		drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
+							  intel_dp->downstream_ports,
+							  DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
 
-			connector->base.ycbcr_420_allowed =
-				!is_branch || ycbcr_444_to_420 || ycbcr_420_passthrough;
-		}
-	} else {
-		/* 4:4:4->4:2:0 conversion is the only way */
-		intel_dp->dfp.ycbcr_444_to_420 = ycbcr_444_to_420;
-
-		connector->base.ycbcr_420_allowed = ycbcr_444_to_420;
-	}
+	connector->base.ycbcr_420_allowed = intel_dp_can_ycbcr420(connector);
 
 	drm_dbg_kms(&i915->drm,
 		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
-- 
2.25.1

