Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 748735180EB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:24:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D168910F819;
	Tue,  3 May 2022 09:24:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2A2510F819
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569882; x=1683105882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+BpBKqVxU0tny5Slhj9Sh+VW8cF/WrxT453OlYKfwTw=;
 b=hiXxTttI6NlWIUwUm5AWvk94Y9yn+uEoZwKPX6halYlMryMEZQN0Ri5w
 zbMoGgEBk7Jsx2J8Xcr9XHZhcBu36k8zz3j5U8gvGUXvJn6gAdL5QS6oz
 3nEPd9wTvrRU7qlklasICk7COSvzSDfY7ygwlzqI5SgpjaxUxMPvivahW
 rgRG/eD0TES3Z8WDut5aobHIahoWmxiExbHPXqLFrX0x0w2WUAlsDwWef
 6MhzXad1UV3YwTpzoHtQnzh0u0KneYqDzzXiMtV802tpLgiTbCTLXKCIi
 5rRpN33P1zkzzYZwdYKhjsyZznD6otgUudqQHCwxDMWytFE/6hjtWWC/C g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="247343682"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="247343682"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:42 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="516490278"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:51 +0300
Message-Id: <37fdd2d9eabc73aaa9f95c56246dc47aea0e8e4e.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/20] drm/edid: add iterator for CTA data
 blocks
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

Add an iterator for CTA Data Blocks across EDID CTA Extensions and
DisplayID CTA Data Blocks.

v2: Update references, note why we can trust displayid ranges (Ville)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 202 ++++++++++++++++++++++++++++++++++---
 1 file changed, 190 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 6d71b2b77639..da8f455b725e 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -4336,24 +4336,12 @@ do_hdmi_vsdb_modes(struct drm_connector *connector, const u8 *db, u8 len,
 	return modes;
 }
 
-static int
-cea_db_payload_len(const u8 *db)
-{
-	return db[0] & 0x1f;
-}
-
 static int
 cea_db_extended_tag(const u8 *db)
 {
 	return db[1];
 }
 
-static int
-cea_db_tag(const u8 *db)
-{
-	return db[0] >> 5;
-}
-
 static int
 cea_revision(const u8 *cea)
 {
@@ -4409,6 +4397,196 @@ cea_db_offsets(const u8 *cea, int *start, int *end)
 	return 0;
 }
 
