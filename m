Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC024E487E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 22:42:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73D0B10E5A3;
	Tue, 22 Mar 2022 21:42:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B26410E5A6;
 Tue, 22 Mar 2022 21:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647985319; x=1679521319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZpoS3yYW775lCcFgKZ6HaNj+5G8U6QYvDGvuSdozNmY=;
 b=FaU0kek3LGUYcBR4yvdqh0ZplYsitLTPJoj1eOZNDS81LGeNYGxJLBrf
 4E1ENkmQG4a8KEOU9ZnSwWPOuy7FR/mOH04WXAeqv+HapzQTACq8+8wTc
 7BtnjLDt634XQXBY4FrvZxWdiDh+Gl7k6Wf86V8HZmgCQAf/hix2sHnjp
 8FQkmjSZt1ljpFXRx9YN1l1x9sCudv/XWFg4qJfE9YzZmj1yfyrrjbXbF
 C0FDJwhia9WBICVcBpD1Mxo81+mDniV+XF2oQBkAxdUAUA7ptATA5roMu
 2CNa+9qHkmRwrlhqoYaZiaE1nFeHX87QfE0PM5w6eBtNP11nhyP8zds7J Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="245428595"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="245428595"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:41:58 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="825087700"
Received: from sburacze-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.237])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:41:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 22 Mar 2022 23:40:42 +0200
Message-Id: <8ec16181ea622917eb10ab7e6c215229208328d4.1647985054.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647985054.git.jani.nikula@intel.com>
References: <cover.1647985054.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 13/19] drm/edid: convert drm_edid_to_eld() to use
 cea db iter
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Iterate through all CEA data blocks across all CEA extensions and
DisplayID data blocks. This may gather more data than before, and if
there's duplicated data, some is overwritten by whichever comes last.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 64 +++++++++++++++++---------------------
 1 file changed, 29 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index d4bf9ef09c3c..ccbaa91b171d 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4758,12 +4758,12 @@ static void clear_eld(struct drm_connector *connector)
  */
 static void drm_edid_to_eld(struct drm_connector *connector, struct edid *edid)
 {
+	const struct cea_db *db;
+	struct cea_db_iter iter;
 	uint8_t *eld = connector->eld;
 	const u8 *cea;
-	const u8 *db;
 	int total_sad_count = 0;
 	int mnl;
-	int dbl;
 
 	clear_eld(connector);
 
@@ -4789,43 +4789,37 @@ static void drm_edid_to_eld(struct drm_connector *connector, struct edid *edid)
 	eld[DRM_ELD_PRODUCT_CODE0] = edid->prod_code[0];
 	eld[DRM_ELD_PRODUCT_CODE1] = edid->prod_code[1];
 
-	if (cea_revision(cea) >= 3) {
-		int i, start, end;
+	cea_db_iter_edid_begin(edid, &iter);
+	cea_db_iter_for_each(db, &iter) {
+		const u8 *data = cea_db_data(db);
+		int len = cea_db_payload_len(db);
 		int sad_count;
 
-		if (cea_db_offsets(cea, &start, &end)) {
-			start = 0;
-			end = 0;
-		}
-
-		for_each_cea_db(cea, i, start, end) {
-			db = &cea[i];
-			dbl = cea_db_payload_len(db);
-
-			switch (cea_db_tag(db)) {
-			case CEA_DB_AUDIO:
-				/* Audio Data Block, contains SADs */
-				sad_count = min(dbl / 3, 15 - total_sad_count);
-				if (sad_count >= 1)
-					memcpy(&eld[DRM_ELD_CEA_SAD(mnl, total_sad_count)],
-					       &db[1], sad_count * 3);
-				total_sad_count += sad_count;
-				break;
-			case CEA_DB_SPEAKER:
-				/* Speaker Allocation Data Block */
-				if (dbl >= 1)
-					eld[DRM_ELD_SPEAKER] = db[1];
-				break;
-			case CEA_DB_VENDOR:
-				/* HDMI Vendor-Specific Data Block */
-				if (cea_db_is_hdmi_vsdb(db))
-					drm_parse_hdmi_vsdb_audio(connector, db);
-				break;
-			default:
-				break;
-			}
+		switch (cea_db_tag(db)) {
+		case CEA_DB_AUDIO:
+			/* Audio Data Block, contains SADs */
+			sad_count = min(len / 3, 15 - total_sad_count);
+			if (sad_count >= 1)
+				memcpy(&eld[DRM_ELD_CEA_SAD(mnl, total_sad_count)],
+				       data, sad_count * 3);
+			total_sad_count += sad_count;
+			break;
+		case CEA_DB_SPEAKER:
+			/* Speaker Allocation Data Block */
+			if (len >= 1)
+				eld[DRM_ELD_SPEAKER] = data[0];
+			break;
+		case CEA_DB_VENDOR:
+			/* HDMI Vendor-Specific Data Block */
+			if (cea_db_is_hdmi_vsdb(db))
+				drm_parse_hdmi_vsdb_audio(connector, (const u8 *)db);
+			break;
+		default:
+			break;
 		}
 	}
+	cea_db_iter_end(&iter);
+
 	eld[DRM_ELD_SAD_COUNT_CONN_TYPE] |= total_sad_count << DRM_ELD_SAD_COUNT_SHIFT;
 
 	if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
-- 
2.30.2

