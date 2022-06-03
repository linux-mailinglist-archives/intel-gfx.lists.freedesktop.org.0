Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A752A53C83F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 12:14:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5AFB10F5F8;
	Fri,  3 Jun 2022 10:14:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E129110F5F8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 10:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654251269; x=1685787269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hg2BGAoJGcYiB6mRDJKqmVi9eRHMfScgi4ogePCJxMQ=;
 b=gkabHzp4K1oT99ZE4jEtWUdXnosEzcYSP1OZncxFZqZj9LEcrEd8z3KJ
 AVw7tsq/9gGU8EMaZTTE03K/6AqpQ3LXHpjFGtqH97E4w1iFkqIV1KkFT
 VHMqQqj/gwP9otgi2j4m97GL87pjCw7Jd8uEcrn/V+Tj/ktlMjaWZoS6E
 oGKXstCRO7fgNJQxrjgPskTt/nWFTrx1Bb9WvBtD2GMspfEyABHHvQwDp
 cWmSLiuti5MO3H6zrc37hR3iD2bPNFTu/FB/ofBOVPz5esn6P5nX6S/Ub
 iM5Wzg7ZSF1xOlwv54eb76/rN+DAxMu/qBZR1yMZyn1zC5pdch2oCS+qL A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="256081984"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="256081984"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 03:14:28 -0700
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="721694720"
Received: from kaszymec-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.38.113])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 03:14:27 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 Jun 2022 13:14:10 +0300
Message-Id: <20220603101411.3087789-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220603101411.3087789-1-jouni.hogander@intel.com>
References: <20220603101411.3087789-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/opregion: add function to check if
 headless sku
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Export headless sku bit (bit 13) from opregion->header->pcon as an
interface to check if our device is headless configuration.

Bspec: 53441
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 12 ++++++++++++
 drivers/gpu/drm/i915/display/intel_opregion.h |  7 +++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index f31e8c3f8ce0..eab3f2e6b786 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -53,6 +53,8 @@
 #define MBOX_ASLE_EXT		BIT(4)	/* Mailbox #5 */
 #define MBOX_BACKLIGHT		BIT(5)	/* Mailbox #2 (valid from v3.x) */
 
+#define PCON_HEADLESS_SKU	BIT(13)
+
 struct opregion_header {
 	u8 signature[16];
 	u32 size;
@@ -1135,6 +1137,16 @@ struct edid *intel_opregion_get_edid(struct intel_connector *intel_connector)
 	return new_edid;
 }
 
+bool intel_opregion_headless_sku(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+
+	if (!opregion->header)
+		return false;
+
+	return opregion->header->pcon & PCON_HEADLESS_SKU;
+}
+
 void intel_opregion_register(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->opregion;
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 82cc0ba34af7..5ad96e1d8278 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -76,6 +76,8 @@ int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
 int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
 struct edid *intel_opregion_get_edid(struct intel_connector *connector);
 
+bool intel_opregion_headless_sku(struct drm_i915_private *i915);
+
 #else /* CONFIG_ACPI*/
 
 static inline int intel_opregion_setup(struct drm_i915_private *dev_priv)
@@ -127,6 +129,11 @@ intel_opregion_get_edid(struct intel_connector *connector)
 	return NULL;
 }
 
+bool intel_opregion_headless_sku(struct drm_i915_private *i915)
+{
+	return false;
+}
+
 #endif /* CONFIG_ACPI */
 
 #endif
-- 
2.25.1

