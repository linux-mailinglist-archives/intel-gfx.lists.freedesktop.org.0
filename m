Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F40EB5180EC
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72B5310F815;
	Tue,  3 May 2022 09:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A27D310F815
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:24:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569887; x=1683105887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W9Stb1x21l6rIMaIxkCLG+Cdm7/ynHN1MCB/1yxWsMU=;
 b=YSgJJ4Cn2+wSSSIyWADVEZw5dmnyWEO1EDm1CDv+nWtL+4USu+st3/lU
 2HjTaqGZ1JUU9+zUFqytpnEB+uenw9qGvFikE7GLcjecf1/picaAtcrdq
 T8gKotk+XPfjQuhj4dCf9LU0yZ+Viq+21DSBYP63303Z3LHoeiTu9mYMD
 QEHL4yrHrwUCUishJifGD4gGTItWHqUzvPiDIjc6aVgmp6jwjKc4cBO6Y
 N3v6u+rv5lJUn6aQXrxl4cj9IuFlV5/hDjar5Tj9b16+R5B/L6Pnp3DO5
 VHL9lS61dqUCMrg0IaJUl38nSqQ0Dxo8WRT706LQQN6b3BdMMDxW22Udy g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="327978526"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="327978526"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:47 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="547306385"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:52 +0300
Message-Id: <b6bb813afc35c763e744c6cdb4a787da3adf910b.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/20] drm/edid: clean up cea_db_is_*()
 functions
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

Abstract helpers for matching vendor data blocks and extended tags, and
use them to simplify all the cea_db_is_*() functions.

Take void pointer as parameter to allow transitional use for both u8 *
and struct cea_db *.

