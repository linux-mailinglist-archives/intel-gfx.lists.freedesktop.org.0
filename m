Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C089458F725
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 07:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DF662BE7E;
	Thu, 11 Aug 2022 05:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0DB893D62
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 05:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660194028; x=1691730028;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oOi+mk6H8Y1FlCwv93wecQNG/a7hue8NDHBfaNjaCjg=;
 b=C3/khKycu/By2PM9sMfPyvALfUWqfMjls1fQv/5Cteemype1GDWqFQ3o
 Av9apbsEWoD5EVlYPbAlm9Oxx/qaAHPi6y0frtDCil5nPE5Tby1NqKkkl
 Cfm2v8EFD7Dn3AVVBzqCDU+H+8opCvqGVeFK3jOPbR1Rvk9fMUBSQAFYB
 6Fk8myizQ92Cj9MtoZVZzO/oEz1hyZeeKrGQ4wZ217WJxeQeO0++FAXjx
 G3yd/S+fOXv28RgI3LiLf2K4R1qkvZfANV60ZkZwqwOhjbSWLwFc3+eAH
 Fv9PwlAR0QrVKHwIq+veRPs8eH7aBtV6Ml2q7D1H/hu/j0Avm2TzB5ps/ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="291257749"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="291257749"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 22:00:22 -0700
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="673553178"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 22:00:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 10:29:43 +0530
Message-Id: <20220811045945.2113431-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220811045945.2113431-1-ankit.k.nautiyal@intel.com>
References: <20220811045945.2113431-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/edid: Split DSC parsing into separate
 function
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
Cc: maarten.lankhorst@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the DSC parsing logic into separate function.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 128 ++++++++++++++++++++-----------------
 1 file changed, 69 insertions(+), 59 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index cdf10279e1bd..ffff1d08b3a4 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5703,6 +5703,73 @@ static void drm_parse_ycbcr420_deep_color_info(struct drm_connector *connector,
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
+		/* Supports min 8 BPC if DSC1.2 is supported*/
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
@@ -5749,71 +5816,14 @@ static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
 
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
-				/* Supports min 8 BPC if DSC1.2 is supported*/
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

