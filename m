Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33DFD2C4F9B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:41:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D086E5C8;
	Thu, 26 Nov 2020 07:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03F586E5C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 07:41:20 +0000 (UTC)
IronPort-SDR: QRTYmIDUV3Rp/IcGjKYYpOioSvtcqfJ8BoSBeS0JAGZdHkBShw/v43OXfrXKhePL0UZqIK/8VX
 TeMuBWRfT2ZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168741346"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="168741346"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:20 -0800
IronPort-SDR: rUJgyDEhAn43WiGnAgk8wFfKcMTBSyRMIDLdgDZZHoVAG+MgFSombQ9VS1PAuB7yYVYQ9pAJaU
 vR2smRczEk/A==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="359448079"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:19 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 13:44:36 +0530
Message-Id: <20201126081445.29759-5-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126081445.29759-1-uma.shankar@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v11 04/13] drm/i915/display: Enable quantization range
 for HDR on LSPCON devices
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

This patch handles the quantization range for Lspcon.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index f98891f058da..7cb65e0f241e 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -523,12 +523,17 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
-	drm_hdmi_avi_infoframe_quant_range(&frame.avi,
-					   conn_state->connector,
-					   adjusted_mode,
-					   crtc_state->limited_color_range ?
-					   HDMI_QUANTIZATION_RANGE_LIMITED :
-					   HDMI_QUANTIZATION_RANGE_FULL);
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
 
 	ret = hdmi_infoframe_pack(&frame, buf, sizeof(buf));
 	if (ret < 0) {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
