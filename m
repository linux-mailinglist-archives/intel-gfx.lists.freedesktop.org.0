Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EA7501248
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 17:07:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53F0A10FF5D;
	Thu, 14 Apr 2022 15:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43DAA10FF5D;
 Thu, 14 Apr 2022 15:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649948869; x=1681484869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wWS7hj66mMEwSHWZdqJDoEzQIEuEW6MGVfGa/Cd5DSY=;
 b=gquKgfi/4m34Mo9Ny/fEeTlKh04LiEB6ctTA0nCM1v/7ms9jSbJvoP+V
 oSQsZ+dr++39RHo7sIYHuGMLVEVdDgPQFhjwI/VZaOaNv2YluY6q83/qc
 1K/T3PxZW/NcBDIWfYjVjtOjZwtZVNudY+4xm30lTt35ZWkfJyquTdeFY
 vGN8rU7Q39s5e7GkiXlT+2k0dnW0SU/Mmhxh68iKSgJ+j1hFQvVqmCjIA
 jCtOoAdLMVSaXkv024M6ZGoizplIun5RWNFYjDim0I7xohK8CNLWJOWw+
 sI1zinn45Ou/recZQrs1BcW4rcGdXBhznAc1mzKqT0a/lXkSrAqd1HOiq w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="288006748"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="288006748"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:07:30 -0700
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="527427282"
Received: from nplaweck-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.149.236])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 08:07:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 14 Apr 2022 18:06:47 +0300
Message-Id: <8311cab3a1e58f492bec757c0508ad7b78cbc459.1649948562.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649948562.git.jani.nikula@intel.com>
References: <cover.1649948562.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/19] drm/edid: add iterator for EDID base and
 extension blocks
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

Add an iterator abstraction for going through all the EDID blocks.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 48 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 18b0ff223885..40ffd7aba157 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1600,6 +1600,54 @@ static const void *edid_extension_block_data(const struct edid *edid, int index)
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

