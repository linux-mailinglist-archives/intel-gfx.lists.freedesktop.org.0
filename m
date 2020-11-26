Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEEB2C4F9C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 08:41:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2A6C6E5D4;
	Thu, 26 Nov 2020 07:41:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF76C6E5C0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 07:41:22 +0000 (UTC)
IronPort-SDR: ii3gOWJ5f6376ymzRVGvpDaS/XqO9fD2pAnQ/6tqjWkzBrBkfvPgtrKf04stj4IbdYQKx+AEjQ
 g7a6vxH5E1NQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168741349"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="168741349"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:22 -0800
IronPort-SDR: kWfqElQfbblgKw76Y0pDLbN3LJiMVFlHLOYrozQ1hfWnTk058TSWSDCh7Ee6QRHTK5l5nD4+2h
 dCB5A6EvE7Pg==
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="359448086"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2020 23:41:21 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Nov 2020 13:44:37 +0530
Message-Id: <20201126081445.29759-6-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126081445.29759-1-uma.shankar@intel.com>
References: <20201126081445.29759-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v11 05/13] drm/i915/display: Add a WARN for invalid
 output range and format
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

Add a WARN to rule out an invalid output range and format
combination. This is to align the lspcon code with
compute_avi_infoframes.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 7cb65e0f241e..9552dfc55e20 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -523,6 +523,10 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 	else
 		frame.avi.colorspace = HDMI_COLORSPACE_RGB;
 
+	/* nonsense combination */
+	drm_WARN_ON(encoder->base.dev, crtc_state->limited_color_range &&
+		    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB);
+
 	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_RGB) {
 		drm_hdmi_avi_infoframe_quant_range(&frame.avi,
 						   conn_state->connector,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
