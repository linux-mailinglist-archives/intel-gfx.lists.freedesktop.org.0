Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C796751D55E
	for <lists+intel-gfx@lfdr.de>; Fri,  6 May 2022 12:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB49710F9D0;
	Fri,  6 May 2022 10:12:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B390510FBA9;
 Fri,  6 May 2022 10:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651831935; x=1683367935;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ERWG+kUcC4QtG63Rs8azIwMFWUENpLEWpBncZKHx9EE=;
 b=SzGhyBE36ABSYLmxPqZeu7t0TrcWc3kNvPYT+Wf25IpCS1lznukYBIUL
 x6pbgm9HLYRGDCcGrxFFGYOnQc7hmWXCl5TtgBIb05TjBC6mvwiejO7Ne
 C6IgFqIM5A1GAs8b6Kcf/myqEvIEjHY/e09dNIr87fQxvsqysBeVLi0Bp
 V0Rlbvu4JiLut8dggYP2MtsfY3sjw+OBx0rj/qOJ4aTsIra3hcGfjl1mz
 GdMYjjSJ7BUC2JeU8afA4FY0kYAnMCqvUPBXuIK+tSaKicgDSk9gYHpOS
 Ilb3r/MxTvyAfyftzvFQoW5TnFNOF1vgPnJTFwtbLRbzP7kmocNe0ujMx g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="250424118"
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="250424118"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 03:12:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,203,1647327600"; d="scan'208";a="891772662"
Received: from psikora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.157.88])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2022 03:12:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Fri,  6 May 2022 13:10:25 +0300
Message-Id: <d20766d913dd019ccef2fb48e6dd829875f82435.1651830939.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651830938.git.jani.nikula@intel.com>
References: <cover.1651830938.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 18/25] drm/edid: add drm_edid helper for
 drm_edid_to_speaker_allocation()
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

We'll need to propagate drm_edid everywhere.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 39 ++++++++++++++++++++++++--------------
 1 file changed, 25 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 52ea187394dd..51aee048bcff 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -5010,25 +5010,14 @@ int drm_edid_to_sad(const struct edid *edid, struct cea_sad **sads)
 }
 EXPORT_SYMBOL(drm_edid_to_sad);
 
-/**
- * drm_edid_to_speaker_allocation - extracts Speaker Allocation Data Blocks from EDID
- * @edid: EDID to parse
- * @sadb: pointer to the speaker block
- *
- * Looks for CEA EDID block and extracts the Speaker Allocation Data Block from it.
- *
- * Note: The returned pointer needs to be freed using kfree().
- *
- * Return: The number of found Speaker Allocation Blocks or negative number on
- * error.
- */
-int drm_edid_to_speaker_allocation(const struct edid *edid, u8 **sadb)
+static int _drm_edid_to_speaker_allocation(const struct drm_edid *drm_edid,
+					   u8 **sadb)
 {
 	const struct cea_db *db;
 	struct cea_db_iter iter;
 	int count = 0;
 
-	cea_db_iter_edid_begin(edid, &iter);
+	cea_db_iter_edid_begin(drm_edid->edid, &iter);
 	cea_db_iter_for_each(db, &iter) {
 		if (cea_db_tag(db) == CTA_DB_SPEAKER &&
 		    cea_db_payload_len(db) == 3) {
@@ -5046,6 +5035,28 @@ int drm_edid_to_speaker_allocation(const struct edid *edid, u8 **sadb)
 
 	return count;
 }
+
+/**
+ * drm_edid_to_speaker_allocation - extracts Speaker Allocation Data Blocks from EDID
+ * @edid: EDID to parse
+ * @sadb: pointer to the speaker block
+ *
+ * Looks for CEA EDID block and extracts the Speaker Allocation Data Block from it.
+ *
+ * Note: The returned pointer needs to be freed using kfree().
+ *
+ * Return: The number of found Speaker Allocation Blocks or negative number on
+ * error.
+ */
+int drm_edid_to_speaker_allocation(const struct edid *edid, u8 **sadb)
+{
+	struct drm_edid drm_edid = {
+		.edid = edid,
+		.size = edid_size(edid),
+	};
+
+	return _drm_edid_to_speaker_allocation(&drm_edid, sadb);
+}
 EXPORT_SYMBOL(drm_edid_to_speaker_allocation);
 
 /**
-- 
2.30.2

