Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5398D5BA9F1
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 12:06:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8C7010E3D4;
	Fri, 16 Sep 2022 10:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED1C010E24E;
 Fri, 16 Sep 2022 10:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663322760; x=1694858760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VccWz83HHIB7Ns+wwUTr+AIuVKupF9I7PaBBE74b7bM=;
 b=FTgeidZaCzCyDIUH5A6ju4pB9b3WETsmr7M3/uJw965MtYLEpVz+O2E0
 mkyp0jrtXBfga/+s5DhDCBxUqOK+ezr9R1Uj24drL86dK/hJTvlG+Eb1d
 xkQQz7X0XgnhK0ZbG0yyAVUKhOm0RCjRsplJXEoGck1+4eBSfCQh7rAM9
 A0KxhEE1DTzewq2WXs9ODG2u9AKsljQ9hunMHNot3IIpDdstcse1OqmkU
 NaUT1Tb1QbUCjPeVzevM/ZhYQzpfFrCbG8YlWx3Ut8j8QZVag8a/5yebb
 JOU1AJ2ACmXt1Jr9c3rlvjks0eYC/vWW1QqlwC0nscoOBbCphs3NERc7V g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="360698690"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="360698690"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 03:06:00 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="793051701"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 03:05:58 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 16 Sep 2022 15:35:49 +0530
Message-Id: <20220916100551.2531750-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220916100551.2531750-1-ankit.k.nautiyal@intel.com>
References: <20220916100551.2531750-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm/edid: Split DSC parsing into
 separate function
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
Cc: intel-gfx@lists.freedesktop.org, maarten.lankhorst@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the DSC parsing logic into separate function.

v2: Rebase.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 128 ++++++++++++++++++++-----------------
 1 file changed, 69 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index ebe02cf7cd95..92c9c2e28902 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5752,6 +5752,73 @@ static void drm_parse_ycbcr420_deep_color_info(struct drm_connector *connector,
 	hdmi->y420_dc_modes = dc_mask;
 }
 
+static void drm_parse_dsc_info(struct drm_hdmi_dsc_cap *hdmi_dsc,
+			       const u8 *hf_scds)
+{
+	u8 dsc_max_slices;
+	u8 dsc_max_frl_rate;
+
+	hdmi_dsc->v_1p2 = hf_scds[11] & DRM_EDID_DSC_1P2;
+
+	if (!hdmi_dsc->v_1p2)
+		return;
+
+	hdmi_dsc->native_420 = hf_scds[11] & DRM_EDID_DSC_NATIVE_420;
+	hdmi_dsc->all_bpp = hf_scds[11] & DRM_EDID_DSC_ALL_BPP;
+
+	if (hf_scds[11] & DRM_EDID_DSC_16BPC)
+		hdmi_dsc->bpc_supported = 16;
+	else if (hf_scds[11] & DRM_EDID_DSC_12BPC)
+		hdmi_dsc->bpc_supported = 12;
+	else if (hf_scds[11] & DRM_EDID_DSC_10BPC)
+		hdmi_dsc->bpc_supported = 10;
+	else
+		/* Supports min 8 BPC if DSC 1.2 is supported*/
+		hdmi_dsc->bpc_supported = 8;
+
+	dsc_max_frl_rate = (hf_scds[12] & DRM_EDID_DSC_MAX_FRL_RATE_MASK) >> 4;
+	drm_get_max_frl_rate(dsc_max_frl_rate, &hdmi_dsc->max_lanes,
+			     &hdmi_dsc->max_frl_rate_per_lane);
+	hdmi_dsc->total_chunk_kbytes = hf_scds[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;
+
+	dsc_max_slices = hf_scds[12] & DRM_EDID_DSC_MAX_SLICES;
+
+	switch (dsc_max_slices) {
+	case 1:
+		hdmi_dsc->max_slices = 1;
+		hdmi_dsc->clk_per_slice = 340;
+		break;
+	case 2:
+		hdmi_dsc->max_slices = 2;
+		hdmi_dsc->clk_per_slice = 340;
+		break;
+	case 3:
+		hdmi_dsc->max_slices = 4;
+		hdmi_dsc->clk_per_slice = 340;
+		break;
+	case 4:
+		hdmi_dsc->max_slices = 8;
+		hdmi_dsc->clk_per_slice = 340;
+		break;
+	case 5:
+		hdmi_dsc->max_slices = 8;
+		hdmi_dsc->clk_per_slice = 400;
+		break;
+	case 6:
+		hdmi_dsc->max_slices = 12;
+		hdmi_dsc->clk_per_slice = 400;
+		break;
+	case 7:
+		hdmi_dsc->max_slices = 16;
+		hdmi_dsc->clk_per_slice = 400;
+		break;
+	case 0:
+	default:
+		hdmi_dsc->max_slices = 0;
+		hdmi_dsc->clk_per_slice = 0;
+	}
+}
+
 /* Sink Capability Data Structure */
 static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
 				      const u8 *hf_scds)
