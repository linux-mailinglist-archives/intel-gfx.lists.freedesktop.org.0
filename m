Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C071E2D2516
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 08:58:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6243F6E952;
	Tue,  8 Dec 2020 07:58:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1FF16E951;
 Tue,  8 Dec 2020 07:58:07 +0000 (UTC)
IronPort-SDR: A6QYKfDlor8pcFQQbWIZhT3iKLpHJda/TO3D7zPWn3Di47rhYZbdDgFc/Qj0GFvW2nQuYsdFId
 mBo++0YTs55w==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="235448642"
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="235448642"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 23:58:07 -0800
IronPort-SDR: MQ+s4+TDGqeSm7oeJGXRfYu5BWzevutWX/Ch7I/bZOVQzzfXOUSI6DvJgPNusfZfD2FYWysgnC
 kO3ftKY9az3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,401,1599548400"; d="scan'208";a="317686442"
Received: from linux-akn.iind.intel.com ([10.223.34.148])
 by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2020 23:58:05 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Dec 2020 13:21:31 +0530
Message-Id: <20201208075145.17389-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201208075145.17389-1-ankit.k.nautiyal@intel.com>
References: <20201208075145.17389-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] [PATCH v4 02/16] drm/edid: Parse MAX_FRL field from
 HFVSDB block
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
Cc: airlied@linux.ie, dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Swati Sharma <swati2.sharma@intel.com>

This patch parses MAX_FRL field to get the MAX rate in Gbps that
the HDMI 2.1 panel can support in FRL mode. Source need this
field to determine the optimal rate between the source and sink
during FRL training.

v2: Fixed minor bugs, and removed extra wrapper function (Uma Shankar)

Signed-off-by: Sharma, Swati2 <swati2.sharma@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/drm_edid.c  | 44 +++++++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h |  6 +++++
 2 files changed, 50 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 74f5a3197214..e657c321d9e4 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4851,6 +4851,41 @@ static void drm_parse_vcdb(struct drm_connector *connector, const u8 *db)
 		info->rgb_quant_range_selectable = true;
 }
 
+static
+void drm_get_max_frl_rate(int max_frl_rate, u8 *max_lanes, u8 *max_rate_per_lane)
+{
+	switch (max_frl_rate) {
+	case 1:
+		*max_lanes = 3;
+		*max_rate_per_lane = 3;
+		break;
+	case 2:
+		*max_lanes = 3;
+		*max_rate_per_lane = 6;
+		break;
+	case 3:
+		*max_lanes = 4;
+		*max_rate_per_lane = 6;
+		break;
+	case 4:
+		*max_lanes = 4;
+		*max_rate_per_lane = 8;
+		break;
+	case 5:
+		*max_lanes = 4;
+		*max_rate_per_lane = 10;
+		break;
+	case 6:
+		*max_lanes = 4;
+		*max_rate_per_lane = 12;
+		break;
+	case 0:
+	default:
+		*max_lanes = 0;
+		*max_rate_per_lane = 0;
+	}
+}
+
 static void drm_parse_ycbcr420_deep_color_info(struct drm_connector *connector,
 					       const u8 *db)
 {
@@ -4904,6 +4939,15 @@ static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
 		}
 	}
 
+	if (hf_vsdb[7]) {
+		u8 max_frl_rate;
+
+		DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");
+		max_frl_rate = (hf_vsdb[7] & DRM_EDID_MAX_FRL_RATE_MASK) >> 4;
+		drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
+				&hdmi->max_frl_rate_per_lane);
+	}
+
 	drm_parse_ycbcr420_deep_color_info(connector, hf_vsdb);
 }
 
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index fcdc58d8b88b..1a3b4776b458 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -207,6 +207,12 @@ struct drm_hdmi_info {
 
 	/** @y420_dc_modes: bitmap of deep color support index */
 	u8 y420_dc_modes;
+
+	/** @max_frl_rate_per_lane: support fixed rate link */
+	u8 max_frl_rate_per_lane;
+
+	/** @max_lanes: supported by sink */
+	u8 max_lanes;
 };
 
 /**
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
