Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 930CC5180F5
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA65910F835;
	Tue,  3 May 2022 09:25:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4523710F835
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569931; x=1683105931;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4q3vp5NnV3n5JEE6snJzK8/gQfpbCwR/CiIV10BpcaM=;
 b=DbJPAL+CW2aiTc12mFkQKeDjoetYqOxSwoYVTcTqnIGFhq1jsdnRmPnd
 N+k8O4e8YoJpATtcpHRxiYkGZmeWbevqyZdT5M4ezWRJ9biSrWpAfPm3c
 JVduwt+2tenUJEbGOTejUZ/xgBcStxZEAlamVVhpU2lr89WkxIaOVjTUn
 ZKa37OCdpGv/ldwt2igTpYfR6DgqsWHd1f2F63gfXU+lcNxrGzBrCcVWV
 jolns0FFt9wcQoj3WC+JwvU8VIl1vDLVcoFdmPt6OTxEBJ1npsaUY7gDg
 lj1umj8d9cn9+5OGt4PbkKBd8tzIg1ouki4azSp+uFPcNBDnF3DhD9toc w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="249415629"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="249415629"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:30 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="567569363"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:24:01 +0300
Message-Id: <c6ad496cdadea1bb598711a65ef536f4a43b74a7.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 16/20] drm/edid: restore some type safety to
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
Cc: jani.nikula@intel.com
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
index 208b1efb490d..bc12ede8694c 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4384,11 +4384,8 @@ struct cea_db {
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
 
@@ -4555,47 +4552,47 @@ static void cea_db_iter_end(struct cea_db_iter *iter)
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

