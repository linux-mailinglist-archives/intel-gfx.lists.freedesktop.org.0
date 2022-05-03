Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7EC5180E8
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:24:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 487B510F80E;
	Tue,  3 May 2022 09:24:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0555510F801
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569868; x=1683105868;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lvUw1Hh2vQ6dsMjuG+wQ2IAdw7a+lYY1OgOVzIHZ51g=;
 b=NQ1afjPeJNbOw134bEjVOlZdkwgOwWxGxYuPeNT+999VIlRw6AzxxYxH
 OagrnI6swIQy9iDsRTaD9nqfzx0Ix6Ti4fUeymWc4+7RFOdLwNbaXuddy
 wHPzV0rQl7YbOsEuwR+/fFFFCUOx38Is5xd6donaWdkxP06TP/2G6R1wP
 XPMQqJxM+Q8mrJslTxFoGpcdMzC/bwIFAe0JGWeyQWXpZegThhWkrkaaQ
 73uOODIva1qtS53r7jURWk3z2QgYCwUK9jfye4Yvt+S0IfBhf7RLyPbdu
 6Oe3xBkbpr6pr1O+Dz3NR3XrBYKmbvJGwYViJfkwVwqDlCl9KbdyuQvNE Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="249415504"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="249415504"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:27 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="733842835"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:48 +0300
Message-Id: <f8230e1893400e9a9c5829041a8ab36349182a54.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/20] drm/edid: rename HDMI Forum VSDB to
 SCDS
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The HDMI spec talks about SCDS, Sink Capability Data Structure, exposed
via HF-VSDB or HF-SCDB. Rename VSDB to SCDS.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 41 +++++++++++++++++++-------------------
 1 file changed, 21 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index fe527a0c50bc..18d05cbb2124 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5132,17 +5132,18 @@ static void drm_parse_ycbcr420_deep_color_info(struct drm_connector *connector,
 	hdmi->y420_dc_modes = dc_mask;
 }
 
-static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
-				 const u8 *hf_vsdb)
+/* Sink Capability Data Structure */
+static void drm_parse_hdmi_forum_scds(struct drm_connector *connector,
+				      const u8 *hf_scds)
 {
 	struct drm_display_info *display = &connector->display_info;
 	struct drm_hdmi_info *hdmi = &display->hdmi;
 
 	display->has_hdmi_infoframe = true;
 
-	if (hf_vsdb[6] & 0x80) {
+	if (hf_scds[6] & 0x80) {
 		hdmi->scdc.supported = true;
-		if (hf_vsdb[6] & 0x40)
+		if (hf_scds[6] & 0x40)
 			hdmi->scdc.read_request = true;
 	}
 
@@ -5155,9 +5156,9 @@ static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
 	 * Lets check it out.
 	 */
 
-	if (hf_vsdb[5]) {
+	if (hf_scds[5]) {
 		/* max clock is 5000 KHz times block value */
-		u32 max_tmds_clock = hf_vsdb[5] * 5000;
+		u32 max_tmds_clock = hf_scds[5] * 5000;
 		struct drm_scdc *scdc = &hdmi->scdc;
 
 		if (max_tmds_clock > 340000) {
@@ -5170,42 +5171,42 @@ static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
 			scdc->scrambling.supported = true;
 
 			/* Few sinks support scrambling for clocks < 340M */
-			if ((hf_vsdb[6] & 0x8))
+			if ((hf_scds[6] & 0x8))
 				scdc->scrambling.low_rates = true;
 		}
 	}
 
-	if (hf_vsdb[7]) {
+	if (hf_scds[7]) {
 		u8 max_frl_rate;
 		u8 dsc_max_frl_rate;
 		u8 dsc_max_slices;
 		struct drm_hdmi_dsc_cap *hdmi_dsc = &hdmi->dsc_cap;
 
 		DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");
-		max_frl_rate = (hf_vsdb[7] & DRM_EDID_MAX_FRL_RATE_MASK) >> 4;
+		max_frl_rate = (hf_scds[7] & DRM_EDID_MAX_FRL_RATE_MASK) >> 4;
 		drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
 				     &hdmi->max_frl_rate_per_lane);
-		hdmi_dsc->v_1p2 = hf_vsdb[11] & DRM_EDID_DSC_1P2;
+		hdmi_dsc->v_1p2 = hf_scds[11] & DRM_EDID_DSC_1P2;
 
 		if (hdmi_dsc->v_1p2) {
-			hdmi_dsc->native_420 = hf_vsdb[11] & DRM_EDID_DSC_NATIVE_420;
-			hdmi_dsc->all_bpp = hf_vsdb[11] & DRM_EDID_DSC_ALL_BPP;
+			hdmi_dsc->native_420 = hf_scds[11] & DRM_EDID_DSC_NATIVE_420;
+			hdmi_dsc->all_bpp = hf_scds[11] & DRM_EDID_DSC_ALL_BPP;
 
-			if (hf_vsdb[11] & DRM_EDID_DSC_16BPC)
+			if (hf_scds[11] & DRM_EDID_DSC_16BPC)
 				hdmi_dsc->bpc_supported = 16;
-			else if (hf_vsdb[11] & DRM_EDID_DSC_12BPC)
+			else if (hf_scds[11] & DRM_EDID_DSC_12BPC)
 				hdmi_dsc->bpc_supported = 12;
-			else if (hf_vsdb[11] & DRM_EDID_DSC_10BPC)
+			else if (hf_scds[11] & DRM_EDID_DSC_10BPC)
 				hdmi_dsc->bpc_supported = 10;
 			else
 				hdmi_dsc->bpc_supported = 0;
 
-			dsc_max_frl_rate = (hf_vsdb[12] & DRM_EDID_DSC_MAX_FRL_RATE_MASK) >> 4;
+			dsc_max_frl_rate = (hf_scds[12] & DRM_EDID_DSC_MAX_FRL_RATE_MASK) >> 4;
 			drm_get_max_frl_rate(dsc_max_frl_rate, &hdmi_dsc->max_lanes,
 					     &hdmi_dsc->max_frl_rate_per_lane);
-			hdmi_dsc->total_chunk_kbytes = hf_vsdb[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;
+			hdmi_dsc->total_chunk_kbytes = hf_scds[13] & DRM_EDID_DSC_TOTAL_CHUNK_KBYTES;
 
-			dsc_max_slices = hf_vsdb[12] & DRM_EDID_DSC_MAX_SLICES;
+			dsc_max_slices = hf_scds[12] & DRM_EDID_DSC_MAX_SLICES;
 			switch (dsc_max_slices) {
 			case 1:
 				hdmi_dsc->max_slices = 1;
@@ -5243,7 +5244,7 @@ static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
 		}
 	}
 
-	drm_parse_ycbcr420_deep_color_info(connector, hf_vsdb);
+	drm_parse_ycbcr420_deep_color_info(connector, hf_scds);
 }
 
 static void drm_parse_hdmi_deep_color_info(struct drm_connector *connector,
@@ -5380,7 +5381,7 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
 			drm_parse_hdmi_vsdb_video(connector, db);
 		if (cea_db_is_hdmi_forum_vsdb(db) ||
 		    cea_db_is_hdmi_forum_scdb(db))
-			drm_parse_hdmi_forum_vsdb(connector, db);
+			drm_parse_hdmi_forum_scds(connector, db);
 		if (cea_db_is_microsoft_vsdb(db))
 			drm_parse_microsoft_vsdb(connector, db);
 		if (cea_db_is_y420cmdb(db))
-- 
2.30.2

