Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D6B81A8E9
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 23:15:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA15B10E642;
	Wed, 20 Dec 2023 22:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BCAF10E642
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 22:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703110514; x=1734646514;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/9Ue7OXq/E1mjYeSrSvjPu6x1vXQliA2qJCOlHnyhT4=;
 b=egvL3oBpsuD2YxfdL9KQq/9y66isVfNFpxSoeJjy5hP2lzw1AxUOGKxM
 Ty152G+THSBegz7hxbiKNp964m90UEDKFPF7anuAqfKDabXLohD9uRybu
 KCKbn+FB53Ki8c8IzTtjLG67Xzp0BAe91iCbfd1nDLRGHuQjYzBuN892E
 ixPvIhvLd6R8ehxBC24qDjoX4UCZrqPfgaOWaA3EO+EhXd8M2Q1F83akW
 7rTYVvyaito2rZQRWq1ikP87X4xUkLxJp0IcbSuAtNr3KTv6MBZKuGjZq
 Wkuvg+ZYg3HddrlahztpVs2CTWyr6rsfsr09GVknEV7PilUkG5BTdr6Hs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="460220636"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="460220636"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 14:15:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="920106978"
X-IronPort-AV: E=Sophos;i="6.04,292,1695711600"; d="scan'208";a="920106978"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 14:15:13 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 4/4] drm/i915: Separate tc check for legacy and non legacy
 tc phys
Date: Wed, 20 Dec 2023 14:13:41 -0800
Message-Id: <20231220221341.3248508-5-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
References: <20231220221341.3248508-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Starting MTL and DG2 if a phy is not marked as USB-typeC or TBT capable
by vbt  we should not consider it as a Legacy type-c phy.

The concept of Legacy-tc existed in platforms from Icelake to Alder lake
where an external FIA can be routed to one of the phy's thus making the phy
tc capable without being marked in the vbt.

Discrete cards have native ports and client products post MTL have a 1:1
mapping with type-C subsystem which is advertised by the bios. So rely on
the vbt info regarding type-c capability.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 29 ++++++++++++-------
 .../drm/i915/display/intel_display_device.h   |  1 +
 3 files changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 12a29363e5df..7d5b95f97d5f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5100,7 +5100,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 	}
 
 	if (intel_phy_is_tc(dev_priv, phy)) {
-		bool is_legacy =
+		bool is_legacy = HAS_LEGACY_TC(dev_priv) &&
 			!intel_bios_encoder_supports_typec_usb(devdata) &&
 			!intel_bios_encoder_supports_tbt(devdata);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b10aad15a63d..03006c9af824 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1854,17 +1854,9 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 		return false;
 }
 
-bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
+static bool intel_phy_is_legacy_tc(struct drm_i915_private *dev_priv, enum phy phy)
 {
-	/*
-	 * DG2's "TC1", although TC-capable output, doesn't share the same flow
-	 * as other platforms on the display engine side and rather rely on the
-	 * SNPS PHY, that is programmed separately
-	 */
-	if (IS_DG2(dev_priv))
-		return false;
-
-	if (DISPLAY_VER(dev_priv) >= 13)
+	if (DISPLAY_VER(dev_priv) == 13)
 		return phy >= PHY_F && phy <= PHY_I;
 	else if (IS_TIGERLAKE(dev_priv))
 		return phy >= PHY_D && phy <= PHY_I;
@@ -1874,6 +1866,23 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 	return false;
 }
 
+static bool intel_phy_is_vbt_tc(struct drm_i915_private *dev_priv, enum phy phy)
+{
+	const struct intel_bios_encoder_data *data =
+		intel_bios_encoder_phy_data_lookup(dev_priv, phy);
+
+	return intel_bios_encoder_supports_typec_usb(data) &&
+	       intel_bios_encoder_supports_tbt(data);
+}
+
+bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
+{
+	if (!HAS_LEGACY_TC(dev_priv))
+		return intel_phy_is_vbt_tc(dev_priv, phy);
+	else
+		return intel_phy_is_legacy_tc(dev_priv, phy);
+}
+
 bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	/*
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index fe4268813786..9450e263c873 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -58,6 +58,7 @@ struct drm_printer;
 #define HAS_IPS(i915)			(IS_HASWELL_ULT(i915) || IS_BROADWELL(i915))
 #define HAS_LRR(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_LSPCON(i915)		(IS_DISPLAY_VER(i915, 9, 10))
+#define HAS_LEGACY_TC(i915)		(IS_DISPLAY_VER(i915, 11, 13) && !IS_DGFX(i915))
 #define HAS_MBUS_JOINING(i915)		(IS_ALDERLAKE_P(i915) || DISPLAY_VER(i915) >= 14)
 #define HAS_MSO(i915)			(DISPLAY_VER(i915) >= 12)
 #define HAS_OVERLAY(i915)		(DISPLAY_INFO(i915)->has_overlay)
-- 
2.34.1

