Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 964075180EE
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:25:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEB4110E646;
	Tue,  3 May 2022 09:24:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C36110E646
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569897; x=1683105897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1E27ttVE2ySsvZLN6ssEqapYFa5UNYHoluV2HJmTz3k=;
 b=HE85tUBUPZs+epqf06FTcA8aZcGDk6U03l6fLTeKbZRkcrXsXavwBgic
 bW7SytfvKq4X4X1whvv9CuNybHK2jJY4ljZcOvcDNEFeg1h9VwrRYlEnx
 ArCcBEzo1q1rqauummdMZPF49LblKrRLYqedJv3QEmJAYu8H2GQWUiTGs
 SkE4QCJlsKSV/dFfEEu8U+N7vBMKHA0VpdXIDrdU8071L7aL8j8lQrb2n
 fwNjwMqjic8kvZVRMfwtiC0cwlVT1uX80qoJLYkXvGsghguzNB2nKpkAu
 qg/I6n+LwyWXw4SWj1HawGFOxwhnAQyfFkD5sBOLoRrusbKtJvueWsZCi A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="249415573"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="249415573"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:57 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="598996134"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:54 +0300
Message-Id: <0b9e7f136854055a14b826097160fe0b43b9f3d1.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/20] drm/edid: convert
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
Cc: jani.nikula@intel.com
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
index 5c3e2ed53012..7d6bf0b2bd9e 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5069,42 +5069,25 @@ EXPORT_SYMBOL(drm_edid_to_sad);
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

