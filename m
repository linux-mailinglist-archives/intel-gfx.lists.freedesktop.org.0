Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B865180EA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 11:24:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8480F10F793;
	Tue,  3 May 2022 09:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B1BC10F815
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 09:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651569878; x=1683105878;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ar+O5rhv2gY5D9A5mJHKArfxJvwbHk9PAplDpwDNtCY=;
 b=JkwtA5Bt/a6SQdrhQJiJ+ozGkCG174c+FtxonHB0iRdOZKFiH28Kxzr/
 qRtdTbbHItrfdnI+VmHiaV5H0Z+p7BaMj6x9i7G3uGEHM/L0O/rHFzwAx
 LXz8savrmggAIZGsb/ScLXBDmNrRY5oDnce3VVJgSVSoSZQIwwciQeUBs
 oJZrgosBG1up9fMIW/tWawu/MyT1E79yNxTYX3PG1NP5zehhVDNEyl4aX
 1Evnm4vAguLHHcrjLCMccVfnGF3+5lqU9Ktb1FXppcTnRUJDpZ2KuF3SH
 ytJWB278AhNgPb5W8yAD6M7fX2iWJ3ZOnMy+9Gn1H184JehinbIGlR7NA w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10335"; a="267028617"
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="267028617"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:37 -0700
X-IronPort-AV: E=Sophos;i="5.91,194,1647327600"; d="scan'208";a="691750228"
Received: from jasinski-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.126])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 02:24:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 12:23:50 +0300
Message-Id: <ce02778b353b906c928268de9d7569d493a9be5d.1651569697.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1651569697.git.jani.nikula@intel.com>
References: <cover.1651569697.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/20] drm/edid: add iterator for EDID base
 and extension blocks
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

Add an iterator abstraction for going through all the EDID blocks.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 48 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 67eaa01f1d7c..6d71b2b77639 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1599,6 +1599,54 @@ static const void *edid_extension_block_data(const struct edid *edid, int index)
 	return edid_block_data(edid, index + 1);
 }
 
+/*
+ * EDID base and extension block iterator.
+ *
+ * struct drm_edid_iter iter;
+ * const u8 *block;
+ *
+ * drm_edid_iter_begin(edid, &iter);
+ * drm_edid_iter_for_each(block, &iter) {
+ *         // do stuff with block
+ * }
+ * drm_edid_iter_end(&iter);
+ */
+struct drm_edid_iter {
+	const struct edid *edid;
+
+	/* Current block index. */
+	int index;
+};
+
+static void drm_edid_iter_begin(const struct edid *edid,
+				struct drm_edid_iter *iter)
+{
+	memset(iter, 0, sizeof(*iter));
+
+	iter->edid = edid;
+}
+
+static const void *__drm_edid_iter_next(struct drm_edid_iter *iter)
+{
+	const void *block = NULL;
+
+	if (!iter->edid)
+		return NULL;
+
+	if (iter->index < edid_block_count(iter->edid))
+		block = edid_block_data(iter->edid, iter->index++);
+
+	return block;
+}
+
+#define drm_edid_iter_for_each(__block, __iter)			\
+	while (((__block) = __drm_edid_iter_next(__iter)))
+
+static void drm_edid_iter_end(struct drm_edid_iter *iter)
+{
+	memset(iter, 0, sizeof(*iter));
+}
+
 static const u8 edid_header[] = {
 	0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00
 };
-- 
2.30.2

