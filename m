Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 555E958F724
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 07:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1427A116F;
	Thu, 11 Aug 2022 05:00:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2361DA1184
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 05:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660194029; x=1691730029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qnvaoTUMoOqUlGkaHukknlPyZe/BCIMzFBNHjJBktWY=;
 b=Mg/Vakt2K6dkgLP6aeCuyAY8sQkIJiKJSrnIm3cTwZ6iB1olfW1wtsPt
 xvfwg+FajSaL1YktrbF6TBZXGahVGxuWvbwNn2th8FpeOtGygcNRWpUsF
 AzG2a1ZJY+3IUPn3idWSduQsP+Qo6uDoNrcdxjAsFgo5pvm+/UxsZpNUt
 41Om8IsQX85eAFkEm/1aJkuiWvXDm/0rzgEGyAt+kkduShMUuhFu9fGnv
 35OXf8HXCBKfX1DdPW7kFoQtSPOyTOShtG+WTI+/rcqO5QCnci3JWXdFe
 R+ShILrcGJNSWK5hl0E5zwQiLgLp0jVYkl50hnMWDHz7Amr69S17ros96 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="291257765"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="291257765"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 22:00:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="673553215"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 22:00:24 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 10:29:45 +0530
Message-Id: <20220811045945.2113431-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220811045945.2113431-1-ankit.k.nautiyal@intel.com>
References: <20220811045945.2113431-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/edid: Avoid multiple log lines for
 HFVSDB parsing
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

Replace multiple log lines with a single log line at the end of
parsing HF-VSDB. Also use drm_dbg_kms instead of DRM_DBG_KMS, and
add log for DSC1.2 support.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index c9c3a9c8fa26..7a319d570297 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5781,6 +5781,9 @@ static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
 	struct drm_display_info *display = &connector->display_info;
 	struct drm_hdmi_info *hdmi = &display->hdmi;
 	struct drm_hdmi_dsc_cap *hdmi_dsc = &hdmi->dsc_cap;
+	u32 max_tmds_clock = 0;
+	u8 max_frl_rate = 0;
+	bool dsc_support = false;
 
 	display->has_hdmi_infoframe = true;
 
@@ -5800,14 +5803,13 @@ static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
 	 */
 
 	if (hf_scds[5]) {
-		/* max clock is 5000 KHz times block value */
-		u32 max_tmds_clock = hf_scds[5] * 5000;
 		struct drm_scdc *scdc = &hdmi->scdc;
 
+		/* max clock is 5000 KHz times block value */
+		max_tmds_clock = hf_scds[5] * 5000;
+
 		if (max_tmds_clock > 340000) {
 			display->max_tmds_clock = max_tmds_clock;
-			DRM_DEBUG_KMS("HF-VSDB: max TMDS clock %d kHz\n",
-				display->max_tmds_clock);
 		}
 
 		if (scdc->supported) {
@@ -5820,9 +5822,6 @@ static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
 	}
 
 	if (hf_scds[7]) {
-		u8 max_frl_rate;
-
-		DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");
 		max_frl_rate = (hf_scds[7] & DRM_EDID_MAX_FRL_RATE_MASK) >> 4;
 		drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
 				     &hdmi->max_frl_rate_per_lane);
@@ -5830,8 +5829,14 @@ static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
 
 	drm_parse_ycbcr420_deep_color_info(connector, hf_scds);
 
-	if (cea_db_payload_len(hf_scds) >= 11 && hf_scds[11])
+	if (cea_db_payload_len(hf_scds) >= 11 && hf_scds[11]) {
 		drm_parse_dsc_info(hdmi_dsc, hf_scds);
+		dsc_support = true;
+	}
+
+	drm_dbg_kms(connector->dev,
+		    "HF-VSDB: max TMDS clock:%d Khz, HDMI2.1 support:%s, DSC1.2 support:%s\n",
+		    max_tmds_clock, max_frl_rate ? "yes" : "no", dsc_support ? "yes" : "no");
 }
 
 static void drm_parse_hdmi_deep_color_info(struct drm_connector *connector,
-- 
2.25.1