v2: Remove superfluous parens (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 127 ++++++++++++-------------------------
 1 file changed, 40 insertions(+), 87 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index da8f455b725e..b272671cf86c 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4336,12 +4336,6 @@ do_hdmi_vsdb_modes(struct drm_connector *connector, const u8 *db, u8 len,
 	return modes;
 }
 
-static int
-cea_db_extended_tag(const u8 *db)
-{
-	return db[1];
-}
-
 static int
 cea_revision(const u8 *cea)
 {
@@ -4453,6 +4447,22 @@ static const void *cea_db_data(const struct cea_db *db)
 	return db->data;
 }
 
+static bool cea_db_is_extended_tag(const struct cea_db *db, int tag)
+{
+	return cea_db_tag(db) == CTA_DB_EXTENDED_TAG &&
+		cea_db_payload_len(db) >= 1 &&
+		db->data[0] == tag;
+}
+
+static bool cea_db_is_vendor(const struct cea_db *db, int vendor_oui)
+{
+	const u8 *data = cea_db_data(db);
+
+	return cea_db_tag(db) == CTA_DB_VENDOR &&
+		cea_db_payload_len(db) >= 3 &&
+		oui(data[2], data[1], data[0]) == vendor_oui;
+}
+
 static void cea_db_iter_edid_begin(const struct edid *edid, struct cea_db_iter *iter)
 {
 	memset(iter, 0, sizeof(*iter));
@@ -4587,93 +4597,50 @@ static void cea_db_iter_end(struct cea_db_iter *iter)
 	memset(iter, 0, sizeof(*iter));
 }
 
-static bool cea_db_is_hdmi_vsdb(const u8 *db)
+static bool cea_db_is_hdmi_vsdb(const void *db)
 {
-	if (cea_db_tag(db) != CTA_DB_VENDOR)
-		return false;
-
-	if (cea_db_payload_len(db) < 5)
-		return false;
-
-	return oui(db[3], db[2], db[1]) == HDMI_IEEE_OUI;
+	return cea_db_is_vendor(db, HDMI_IEEE_OUI) &&
+		cea_db_payload_len(db) >= 5;
 }
 
-static bool cea_db_is_hdmi_forum_vsdb(const u8 *db)
+static bool cea_db_is_hdmi_forum_vsdb(const void *db)
 {
-	if (cea_db_tag(db) != CTA_DB_VENDOR)
-		return false;
-
-	if (cea_db_payload_len(db) < 7)
-		return false;
-
-	return oui(db[3], db[2], db[1]) == HDMI_FORUM_IEEE_OUI;
+	return cea_db_is_vendor(db, HDMI_FORUM_IEEE_OUI) &&
+		cea_db_payload_len(db) >= 7;
 }
 
-static bool cea_db_is_microsoft_vsdb(const u8 *db)
+static bool cea_db_is_microsoft_vsdb(const void *db)
 {
-	if (cea_db_tag(db) != CTA_DB_VENDOR)
-		return false;
-
-	if (cea_db_payload_len(db) != 21)
-		return false;
-
-	return oui(db[3], db[2], db[1]) == MICROSOFT_IEEE_OUI;
+	return cea_db_is_vendor(db, MICROSOFT_IEEE_OUI) &&
+		cea_db_payload_len(db) == 21;
 }
 
-static bool cea_db_is_vcdb(const u8 *db)
+static bool cea_db_is_vcdb(const void *db)
 {
-	if (cea_db_tag(db) != CTA_DB_EXTENDED_TAG)
-		return false;
-
-	if (cea_db_payload_len(db) != 2)
-		return false;
-
-	if (cea_db_extended_tag(db) != CTA_EXT_DB_VIDEO_CAP)
-		return false;
-
-	return true;
+	return cea_db_is_extended_tag(db, CTA_EXT_DB_VIDEO_CAP) &&
+		cea_db_payload_len(db) == 2;
 }
 
-static bool cea_db_is_hdmi_forum_scdb(const u8 *db)
+static bool cea_db_is_hdmi_forum_scdb(const void *db)
 {
-	if (cea_db_tag(db) != CTA_DB_EXTENDED_TAG)
-		return false;
-
-	if (cea_db_payload_len(db) < 7)
-		return false;
-
-	if (cea_db_extended_tag(db) != CTA_EXT_DB_HF_SCDB)
-		return false;
-
-	return true;
+	return cea_db_is_extended_tag(db, CTA_EXT_DB_HF_SCDB) &&
+		cea_db_payload_len(db) >= 7;
 }
 
-static bool cea_db_is_y420cmdb(const u8 *db)
+static bool cea_db_is_y420cmdb(const void *db)
 {
-	if (cea_db_tag(db) != CTA_DB_EXTENDED_TAG)
-		return false;
-
-	if (!cea_db_payload_len(db))
-		return false;
-
-	if (cea_db_extended_tag(db) != CTA_EXT_DB_420_VIDEO_CAP_MAP)
-		return false;
-
-	return true;
+	return cea_db_is_extended_tag(db, CTA_EXT_DB_420_VIDEO_CAP_MAP);
 }
 
-static bool cea_db_is_y420vdb(const u8 *db)
+static bool cea_db_is_y420vdb(const void *db)
 {
-	if (cea_db_tag(db) != CTA_DB_EXTENDED_TAG)
-		return false;
-
-	if (!cea_db_payload_len(db))
-		return false;
-
-	if (cea_db_extended_tag(db) != CTA_EXT_DB_420_VIDEO_DATA)
-		return false;
+	return cea_db_is_extended_tag(db, CTA_EXT_DB_420_VIDEO_DATA);
+}
 
-	return true;
+static bool cea_db_is_hdmi_hdr_metadata_block(const void *db)
+{
+	return cea_db_is_extended_tag(db, CTA_EXT_DB_HDR_STATIC_METADATA) &&
+		cea_db_payload_len(db) >= 3;
 }
 
 #define for_each_cea_db(cea, i, start, end) \
@@ -4809,20 +4776,6 @@ static void fixup_detailed_cea_mode_clock(struct drm_display_mode *mode)
 	mode->clock = clock;
 }
 
-static bool cea_db_is_hdmi_hdr_metadata_block(const u8 *db)
-{
-	if (cea_db_tag(db) != CTA_DB_EXTENDED_TAG)
-		return false;
-
-	if (db[1] != CTA_EXT_DB_HDR_STATIC_METADATA)
-		return false;
-
-	if (cea_db_payload_len(db) < 3)
-		return false;
-
-	return true;
-}
-
 static uint8_t eotf_supported(const u8 *edid_ext)
 {
 	return edid_ext[2] &
-- 
2.30.2

