Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8CBA5180E9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:24:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A75810F812;
	Tue,  3 May 2022 09:24:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19A9410F812
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569873; x=1683105873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jrTTGgUOtX+gGjLNCCeISafMu5mfA6LKSGnnCFTP5Pg=;
 b=RjQlLOVDwaz/usmE2d0pBJVvCxt1flpC5r0kckXegjR4S05Is1ZTrUUx
 krjdHuzbRLMHWnkZDih5SrMDZElkaBztkmj7W9rIhZo8j3pICu1PP7AFZ
 +N1Yx2FV85MpdxogzNxEEWk8OzT0f++35bnRtKIsDb/HQUfx0ynzqOeuG
 f9NEqrpkAr05ZJRpbvub1K/CIq52/NrEZjWBUj5JunhJp3d3JVBS3LIT+
 /pAPkgxqI1zWFEBdnyI1k5ap33tyHgDR+K9S1jvQ2NTVftGuf/HAgo7sL
 uErGqFnF8WzNDOoY0BurkNB2qCEtje8/PMTv1lEZ65zsO9ZGqGb7Tjh1E g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="247343661"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="247343661"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:32 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="536271101"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:49 +0300
Message-Id: <c66cc3adeb375f5e60d1a8f91b41580d8ab67442.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/20] drm/edid: clean up CTA data block tag
 definitions
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

Add prefixed names, group, sort, add references.

v2:
- Updated references to CTA-861-H
- s/CEA/CTA/ in data block macros

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 65 ++++++++++++++++++++------------------
 1 file changed, 35 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 18d05cbb2124..67eaa01f1d7c 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -3462,16 +3462,21 @@ add_detailed_modes(struct drm_connector *connector, const struct edid *edid,
 	return closure.modes;
 }
 
-#define AUDIO_BLOCK	0x01
-#define VIDEO_BLOCK     0x02
-#define VENDOR_BLOCK    0x03
-#define SPEAKER_BLOCK	0x04
-#define HDR_STATIC_METADATA_BLOCK	0x6
-#define USE_EXTENDED_TAG 0x07
-#define EXT_VIDEO_CAPABILITY_BLOCK 0x00
-#define EXT_VIDEO_DATA_BLOCK_420	0x0E
-#define EXT_VIDEO_CAP_BLOCK_Y420CMDB 0x0F
-#define EXT_VIDEO_HF_SCDB_DATA_BLOCK	0x79
+/* CTA-861-H Table 60 - CTA Tag Codes */
+#define CTA_DB_AUDIO			1
+#define CTA_DB_VIDEO			2
+#define CTA_DB_VENDOR			3
+#define CTA_DB_SPEAKER			4
+#define CTA_DB_EXTENDED_TAG		7
+
+/* CTA-861-H Table 62 - CTA Extended Tag Codes */
+#define CTA_EXT_DB_VIDEO_CAP		0
+#define CTA_EXT_DB_VENDOR		1
+#define CTA_EXT_DB_HDR_STATIC_METADATA	6
+#define CTA_EXT_DB_420_VIDEO_DATA	14
+#define CTA_EXT_DB_420_VIDEO_CAP_MAP	15
+#define CTA_EXT_DB_HF_SCDB		0x79
+
 #define EDID_BASIC_AUDIO	(1 << 6)
 #define EDID_CEA_YCRCB444	(1 << 5)
 #define EDID_CEA_YCRCB422	(1 << 4)
