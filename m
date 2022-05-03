Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2E45180F1
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B9BF10F7FA;
	Tue,  3 May 2022 09:25:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61F4210F820
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569912; x=1683105912;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SyIXttmWI6lzC8lV8yO/ncOZU/86VEDaJxLjtPHZckY=;
 b=ZN/FV/jMptf1sPMvPw1OP3s8uwJJjVivGMwtEqWvsm6iaroH/ZvrWmH1
 pStjtse7ldcztOo2D+HQ++RiGAsar1G701MG8UJrNbiyakbUctZLIhja7
 d0YKjNKM1sUDt73+0LNgtJHM4flE8+CHKQCyC9IusVF0H9Hvj1Y9MI+lj
 6wQC0qNxmqyKAOUkoiHY4hrFLAIBHeF1t9riHk7paHbj4f7bSiUatWOQe
 OHs76/ZMBwqYSG6QEokM2DEHHIHrEI0NggBh98yf+k+423rtU95dyjvuq
 8iqlrfesUY+5Ui/igHhCI0tJSAFkP7r/qoodqaRH13j3bS+0YoGvhyJw3 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="267028691"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="267028691"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:12 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="536271303"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:57 +0300
Message-Id: <a7f0c380da9526f8dd6f758d7a748bca7b4da6ce.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/20] drm/edid: convert
 drm_detect_monitor_audio() to use cea db iter
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

Iterate through all CEA data blocks.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index ca594d502941..3433d9fa4799 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5166,10 +5166,10 @@ EXPORT_SYMBOL(drm_detect_hdmi_monitor);
  */
 bool drm_detect_monitor_audio(const struct edid *edid)
 {
+	const struct cea_db *db;
+	struct cea_db_iter iter;
 	const u8 *edid_ext;
-	int i, j;
 	bool has_audio = false;
-	int start_offset, end_offset;
 
 	edid_ext = drm_find_cea_extension(edid);
 	if (!edid_ext)
@@ -5183,18 +5183,21 @@ bool drm_detect_monitor_audio(const struct edid *edid)
 		goto end;
 	}
 
-	if (cea_db_offsets(edid_ext, &start_offset, &end_offset))
-		goto end;
+	cea_db_iter_edid_begin(edid, &iter);
+	cea_db_iter_for_each(db, &iter) {
+		if (cea_db_tag(db) == CTA_DB_AUDIO) {
+			const u8 *data = cea_db_data(db);
+			int i;
 
-	for_each_cea_db(edid_ext, i, start_offset, end_offset) {
-		if (cea_db_tag(&edid_ext[i]) == CTA_DB_AUDIO) {
-			has_audio = true;
-			for (j = 1; j < cea_db_payload_len(&edid_ext[i]) + 1; j += 3)
+			for (i = 0; i < cea_db_payload_len(db); i += 3)
 				DRM_DEBUG_KMS("CEA audio format %d\n",
-					      (edid_ext[i + j] >> 3) & 0xf);
-			goto end;
+					      (data[i] >> 3) & 0xf);
+			has_audio = true;
+			break;
 		}
 	}
+	cea_db_iter_end(&iter);
+
 end:
 	return has_audio;
 }
-- 
2.30.2

