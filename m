Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BAD851BDA
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 18:43:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E47D10EE56;
	Mon, 12 Feb 2024 17:43:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WWvcnP0F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C895C10EE19
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Feb 2024 17:43:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707759807; x=1739295807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OpMekhTry+I/LmgL788HcjjYphsGMra2O3vIqiQwiCo=;
 b=WWvcnP0FjPvc8Auul+CsA/gApghDYnNCdblAHCapb7xFmljOngsTa3Cw
 Hd4ypGD0J5g3QmGoYRqvA+JjJYtACLdwGxYpye/fbxJswnZrhHcgkKesX
 ncGEwR7m7KjzRfmHaJ17HaBI8zHfAyCnnZ2TTACVZl5gtqQTIRB7TcjS/
 ZsGn7b1acJYFTp3xrCt0+Tj0LbXCW33CwCftbn8ZsDsinQ57NMxQrmSdY
 6q6tdwCb+27W6Fif+3OtidhRngWSPvCGK9FbSZ7rwctNu2S/p1xdVDvWs
 yOluFxHAsaZyr2qowRz4tnvEYczpneROQeqwRUzq+0FtYytDrWq5+xnxv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1872002"
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; 
   d="scan'208";a="1872002"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 09:43:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; 
   d="scan'208";a="2595397"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 12 Feb 2024 09:43:25 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 3/4] drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
Date: Mon, 12 Feb 2024 23:06:22 +0530
Message-Id: <20240212173623.1464540-4-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240212173623.1464540-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240212173623.1464540-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add the necessary structures and functions to handle reading and
unpacking Adaptive Sync Secondary Data Packets. Also add support
to write and pack AS SDP.

--v2:
- Correct use of REG_BIT and REG_GENMASK. [Jani]
- Use as_sdp instead of async. [Jani]
- Remove unrelated comments and changes. [Jani]
- Correct code indent. [Jani]

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 95 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c | 12 ++-
 drivers/gpu/drm/i915/i915_reg.h           |  6 ++
 include/drm/display/drm_dp_helper.h       |  3 +
 4 files changed, 112 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5045c34a16be..6e9180ce069a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -95,7 +95,6 @@
 #define INTEL_DP_RESOLUTION_STANDARD	(2 << INTEL_DP_RESOLUTION_SHIFT_MASK)
 #define INTEL_DP_RESOLUTION_FAILSAFE	(3 << INTEL_DP_RESOLUTION_SHIFT_MASK)
 
-
 /* Constants for DP DSC configurations */
 static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
 
@@ -4087,6 +4086,34 @@ intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 	return false;
 }
 
+static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *as_sdp,
+				    struct dp_sdp *sdp, size_t size)
+{
+	size_t length = sizeof(struct dp_sdp);
+
+	if (size < length)
+		return -ENOSPC;
+
+	memset(sdp, 0, size);
+
+	/* Prepare AS (Adaptive Sync) SDP Header */
+	sdp->sdp_header.HB0 = 0;
+	sdp->sdp_header.HB1 = as_sdp->sdp_type;
+	sdp->sdp_header.HB2 = 0x02;
+	sdp->sdp_header.HB3 = as_sdp->length;
+
+	/* Fill AS (Adaptive Sync) SDP Payload */
+	sdp->db[1] = 0x0;
+	sdp->db[1] = as_sdp->vtotal & 0xFF;
+	sdp->db[2] = (as_sdp->vtotal >> 8) & 0xF;
+	sdp->db[3] = 0x0;
+	sdp->db[4] = 0x0;
+	sdp->db[7] = 0x0;
+	sdp->db[8] = 0x0;
+
+	return length;
+}
+
 static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
 				     struct dp_sdp *sdp, size_t size)
 {
@@ -4254,6 +4281,10 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 							       &crtc_state->infoframes.drm.drm,
 							       &sdp, sizeof(sdp));
 		break;
+	case DP_SDP_ADAPTIVE_SYNC:
+		len = intel_dp_as_sdp_pack(&crtc_state->infoframes.as_sdp, &sdp,
+					   sizeof(sdp));
+		break;
 	default:
 		MISSING_CASE(type);
 		return;
@@ -4274,7 +4305,8 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 	i915_reg_t reg = HSW_TVIDEO_DIP_CTL(crtc_state->cpu_transcoder);
 	u32 dip_enable = VIDEO_DIP_ENABLE_AVI_HSW | VIDEO_DIP_ENABLE_GCP_HSW |
 			 VIDEO_DIP_ENABLE_VS_HSW | VIDEO_DIP_ENABLE_GMP_HSW |
