Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D3D3EB130
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C640F6E55E;
	Fri, 13 Aug 2021 07:14:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7FE6E558
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 07:14:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="215509540"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="215509540"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:14:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="571727818"
Received: from linux-z370-aorus-gaming-5.iind.intel.com ([10.223.34.160])
 by orsmga004.jf.intel.com with ESMTP; 13 Aug 2021 00:14:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Date: Fri, 13 Aug 2021 12:31:21 +0530
Message-Id: <20210813070121.48530-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
References: <20210813070121.48530-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/drm_edid: Avoid HDMI2.1 VICs in
 AVIInfoframe for older HDMI sinks
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

Modify the check for CEA modes, to avoid writing VICs added in
CEA-861-G (meant for HDMI2.1) in AVI infoframes for older HDMI sinks.

This patch also adds a function to determine if sink is HDMI2.1
and uses corrects the drm message to show HDMI2.1 sink detetction.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 28 ++++++++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 6325877c5fd6..0e7da78c842f 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4915,10 +4915,12 @@ static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
 		u8 dsc_max_slices;
 		struct drm_hdmi_dsc_cap *hdmi_dsc = &hdmi->dsc_cap;
 
-		DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");
 		max_frl_rate = (hf_vsdb[7] & DRM_EDID_MAX_FRL_RATE_MASK) >> 4;
 		drm_get_max_frl_rate(max_frl_rate, &hdmi->max_lanes,
 				     &hdmi->max_frl_rate_per_lane);
+		if (max_frl_rate)
+			DRM_DEBUG_KMS("hdmi_21 sink detected. parsing edid\n");
+
 		hdmi_dsc->v_1p2 = hf_vsdb[11] & DRM_EDID_DSC_1P2;
 
 		if (hdmi_dsc->v_1p2) {
@@ -5490,6 +5492,18 @@ void drm_set_preferred_mode(struct drm_connector *connector,
 }
 EXPORT_SYMBOL(drm_set_preferred_mode);
 
+static bool is_hdmi21_sink(const struct drm_connector *connector)
+{
+	/*
+	 * FIXME: sil-sii8620 doesn't have a connector around when
+	 * we need one, so we have to be prepared for a NULL connector.
+	 */
+	if (!connector)
+		return true;
+
+	return connector->display_info.hdmi.max_frl_rate_per_lane ? true : false;
+}
+
 static bool is_hdmi2_sink(const struct drm_connector *connector)
 {
 	/*
@@ -5611,8 +5625,18 @@ static u8 drm_mode_cea_vic(const struct drm_connector *connector,
 	 * HDMI 1.4 VIC range: 1 <= VIC <= 64 (CEA-861-D) but
 	 * HDMI 2.0 VIC range: 1 <= VIC <= 107 (CEA-861-F). So we
 	 * have to make sure we dont break HDMI 1.4 sinks.
+	 * Similarly,
+	 * HDMI 2.1 VIC range: 1 <= VIC <= 219 (CEA-861-G), we have
+	 * to make sure we dont break HDMI2.0 sinks.
 	 */
-	if (!is_hdmi2_sink(connector) && vic > 64)
+
+	if (!is_hdmi21_sink(connector) && !is_hdmi2_sink(connector) && vic > 64)
+		return 0;
+
+	if (!is_hdmi21_sink(connector) && vic > 107)
+		return 0;
+
+	if (vic > 219)
 		return 0;
 
 	return vic;
-- 
2.25.1

