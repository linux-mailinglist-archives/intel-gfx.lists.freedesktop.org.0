Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 047A24E4885
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 22:42:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A9E110E5B0;
	Tue, 22 Mar 2022 21:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92D0810E5A9;
 Tue, 22 Mar 2022 21:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647985327; x=1679521327;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z5Rj64Vd0+txSwEmKHRTmIxfrt+tJ+XGbo59VJa2xSM=;
 b=UCWVDo1NZP9h83UjQPGAw5ZUsouIo2/C4LknHkGFMSs1JqSfrajmYg8i
 YmxwsE0N87cFCcmD1MsjnH0cI6UvJQClGHHxRU1nKaLiq9Ev3l1eExudw
 HkKGl57fBW821D93pKAXUQ1GTpAV87Os0rUI6NEyja7lVh4vfK/L8LwOv
 Gt1bjE3fnJY2O35yyy9tt5vGWb76w3VZsJmZHPdwZrvmsGveeyWXk+73i
 s7OxbIKz+5OoOaZMXpr1oqBx0LG38gXcMTKxaav+8Pn8K6cfGXf2NPb5z
 l3/0vgOUh4OAWc1X6eDng0Ezv8PpH/sFR8XYGAc30W190lxdfK0Aqg2pL Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="237898757"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="237898757"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:42:07 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="692717911"
Received: from sburacze-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.237])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:42:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 22 Mar 2022 23:40:44 +0200
Message-Id: <a8ec96e21a44bff010cd5e68dbd018d98fc33361.1647985054.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647985054.git.jani.nikula@intel.com>
References: <cover.1647985054.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 15/19] drm/edid: restore some type safety to
 cea_db_*() functions
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

During the transition, we accepted a void pointer for a poor C
programmer's version of polymorphism. Switch the functions to use struct
cea_db * to regain some more type safety.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 0400c4024de7..b3aedeefed82 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4244,11 +4244,8 @@ struct cea_db {
 	u8 data[];
 } __packed;
 
-static int cea_db_tag(const void *_db)
+static int cea_db_tag(const struct cea_db *db)
 {
-	/* FIXME: Transition to passing struct cea_db * everywhere. */
-	const struct cea_db *db = _db;
-
 	return db->tag_length >> 5;
 }
 
@@ -4411,41 +4408,41 @@ static void cea_db_iter_end(struct cea_db_iter *iter)
 	memset(iter, 0, sizeof(*iter));
 }
 
-static bool cea_db_is_hdmi_vsdb(const void *db)
+static bool cea_db_is_hdmi_vsdb(const struct cea_db *db)
 {
 	return (cea_db_is_vendor(db, HDMI_IEEE_OUI) &&
 		cea_db_payload_len(db) >= 5);
 }
 
-static bool cea_db_is_hdmi_forum_vsdb(const void *db)
+static bool cea_db_is_hdmi_forum_vsdb(const struct cea_db *db)
 {
 	return (cea_db_is_vendor(db, HDMI_FORUM_IEEE_OUI) &&
 		cea_db_payload_len(db) >= 7);
 }
 
-static bool cea_db_is_microsoft_vsdb(const void *db)
+static bool cea_db_is_microsoft_vsdb(const struct cea_db *db)
 {
 	return (cea_db_is_vendor(db, MICROSOFT_IEEE_OUI) &&
 		cea_db_payload_len(db) == 21);
 }
 
-static bool cea_db_is_vcdb(const void *db)
+static bool cea_db_is_vcdb(const struct cea_db *db)
 {
 	return (cea_db_is_extended_tag(db, CEA_EXT_DB_VIDEO_CAP) &&
 		cea_db_payload_len(db) == 2);
 }
 
-static bool cea_db_is_y420cmdb(const void *db)
+static bool cea_db_is_y420cmdb(const struct cea_db *db)
 {
 	return cea_db_is_extended_tag(db, CEA_EXT_DB_420_VIDEO_CAP_MAP);
 }
 
-static bool cea_db_is_y420vdb(const void *db)
+static bool cea_db_is_y420vdb(const struct cea_db *db)
 {
 	return cea_db_is_extended_tag(db, CEA_EXT_DB_420_VIDEO_DATA);
 }
 
-static bool cea_db_is_hdmi_hdr_metadata_block(const void *db)
+static bool cea_db_is_hdmi_hdr_metadata_block(const struct cea_db *db)
 {
 	return (cea_db_is_extended_tag(db, CEA_EXT_DB_HDR_STATIC_METADATA) &&
 		cea_db_payload_len(db) >= 3);
-- 
2.30.2

