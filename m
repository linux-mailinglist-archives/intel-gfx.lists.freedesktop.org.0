Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 056E4501254
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:07:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DDD410FF68;
	Thu, 14 Apr 2022 15:07:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D52D10FF68;
 Thu, 14 Apr 2022 15:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649948873; x=1681484873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hzxxfU9IqWVKA3HbGfrOvk/5vocPktq/B9AcQl5fWVA=;
 b=Gf/EYQbWoAEXgbonlhl3XcHzkXG4YHxJukkk3MyQW/q8wJwp44tOGMUT
 L3B/dFjd2ByhfyIrus1pwrvN/w3sSH+GFE5+B2pnRWf+TfEVp8viL/PWB
 Z6R2mcfWYUG1myjdyb5dNe8AE7/d0e+zEclJktwdSDzQmGY0W1oZA5OJp
 ITYGCqqI/AwM3t9wJh8VEsf70wNlUVFdsSk7a9tSKJaHRGQ94w2N/PR/c
 2OFPWmi7E65/zNxPMAGuG8QQBHP658FMql1C5tgLzlKGgHbMMO4QVBG0i
 QqlFo63/IiJeMF9vX71F75mOMQcVWl2yy9L1NVgyi/EqNV0rscKBz2jSS g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="260546025"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="260546025"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:07:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="508439407"
Received: from nplaweck-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.149.236])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:07:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 14 Apr 2022 18:06:51 +0300
Message-Id: <2a2c1ae2e5a1856a4d914e591a31f3faaf5ea4ab.1649948562.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649948562.git.jani.nikula@intel.com>
References: <cover.1649948562.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/19] drm/edid: convert
 drm_edid_to_speaker_allocation() to use cea db iter
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

Use the cea db iterator for speaker allocation. We'll still stop at the
first speaker data block, but not at the first CTA extension if that
doesn't have the info.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 47 ++++++++++++--------------------------
 1 file changed, 15 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index d02588637879..dac6a400905b 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5093,42 +5093,25 @@ EXPORT_SYMBOL(drm_edid_to_sad);
  */
 int drm_edid_to_speaker_allocation(const struct edid *edid, u8 **sadb)
 {
+	const struct cea_db *db;
+	struct cea_db_iter iter;
 	int count = 0;
-	int i, start, end, dbl;
-	const u8 *cea;
 
-	cea = drm_find_cea_extension(edid);
-	if (!cea) {
-		DRM_DEBUG_KMS("SAD: no CEA Extension found\n");
-		return 0;
-	}
-
-	if (cea_revision(cea) < 3) {
-		DRM_DEBUG_KMS("SAD: wrong CEA revision\n");
-		return 0;
-	}
-
-	if (cea_db_offsets(cea, &start, &end)) {
-		DRM_DEBUG_KMS("SAD: invalid data block offsets\n");
-		return -EPROTO;
-	}
-
-	for_each_cea_db(cea, i, start, end) {
-		const u8 *db = &cea[i];
-
-		if (cea_db_tag(db) == CTA_DB_SPEAKER) {
-			dbl = cea_db_payload_len(db);
-
-			/* Speaker Allocation Data Block */
-			if (dbl == 3) {
-				*sadb = kmemdup(&db[1], dbl, GFP_KERNEL);
-				if (!*sadb)
-					return -ENOMEM;
-				count = dbl;
-				break;
-			}
+	cea_db_iter_edid_begin(edid, &iter);
+	cea_db_iter_for_each(db, &iter) {
+		if (cea_db_tag(db) == CTA_DB_SPEAKER &&
+		    cea_db_payload_len(db) == 3) {
+			*sadb = kmemdup(db->data, cea_db_payload_len(db),
+					GFP_KERNEL);
+			if (!*sadb)
+				return -ENOMEM;
+			count = cea_db_payload_len(db);
+			break;
 		}
 	}
+	cea_db_iter_end(&iter);
+
+	DRM_DEBUG_KMS("Found %d Speaker Allocation Data Blocks\n", count);
 
 	return count;
 }
-- 
2.30.2

