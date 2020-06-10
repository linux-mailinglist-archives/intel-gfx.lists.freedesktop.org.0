Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BADF41F5B68
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 20:42:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E82906E837;
	Wed, 10 Jun 2020 18:42:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E294E6E837
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 18:42:43 +0000 (UTC)
IronPort-SDR: mdrdsUg9EHofUkmZMWGqbvVAnt6ZqgaiAHDToCEkUU4jePopQ1MW3TGUzzU2MvMJzEzR0Nnmjp
 CDqUcu2XXVrQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2020 11:42:43 -0700
IronPort-SDR: LFt9fc8vPvpM2My4KC0w0fzuPxz+gpjHXpw+0HqZYFSBznNciplQfU58+e3G+HgBZBEluGnvQZ
 vOGcT5JFE0OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,496,1583222400"; d="scan'208";a="473530193"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by fmsmga005.fm.intel.com with ESMTP; 10 Jun 2020 11:42:42 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jun 2020 00:42:30 +0530
Message-Id: <20200610191232.11620-7-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200610191232.11620-1-uma.shankar@intel.com>
References: <20200610191232.11620-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v3 6/8] drm/i915/display: Implement infoframes
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

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lspcon.c | 63 ++++++++++++++++++++-
 1 file changed, 61 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 9034ce6f20b9..0ebe9a700291 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -576,11 +576,70 @@ void lspcon_set_infoframes(struct intel_encoder *encoder,
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
+	if (val & LSPCON_MCA_AVI_IF_KICKOFF)
+		return true;
+
+	return false;
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
+	if (val & LSPCON_PARADE_AVI_IF_KICKOFF)
+		return true;
+
+	return false;
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
+	u32 mask = 0;
+	u32 val;
+
+	if (lspcon->vendor == LSPCON_VENDOR_MCA)
+		infoframes_enabled = _lspcon_read_avi_infoframe_enabled_mca(&intel_dp->aux);
+	else
+		infoframes_enabled = _lspcon_read_avi_infoframe_enabled_parade(&intel_dp->aux);
+
+	if (infoframes_enabled)
+		return true;
+
+	if (lspcon->hdr_supported) {
+		val = intel_de_read(dev_priv,
+				    HSW_TVIDEO_DIP_CTL(pipe_config->cpu_transcoder));
+		mask |= VIDEO_DIP_ENABLE_GMP_HSW;
+
+		if (val & mask)
+			return val & mask;
+	}
+
+	return false;
 }
 
 void lspcon_resume(struct intel_lspcon *lspcon)
-- 
2.22.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