@@ -4358,7 +4363,7 @@ cea_db_offsets(const u8 *cea, int *start, int *end)
 
 static bool cea_db_is_hdmi_vsdb(const u8 *db)
 {
-	if (cea_db_tag(db) != VENDOR_BLOCK)
+	if (cea_db_tag(db) != CTA_DB_VENDOR)
 		return false;
 
 	if (cea_db_payload_len(db) < 5)
@@ -4369,7 +4374,7 @@ static bool cea_db_is_hdmi_vsdb(const u8 *db)
 
 static bool cea_db_is_hdmi_forum_vsdb(const u8 *db)
 {
-	if (cea_db_tag(db) != VENDOR_BLOCK)
+	if (cea_db_tag(db) != CTA_DB_VENDOR)
 		return false;
 
 	if (cea_db_payload_len(db) < 7)
@@ -4380,7 +4385,7 @@ static bool cea_db_is_hdmi_forum_vsdb(const u8 *db)
 
 static bool cea_db_is_microsoft_vsdb(const u8 *db)
 {
-	if (cea_db_tag(db) != VENDOR_BLOCK)
+	if (cea_db_tag(db) != CTA_DB_VENDOR)
 		return false;
 
 	if (cea_db_payload_len(db) != 21)
@@ -4391,13 +4396,13 @@ static bool cea_db_is_microsoft_vsdb(const u8 *db)
 
 static bool cea_db_is_vcdb(const u8 *db)
 {
-	if (cea_db_tag(db) != USE_EXTENDED_TAG)
+	if (cea_db_tag(db) != CTA_DB_EXTENDED_TAG)
 		return false;
 
 	if (cea_db_payload_len(db) != 2)
 		return false;
 
-	if (cea_db_extended_tag(db) != EXT_VIDEO_CAPABILITY_BLOCK)
+	if (cea_db_extended_tag(db) != CTA_EXT_DB_VIDEO_CAP)
 		return false;
 
 	return true;
@@ -4405,13 +4410,13 @@ static bool cea_db_is_vcdb(const u8 *db)
 
 static bool cea_db_is_hdmi_forum_scdb(const u8 *db)
 {
-	if (cea_db_tag(db) != USE_EXTENDED_TAG)
+	if (cea_db_tag(db) != CTA_DB_EXTENDED_TAG)
 		return false;
 
 	if (cea_db_payload_len(db) < 7)
 		return false;
 
-	if (cea_db_extended_tag(db) != EXT_VIDEO_HF_SCDB_DATA_BLOCK)
+	if (cea_db_extended_tag(db) != CTA_EXT_DB_HF_SCDB)
 		return false;
 
 	return true;
@@ -4419,13 +4424,13 @@ static bool cea_db_is_hdmi_forum_scdb(const u8 *db)
 
 static bool cea_db_is_y420cmdb(const u8 *db)
 {
-	if (cea_db_tag(db) != USE_EXTENDED_TAG)
+	if (cea_db_tag(db) != CTA_DB_EXTENDED_TAG)
 		return false;
 
 	if (!cea_db_payload_len(db))
 		return false;
 
-	if (cea_db_extended_tag(db) != EXT_VIDEO_CAP_BLOCK_Y420CMDB)
+	if (cea_db_extended_tag(db) != CTA_EXT_DB_420_VIDEO_CAP_MAP)
 		return false;
 
 	return true;
@@ -4433,13 +4438,13 @@ static bool cea_db_is_y420cmdb(const u8 *db)
 
 static bool cea_db_is_y420vdb(const u8 *db)
 {
-	if (cea_db_tag(db) != USE_EXTENDED_TAG)
+	if (cea_db_tag(db) != CTA_DB_EXTENDED_TAG)
 		return false;
 
 	if (!cea_db_payload_len(db))
 		return false;
 
-	if (cea_db_extended_tag(db) != EXT_VIDEO_DATA_BLOCK_420)
+	if (cea_db_extended_tag(db) != CTA_EXT_DB_420_VIDEO_DATA)
 		return false;
 
 	return true;
@@ -4506,7 +4511,7 @@ add_cea_modes(struct drm_connector *connector, const struct edid *edid)
 			db = &cea[i];
 			dbl = cea_db_payload_len(db);
 
-			if (cea_db_tag(db) == VIDEO_BLOCK) {
+			if (cea_db_tag(db) == CTA_DB_VIDEO) {
 				video = db + 1;
 				video_len = dbl;
 				modes += do_cea_modes(connector, video, dbl);
@@ -4580,10 +4585,10 @@ static void fixup_detailed_cea_mode_clock(struct drm_display_mode *mode)
 
 static bool cea_db_is_hdmi_hdr_metadata_block(const u8 *db)
 {
-	if (cea_db_tag(db) != USE_EXTENDED_TAG)
+	if (cea_db_tag(db) != CTA_DB_EXTENDED_TAG)
 		return false;
 
-	if (db[1] != HDR_STATIC_METADATA_BLOCK)
+	if (db[1] != CTA_EXT_DB_HDR_STATIC_METADATA)
 		return false;
 
 	if (cea_db_payload_len(db) < 3)
@@ -4777,7 +4782,7 @@ static void drm_edid_to_eld(struct drm_connector *connector,
 			dbl = cea_db_payload_len(db);
 
 			switch (cea_db_tag(db)) {
-			case AUDIO_BLOCK:
+			case CTA_DB_AUDIO:
 				/* Audio Data Block, contains SADs */
 				sad_count = min(dbl / 3, 15 - total_sad_count);
 				if (sad_count >= 1)
@@ -4785,12 +4790,12 @@ static void drm_edid_to_eld(struct drm_connector *connector,
 					       &db[1], sad_count * 3);
 				total_sad_count += sad_count;
 				break;
-			case SPEAKER_BLOCK:
+			case CTA_DB_SPEAKER:
 				/* Speaker Allocation Data Block */
 				if (dbl >= 1)
 					eld[DRM_ELD_SPEAKER] = db[1];
 				break;
-			case VENDOR_BLOCK:
+			case CTA_DB_VENDOR:
 				/* HDMI Vendor-Specific Data Block */
 				if (cea_db_is_hdmi_vsdb(db))
 					drm_parse_hdmi_vsdb_audio(connector, db);
@@ -4851,7 +4856,7 @@ int drm_edid_to_sad(const struct edid *edid, struct cea_sad **sads)
 	for_each_cea_db(cea, i, start, end) {
 		const u8 *db = &cea[i];
 
-		if (cea_db_tag(db) == AUDIO_BLOCK) {
+		if (cea_db_tag(db) == CTA_DB_AUDIO) {
 			int j;
 
 			dbl = cea_db_payload_len(db);
@@ -4913,7 +4918,7 @@ int drm_edid_to_speaker_allocation(const struct edid *edid, u8 **sadb)
 	for_each_cea_db(cea, i, start, end) {
 		const u8 *db = &cea[i];
 
-		if (cea_db_tag(db) == SPEAKER_BLOCK) {
+		if (cea_db_tag(db) == CTA_DB_SPEAKER) {
 			dbl = cea_db_payload_len(db);
 
 			/* Speaker Allocation Data Block */
@@ -5044,7 +5049,7 @@ bool drm_detect_monitor_audio(const struct edid *edid)
 		goto end;
 
 	for_each_cea_db(edid_ext, i, start_offset, end_offset) {
-		if (cea_db_tag(&edid_ext[i]) == AUDIO_BLOCK) {
+		if (cea_db_tag(&edid_ext[i]) == CTA_DB_AUDIO) {
 			has_audio = true;
 			for (j = 1; j < cea_db_payload_len(&edid_ext[i]) + 1; j += 3)
 				DRM_DEBUG_KMS("CEA audio format %d\n",
-- 
2.30.2

