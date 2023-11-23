Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CA77F6110
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 15:08:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8378110E769;
	Thu, 23 Nov 2023 14:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1F7110E75B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 14:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700748482; x=1732284482;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=T+DSzQksJBlDOwAV/5xjYaEvFiNl1i3K+1L0XkIffVc=;
 b=gCO0+wfajmTNoN9VfyA6Y7VByT9veReTwT9fTuxiTlvejd7KZ79WxdKA
 L4xb0rXCIMbHA5HReVE50kj6moBRimQ9aWFZmxWE2VfjsFjbg/lqNvAhQ
 NO+H+Y0e8Gd7yUEafgeLfCLzldJxUPjAobv+kMo7V6IWKgzitqoBI/a6m
 EyV33RC5hDATDvBzlLRqcwClXaiJMw53EpDTdlPu8pEZ8AbT2haqVPANc
 jZr20VQcQhFyr8GkCWKRteiKnH8GXE/jFsGFv190WCkv+44uVBoNIvz9/
 ciHFWZ3sFwiM1nbAEq7tDcK+h9zqJpWw+fw66VRNJv+dZLRzHZmZo24Tl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="5418526"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; 
   d="scan'208";a="5418526"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2023 06:07:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="767213051"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="767213051"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orsmga002.jf.intel.com with ESMTP; 23 Nov 2023 06:07:55 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 19:32:43 +0530
Message-Id: <20231123140244.4183869-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231123140244.4183869-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20231123140244.4183869-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display/: Add Read/Write support
 for Adaptive Sync SDP
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |   1 +
 drivers/gpu/drm/i915/display/intel_dp.c       | 118 +++++++++++++++++-
 2 files changed, 114 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 9a44350ba05d..7d87923f63af 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1325,6 +1325,7 @@ struct intel_crtc_state {
 		union hdmi_infoframe hdmi;
 		union hdmi_infoframe drm;
 		struct drm_dp_vsc_sdp vsc;
+		struct drm_dp_as_sdp  async;
 	} infoframes;
 
 	u8 eld[MAX_ELD_BYTES];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 1422c2370269..39624746d612 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -94,6 +94,8 @@
 #define INTEL_DP_RESOLUTION_STANDARD	(2 << INTEL_DP_RESOLUTION_SHIFT_MASK)
 #define INTEL_DP_RESOLUTION_FAILSAFE	(3 << INTEL_DP_RESOLUTION_SHIFT_MASK)
 
+#define AS_SDP_ENABLE					REG_BIT(2)
+#define AS_SDP_OP_MODE					REG_GENMASK(1, 0)
 
 /* Constants for DP DSC configurations */
 static const u8 valid_dsc_bpp[] = {6, 8, 10, 12, 15};
@@ -4113,6 +4115,42 @@ intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
 	return false;
 }
 
+static ssize_t intel_dp_as_sdp_pack(const struct drm_dp_as_sdp *async,
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
+	sdp->sdp_header.HB1 = async->sdp_type;
+	sdp->sdp_header.HB2 = 0x02;
+	sdp->sdp_header.HB3 = async->length;
+
+	/* Fill AS (Adaptive Sync) SDP Payload */
+	if ((sdp->db[0] & 0x03) == 0) {
+		sdp->db[3] = 0;
+		sdp->db[4] &= 0xFC;
+	}
+
+	sdp->db[1] = async->vmin & 0xFF;
+	sdp->db[2] = (async->vmin >> 8) & 0xF;
+	sdp->db[17] = (async->vmin >> 8) & 0xFF;
+	sdp->db[18] = async->vmax & 0xFF;
+	sdp->db[19] = (async->vmax >> 8) & 0xFF;
+	sdp->db[20] = async->target_rr & 0xFF;
+	sdp->db[21] = (async->target_rr >> 8) & 0xFF;
+	sdp->db[22] = async->duration_incr_ms;
+	sdp->db[23] = async->duration_decr_ms;
+	sdp->db[24] = async->operation_mode;
+
+	return length;
+}
+
 static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
 				     struct dp_sdp *sdp, size_t size)
 {
@@ -4280,6 +4318,10 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
 							       &crtc_state->infoframes.drm.drm,
 							       &sdp, sizeof(sdp));
 		break;
