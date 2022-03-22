Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D374E486E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Mar 2022 22:41:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C76510E578;
	Tue, 22 Mar 2022 21:41:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12DE410E578;
 Tue, 22 Mar 2022 21:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647985280; x=1679521280;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5z03e66q5DsjN2ki2aosqJHkbi24NfxJqhJj0ZJRMjU=;
 b=R2OBc0jZyvVDlZKabdp3mLNSa2KRW1z1LIevTeHuVTmia/2n2+RuBHIX
 vQ6x2V2Q7yo1ITtgQRETRtnhurFgHkRb+VtN+pQ8xHvWz3MlAZ+clS7d/
 lklYoYJj+tw+yp5wwfCFam1hvh367VstLStXy2N9kEm0iOQktAn7GZmgU
 E/iR0ElKB5/Nl131kJythJP8Hmcl0LWO6oXHuXs04po8w/psI2ilIv1qp
 1TzJI2EmkUjwwx4fO+oSpV7oITXSwduQFWoBSLej+jTZ9QXZWuxxQxf78
 h+j5Nvefdtnyxp1RumisewM2ACcUz80ECqDNLXI4elQqvm9dXnFOR79Vf A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="258145965"
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="258145965"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:41:19 -0700
X-IronPort-AV: E=Sophos;i="5.90,202,1643702400"; d="scan'208";a="649181959"
Received: from sburacze-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.58.237])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2022 14:41:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Tue, 22 Mar 2022 23:40:33 +0200
Message-Id: <b3919b0e39566af13cf23a8621aa3b308a9191b5.1647985054.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647985054.git.jani.nikula@intel.com>
References: <cover.1647985054.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 04/19] drm/edid: add iterator for EDID base and
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 46 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 6c188539493e..31d132fcd0ca 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -3348,6 +3348,52 @@ add_detailed_modes(struct drm_connector *connector, struct edid *edid,
 #define EDID_CEA_YCRCB422	(1 << 4)
 #define EDID_CEA_VCDB_QS	(1 << 6)
 
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
+	if (!iter->edid)
+		return NULL;
+
+	if (iter->index > drm_edid_extension_block_count(iter->edid))
+		return NULL;
+
+	return (const u8 *)iter->edid + EDID_LENGTH * iter->index++;
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
 /*
  * Search EDID for CEA extension block.
  */
-- 
2.30.2

