Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5583528FB8C
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 01:15:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F61A6E3EF;
	Thu, 15 Oct 2020 23:15:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 459556E2B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 23:15:21 +0000 (UTC)
IronPort-SDR: 3Wg/OKwGg1BR7gS7gta+EysFd8CFhA6dCb0KZw6sZtZ3qz+sy34S4dxn9VlFwCdBJh9/CVRyQS
 U2amYg3AK7qA==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="163010316"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="163010316"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:21 -0700
IronPort-SDR: l7/q61ATdbLY2IpvShpL6W+QdAtLBOrqcM14zM7JPx/X8EwdGghZRof53U9H3PU1o8cjhz1msr
 65x3t/h6JUaA==
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="531450421"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:19 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 05:18:58 +0530
Message-Id: <20201015234902.7134-9-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201015234902.7134-1-uma.shankar@intel.com>
References: <20201015234902.7134-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v8 08/12] drm/i915/display: Implement infoframes
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
index be59cbde9413..9685be1991ca 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -577,11 +577,64 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
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
index 04c966a524ce..337aca1d9384 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4977,6 +4977,8 @@ enum {
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