+	case DP_SDP_ADAPTIVE_SYNC:
+		len = intel_dp_as_sdp_pack(&crtc_state->infoframes.async, &sdp,
+					   sizeof(sdp));
+		break;
 	default:
 		MISSING_CASE(type);
 		return;
@@ -4342,6 +4384,44 @@ void intel_dp_set_infoframes(struct intel_encoder *encoder,
 	intel_write_dp_sdp(encoder, crtc_state, HDMI_PACKET_TYPE_GAMUT_METADATA);
 }
 
+/*
+ * This function is to unpack AS SDP Packet
+ */
+static
+int intel_dp_as_sdp_unpack(struct drm_dp_as_sdp *async,
+			   const void *buffer, size_t size)
+{
+	const struct dp_sdp *sdp = buffer;
+
+	if (size < sizeof(struct dp_sdp))
+		return -EINVAL;
+
+	memset(async, 0, sizeof(*async));
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
+	if (sdp->db[0] != (AS_SDP_ENABLE | AS_SDP_OP_MODE))
+		return -EINVAL;
+
+	async->vmin = ((u64)sdp->db[2] << 32) | (u64)sdp->db[1];
+	async->vmax = 0;
+	async->target_rr = 0;
+	async->duration_incr_ms = 0;
+	async->duration_decr_ms = 0;
+
+	return 0;
+}
+
 static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
 				   const void *buffer, size_t size)
 {
@@ -4412,12 +4492,35 @@ static int intel_dp_vsc_sdp_unpack(struct drm_dp_vsc_sdp *vsc,
 	return 0;
 }
 
+/*
+ * This function to read registers to fetch packets
+ */
+static int
+intel_read_dp_as_metadata_infoframe_sdp(struct intel_encoder *encoder,
+					struct intel_crtc_state *crtc_state,
+					struct drm_dp_as_sdp *async)
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
+	ret = intel_dp_as_sdp_unpack(async, &sdp, sizeof(sdp));
+	if (ret)
+		drm_dbg_kms(&dev_priv->drm, "Failed to unpack DP AS SDP\n");
+
+	return ret;
+}
+
 static int
 intel_dp_hdr_metadata_infoframe_sdp_unpack(struct hdmi_drm_infoframe *drm_infoframe,
 					   const void *buffer, size_t size)
 {
 	int ret;
-
 	const struct dp_sdp *sdp = buffer;
 
 	if (size < sizeof(struct dp_sdp))
@@ -4484,9 +4587,10 @@ static void intel_read_dp_vsc_sdp(struct intel_encoder *encoder,
 		drm_dbg_kms(&dev_priv->drm, "Failed to unpack DP VSC SDP\n");
 }
 
-static void intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encoder,
-						     struct intel_crtc_state *crtc_state,
-						     struct hdmi_drm_infoframe *drm_infoframe)
+static void
+intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encoder,
+					 struct intel_crtc_state *crtc_state,
+					 struct hdmi_drm_infoframe *drm_infoframe)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
@@ -4495,7 +4599,7 @@ static void intel_read_dp_hdr_metadata_infoframe_sdp(struct intel_encoder *encod
 	int ret;
 
 	if ((crtc_state->infoframes.enable &
-	    intel_hdmi_infoframe_enable(type)) == 0)
+	     intel_hdmi_infoframe_enable(type)) == 0)
 		return;
 
 	dig_port->read_infoframe(encoder, crtc_state, type, &sdp,
@@ -4522,6 +4626,10 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
 		intel_read_dp_hdr_metadata_infoframe_sdp(encoder, crtc_state,
 							 &crtc_state->infoframes.drm.drm);
 		break;
+	case DP_SDP_ADAPTIVE_SYNC:
+		intel_read_dp_as_metadata_infoframe_sdp(encoder, crtc_state,
+							&crtc_state->infoframes.async);
+	break;
 	default:
 		MISSING_CASE(type);
 		break;
-- 
2.25.1