-			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK;
+			 VIDEO_DIP_ENABLE_SPD_HSW | VIDEO_DIP_ENABLE_DRM_GLK |
+			 VIDEO_DIP_ENABLE_AS_HSW;
 	u32 val = intel_de_read(dev_priv, reg) & ~dip_enable;
 
 	/* TODO: Sanitize DSC enabling wrt. intel_dsc_dp_pps_write(). */
@@ -4296,6 +4328,40 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
+static
+int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *as_sdp,
+			   const void *buffer, size_t size)
+{
+	const struct dp_sdp *sdp = buffer;
+
+	if (size < sizeof(struct dp_sdp))
+		return -EINVAL;
+
+	memset(as_sdp, 0, sizeof(*as_sdp));
+
+	if (sdp->sdp_header.HB0 != 0)
+		return -EINVAL;
+
+	if (sdp->sdp_header.HB1 != DP_SDP_ADAPTIVE_SYNC)
+		return -EINVAL;
+
+	if (sdp->sdp_header.HB2 != 0x02)
+		return -EINVAL;
+
+	if ((sdp->sdp_header.HB3 & 0x3F) != 9)
+		return -EINVAL;
+
+	if ((sdp->db[0] & AS_SDP_OP_MODE) != 0x0)
+		return -EINVAL;
+
+	as_sdp->vtotal = ((u64)sdp->db[2] << 32) | (u64)sdp->db[1];
+	as_sdp->target_rr = 0;
+	as_sdp->duration_incr_ms = 0;
+	as_sdp->duration_decr_ms = 0;
+
+	return 0;
+}
+
 static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
 				   const void *buffer, size_t size)
 {
@@ -4366,6 +4432,27 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
 	return 0;
 }
 
+static int
+intel_read_dp_metadata_infoframe_as_sdp(struct intel_encoder *encoder,
+					struct intel_crtc_state *crtc_state,
+					struct drm_dp_as_sdp *as_sdp)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	unsigned int type = DP_SDP_ADAPTIVE_SYNC;
+	struct dp_sdp sdp = {};
+	int ret;
+
+	dig_port->read_infoframe(encoder, crtc_state, type, &sdp,
+				 sizeof(sdp));
+
+	ret = intel_dp_as_sdp_unpack(as_sdp, &sdp, sizeof(sdp));
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "Failed to unpack DP AS SDP\n");
+
+	return ret;
+}
+
 static int
 intel_dp_hdr_metadata_infoframe_sdp_unpack(struct hdmi_drm_infoframe *drm_infoframe,
 					   const void *buffer, size_t size)
@@ -4472,6 +4559,10 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 		intel_read_dp_hdr_metadata_infoframe_sdp(encoder, crtc_state,
 							 &crtc_state->infoframes.drm.drm);
 		break;
+	case DP_SDP_ADAPTIVE_SYNC:
+		intel_read_dp_metadata_infoframe_as_sdp(encoder, crtc_state,
+							&crtc_state->infoframes.as_sdp);
+		break;
 	default:
 		MISSING_CASE(type);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 7020e5806109..04c975d18e94 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -137,6 +137,8 @@ static u32 hsw_infoframe_enable(unsigned int type)
 		return VIDEO_DIP_ENABLE_GMP_HSW;
 	case DP_SDP_VSC:
 		return VIDEO_DIP_ENABLE_VSC_HSW;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return VIDEO_DIP_ENABLE_AS_HSW;
 	case DP_SDP_PPS:
 		return VDIP_ENABLE_PPS;
 	case HDMI_INFOFRAME_TYPE_AVI:
@@ -164,6 +166,8 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
 		return HSW_TVIDEO_DIP_GMP_DATA(cpu_transcoder, i);
 	case DP_SDP_VSC:
 		return HSW_TVIDEO_DIP_VSC_DATA(cpu_transcoder, i);
