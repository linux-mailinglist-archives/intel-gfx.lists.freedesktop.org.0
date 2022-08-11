Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0610E58F723
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 07:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AFCD95B34;
	Thu, 11 Aug 2022 05:00:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EA9DA1148
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 05:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660194029; x=1691730029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wYpekYwgyES3XW+MkMdMUgh293oFwoIYxmBDiNT5sqQ=;
 b=kbmntxZNKi8+9eZ6LLz/kIW6ATy8ELIGQQQWeNbXn0jeBg5WatR08qyr
 qRPksew4nVkSl0ktjUS8nv8gbOXwtjzHrK6sJXyDlCUznsF5U8Lu6HUCs
 mqPV+t2eX+4wSmKP7ycZr3+Ybd8kqNhPKRFmW6QCyyz1Oeuwos29WbCUT
 aIMQ9NEMbiVIlVKXYRp7KFD+RbAG0N5njymiewRbJILmlCBYQb8zusPYb
 WUrA+3Zq2oVSEGDSkG1BPSRlgYr2jt9nsDW3G18tmRhrgId+5+qBxIQ6G
 2wbZF5hPKiPU1GVI1cX+wkG6lWJuOCKF7/FpfUBB8y53OkVqJQyliG5Ii w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="291257762"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="291257762"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 22:00:24 -0700
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="673553202"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 22:00:22 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 10:29:44 +0530
Message-Id: <20220811045945.2113431-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220811045945.2113431-1-ankit.k.nautiyal@intel.com>
References: <20220811045945.2113431-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/edid: Refactor HFVSDB parsing for DSC1.2
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

DSC capabilities are given in bytes 11-13 of VSDB (i.e. bytes 8-10 of
SCDS). Since minimum length of Data block is 7, all bytes greater than 7
must be read only after checking the length of the data block.

This patch adds check for data block length before reading relavant DSC
bytes.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 93 ++++++++++++++++++++------------------
 1 file changed, 49 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index ffff1d08b3a4..c9c3a9c8fa26 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5706,9 +5706,6 @@ static void drm_parse_ycbcr420_deep_color_info(struct drm_connector *connector,
 static void drm_parse_dsc_info(struct drm_hdmi_dsc_cap *hdmi_dsc,
 			       const u8 *hf_scds)
 {
-	u8 dsc_max_slices;
-	u8 dsc_max_frl_rate;
-
 	hdmi_dsc->v_1p2 = hf_scds[11] & DRM_EDID_DSC_1P2;
 
 	if (!hdmi_dsc->v_1p2)
@@ -5727,47 +5724,54 @@ static void drm_parse_dsc_info(struct drm_hdmi_dsc_cap *hdmi_dsc,
 		/* Supports min 8 BPC if DSC1.2 is supported*/
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
@@ -5776,6 +5780,7 @@ static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
 {
 	struct drm_display_info *display = &connector->display_info;
 	struct drm_hdmi_info *hdmi = &display->hdmi;
+	struct drm_hdmi_dsc_cap *hdmi_dsc = &hdmi->dsc_cap;
 
 	display->has_hdmi_infoframe = true;
 
@@ -5816,17 +5821,17 @@ static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
 
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

