Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A451961EBA8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 08:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D39D410E1F3;
	Mon,  7 Nov 2022 07:20:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF0B910E0B7;
 Mon,  7 Nov 2022 07:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667805612; x=1699341612;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LZZES9SxIbnZY22Oa2AuSBYCrPrwcPc/TylqpBdUn6U=;
 b=UGU7jU6JlcSIZT96shFdSiDk9sda5PT9atCF1h/7dwGkbeUgwkDfL4v1
 twEgyMqCLAetW0pIPvvxkZ7l8Zbne7Bmr/MFAHJfp2wnHfydrFrXTEILu
 Y7g9knjlL6kdOAE4B3cbC8sbzHWOL/d9wq/WnkEBp5Fk9NURFERbor47g
 b3/Xn8IgLwtrjj42AF5wdwOUcKoOojaxzX//ODsKmZaKq6BE4S6lHUYdu
 /fVw5NgPyCr3Kdelj5cxfy8wOdboChBy45p7gPO714C+fOfPnOplhn4NX
 MUSghda8dwI75dFrDDulqp21oskGrFBF/WQyVOX6gdlad48uLp+zy/HGn A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="372463321"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="372463321"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:20:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10523"; a="704767228"
X-IronPort-AV: E=Sophos;i="5.96,143,1665471600"; d="scan'208";a="704767228"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2022 23:20:09 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 12:50:31 +0530
Message-Id: <20221107072045.628895-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221107072045.628895-1-ankit.k.nautiyal@intel.com>
References: <20221107072045.628895-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 01/15] drm/edid: Add helper to get max FRL rate
 for an HDMI sink
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

Add the helpers for getting the max FRL rate with and without DSC
for an HDMI sink.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 38 ++++++++++++++++++++++++++++++++++++++
 include/drm/drm_edid.h     |  2 ++
 2 files changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index b2d61c05f559..5961399c31ba 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -7182,3 +7182,41 @@ static void _drm_update_tile_info(struct drm_connector *connector,
 		connector->tile_group = NULL;
 	}
 }
+
+/**
+ * drm_hdmi_sink_max_frl_rate - get the max frl rate, if supported
+ * @connector - connector with HDMI sink
+ *
+ * RETURNS:
+ * max frl rate supported by the HDMI sink, 0 if FRL not supported
+ */
+int drm_hdmi_sink_max_frl_rate(struct drm_connector *connector)
+{
+	int max_lanes = connector->display_info.hdmi.max_lanes;
+	int rate_per_lane = connector->display_info.hdmi.max_frl_rate_per_lane;
+
+	return max_lanes * rate_per_lane;
+}
+EXPORT_SYMBOL(drm_hdmi_sink_max_frl_rate);
+
+/**
+ * drm_hdmi_sink_dsc_max_frl_rate - get the max frl rate from HDMI sink with
+ * DSC1.2 compression.
+ * @connector - connector with HDMI sink
+ *
+ * RETURNS:
+ * max frl rate supported by the HDMI sink with DSC1.2, 0 if FRL not supported
+ */
+int drm_hdmi_sink_dsc_max_frl_rate(struct drm_connector *connector)
+{
+	int max_dsc_lanes, dsc_rate_per_lane;
+
+	if (!connector->display_info.hdmi.dsc_cap.v_1p2)
+		return 0;
+
+	max_dsc_lanes = connector->display_info.hdmi.dsc_cap.max_lanes;
+	dsc_rate_per_lane = connector->display_info.hdmi.dsc_cap.max_frl_rate_per_lane;
+
+	return max_dsc_lanes * dsc_rate_per_lane;
+}
+EXPORT_SYMBOL(drm_hdmi_sink_dsc_max_frl_rate);
diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index 372963600f1d..c567826eee58 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -611,5 +611,7 @@ int drm_edid_connector_update(struct drm_connector *connector,
 			      const struct drm_edid *edid);
 const u8 *drm_find_edid_extension(const struct drm_edid *drm_edid,
 				  int ext_id, int *ext_index);
+int drm_hdmi_sink_max_frl_rate(struct drm_connector *connector);
+int drm_hdmi_sink_dsc_max_frl_rate(struct drm_connector *connector);
 
 #endif /* __DRM_EDID_H__ */
-- 
2.25.1

