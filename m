Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCCC5180E7
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:24:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79A8410F7FA;
	Tue,  3 May 2022 09:24:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79C6D10F7FA
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569863; x=1683105863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jfshtI634h1qjwfZAEWmLCWfSQttpSDr4KJq7YnfAFA=;
 b=GFa9pZutIK2NZbCzyqwGxIDksArIpQ/2AoGdPynSefKf7tzYaApWQ0AU
 pwlnTuV+wYEa8m2ATA4VzEVIoLZglMc4QXJsdCOg4c0JU7ObyS4pM6kGt
 xZxzgTlBPudGDJbbKrp4hlHIMQbveDAjpoKtsveouHmNX2nf9V5MLnPxO
 1UKirMsbmvtv9Rk4+dKe/q/wcmCXQYIW6nIsynuRNsqywYgWr3/gl8nyL
 fskKpwcKNOdIgGKtgGSoxD0mTI2HcEnhhUdlqr/FodrxdsRb63o33wr+z
 HZYOTu8JPZoeOdkqbIcqrORVA0LBXUc8BReHD7qFJXFEzqyKuQ0BPl+fN w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="267593738"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="267593738"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:23 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="536271055"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:47 +0300
Message-Id: <2bf7110cdb56d5dda311480787faf472c9802de4.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/20] drm/edid: check for HF-SCDB block
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

From: Lee Shawn C <shawn.c.lee@intel.com>

Find HF-SCDB information in CEA extensions block. And retrieve
Max_TMDS_Character_Rate that support by sink device.

v2: HF-SCDB and HF-VSDBS carry the same SCDS data. Reuse
    drm_parse_hdmi_forum_vsdb() to parse this packet.

Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 1dea0e2f0cab..fe527a0c50bc 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -3471,6 +3471,7 @@ add_detailed_modes(struct drm_connector *connector, const struct edid *edid,
 #define EXT_VIDEO_CAPABILITY_BLOCK 0x00
 #define EXT_VIDEO_DATA_BLOCK_420	0x0E
 #define EXT_VIDEO_CAP_BLOCK_Y420CMDB 0x0F
+#define EXT_VIDEO_HF_SCDB_DATA_BLOCK	0x79
 #define EDID_BASIC_AUDIO	(1 << 6)
 #define EDID_CEA_YCRCB444	(1 << 5)
 #define EDID_CEA_YCRCB422	(1 << 4)
@@ -4402,6 +4403,20 @@ static bool cea_db_is_vcdb(const u8 *db)
 	return true;
 }
 
+static bool cea_db_is_hdmi_forum_scdb(const u8 *db)
+{
+	if (cea_db_tag(db) != USE_EXTENDED_TAG)
+		return false;
+
+	if (cea_db_payload_len(db) < 7)
+		return false;
+
+	if (cea_db_extended_tag(db) != EXT_VIDEO_HF_SCDB_DATA_BLOCK)
+		return false;
+
+	return true;
+}
+
 static bool cea_db_is_y420cmdb(const u8 *db)
 {
 	if (cea_db_tag(db) != USE_EXTENDED_TAG)
@@ -5363,7 +5378,8 @@ static void drm_parse_cea_ext(struct drm_connector *connector,
 
 		if (cea_db_is_hdmi_vsdb(db))
 			drm_parse_hdmi_vsdb_video(connector, db);
-		if (cea_db_is_hdmi_forum_vsdb(db))
+		if (cea_db_is_hdmi_forum_vsdb(db) ||
+		    cea_db_is_hdmi_forum_scdb(db))
 			drm_parse_hdmi_forum_vsdb(connector, db);
 		if (cea_db_is_microsoft_vsdb(db))
 			drm_parse_microsoft_vsdb(connector, db);
-- 
2.30.2

