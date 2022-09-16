Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 231A15BA9F8
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 12:06:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 366DB10E187;
	Fri, 16 Sep 2022 10:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B34E410E365;
 Fri, 16 Sep 2022 10:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663322764; x=1694858764;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mjxi7pevOOXcv2FMT5KFEtQJppk9mz5qkJThWTpaYcI=;
 b=UAhj3FoHxLyC/WErjSdijek2MzWJXeZTXIlopozt5Gphr6iv9RU45f8h
 XnH8ojubZBwG5yPl9VzuKtpyIyYwdwiOcP31s0Juhw8mficO0ATKFjGsm
 +MmGSdGWFRUGNC6vh4O97+RVRkXE0JaRGUjeeRYGoBMPhmQnznq1p7BGS
 TxrQRSM2H0HhLzTEGVAIdABqp7sAzdwhac4P0n5M0XY/dWEBXUohJ9g2n
 crWnVaZTGTcTge16kKRQP2J0UpbJ6nHpNMHCWdjjSkMyEtx+r4/D9LkPg
 XHBUb/fjMujpddER5bjPTFBbJMdP37UyxOu6NKhcwt5WAjRKFyYwoP41M g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="360698700"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="360698700"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 03:06:04 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="793051712"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 03:06:01 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri, 16 Sep 2022 15:35:50 +0530
Message-Id: <20220916100551.2531750-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220916100551.2531750-1-ankit.k.nautiyal@intel.com>
References: <20220916100551.2531750-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/edid: Refactor HFVSDB parsing for
 DSC1.2
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

DSC capabilities are given in bytes 11-13 of VSDB (i.e. bytes 8-10 of
SCDS). Since minimum length of Data block is 7, all bytes greater than 7
must be read only after checking the length of the data block.

This patch adds check for data block length before reading relavant DSC
bytes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 93 ++++++++++++++++++++------------------
 1 file changed, 49 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 92c9c2e28902..27bdbdf6d345 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5755,9 +5755,6 @@ static void drm_parse_ycbcr420_deep_color_info(struct drm_connector *connector,
 static void drm_parse_dsc_info(struct drm_hdmi_dsc_cap *hdmi_dsc,
 			       const u8 *hf_scds)
 {
-	u8 dsc_max_slices;
-	u8 dsc_max_frl_rate;
-
 	hdmi_dsc->v_1p2 = hf_scds[11] & DRM_EDID_DSC_1P2;
 
 	if (!hdmi_dsc->v_1p2)
@@ -5776,47 +5773,54 @@ static void drm_parse_dsc_info(struct drm_hdmi_dsc_cap *hdmi_dsc,
 		/* Supports min 8 BPC if DSC 1.2 is supported*/
 		hdmi_dsc->bpc_supported = 8;
 
-	dsc_max_frl_rate = (hf_scds[12] & DRM_EDID_DSC_MAX_FRL_RATE_MASK) >> 4;
-	drm_get_max_frl_rate(dsc_max_frl_rate, &hdmi_dsc->max_lanes,
-			     &hdmi_dsc->max_frl_rate_per_lane);
-	hdmi_dsc->total_chunk_kbytes = hf_scds[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;
+	if (cea_db_payload_len(hf_scds) >= 12 && hf_scds[12]) {
+		u8 dsc_max_slices;
+		u8 dsc_max_frl_rate;
 
-	dsc_max_slices = hf_scds[12] & DRM_EDID_DSC_MAX_SLICES;
+		dsc_max_frl_rate = (hf_scds[12] & DRM_EDID_DSC_MAX_FRL_RATE_MASK) >> 4;
+		drm_get_max_frl_rate(dsc_max_frl_rate, &hdmi_dsc->max_lanes,
+				     &hdmi_dsc->max_frl_rate_per_lane);
 
-	switch (dsc_max_slices) {
-	case 1:
-		hdmi_dsc->max_slices = 1;
-		hdmi_dsc->clk_per_slice = 340;
-		break;
-	case 2:
-		hdmi_dsc->max_slices = 2;
-		hdmi_dsc->clk_per_slice = 340;
-		break;
-	case 3:
-		hdmi_dsc->max_slices = 4;
-		hdmi_dsc->clk_per_slice = 340;
-		break;
-	case 4:
-		hdmi_dsc->max_slices = 8;
-		hdmi_dsc->clk_per_slice = 340;
-		break;
-	case 5:
-		hdmi_dsc->max_slices = 8;
-		hdmi_dsc->clk_per_slice = 400;
-		break;
-	case 6:
-		hdmi_dsc->max_slices = 12;
-		hdmi_dsc->clk_per_slice = 400;
-		break;
-	case 7:
-		hdmi_dsc->max_slices = 16;
-		hdmi_dsc->clk_per_slice = 400;
-		break;
-	case 0:
-	default:
-		hdmi_dsc->max_slices = 0;
-		hdmi_dsc->clk_per_slice = 0;
+		dsc_max_slices = hf_scds[12] & DRM_EDID_DSC_MAX_SLICES;
+
+		switch (dsc_max_slices) {
+		case 1:
+			hdmi_dsc->max_slices = 1;
+			hdmi_dsc->clk_per_slice = 340;
+			break;
+		case 2:
+			hdmi_dsc->max_slices = 2;
+			hdmi_dsc->clk_per_slice = 340;
+			break;
+		case 3:
+			hdmi_dsc->max_slices = 4;
+			hdmi_dsc->clk_per_slice = 340;
+			break;
+		case 4:
+			hdmi_dsc->max_slices = 8;
+			hdmi_dsc->clk_per_slice = 340;
+			break;
+		case 5:
+			hdmi_dsc->max_slices = 8;
+			hdmi_dsc->clk_per_slice = 400;
+			break;
+		case 6:
+			hdmi_dsc->max_slices = 12;
+			hdmi_dsc->clk_per_slice = 400;
+			break;
+		case 7:
+			hdmi_dsc->max_slices = 16;
+			hdmi_dsc->clk_per_slice = 400;
+			break;
+		case 0:
+		default:
+			hdmi_dsc->max_slices = 0;
+			hdmi_dsc->clk_per_slice = 0;
+		}
 	}
+
+	if (cea_db_payload_len(hf_scds) >= 13 && hf_scds[13])
+		hdmi_dsc->total_chunk_kbytes = hf_scds[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;
 }
 
 /* Sink Capability Data Structure */
@@ -5825,6 +5829,7 @@ static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
 {
 	struct drm_display_info *display = &connector->display_info;
 	struct drm_hdmi_info *hdmi = &display->hdmi;
+	struct drm_hdmi_dsc_cap *hdmi_dsc = &hdmi->dsc_cap;
 
 	display->has_hdmi_infoframe = true;
 
@@ -5865,17 +5870,17 @@ static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
 
 	if (hf_scds[7]) {
 		u8 max_frl_rate;
-		struct drm_hdmi_dsc_cap *hdmi_dsc = &hdmi->dsc_cap;
 
 		DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");
 		max_frl_rate = (hf_scds[7] & DRM_EDID_MAX_FRL_RATE_MASK) >> 4;
 		drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
 				     &hdmi->max_frl_rate_per_lane);
-
-		drm_parse_dsc_info(hdmi_dsc, hf_scds);
 	}
 
 	drm_parse_ycbcr420_deep_color_info(connector, hf_scds);
+
+	if (cea_db_payload_len(hf_scds) >= 11 && hf_scds[11])
+		drm_parse_dsc_info(hdmi_dsc, hf_scds);
 }
 
 static void drm_parse_hdmi_deep_color_info(struct drm_connector *connector,
-- 
2.25.1