+	case DP_SDP_ADAPTIVE_SYNC:
+		return HSW_TVIDEO_DIP_AS_SDP_DATA(cpu_transcoder, i);
 	case DP_SDP_PPS:
 		return ICL_VIDEO_DIP_PPS_DATA(cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_AVI:
@@ -186,6 +190,8 @@ static int hsw_dip_data_size(struct drm_i915_private *dev_priv,
 	switch (type) {
 	case DP_SDP_VSC:
 		return VIDEO_DIP_VSC_DATA_SIZE;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return VIDEO_DIP_ASYNC_DATA_SIZE;
 	case DP_SDP_PPS:
 		return VIDEO_DIP_PPS_DATA_SIZE;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
@@ -558,7 +564,8 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
 
 	mask = (VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
 		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
-		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);
+		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
+		VIDEO_DIP_ENABLE_AS_HSW);
 
 	if (DISPLAY_VER(dev_priv) >= 10)
 		mask |= VIDEO_DIP_ENABLE_DRM_GLK;
@@ -570,6 +577,7 @@ static const u8 infoframe_type_to_idx[] = {
 	HDMI_PACKET_TYPE_GENERAL_CONTROL,
 	HDMI_PACKET_TYPE_GAMUT_METADATA,
 	DP_SDP_VSC,
+	DP_SDP_ADAPTIVE_SYNC,
 	HDMI_INFOFRAME_TYPE_AVI,
 	HDMI_INFOFRAME_TYPE_SPD,
 	HDMI_INFOFRAME_TYPE_VENDOR,
@@ -1212,7 +1220,7 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 	val &= ~(VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
 		 VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
 		 VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
-		 VIDEO_DIP_ENABLE_DRM_GLK);
+		 VIDEO_DIP_ENABLE_DRM_GLK | VIDEO_DIP_ENABLE_AS_HSW);
 
 	if (!enable) {
 		intel_de_write(dev_priv, reg, val);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3449e65fdf1b..3bcbddd676b9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2314,6 +2314,7 @@
  * (Haswell and newer) to see which VIDEO_DIP_DATA byte corresponds to each byte
  * of the infoframe structure specified by CEA-861. */
 #define   VIDEO_DIP_DATA_SIZE	32
+#define   VIDEO_DIP_ASYNC_DATA_SIZE	36
 #define   VIDEO_DIP_GMP_DATA_SIZE	36
 #define   VIDEO_DIP_VSC_DATA_SIZE	36
 #define   VIDEO_DIP_PPS_DATA_SIZE	132
@@ -2346,6 +2347,7 @@
 #define   VSC_DIP_HW_DATA_SW_HEA	(2 << 25)
 #define   VSC_DIP_SW_HEA_DATA		(3 << 25)
 #define   VDIP_ENABLE_PPS		(1 << 24)
+#define   VIDEO_DIP_ENABLE_AS_HSW	REG_BIT(23)
 #define   VIDEO_DIP_ENABLE_VSC_HSW	(1 << 20)
 #define   VIDEO_DIP_ENABLE_GCP_HSW	(1 << 16)
 #define   VIDEO_DIP_ENABLE_AVI_HSW	(1 << 12)
@@ -5042,6 +5044,7 @@
 #define _HSW_VIDEO_DIP_SPD_DATA_A	0x602A0
 #define _HSW_VIDEO_DIP_GMP_DATA_A	0x602E0
 #define _HSW_VIDEO_DIP_VSC_DATA_A	0x60320
+#define	_HSW_VIDEO_DIP_ASYNC_DATA_A	0x60484
 #define _GLK_VIDEO_DIP_DRM_DATA_A	0x60440
 #define _HSW_VIDEO_DIP_AVI_ECC_A	0x60240
 #define _HSW_VIDEO_DIP_VS_ECC_A		0x60280
@@ -5056,6 +5059,7 @@
 #define _HSW_VIDEO_DIP_SPD_DATA_B	0x612A0
 #define _HSW_VIDEO_DIP_GMP_DATA_B	0x612E0
 #define _HSW_VIDEO_DIP_VSC_DATA_B	0x61320
+#define	_HSW_VIDEO_DIP_ASYNC_DATA_B	0x61484
 #define _GLK_VIDEO_DIP_DRM_DATA_B	0x61440
 #define _HSW_VIDEO_DIP_BVI_ECC_B	0x61240
 #define _HSW_VIDEO_DIP_VS_ECC_B		0x61280
@@ -5082,6 +5086,8 @@
 #define HSW_TVIDEO_DIP_SPD_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_GMP_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
+#define HSW_TVIDEO_DIP_AS_SDP_DATA(trans, i)	_MMIO_TRANS2(trans,\
+							     _HSW_VIDEO_DIP_ASYNC_DATA_A + (i) * 4)
 #define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index 37045a903d89..67feb626405b 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -837,6 +837,9 @@ int drm_dp_pcon_convert_rgb_to_ycbcr(struct drm_dp_aux *aux, u8 color_spc);
 #define DRM_DP_BW_OVERHEAD_FEC		BIT(3)
 #define DRM_DP_BW_OVERHEAD_DSC		BIT(4)
 
+#define AS_SDP_ENABLE				BIT(2)
+#define AS_SDP_OP_MODE				GENMASK(1, 0)
+
 int drm_dp_bw_overhead(int lane_count, int hactive,
 		       int dsc_slice_count,
 		       int bpp_x16, unsigned long flags);
-- 
2.25.1

