Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6BB640425
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 11:09:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F054910E6C3;
	Fri,  2 Dec 2022 10:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52DC910E6C2
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Dec 2022 10:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669975780; x=1701511780;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VvJYtbHDNjkO/6BET80mmObsUKyoj0NNLCBIllHyxAA=;
 b=hgTp0zPoJM7t8GE8+gsuhLSTF3kqBeCPwAzjdWjOmq0D5jv/4bECNRLb
 NIc5XBEGJg9AVxkuZXG2evMn/4L4ImcsyPvnKe4zTwoV7LfJNDuE4Gziv
 SL4LhUvxknJkhmNSiVLchBMmFI5Mxl7vzeoQoxxHKHOlHueicI8Bqki0k
 gXUojdyY1rFsKEd5eDIjRdGomCJc2SCvgUG4wtrJWbEKuybprSSpgz/xx
 uUsk7ysRTkV5XBIQ6kgU4yaX7WgX+pYkrlwR4kXcnUT38fP0n2gJLliXj
 xdUuSe2jv7VRko0FJ1REefZmP/tWdgsYoYafntlSXOUyPH5JsiyiCjw8p w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="313564572"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="313564572"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="647115754"
X-IronPort-AV: E=Sophos;i="5.96,212,1665471600"; d="scan'208";a="647115754"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 02:09:37 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 15:40:18 +0530
Message-Id: <20221202101028.803630-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
References: <20221202101028.803630-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 04/14] drm/i915/dp: Replace intel_dp.dfp
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

v5: Simplify logic for computing output_format, based on the given
sink_format. (Ville).
Added scaler constraint for YCbCr420 output.

v6: Split the patch for Scaler constraint for Ycbcr420.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 192 +++++++++++++++++-------
 1 file changed, 135 insertions(+), 57 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b22018fa1230..e3ba84e7fda6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -786,6 +786,67 @@ static u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
 	return 0;
 }
 
+static bool source_can_output(struct intel_dp *intel_dp,
+			      enum intel_output_format format)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	bool is_branch = drm_dp_is_branch(intel_dp->dpcd);
+
+	if (format == INTEL_OUTPUT_FORMAT_RGB)
+		return true;
+
+	/*
+	 * No YCbCr output support on gmch platforms.
+	 * Also, ILK doesn't seem capable of DP YCbCr output.
+	 * The displayed image is severly corrupted. SNB+ is fine.
+	 */
+	if (HAS_GMCH(i915) || IS_IRONLAKE(i915))
+		return false;
+
+	if (format == INTEL_OUTPUT_FORMAT_YCBCR444)
+		return true;
+
+	/* Platform < Gen 11 cannot output YCbCr420 format */
+	if (DISPLAY_VER(i915) < 11)
+		return false;
+
+	/* If branch device then PCONs should support YCbCr420 Passthrough */
+	if (format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return !is_branch || intel_dp->dfp.ycbcr420_passthrough;
+
+	return false;
+}
+
+static bool
+dfp_can_convert_from_rgb(struct intel_dp *intel_dp,
+			 enum intel_output_format sink_format)
+{
+	if (!drm_dp_is_branch(intel_dp->dpcd))
+		return false;
+
+	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444)
+		return intel_dp->dfp.rgb_to_ycbcr;
+
+	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return intel_dp->dfp.rgb_to_ycbcr &&
+			intel_dp->dfp.ycbcr_444_to_420;
+
+	return false;
+}
+
+static bool
+dfp_can_convert_from_ycbcr444(struct intel_dp *intel_dp,
+			      enum intel_output_format sink_format)
+{
+	if (!drm_dp_is_branch(intel_dp->dpcd))
+		return false;
+
+	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
+		return intel_dp->dfp.ycbcr_444_to_420;
+
+	return false;
+}
+
 static bool
 ycbcr420_scaler_constraints(struct drm_i915_private *i915,
 			    const struct drm_display_mode *mode)
