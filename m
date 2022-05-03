Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43B4A5180F2
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEEAB10F820;
	Tue,  3 May 2022 09:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F3C910F820
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569917; x=1683105917;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7NUj/EFOgniRQU4cZisQxidvpGg/TJt1HfG+9cEHmcs=;
 b=NJINbJUyiRNhBiVEiptorKMOmKDVsvsSdhoj/aRLy7gnuyLvhZy2+G98
 M3fG9aIb5H/z/VWkLM0CFuPkLnIlcDUZXzqipRL/U9JdAlTMXYFPF8W+6
 cIFaWNKryW/pvp9dO1zUzhKGD1u2Lbdths9YirGhRmfIRpyRV4LbmoXzv
 8LtEIVtSD1jXTAt2HmnK+BDtyb+Aqo1bXOzO0ThQciKwC+viLR/it+HXb
 OOhwube/A2SaK8KkEBcS4sQuQrfnhq5MJ3VaOR9wr0r1nN1SPQKXSkQeZ
 LCaAzp8JkzeZ9A+HhUnS1uhc27svpLMP+kZWepYrSwMBvxTMu3A3yde36 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="247343731"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="247343731"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:16 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="653195272"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:58 +0300
Message-Id: <7400792525c13f58652f288b891d6057637ed4c8.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/20] drm/edid: convert drm_parse_cea_ext()
 to use cea db iter
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

Iterate through all CTA data blocks across all CTA Extensions and
DisplayID data blocks.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 3433d9fa4799..98b2e6164468 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5497,8 +5497,9 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
 			      const struct edid *edid)
 {
 	struct drm_display_info *info = &connector->display_info;
+	const struct cea_db *db;
+	struct cea_db_iter iter;
 	const u8 *edid_ext;
-	int i, start, end;
 
 	edid_ext = drm_find_cea_extension(edid);
 	if (!edid_ext)
@@ -5517,26 +5518,26 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
 			info->color_formats |= DRM_COLOR_FORMAT_YCBCR422;
 	}
 
-	if (cea_db_offsets(edid_ext, &start, &end))
-		return;
-
-	for_each_cea_db(edid_ext, i, start, end) {
-		const u8 *db = &edid_ext[i];
+	cea_db_iter_edid_begin(edid, &iter);
+	cea_db_iter_for_each(db, &iter) {
+		/* FIXME: convert parsers to use struct cea_db */
+		const u8 *data = (const u8 *)db;
 
 		if (cea_db_is_hdmi_vsdb(db))
-			drm_parse_hdmi_vsdb_video(connector, db);
+			drm_parse_hdmi_vsdb_video(connector, data);
 		if (cea_db_is_hdmi_forum_vsdb(db) ||
 		    cea_db_is_hdmi_forum_scdb(db))
-			drm_parse_hdmi_forum_scds(connector, db);
+			drm_parse_hdmi_forum_scds(connector, data);
 		if (cea_db_is_microsoft_vsdb(db))
-			drm_parse_microsoft_vsdb(connector, db);
+			drm_parse_microsoft_vsdb(connector, data);
 		if (cea_db_is_y420cmdb(db))
-			drm_parse_y420cmdb_bitmap(connector, db);
+			drm_parse_y420cmdb_bitmap(connector, data);
 		if (cea_db_is_vcdb(db))
-			drm_parse_vcdb(connector, db);
+			drm_parse_vcdb(connector, data);
 		if (cea_db_is_hdmi_hdr_metadata_block(db))
-			drm_parse_hdr_metadata_block(connector, db);
+			drm_parse_hdr_metadata_block(connector, data);
 	}
+	cea_db_iter_end(&iter);
 }
 
 static
-- 
2.30.2