@@ -5798,71 +5865,14 @@ static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
 
 	if (hf_scds[7]) {
 		u8 max_frl_rate;
-		u8 dsc_max_frl_rate;
-		u8 dsc_max_slices;
 		struct drm_hdmi_dsc_cap *hdmi_dsc = &hdmi->dsc_cap;
 
 		DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");
 		max_frl_rate = (hf_scds[7] & DRM_EDID_MAX_FRL_RATE_MASK) >> 4;
 		drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
 				     &hdmi->max_frl_rate_per_lane);
-		hdmi_dsc->v_1p2 = hf_scds[11] & DRM_EDID_DSC_1P2;
-
-		if (hdmi_dsc->v_1p2) {
-			hdmi_dsc->native_420 = hf_scds[11] & DRM_EDID_DSC_NATIVE_420;
-			hdmi_dsc->all_bpp = hf_scds[11] & DRM_EDID_DSC_ALL_BPP;
-
-			if (hf_scds[11] & DRM_EDID_DSC_16BPC)
-				hdmi_dsc->bpc_supported = 16;
-			else if (hf_scds[11] & DRM_EDID_DSC_12BPC)
-				hdmi_dsc->bpc_supported = 12;
-			else if (hf_scds[11] & DRM_EDID_DSC_10BPC)
-				hdmi_dsc->bpc_supported = 10;
-			else
-				/* Supports min 8 BPC if DSC 1.2 is supported*/
-				hdmi_dsc->bpc_supported = 8;
-
-			dsc_max_frl_rate = (hf_scds[12] & DRM_EDID_DSC_MAX_FRL_RATE_MASK) >> 4;
-			drm_get_max_frl_rate(dsc_max_frl_rate, &hdmi_dsc->max_lanes,
-					     &hdmi_dsc->max_frl_rate_per_lane);
-			hdmi_dsc->total_chunk_kbytes = hf_scds[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;
-
-			dsc_max_slices = hf_scds[12] & DRM_EDID_DSC_MAX_SLICES;
-			switch (dsc_max_slices) {
-			case 1:
-				hdmi_dsc->max_slices = 1;
-				hdmi_dsc->clk_per_slice = 340;
-				break;
-			case 2:
-				hdmi_dsc->max_slices = 2;
-				hdmi_dsc->clk_per_slice = 340;
-				break;
-			case 3:
-				hdmi_dsc->max_slices = 4;
-				hdmi_dsc->clk_per_slice = 340;
-				break;
-			case 4:
-				hdmi_dsc->max_slices = 8;
-				hdmi_dsc->clk_per_slice = 340;
-				break;
-			case 5:
-				hdmi_dsc->max_slices = 8;
-				hdmi_dsc->clk_per_slice = 400;
-				break;
-			case 6:
-				hdmi_dsc->max_slices = 12;
-				hdmi_dsc->clk_per_slice = 400;
-				break;
-			case 7:
-				hdmi_dsc->max_slices = 16;
-				hdmi_dsc->clk_per_slice = 400;
-				break;
-			case 0:
-			default:
-				hdmi_dsc->max_slices = 0;
-				hdmi_dsc->clk_per_slice = 0;
-			}
-		}
+
+		drm_parse_dsc_info(hdmi_dsc, hf_scds);
 	}
 
 	drm_parse_ycbcr420_deep_color_info(connector, hf_scds);
-- 
2.25.1

