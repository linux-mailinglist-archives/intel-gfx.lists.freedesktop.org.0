Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3FA809C4F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 07:24:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D41310E037;
	Fri,  8 Dec 2023 06:24:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9322910E9CA
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 06:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702016664; x=1733552664;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d8f+xTDqxVb+xn4fG/4v5n+cFkCRuQ+Uoy2kI7/RBTU=;
 b=VH/zlwlHHA2+PQl2NQs9sv5+i5qtRBJhwzAwECt/RYi2IXH6I8i4IsC9
 s/UwECPn5sWdryT2v6Sbb47tfOp0XpEz+fjEfIJ8wYamOh3kHLNf38rZU
 796DVX3y5IvFOc9iJGTSHeL/yR/KQ+NQswf834YSjUOfCKxm8VJzRc6L8
 mn2msLANDKKbOlkMaaamcxhTBmCjNLUSGomrKtUaYkd3gbIaVcgnBLIkv
 Q1HT5CnfxDzXMDP4D/R14McH0jQo/KnvAD9bUSy7FHDvc2raey+3IjR1i
 iUChNnsXs9oELiS88Tpm7WdoqeRedK0M8b6I0K9Aixt/7RQKxqma0vtaw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1432096"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; 
   d="scan'208";a="1432096"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 22:24:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="838023821"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="838023821"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2023 22:24:20 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/dp: Add Read/Write support for Adaptive Sync SDP
Date: Fri,  8 Dec 2023 11:49:32 +0530
Message-Id: <20231208061933.964588-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231208061933.964588-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231208061933.964588-1-mitulkumar.ajitkumar.golani@intel.com>
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
 drivers/gpu/drm/i915/display/intel_dp.c   | 92 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_hdmi.c | 12 ++-
 drivers/gpu/drm/i915/i915_reg.h           |  6 ++
 include/drm/display/drm_dp_helper.h       |  3 +
 4 files changed, 110 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 3b2482bf683f..cd23d33cb901 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -94,7 +94,6 @@
 #define INTEL_DP_RESOLUTION_STANDARD	(2 << INTEL_DP_RESOLUTION_SHIFT_MASK)
 #define INTEL_DP_RESOLUTION_FAILSAFE	(3 << INTEL_DP_RESOLUTION_SHIFT_MASK)
 
-
 /* Constants for DP DSC configurations */
 static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
 
@@ -4110,6 +4109,34 @@ intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
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
+	/* Prepare AS (Adaptive Sync) VSC Header */
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
@@ -4277,6 +4304,10 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
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
@@ -4339,6 +4370,40 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
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
@@ -4409,6 +4474,27 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
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
@@ -4519,6 +4605,10 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
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
index 39e4f5f7c817..ebc12ec102f0 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -136,6 +136,8 @@ static u32 hsw_infoframe_enable(unsigned int type)
 		return VIDEO_DIP_ENABLE_GMP_HSW;
 	case DP_SDP_VSC:
 		return VIDEO_DIP_ENABLE_VSC_HSW;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return VIDEO_DIP_ENABLE_AS_HSW;
 	case DP_SDP_PPS:
 		return VDIP_ENABLE_PPS;
 	case HDMI_INFOFRAME_TYPE_AVI:
