Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3415FC353
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 11:55:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A2BC10E0C6;
	Wed, 12 Oct 2022 09:55:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6F2C10E0C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 09:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665568535; x=1697104535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LdqJLLSPo7SyJusLtfPvtbBcq19ZJVwxXOlux193w5Q=;
 b=Q6epgqgQuOWdsDeVEAGck5CjLIe8dzuIEwM4HBZUYyor+SOYWRyege4c
 GC4wEeQPSNG9AphJ82zZyF33hUY3sKZRHRkfsW9ToBfVLWoSD0lq+BbJf
 2spFm4gqPwF6MnxehmFcvfglrlSLL9dDK8ZWjvpiGi+xhl6KgLfjSiJWt
 5UXRor3PI7xi5ZWWNAt+3Ctb4NcsyhdJjIeB9n1y3c1AyTn9a+ARrRcB8
 u225rzuZFrr1u4d1uOA42jBNWu1FPMbKapX+cIuPZtIXDr8VIHbydPze5
 98IwImdOTeGNQ1tnSpIRx1wyPmocmRjAgAoW2aeUpYyVXuJiqwHfdUmRc w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="303490487"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="303490487"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 02:55:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="955693583"
X-IronPort-AV: E=Sophos;i="5.95,178,1661842800"; d="scan'208";a="955693583"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 02:55:33 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Oct 2022 15:25:50 +0530
Message-Id: <20221012095550.1025147-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221011063447.904649-7-ankit.k.nautiyal@intel.com>
References: <20221011063447.904649-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 6/8] drm/i915/dp: Replace intel_dp.dfp
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 80 +++++++++++++++----------
 1 file changed, 48 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d7a4506717a6..c0338cc81a74 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -790,6 +790,7 @@ intel_dp_output_format(struct intel_connector *connector,
 		       bool ycbcr_420_output)
 {
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
 	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
 		return INTEL_OUTPUT_FORMAT_RGB;
@@ -798,6 +799,10 @@ intel_dp_output_format(struct intel_connector *connector,
 	    intel_dp->dfp.ycbcr_444_to_420)
 		return INTEL_OUTPUT_FORMAT_RGB;
 
+	/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
+	if (DISPLAY_VER(i915) >= 11 && intel_dp->dfp.ycbcr420_passthrough)
+		return INTEL_OUTPUT_FORMAT_YCBCR420;
+
 	if (intel_dp->dfp.ycbcr_444_to_420)
 		return INTEL_OUTPUT_FORMAT_YCBCR444;
 	else
@@ -2660,6 +2665,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
 					   const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	bool ycbcr444_to_420 = false;
+	bool rgb_to_ycbcr = false;
 	u8 tmp;
 
 	if (intel_dp->dpcd[DP_DPCD_REV] < 0x13)
@@ -2676,8 +2683,35 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
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
@@ -2685,13 +2719,12 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
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
@@ -4541,7 +4574,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	struct intel_connector *connector = intel_dp->attached_connector;
-	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
+	bool is_branch;
 
 	/* No YCbCr output support on gmch platforms */
 	if (HAS_GMCH(i915))
@@ -4555,38 +4588,21 @@ intel_dp_update_420(struct intel_dp *intel_dp)
 		return;
 
 	is_branch = drm_dp_is_branch(intel_dp->dpcd);
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
+	if (!is_branch || intel_dp->dfp.ycbcr420_passthrough || intel_dp->dfp.ycbcr_444_to_420)
+		connector->base.ycbcr_420_allowed = true;
 
 	drm_dbg_kms(&i915->drm,
 		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
-- 
2.25.1

