Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4B32A48AC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 15:54:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05CDF6ECC4;
	Tue,  3 Nov 2020 14:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C6A46ECC4
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 14:54:27 +0000 (UTC)
IronPort-SDR: wJh1Uq3ul52Dw+YTpzXIijm2axmH5rmSzo4goc9464RZE0+VaMUWGRMQk7NUMdONAYnuRnQAfv
 33obHrSFUHnA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="230690838"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="230690838"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 06:54:27 -0800
IronPort-SDR: vXvKR3HHT8VC8k3+/6g/SENw/ANN45Pw6HY41XZWtP+SRWkTDCGelcyLoT308EsAjz+scfmzex
 x6CfqyIGaHjQ==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="470824345"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 06:54:25 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Nov 2020 20:58:30 +0530
Message-Id: <20201103152834.12727-9-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201103152834.12727-1-uma.shankar@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v9 08/12] drm/i915/display: Implement infoframes
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

v3: Added pcon specific infoframe types instead of using the HSW
one's, as recommended by Ville.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 57 ++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h             |  2 +
 2 files changed, 57 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 0cd3e0853cbf..d83e1d220658 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -567,11 +567,64 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
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
+		val |= VIDEO_DIP_ENABLE_AVI_PCON;
+
+	if (lspcon->hdr_supported) {
+		tmp = intel_de_read(dev_priv,
+				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
+		mask = VIDEO_DIP_ENABLE_GMP_PCON;
+
+		if (tmp & mask)
+			val |= mask;
+	}
+
+	return val;
 }
 
 void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index bb0656875697..465ec00afbff 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5084,6 +5084,8 @@ enum {
 #define   VIDEO_DIP_ENABLE_VS_HSW	(1 << 8)
 #define   VIDEO_DIP_ENABLE_GMP_HSW	(1 << 4)
 #define   VIDEO_DIP_ENABLE_SPD_HSW	(1 << 0)
+#define   VIDEO_DIP_ENABLE_AVI_PCON	(1 << 12)
+#define   VIDEO_DIP_ENABLE_GMP_PCON	(1 << 4)
 
 /* Panel power sequencing */
 #define PPS_BASE			0x61200
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
