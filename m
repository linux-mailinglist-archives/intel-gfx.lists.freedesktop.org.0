Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E70F20EF3B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 09:23:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3180989B0D;
	Tue, 30 Jun 2020 07:23:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B4689AA6
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 07:23:24 +0000 (UTC)
IronPort-SDR: hEmBzI9EyD0IbLurYXunS6jU21J859v+ZPZY/UZfqDw4AIK7QI6FzOCOeMcEDduszjKAON2J/K
 Wmeca5+kG3zQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="126291936"
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="126291936"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 00:23:24 -0700
IronPort-SDR: r0mjLQGgioHgwhy9UYk1VoA8FwNv8kU8CmHCCTIvW0d2vWABOQR/kqsTbkx84nFdqnyZ01DxZu
 Z830JVoPuECg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,296,1589266800"; d="scan'208";a="295126416"
Received: from unknown (HELO joshikun.iind.intel.com) ([10.223.74.209])
 by orsmga002.jf.intel.com with ESMTP; 30 Jun 2020 00:23:22 -0700
From: Kunal Joshi <kunal1.joshi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 05:56:58 +0530
Message-Id: <20200630002700.5451-2-kunal1.joshi@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200630002700.5451-1-kunal1.joshi@intel.com>
References: <20200630002700.5451-1-kunal1.joshi@intel.com>
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