@@ -808,24 +869,23 @@ intel_dp_output_format(struct intel_connector *connector,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 
-	if (!connector->base.ycbcr_420_allowed ||
-	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
-		return INTEL_OUTPUT_FORMAT_RGB;
+	/*
+	 * For YCbCr420 output, scaler is required for downsampling.
+	 * So go for native YCbCr420 only if there are no scaler constraints.
+	 */
+	if ((sink_format != INTEL_OUTPUT_FORMAT_YCBCR420 ||
+	     !ycbcr420_scaler_constraints(i915, mode)) &&
+	    source_can_output(intel_dp, sink_format))
+		return sink_format;
 
-	if (intel_dp->dfp.rgb_to_ycbcr &&
-	    intel_dp->dfp.ycbcr_444_to_420)
+	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_RGB) &&
+	    dfp_can_convert_from_rgb(intel_dp, sink_format))
 		return INTEL_OUTPUT_FORMAT_RGB;
 
-	if (intel_dp->dfp.ycbcr_444_to_420)
+	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR444) &&
+	    dfp_can_convert_from_ycbcr444(intel_dp, sink_format))
 		return INTEL_OUTPUT_FORMAT_YCBCR444;
 
-	/*
-	 * For YCbCr420 output, scaler is required for downsampling
-	 * So go for native YCbCr420 only if there are no scaler constraints.
-	 */
-	if (!ycbcr420_scaler_constraints(i915, mode))
-		return INTEL_OUTPUT_FORMAT_YCBCR420;
-
 	return INTEL_OUTPUT_FORMAT_RGB;
 }
 
@@ -2712,6 +2772,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	bool ycbcr444_to_420 = false;
+	bool rgb_to_ycbcr = false;
 	u8 tmp;
 
 	if (intel_dp->dpcd[DP_DPCD_REV] < 0x13)
@@ -2728,8 +2790,35 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
 			    str_enable_disable(intel_dp->has_hdmi_sink));
 
-	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
-		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
+	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+		switch (crtc_state->output_format) {
+		case INTEL_OUTPUT_FORMAT_YCBCR420:
+			/*
+			 * sink_format is YCbCr420, output_format is also YCbCr420:
+			 * Passthrough.
+			 */
+			break;
+		case INTEL_OUTPUT_FORMAT_YCBCR444:
+			/*
+			 * sink_format is YCbCr420, output_format is YCbCr444:
+			 * Downsample.
+			 */
+			ycbcr444_to_420 = true;
+			break;
+		case INTEL_OUTPUT_FORMAT_RGB:
+			/*
+			 * sink_format is YCbCr420, output_format is RGB:
+			 * Convert to YCbCr444 and Downsample.
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
@@ -2737,13 +2826,12 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
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
@@ -4588,57 +4676,47 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
 	intel_dp_get_pcon_dsc_cap(intel_dp);
 }
 
+static bool
+intel_dp_can_ycbcr420(struct intel_dp *intel_dp)
+{
+	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
+		return true;
+	/*
+	 * If source cannot support YCbCr420, and PCON has color conv. support:
+	 * Source sends YCbCr444, PCON converts YCbCr444->420 Or
+	 * Source sends RGB444, PCON converts RGB->YCbCr444 + YCbCr444->YCbCr420)
+	 */
+	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_RGB) &&
+	    dfp_can_convert_from_rgb(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
+		return true;
+
+	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR444) &&
+	    dfp_can_convert_from_ycbcr444(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
+		return INTEL_OUTPUT_FORMAT_YCBCR444;
+
+	return false;
+}
+
 static void
 intel_dp_update_420(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
-
-	/* No YCbCr output support on gmch platforms */
-	if (HAS_GMCH(i915))
-		return;
-
-	/*
-	 * ILK doesn't seem capable of DP YCbCr output. The
-	 * displayed image is severly corrupted. SNB+ is fine.
-	 */
-	if (IS_IRONLAKE(i915))
-		return;
 
-	is_branch = drm_dp_is_branch(intel_dp->dpcd);
-	ycbcr_420_passthrough =
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
+	connector->base.ycbcr_420_allowed = intel_dp_can_ycbcr420(intel_dp);
 
 	drm_dbg_kms(&i915->drm,
 		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
-- 
2.25.1