+/*
+ * CTA Data Block iterator.
+ *
+ * Iterate through all CTA Data Blocks in both EDID CTA Extensions and DisplayID
+ * CTA Data Blocks.
+ *
+ * struct cea_db *db:
+ * struct cea_db_iter iter;
+ *
+ * cea_db_iter_edid_begin(edid, &iter);
+ * cea_db_iter_for_each(db, &iter) {
+ *         // do stuff with db
+ * }
+ * cea_db_iter_end(&iter);
+ */
+struct cea_db_iter {
+	struct drm_edid_iter edid_iter;
+	struct displayid_iter displayid_iter;
+
+	/* Current Data Block Collection. */
+	const u8 *collection;
+
+	/* Current Data Block index in current collection. */
+	int index;
+
+	/* End index in current collection. */
+	int end;
+};
+
+/* CTA-861-H section 7.4 CTA Data BLock Collection */
+struct cea_db {
+	u8 tag_length;
+	u8 data[];
+} __packed;
+
+static int cea_db_tag(const void *_db)
+{
+	/* FIXME: Transition to passing struct cea_db * everywhere. */
+	const struct cea_db *db = _db;
+
+	return db->tag_length >> 5;
+}
+
+static int cea_db_payload_len(const void *_db)
+{
+	/* FIXME: Transition to passing struct cea_db * everywhere. */
+	const struct cea_db *db = _db;
+
+	return db->tag_length & 0x1f;
+}
+
+static const void *cea_db_data(const struct cea_db *db)
+{
+	return db->data;
+}
+
+static void cea_db_iter_edid_begin(const struct edid *edid, struct cea_db_iter *iter)
+{
+	memset(iter, 0, sizeof(*iter));
+
+	drm_edid_iter_begin(edid, &iter->edid_iter);
+	displayid_iter_edid_begin(edid, &iter->displayid_iter);
+}
+
+static const struct cea_db *
+__cea_db_iter_current_block(const struct cea_db_iter *iter)
+{
+	const struct cea_db *db;
+
+	if (!iter->collection)
+		return NULL;
+
+	db = (const struct cea_db *)&iter->collection[iter->index];
+
+	if (iter->index + sizeof(*db) <= iter->end &&
+	    iter->index + sizeof(*db) + cea_db_payload_len(db) <= iter->end)
+		return db;
+
+	return NULL;
+}
+
+/*
+ * References:
+ * - VESA E-EDID v1.4
+ * - CTA-861-H section 7.3.3 CTA Extension Version 3
+ */
+static const void *__cea_db_iter_edid_next(struct cea_db_iter *iter)
+{
+	const u8 *ext;
+
+	drm_edid_iter_for_each(ext, &iter->edid_iter) {
+		/* Only support CTA Extension revision 3+ */
+		if (ext[0] != CEA_EXT || cea_revision(ext) < 3)
+			continue;
+
+		iter->index = 4;
+		iter->end = ext[2];
+		if (iter->end == 0)
+			iter->end = 127;
+		if (iter->end < 4 || iter->end > 127)
+			continue;
+
+		return ext;
+	}
+
+	return NULL;
+}
+
+/*
+ * References:
+ * - DisplayID v1.3 Appendix C: CEA Data Block within a DisplayID Data Block
+ * - DisplayID v2.0 section 4.10 CTA DisplayID Data Block
+ *
+ * Note that the above do not specify any connection between DisplayID Data
+ * Block revision and CTA Extension versions.
+ */
+static const void *__cea_db_iter_displayid_next(struct cea_db_iter *iter)
+{
+	const struct displayid_block *block;
+
+	displayid_iter_for_each(block, &iter->displayid_iter) {
+		if (block->tag != DATA_BLOCK_CTA)
+			continue;
+
+		/*
+		 * The displayid iterator has already verified the block bounds
+		 * in displayid_iter_block().
+		 */
+		iter->index = sizeof(*block);
+		iter->end = iter->index + block->num_bytes;
+
+		return block;
+	}
+
+	return NULL;
+}
+
+static const struct cea_db *__cea_db_iter_next(struct cea_db_iter *iter)
+{
+	const struct cea_db *db;
+
+	if (iter->collection) {
+		/* Current collection should always be valid. */
+		db = __cea_db_iter_current_block(iter);
+		if (WARN_ON(!db)) {
+			iter->collection = NULL;
+			return NULL;
+		}
+
+		/* Next block in CTA Data Block Collection */
+		iter->index += sizeof(*db) + cea_db_payload_len(db);
+
+		db = __cea_db_iter_current_block(iter);
+		if (db)
+			return db;
+	}
+
+	for (;;) {
+		/*
+		 * Find the next CTA Data Block Collection. First iterate all
+		 * the EDID CTA Extensions, then all the DisplayID CTA blocks.
+		 *
+		 * Per DisplayID v1.3 Appendix B: DisplayID as an EDID
+		 * Extension, it's recommended that DisplayID extensions are
+		 * exposed after all of the CTA Extensions.
+		 */
+		iter->collection = __cea_db_iter_edid_next(iter);
+		if (!iter->collection)
+			iter->collection = __cea_db_iter_displayid_next(iter);
+
+		if (!iter->collection)
+			return NULL;
+
+		db = __cea_db_iter_current_block(iter);
+		if (db)
+			return db;
+	}
+}
+
+#define cea_db_iter_for_each(__db, __iter) \
+	while (((__db) = __cea_db_iter_next(__iter)))
+
+static void cea_db_iter_end(struct cea_db_iter *iter)
+{
+	displayid_iter_end(&iter->displayid_iter);
+	drm_edid_iter_end(&iter->edid_iter);
+
+	memset(iter, 0, sizeof(*iter));
+}
+
 static bool cea_db_is_hdmi_vsdb(const u8 *db)
 {
 	if (cea_db_tag(db) != CTA_DB_VENDOR)
-- 
2.30.2

