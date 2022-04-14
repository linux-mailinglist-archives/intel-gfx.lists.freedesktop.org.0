Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC6350127D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2174B10FD10;
	Thu, 14 Apr 2022 15:08:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C94B910FD0A;
 Thu, 14 Apr 2022 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649948913; x=1681484913;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s2NOXR/knAlXxwdsPOtoM6zmnlRRdX1WGQLUAEQwwJk=;
 b=HoZXLJTuGzbgh9AvniaZSv3VBvQAAEyK7Z0QyamjBsBLsmP3cR+it5ZH
 uU8IwrCS8hfTC0dJgjjKjw9bW09NPjwVXIwKfIIlMJkgpLmR1AOGVvfqz
 eC/yNIGCl25PJiHjw4pPBfHx1VDnKHJO1LPp4OOgYLmWMzUPRBxni4Yih
 ON2MZAc1saAHit5gFr8pWfpHLbrLLuZQX6qIF5O6/81Zl7iXxNGKF39uI
 TAiQxxqz70r9Vp1Or9nMjeEpexSZvDy/objhPpADyC5v98c99kKkW3T9/
 fpEZgIYn56luUvUIZyUzMroaq9AmYZYpmD0E6YlCu7tk8XDNmgXN1BhXf A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="262394778"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="262394778"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:08:33 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="591219314"
Received: from nplaweck-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.149.236])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:08:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 14 Apr 2022 18:06:58 +0300
Message-Id: <8bca14cf89ad475380b45525fd1e3b553184db72.1649948563.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649948562.git.jani.nikula@intel.com>
References: <cover.1649948562.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/19] drm/edid: restore some type safety to
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

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 7ed0258c0edf..1fc4e8754cd4 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4408,11 +4408,8 @@ struct cea_db {
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
 
@@ -4579,47 +4576,47 @@ static void cea_db_iter_end(struct cea_db_iter *iter)
 	memset(iter, 0, sizeof(*iter));
 }
 
-static bool cea_db_is_hdmi_vsdb(const void *db)
+static bool cea_db_is_hdmi_vsdb(const struct cea_db *db)
 {
 	return cea_db_is_vendor(db, HDMI_IEEE_OUI) &&
 		cea_db_payload_len(db) >= 5;
 }
 
-static bool cea_db_is_hdmi_forum_vsdb(const void *db)
+static bool cea_db_is_hdmi_forum_vsdb(const struct cea_db *db)
 {
 	return cea_db_is_vendor(db, HDMI_FORUM_IEEE_OUI) &&
 		cea_db_payload_len(db) >= 7;
 }
 
-static bool cea_db_is_microsoft_vsdb(const void *db)
+static bool cea_db_is_microsoft_vsdb(const struct cea_db *db)
 {
 	return cea_db_is_vendor(db, MICROSOFT_IEEE_OUI) &&
 		cea_db_payload_len(db) == 21;
 }
 
-static bool cea_db_is_vcdb(const void *db)
+static bool cea_db_is_vcdb(const struct cea_db *db)
 {
 	return cea_db_is_extended_tag(db, CTA_EXT_DB_VIDEO_CAP) &&
 		cea_db_payload_len(db) == 2;
 }
 
-static bool cea_db_is_hdmi_forum_scdb(const void *db)
+static bool cea_db_is_hdmi_forum_scdb(const struct cea_db *db)
 {
 	return cea_db_is_extended_tag(db, CTA_EXT_DB_HF_SCDB) &&
 		cea_db_payload_len(db) >= 7;
 }
 
-static bool cea_db_is_y420cmdb(const void *db)
+static bool cea_db_is_y420cmdb(const struct cea_db *db)
 {
 	return cea_db_is_extended_tag(db, CTA_EXT_DB_420_VIDEO_CAP_MAP);
 }
 
-static bool cea_db_is_y420vdb(const void *db)
+static bool cea_db_is_y420vdb(const struct cea_db *db)
 {
 	return cea_db_is_extended_tag(db, CTA_EXT_DB_420_VIDEO_DATA);
 }
 
-static bool cea_db_is_hdmi_hdr_metadata_block(const void *db)
+static bool cea_db_is_hdmi_hdr_metadata_block(const struct cea_db *db)
 {
 	return cea_db_is_extended_tag(db, CTA_EXT_DB_HDR_STATIC_METADATA) &&
 		cea_db_payload_len(db) >= 3;
-- 
2.30.2

