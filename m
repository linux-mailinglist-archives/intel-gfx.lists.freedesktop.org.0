Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A2F284BAE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 14:33:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591226E488;
	Tue,  6 Oct 2020 12:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559F26E483
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 12:33:17 +0000 (UTC)
IronPort-SDR: EevmlpK7tmR1nVCnu6kfOVDqMspDqJEfi/7peyQdzdxlXOT5/DLXkPqG39qZFvkq7FtISwYhnk
 lLxsJv+SYB8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161851708"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161851708"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:17 -0700
IronPort-SDR: NlSCSfq2IEVXh1iPZ7GHGSBZUgYrN5h9JxGV9+vgRgrteoOVHAGQPxiAOo+9WhuXEdNnkKzfYz
 ccVLcYZvafbw==
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="527333658"
Received: from unknown (HELO linux-desktop.iind.intel.com) ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:15 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 18:36:48 +0530
Message-Id: <20201006130654.331-5-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006130654.331-1-uma.shankar@intel.com>
References: <20201006130654.331-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v7 04/10] drm/i915/display: Enable BT2020 for HDR on
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
 drivers/gpu/drm/i915/display/intel_lspcon.c | 25 ++++++++++++++++-----
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 440d2b3c2212..9ffa36797daf 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -534,12 +534,25 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 	}
 
-	drm_hdmi_avi_infoframe_quant_range(&frame.avi,
-					   conn_state->connector,
-					   adjusted_mode,
-					   crtc_state->limited_color_range ?
-					   HDMI_QUANTIZATION_RANGE_LIMITED :
-					   HDMI_QUANTIZATION_RANGE_FULL);
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
