Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E10720B5AB
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 18:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50B766E139;
	Fri, 26 Jun 2020 16:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69AAF6ECCD
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 16:10:00 +0000 (UTC)
IronPort-SDR: IF6Z4+y5y271wBduj+wc69h+RHtV4UGpWQbIMwoMu2YpoffPO0PW+RpA+YYyUzbV5oM3axbmDH
 JGGwIdOmFDTg==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="133758575"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="133758575"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2020 09:10:00 -0700
IronPort-SDR: csAEg0WcH7dBLLkd5wWZ02LOYWi9FRgEeMMYLYWCiCF2MsR5ApvfyZBiaikPN7Biyg66+lf7Yl
 lKyXD3TxLorw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; d="scan'208";a="479868670"
Received: from unknown (HELO joshikun.iind.intel.com) ([10.223.74.209])
 by fmsmga006.fm.intel.com with ESMTP; 26 Jun 2020 09:09:58 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 14:43:31 +0530
Message-Id: <20200626091333.17516-2-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200626091333.17516-1-kunal1.joshi@intel.com>
References: <20200626091333.17516-1-kunal1.joshi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 1/3] drm: Add helper to compare edids.
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
Cc: daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Many drivers would benefit from using
drm helper to compare edid, rather
than bothering with own implementation.

v2: Added documentation for this function.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 33 +++++++++++++++++++++++++++++++++
 include/drm/drm_edid.h     |  9 +++++++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 71ae0cd6d576..920ac9ef6018 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1615,6 +1615,39 @@ static bool drm_edid_is_zero(const u8 *in_edid, int length)
 	return true;
 }
 
+/**
+ * drm_edid_are_equal - compare two edid blobs.
+ * @edid1: pointer to first blob
+ * @edid2: pointer to second blob
+ * This helper can be used during probing to determine if
+ * edid had changed.
+ */
+bool drm_edid_are_equal(const struct edid *edid1, const struct edid *edid2)
+{
+	int edid1_len, edid2_len;
+	bool edid1_present = edid1 != NULL;
+	bool edid2_present = edid2 != NULL;
+
+	if (edid1_present != edid2_present)
+		return false;
+
+	if (edid1) {
+
+		edid1_len = EDID_LENGTH * (1 + edid1->extensions);
+		edid2_len = EDID_LENGTH * (1 + edid2->extensions);
+
+		if (edid1_len != edid2_len)
+			return false;
+
+		if (memcmp(edid1, edid2, edid1_len))
+			return false;
+	}
+
+	return true;
+}
+EXPORT_SYMBOL(drm_edid_are_equal);
+
+
 /**
  * drm_edid_block_valid - Sanity check the EDID block (base or extension)
  * @raw_edid: pointer to raw EDID block
diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
index 43254319ab19..cfa4f5af49af 100644
--- a/include/drm/drm_edid.h
+++ b/include/drm/drm_edid.h
@@ -359,6 +359,15 @@ drm_load_edid_firmware(struct drm_connector *connector)
 }
 #endif
 
+/**
+ * drm_edid_are_equal - compare two edid blobs.
+ * @edid1: pointer to first blob
+ * @edid2: pointer to second blob
+ * This helper can be used during probing to determine if
+ * edid had changed.
+ */
+bool drm_edid_are_equal(const struct edid *edid1, const struct edid *edid2);
+
 int
 drm_hdmi_avi_infoframe_from_display_mode(struct hdmi_avi_infoframe *frame,
 					 const struct drm_connector *connector,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
