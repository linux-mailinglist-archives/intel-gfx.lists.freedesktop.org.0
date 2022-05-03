Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2636C5180EF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 269C810F817;
	Tue,  3 May 2022 09:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A208C10F817
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569902; x=1683105902;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WalV2kMUd5EgcZf+dNlX5uWV+XyKcBp7OcAV0Cml1b8=;
 b=M2rkgOG950W+ydhPGL7EUgmq2VwygJJNHzXQhHwdsLCzFEB/V9iDddYu
 iYcdY3ftmi3DRFY/xBMpTHwRtq4fpoa6n4J7DyXx5OAIAfoH/1BsTBC5A
 5t1ezHHDwhTpW1PoR+AOCtodEUqJSTY33viVLDOoNHHO6Xc44ZSnGbWqx
 dKCzE86F/4I/tDtloYFoTW/hpDSA8bEElgH9TXo4x9XkyVNvu/i2dPX3n
 R5bGgbWGAy8blDL/+q7sUdgwjFoDF6GqAUzLwbYL51YbDEW6XxoiLZ8LN
 QLSMUUPTEmtiOmTHHX34BlAuPGxzJB6NtA3crlPrZMre/JP6jEroM2YU+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="254898685"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="254898685"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:02 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="691750807"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:25:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:55 +0300
Message-Id: <237e4b1de1567903d37ce1d1bb830020b8fd6690.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/20] drm/edid: convert drm_edid_to_sad() to
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

Use the cea db iterator for short audio descriptors. We'll still stop at
the first audio data block, but not at the first CTA Extension if that
doesn't have the info.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 34 +++++++++-------------------------
 1 file changed, 9 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 7d6bf0b2bd9e..1ea27278652b 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5007,40 +5007,21 @@ static void drm_edid_to_eld(struct drm_connector *connector,
  */
 int drm_edid_to_sad(const struct edid *edid, struct cea_sad **sads)
 {
+	const struct cea_db *db;
+	struct cea_db_iter iter;
 	int count = 0;
-	int i, start, end, dbl;
-	const u8 *cea;
-
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
 
+	cea_db_iter_edid_begin(edid, &iter);
+	cea_db_iter_for_each(db, &iter) {
 		if (cea_db_tag(db) == CTA_DB_AUDIO) {
 			int j;
 
-			dbl = cea_db_payload_len(db);
-
-			count = dbl / 3; /* SAD is 3B */
+			count = cea_db_payload_len(db) / 3; /* SAD is 3B */
 			*sads = kcalloc(count, sizeof(**sads), GFP_KERNEL);
 			if (!*sads)
 				return -ENOMEM;
 			for (j = 0; j < count; j++) {
-				const u8 *sad = &db[1 + j * 3];
+				const u8 *sad = &db->data[j * 3];
 
 				(*sads)[j].format = (sad[0] & 0x78) >> 3;
 				(*sads)[j].channels = sad[0] & 0x7;
@@ -5050,6 +5031,9 @@ int drm_edid_to_sad(const struct edid *edid, struct cea_sad **sads)
 			break;
 		}
 	}
+	cea_db_iter_end(&iter);
+
+	DRM_DEBUG_KMS("Found %d Short Audio Descriptors\n", count);
 
 	return count;
 }
-- 
2.30.2

