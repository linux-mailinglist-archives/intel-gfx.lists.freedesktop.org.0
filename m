Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 490E32C4F9D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:41:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBED86E5CA;
	Thu, 26 Nov 2020 07:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81AE36E5CA
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 07:41:27 +0000 (UTC)
IronPort-SDR: CHJ0kH5xD3X5RrU1kb10JK9FbOrJAUhO4BqjdFDBNvGbk3usQzZUkM3qgeuXBfF6eUR8KdPAuj
 +htWxFIJXyng==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168741363"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="168741363"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:26 -0800
IronPort-SDR: BTnisci5CwF0O9OQ6LPC6KtO5+yY2JEy8cD32d28DgdLbm/NCPwlE07AZhgJL64azoMsc4IwvU
 YxymNs+FX7Vw==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="359448105"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:24 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 13:44:39 +0530
Message-Id: <20201126081445.29759-8-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126081445.29759-1-uma.shankar@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v11 07/13] i915/display: Enable BT2020 for HDR on
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

v4: Added BT2020 as default for HDR. Adding the colorspace property
interface for pcon will be take up separately. Moved changes of
quantization in a separate patch as per Ville's comments.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 0a4c05d67108..f6f58a991e7a 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -481,6 +481,10 @@ void lspcon_read_infoframe(struct intel_encoder *encoder,
 	/* FIXME implement this */
 }
 
+/* HDMI HDR Colorspace Spec Definitions */
+#define NORMAL_COLORIMETRY_MASK		0x3
+#define EXTENDED_COLORIMETRY_MASK	0x7
+#define HDMI_COLORIMETRY_BT2020_YCC	((3 << 0) | (6 << 2) | (0 << 5))
 void lspcon_set_infoframes(struct intel_encoder *encoder,
 			   bool enable,
 			   const struct intel_crtc_state *crtc_state,
@@ -523,6 +527,20 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
+	/*
+	 * Set BT2020 colorspace if driving HDR data
+	 * ToDo: Make this generic and expose all colorspaces for
+	 * lspcon. We need to expose HDMI colorspaces when we detect
+	 * lspcon, this has to happen after connector is registered,
+	 * so need to fix this appropriately
+	 */
+	if (lspcon->active && conn_state->hdr_output_metadata) {
+		frame.avi.colorimetry = HDMI_COLORIMETRY_BT2020_YCC &
+					NORMAL_COLORIMETRY_MASK;
+		frame.avi.extended_colorimetry = (HDMI_COLORIMETRY_BT2020_YCC >> 2) &
+						  EXTENDED_COLORIMETRY_MASK;
+	}
+
 	/* nonsense combination */
 	drm_WARN_ON(encoder->base.dev, crtc_state->limited_color_range &&
 		    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
