Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B141269670
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 22:25:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B61366E58A;
	Mon, 14 Sep 2020 20:25:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85C056E58E
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 20:25:09 +0000 (UTC)
IronPort-SDR: UruaL2AOEm2XjOSKbSzrNLo91f1TeUQXQqAQ9fSZnrmTHWb+xA9MGO1PtRqqF8Q/FRU924cBdN
 wxF4ikVTE6yg==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="223340798"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="223340798"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 13:25:09 -0700
IronPort-SDR: Qr4yccnw7NqSIDeFmpynnNL1+xwOhZxVAULDnvCnT0XXqn1jzwlZsnL6gPDMNbUsEZiJXpUpeX
 e3jX8ED49LzQ==
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="306307144"
Received: from unknown (HELO linux-desktop.iind.intel.com) ([10.223.34.173])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 13:25:07 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Sep 2020 02:30:42 +0530
Message-Id: <20200914210047.11972-7-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200914210047.11972-1-uma.shankar@intel.com>
References: <20200914210047.11972-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v6 06/11] drm/i915/display: Implement infoframes
 readback for LSPCON
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

Implemented Infoframes enabled readback for LSPCON devices.
This will help align the implementation with state readback
infrastructure.

v2: Added proper bitmask of enabled infoframes as per Ville's
recommendation.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 57 ++++++++++++++++++++-
 1 file changed, 55 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 60863b825cc5..565913b8e656 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -576,11 +576,64 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
 				  buf, ret);
 }
 
+static bool _lspcon_read_avi_infoframe_enabled_mca(struct drm_dp_aux *aux)
+{
+	int ret;
+	u32 val = 0;
+	u16 reg = LSPCON_MCA_AVI_IF_CTRL;
+
+	ret = drm_dp_dpcd_read(aux, reg, &val, 1);
+	if (ret < 0) {
+		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
+		return false;
+	}
+
+	return val & LSPCON_MCA_AVI_IF_KICKOFF;
+}
+
+static bool _lspcon_read_avi_infoframe_enabled_parade(struct drm_dp_aux *aux)
+{
+	int ret;
+	u32 val = 0;
+	u16 reg = LSPCON_PARADE_AVI_IF_CTRL;
+
+	ret = drm_dp_dpcd_read(aux, reg, &val, 1);
+	if (ret < 0) {
+		DRM_ERROR("DPCD read failed, address 0x%x\n", reg);
+		return false;
+	}
+
+	return val & LSPCON_PARADE_AVI_IF_KICKOFF;
+}
+
 u32 lspcon_infoframes_enabled(struct intel_encoder *encoder,
 			      const struct intel_crtc_state *pipe_config)
 {
-	/* FIXME actually read this from the hw */
-	return 0;
+	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+	struct intel_lspcon *lspcon = enc_to_intel_lspcon(encoder);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	bool infoframes_enabled;
+	u32 val = 0;
+	u32 mask, tmp;
+
+	if (lspcon->vendor == LSPCON_VENDOR_MCA)
+		infoframes_enabled = _lspcon_read_avi_infoframe_enabled_mca(&intel_dp->aux);
+	else
+		infoframes_enabled = _lspcon_read_avi_infoframe_enabled_parade(&intel_dp->aux);
+
+	if (infoframes_enabled)
+		val |= VIDEO_DIP_ENABLE_AVI_HSW;
+
+	if (lspcon->hdr_supported) {
+		tmp = intel_de_read(dev_priv,
+				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
+		mask = VIDEO_DIP_ENABLE_GMP_HSW;
+
+		if (tmp & mask)
+			val |= mask;
+	}
+
+	return val;
 }
 
 void lspcon_resume(struct intel_lspcon *lspcon)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
