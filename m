Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB936545D05
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 09:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B16C210F8FC;
	Fri, 10 Jun 2022 07:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BC3E10F8FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 07:17:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654845447; x=1686381447;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NKEURtQ4rqp9PlmT/ChNKAH1llJNg9K+BDK0BQ2OuxQ=;
 b=k63byWI757MWhQ/JIvfpg+HNZls2gL7JA+Bm/mp9LVAtkJAdp3PYgkJK
 XgQmrrlgPlvjkcldGIF/y599SHrlEx+zOGkCHhNI9qv5OAeu6Z90ZJRwB
 DE5ky+JntnbBGjgswTKfGecCmZDYaMCAv1WAYXGfaW9StIK5+xAVF1PgM
 T4rquySOb5co33t6aIi87WR4vQNAWoXcBw3p2qmz9oI4pe+OX+/nkJQmh
 ttCd1CLbBLzJeQ+lHP0K2+kzqMVszSvTwULm6RqHJokzTs7kA9hv18ryw
 ZVV1bWkhDYLvIipWG7tacV9bnwykYnZJHnpdFekVBKaIbTluhAoSAy+Ds Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10373"; a="302917273"
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="302917273"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 00:17:27 -0700
X-IronPort-AV: E=Sophos;i="5.91,288,1647327600"; d="scan'208";a="828090950"
Received: from seamusk-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.39.102])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 00:17:25 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jun 2022 10:17:02 +0300
Message-Id: <20220610071704.4150527-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220610071704.4150527-1-jouni.hogander@intel.com>
References: <20220610071704.4150527-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/opregion: add function to check
 if headless sku
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

This is mainly targeted for hybrid gfx systems. E.g. when display
is not supposed to be connected discrete graphics card it's
opregion can inform this is headless graphics card.

v2: Check also opregion version

Bspec: 53441
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_opregion.h |  7 +++++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index f31e8c3f8ce0..6876ba30d5a9 100644
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
@@ -1135,6 +1137,18 @@ struct edid *intel_opregion_get_edid(struct intel_connector *intel_connector)
 	return new_edid;
 }
 
+bool intel_opregion_headless_sku(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+	struct opregion_header *header = opregion->header;
+
+	if (!header || header->over.major < 2 ||
+	    (header->over.major == 2 && header->over.minor < 3))
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