@@ -163,6 +165,8 @@ hsw_dip_data_reg(struct drm_i915_private *dev_priv,
 		return HSW_TVIDEO_DIP_GMP_DATA(cpu_transcoder, i);
 	case DP_SDP_VSC:
 		return HSW_TVIDEO_DIP_VSC_DATA(cpu_transcoder, i);
+	case DP_SDP_ADAPTIVE_SYNC:
+		return HSW_TVIDEO_DIP_AS_SDP_DATA(cpu_transcoder, i);
 	case DP_SDP_PPS:
 		return ICL_VIDEO_DIP_PPS_DATA(cpu_transcoder, i);
 	case HDMI_INFOFRAME_TYPE_AVI:
@@ -185,6 +189,8 @@ static int hsw_dip_data_size(struct drm_i915_private *dev_priv,
 	switch (type) {
 	case DP_SDP_VSC:
 		return VIDEO_DIP_VSC_DATA_SIZE;
+	case DP_SDP_ADAPTIVE_SYNC:
+		return VIDEO_DIP_ASYNC_DATA_SIZE;
 	case DP_SDP_PPS:
 		return VIDEO_DIP_PPS_DATA_SIZE;
 	case HDMI_PACKET_TYPE_GAMUT_METADATA:
@@ -555,7 +561,8 @@ static u32 hsw_infoframes_enabled(struct intel_encoder *encoder,
 
 	mask = (VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
 		VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
-		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW);
+		VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
+		VIDEO_DIP_ENABLE_AS_HSW);
 
 	if (DISPLAY_VER(dev_priv) >= 10)
 		mask |= VIDEO_DIP_ENABLE_DRM_GLK;
@@ -567,6 +574,7 @@ static const u8 infoframe_type_to_idx[] = {
 	HDMI_PACKET_TYPE_GENERAL_CONTROL,
 	HDMI_PACKET_TYPE_GAMUT_METADATA,
 	DP_SDP_VSC,
+	DP_SDP_ADAPTIVE_SYNC,
 	HDMI_INFOFRAME_TYPE_AVI,
 	HDMI_INFOFRAME_TYPE_SPD,
 	HDMI_INFOFRAME_TYPE_VENDOR,
@@ -1209,7 +1217,7 @@ static void hsw_set_infoframes(struct intel_encoder *encoder,
 	val &= ~(VIDEO_DIP_ENABLE_VSC_HSW | VIDEO_DIP_ENABLE_AVI_HSW |
 		 VIDEO_DIP_ENABLE_GCP_HSW | VIDEO_DIP_ENABLE_VS_HSW |
 		 VIDEO_DIP_ENABLE_GMP_HSW | VIDEO_DIP_ENABLE_SPD_HSW |
-		 VIDEO_DIP_ENABLE_DRM_GLK);
+		 VIDEO_DIP_ENABLE_DRM_GLK | VIDEO_DIP_ENABLE_AS_HSW);
 
 	if (!enable) {
 		intel_de_write(dev_priv, reg, val);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 27dc903f0553..faacb5ac0afe 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2312,6 +2312,7 @@
  * (Haswell and newer) to see which VIDEO_DIP_DATA byte corresponds to each byte
  * of the infoframe structure specified by CEA-861. */
 #define   VIDEO_DIP_DATA_SIZE	32
+#define   VIDEO_DIP_ASYNC_DATA_SIZE	32
 #define   VIDEO_DIP_GMP_DATA_SIZE	36
 #define   VIDEO_DIP_VSC_DATA_SIZE	36
 #define   VIDEO_DIP_PPS_DATA_SIZE	132
@@ -2344,6 +2345,7 @@
 #define   VSC_DIP_HW_DATA_SW_HEA	(2 << 25)
 #define   VSC_DIP_SW_HEA_DATA		(3 << 25)
 #define   VDIP_ENABLE_PPS		(1 << 24)
+#define   VIDEO_DIP_ENABLE_AS_HSW	REG_BIT(23)
 #define   VIDEO_DIP_ENABLE_VSC_HSW	(1 << 20)
 #define   VIDEO_DIP_ENABLE_GCP_HSW	(1 << 16)
 #define   VIDEO_DIP_ENABLE_AVI_HSW	(1 << 12)
@@ -5038,6 +5040,7 @@
 #define _HSW_VIDEO_DIP_SPD_DATA_A	0x602A0
 #define _HSW_VIDEO_DIP_GMP_DATA_A	0x602E0
 #define _HSW_VIDEO_DIP_VSC_DATA_A	0x60320
+#define	_HSW_VIDEO_DIP_ASYNC_DATA_A	0x60484
 #define _GLK_VIDEO_DIP_DRM_DATA_A	0x60440
 #define _HSW_VIDEO_DIP_AVI_ECC_A	0x60240
 #define _HSW_VIDEO_DIP_VS_ECC_A		0x60280
@@ -5052,6 +5055,7 @@
 #define _HSW_VIDEO_DIP_SPD_DATA_B	0x612A0
 #define _HSW_VIDEO_DIP_GMP_DATA_B	0x612E0
 #define _HSW_VIDEO_DIP_VSC_DATA_B	0x61320
+#define	_HSW_VIDEO_DIP_ASYNC_DATA_B	0x61484
 #define _GLK_VIDEO_DIP_DRM_DATA_B	0x61440
 #define _HSW_VIDEO_DIP_BVI_ECC_B	0x61240
 #define _HSW_VIDEO_DIP_VS_ECC_B		0x61280
@@ -5078,6 +5082,8 @@
 #define HSW_TVIDEO_DIP_SPD_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_SPD_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_GMP_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_GMP_DATA_A + (i) * 4)
 #define HSW_TVIDEO_DIP_VSC_DATA(trans, i)	_MMIO_TRANS2(trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
+#define HSW_TVIDEO_DIP_AS_SDP_DATA(trans, i)	_MMIO_TRANS2(trans,\
+							     _HSW_VIDEO_DIP_ASYNC_DATA_A + (i) * 4)
 #define GLK_TVIDEO_DIP_DRM_DATA(trans, i)	_MMIO_TRANS2(trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_DATA(trans, i)	_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
index ab75b421fdf8..076c4aa6a5f3 100644
--- a/include/drm/display/drm_dp_helper.h
+++ b/include/drm/display/drm_dp_helper.h
@@ -838,6 +838,9 @@ int drm_dp_pcon_convert_rgb_to_ycbcr(struct drm_dp_aux *aux, u8 color_spc);
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

