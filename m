Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 238975180F3
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 563C410F82A;
	Tue,  3 May 2022 09:25:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E527C10F828
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:25:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569921; x=1683105921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1ndoblvABtX2flSnn+z+rturOBC16nuc65pQXCzascs=;
 b=DcAF5d3tuaykGl98PdNrfze0oNB5BqGYwUiOYevPjGdfXAMTNOiViWWE
 yxrp903bRP5Jk7HsCMWLjHXtmFpLf3l5ZgRASISPYGAf3PpurQq0SQOS5
 BuIeRfKK1CJD05YpK2O2c2pmuxm7ShMRVMwEgyDg18JpaF3332zj/Cj65
 l27ZDrYzlv7hiyU/FN/D83kbvjlP/vD1ms4tV3ocSTkU5gPLii7reRfrB
 7SneKjrnx4LYnRqWfCuzD+H3e3uduSyeQ2Ky4kbL6sr6pL+zxiRhH5apC
 uU3fGatmrckTd7a/LYMVVdPT/YtJCf+Jmr3kiAV/ul0SMRnTHoU/2UHY6 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="267028704"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="267028704"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:21 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="663910306"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:59 +0300
Message-Id: <8bdc67aa731857111eddd08a9c192d41d40b5f5a.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/20] drm/edid: convert drm_edid_to_eld() to
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

Iterate through all CTA data blocks across all CTA extensions and
DisplayID data blocks. This may gather more data than before, and if
there's duplicated data, some is overwritten by whichever comes last.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 64 +++++++++++++++++---------------------
 1 file changed, 29 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 98b2e6164468..77986895e501 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4911,12 +4911,12 @@ static void clear_eld(struct drm_connector *connector)
 static void drm_edid_to_eld(struct drm_connector *connector,
 			    const struct edid *edid)
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
 
@@ -4942,43 +4942,37 @@ static void drm_edid_to_eld(struct drm_connector *connector,
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
-			case CTA_DB_AUDIO:
-				/* Audio Data Block, contains SADs */
-				sad_count = min(dbl / 3, 15 - total_sad_count);
-				if (sad_count >= 1)
-					memcpy(&eld[DRM_ELD_CEA_SAD(mnl, total_sad_count)],
-					       &db[1], sad_count * 3);
-				total_sad_count += sad_count;
-				break;
-			case CTA_DB_SPEAKER:
-				/* Speaker Allocation Data Block */
-				if (dbl >= 1)
-					eld[DRM_ELD_SPEAKER] = db[1];
-				break;
-			case CTA_DB_VENDOR:
-				/* HDMI Vendor-Specific Data Block */
-				if (cea_db_is_hdmi_vsdb(db))
-					drm_parse_hdmi_vsdb_audio(connector, db);
-				break;
-			default:
-				break;
-			}
+		switch (cea_db_tag(db)) {
+		case CTA_DB_AUDIO:
+			/* Audio Data Block, contains SADs */
+			sad_count = min(len / 3, 15 - total_sad_count);
+			if (sad_count >= 1)
+				memcpy(&eld[DRM_ELD_CEA_SAD(mnl, total_sad_count)],
+				       data, sad_count * 3);
+			total_sad_count += sad_count;
+			break;
+		case CTA_DB_SPEAKER:
+			/* Speaker Allocation Data Block */
+			if (len >= 1)
+				eld[DRM_ELD_SPEAKER] = data[0];
+			break;
+		case CTA_DB_VENDOR:
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

