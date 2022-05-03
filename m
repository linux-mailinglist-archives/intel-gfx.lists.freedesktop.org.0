Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 708B45180ED
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:24:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7FDE10F81F;
	Tue,  3 May 2022 09:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99A8B10F81F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:24:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569892; x=1683105892;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bdbWR3RierMW/GIEpeUgICt5nB+oePfrEH0tpeU+tEU=;
 b=ldGJ+XkbxQ15bg8hsXiiFBF/gBt8+Ueg0ArREWEBF1hnNlvC7u8TYXkb
 Qeoen1NXvzTOdegiJvvPmsVAbTwx8Dm3RsLszBhG+MEQlSF7XZ1g6ZJv/
 +y5OxLdVd2wQxisFS91/sBtGsISS8dwNGesZS22tWfWqstd7jpMA9p8gp
 VlFagB9HKQQUgROFHzCCjaWUvh7mOm21o7xq7wzJIJpGTtdq9GDduvNsx
 iwPPLXdDaWOGFtS2j8sHuMduU8BwLW5AjMyKOm+TF8OTjqkGOdUp+SCIs
 M2F9UrO9CP4MTBubCCowU82nlhbIOqy4VISy7JM1cxVXrFqnHuZgP6oCm Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="254898661"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="254898661"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="733843085"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:53 +0300
Message-Id: <dfa2d79db61d5eea543bef7aca7d80da3e71f99d.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/20] drm/edid: convert add_cea_modes() to
 use cea db iter
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

Iterate through all CTA EDID extension blocks and DisplayID CTA data
blocks to add CEA modes.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 67 ++++++++++++++++++--------------------
 1 file changed, 31 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index b272671cf86c..5c3e2ed53012 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4689,46 +4689,41 @@ static void drm_parse_y420cmdb_bitmap(struct drm_connector *connector,
 static int
 add_cea_modes(struct drm_connector *connector, const struct edid *edid)
 {
-	const u8 *cea = drm_find_cea_extension(edid);
-	const u8 *db, *hdmi = NULL, *video = NULL;
-	u8 dbl, hdmi_len, video_len = 0;
+	const struct cea_db *db;
+	struct cea_db_iter iter;
 	int modes = 0;
 
-	if (cea && cea_revision(cea) >= 3) {
-		int i, start, end;
-
-		if (cea_db_offsets(cea, &start, &end))
-			return 0;
-
-		for_each_cea_db(cea, i, start, end) {
-			db = &cea[i];
-			dbl = cea_db_payload_len(db);
-
-			if (cea_db_tag(db) == CTA_DB_VIDEO) {
-				video = db + 1;
-				video_len = dbl;
-				modes += do_cea_modes(connector, video, dbl);
-			} else if (cea_db_is_hdmi_vsdb(db)) {
-				hdmi = db;
-				hdmi_len = dbl;
-			} else if (cea_db_is_y420vdb(db)) {
-				const u8 *vdb420 = &db[2];
-
-				/* Add 4:2:0(only) modes present in EDID */
-				modes += do_y420vdb_modes(connector,
-							  vdb420,
-							  dbl - 1);
-			}
+	cea_db_iter_edid_begin(edid, &iter);
+	cea_db_iter_for_each(db, &iter) {
+		const u8 *hdmi = NULL, *video = NULL;
+		u8 hdmi_len = 0, video_len = 0;
+
+		if (cea_db_tag(db) == CTA_DB_VIDEO) {
+			video = cea_db_data(db);
+			video_len = cea_db_payload_len(db);
+			modes += do_cea_modes(connector, video, video_len);
+		} else if (cea_db_is_hdmi_vsdb(db)) {
+			/* FIXME: Switch to use cea_db_data() */
+			hdmi = (const u8 *)db;
+			hdmi_len = cea_db_payload_len(db);
+		} else if (cea_db_is_y420vdb(db)) {
+			const u8 *vdb420 = cea_db_data(db) + 1;
+
+			/* Add 4:2:0(only) modes present in EDID */
+			modes += do_y420vdb_modes(connector, vdb420,
+						  cea_db_payload_len(db) - 1);
 		}
-	}
 
-	/*
-	 * We parse the HDMI VSDB after having added the cea modes as we will
-	 * be patching their flags when the sink supports stereo 3D.
-	 */
-	if (hdmi)
-		modes += do_hdmi_vsdb_modes(connector, hdmi, hdmi_len, video,
-					    video_len);
+		/*
+		 * We parse the HDMI VSDB after having added the cea modes as we
+		 * will be patching their flags when the sink supports stereo
+		 * 3D.
+		 */
+		if (hdmi)
+			modes += do_hdmi_vsdb_modes(connector, hdmi, hdmi_len,
+						    video, video_len);
+	}
+	cea_db_iter_end(&iter);
 
 	return modes;
 }
-- 
2.30.2

