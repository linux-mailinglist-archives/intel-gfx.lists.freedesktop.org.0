Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 039BA2A48AA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 15:54:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D2B36ECBD;
	Tue,  3 Nov 2020 14:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A7DC6ECC7
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 14:54:23 +0000 (UTC)
IronPort-SDR: Uno2VFbn3f+HLQ8WWQ94s2tza0AFdhQOHjTn4m+M3nLrBOeVVJCZrkCsFfB/qnpE1AZjegQogK
 O9hwUXVyQVcg==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="230690821"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="230690821"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 06:54:23 -0800
IronPort-SDR: SabGXwgiZgkOBkx9vyxvQo8RzSYwGd6X6JjQEuCDLLIwwEmYSaOQLJB8UXY7V22yDqNOUKI1U2
 UMgV0ei2Adew==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="470824325"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 06:54:21 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Nov 2020 20:58:28 +0530
Message-Id: <20201103152834.12727-7-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201103152834.12727-1-uma.shankar@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v9 06/12] drm/i915/display: Enable BT2020 for HDR on
 LSPCON devices
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable Colorspace as BT2020 if driving HDR content.Sending Colorimetry
data for HDR using AVI infoframe. LSPCON firmware expects this and though
SOC drives DP, for HDMI panel AVI infoframe is sent to the LSPCON device
which transfers the same to HDMI sink.

v2: Dropped state managed in drm core as per Jani Nikula's suggestion.

v3: Aligned colorimetry handling for lspcon as per compute_avi_infoframes,
as suggested by Ville.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 31 +++++++++++++++++----
 1 file changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 336494b60d11..19831f5e51bf 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -524,12 +524,31 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
-	drm_hdmi_avi_infoframe_quant_range(&frame.avi,
-					   conn_state->connector,
-					   adjusted_mode,
-					   crtc_state->limited_color_range ?
-					   HDMI_QUANTIZATION_RANGE_LIMITED :
-					   HDMI_QUANTIZATION_RANGE_FULL);
+	/*
+	 * Set the HDMI Colorspace which are supported by DP as well.
+	 * For all others (3 combinations which are exclusive for DP),
+	 * Let the colorspace be set to default i.e No Data.
+	 * Fixme: Expose HDMI colorspaces for instead of DP counterparts
+	 */
+	drm_hdmi_avi_infoframe_colorspace(&frame.avi, conn_state);
+
+	/* nonsense combination */
+	drm_WARN_ON(encoder->base.dev, crtc_state->limited_color_range &&
+		    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB);
+
+	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_RGB) {
+		drm_hdmi_avi_infoframe_quant_range(&frame.avi,
+						   conn_state->connector,
+						   adjusted_mode,
+						   crtc_state->limited_color_range ?
+						   HDMI_QUANTIZATION_RANGE_LIMITED :
+						   HDMI_QUANTIZATION_RANGE_FULL);
+	} else {
+		frame.avi.quantization_range = HDMI_QUANTIZATION_RANGE_DEFAULT;
+		frame.avi.ycc_quantization_range = HDMI_YCC_QUANTIZATION_RANGE_LIMITED;
+	}
+
+	drm_hdmi_avi_infoframe_content_type(&frame.avi, conn_state);
 
 	ret = hdmi_infoframe_pack(&frame, buf, sizeof(buf));
 	if (ret < 0) {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
