Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DC9559DE3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 17:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0228610E124;
	Fri, 24 Jun 2022 15:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC7C710E4F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 15:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656086392; x=1687622392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bt1J0NSPy9S7uwRydjZPErReIijUgNXjutNRq/QeBDQ=;
 b=NiKpzewcx7tUvKoAgw8+3Qb/3K0HM/r+JHySHG3j9lSm1GhPeKI3u1uo
 vHXK0Cv8yBTESdVy6kD3m7p2RXRVnwUjpQIsVml+DNzaujKMMoIHhw30E
 dCDUZAXHiv0HjztE5aDXaobkTMN/0NWQHumyIMxKdFWEADVUt1Wt/uP9H
 EaWqJEvPNrOZI96LsnoNbsoCBtjxFNNxsrbJ4VEjSVov461lGFHevwfes
 g1tRwjkrdi4/6k/hEroj4JKuARbko93rmtbNRfnQOE9o9sqUl5OBnZVEK
 ZfNsWPrmrCdchrQPdED7lhsXriOnmRB2OIzaLGjLutf3s+eBNUryMUKae g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10388"; a="281762287"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="281762287"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:44 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="835170043"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 08:59:42 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 21:29:14 +0530
Message-Id: <20220624155922.7435-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220624155922.7435-1-anshuman.gupta@intel.com>
References: <20220624155922.7435-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/9] drm/i915/dgfx: OpRegion VRAM Self
 Refresh Support
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Intel DGFX cards provides a feature Video Ram Self Refrsh(vram_sr).
vram_sr can be enabled with runtime suspend D3Cold flow and with
opportunistic S0ix system wide suspend flow as well.

vram_sr feature requires Host BIOS support, vram_sr will be
enable/disable by HOST BIOS using ACPI OpRegion.

OpRegion vram_sr is only applicable on Motherboard Down
cards.

Adding OpRegion vram_sr support in order to enable/disable
vram_sr on discrete cards.

v2:
- Added opregion->header NULL check. [Jani]
- Bundled opregion->asle NULL check to early return. [Jani]
- Use static inline for dummy declaration. [Jani]

BSpec: 53440
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 78 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.h | 17 ++++
 2 files changed, 94 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 1c0c745c142d..f4a2a02c9ed3 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -55,6 +55,8 @@
 #define MBOX_ASLE_EXT		BIT(4)	/* Mailbox #5 */
 #define MBOX_BACKLIGHT		BIT(5)	/* Mailbox #2 (valid from v3.x) */
 
+#define PCON_DGFX_BIOS_SUPPORTS_VRSR			BIT(11)
+#define PCON_DGFX_BIOS_SUPPORTS_VRSR_FIELD_VALID	BIT(12)
 #define PCON_HEADLESS_SKU	BIT(13)
 
 struct opregion_header {
@@ -132,7 +134,8 @@ struct opregion_asle {
 	u64 rvda;	/* Physical (2.0) or relative from opregion (2.1+)
 			 * address of raw VBT data. */
 	u32 rvds;	/* Size of raw vbt data */
-	u8 rsvd[58];
+	u8 vrsr;	/* DGFX Video Ram Self Refresh */
+	u8 rsvd[57];
 } __packed;
 
 /* OpRegion mailbox #5: ASLE ext */
@@ -203,6 +206,9 @@ struct opregion_asle_ext {
 
 #define ASLE_PHED_EDID_VALID_MASK	0x3
 
+/* VRAM SR */
+#define ASLE_VRSR_ENABLE		BIT(0)
+
 /* Software System Control Interrupt (SWSCI) */
 #define SWSCI_SCIC_INDICATOR		(1 << 0)
 #define SWSCI_SCIC_MAIN_FUNCTION_SHIFT	1
@@ -923,6 +929,8 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		opregion->header->over.minor,
 		opregion->header->over.revision);
 
+	drm_dbg(&dev_priv->drm, "OpRegion PCON values 0x%x\n", opregion->header->pcon);
+
 	mboxes = opregion->header->mboxes;
 	if (mboxes & MBOX_ACPI) {
 		drm_dbg(&dev_priv->drm, "Public ACPI methods supported\n");
@@ -1248,3 +1256,71 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 	opregion->vbt = NULL;
 	opregion->lid_state = NULL;
 }
+
+/**
+ * intel_opregion_vram_sr_required().
+ * @i915 i915 device priv data.
+ *
+ * It checks whether a DGFX card is Mother Board Down config depending
+ * on respective discrete platform.
+ *
+ * Returns:
+ * It returns a boolean whether opregion vram_sr support is required.
+ */
+bool
+intel_opregion_vram_sr_required(struct drm_i915_private *i915)
+{
+	return false;
+}
+
+/**
+ * intel_opregion_bios_supports_vram_sr() - get HOST BIOS vram_sr
+ * capability support.
+ * @i915: pointer to i915 device.
+ *
+ * It checks opregion pcon vram_sr fields to get HOST BIOS vram_sr
+ * capability support. It is only applocable to DGFX.
+ *
+ * Returns:
+ * true when bios supports vram_sr, or false if bios doesn't support.
+ */
+bool intel_opregion_bios_supports_vram_sr(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+
+	if (!IS_DGFX(i915))
+		return false;
+
+	if (!opregion->header)
+		return false;
+
+	if (opregion->header->pcon & PCON_DGFX_BIOS_SUPPORTS_VRSR_FIELD_VALID)
+		return opregion->header->pcon & PCON_DGFX_BIOS_SUPPORTS_VRSR;
+	else
+		return false;
+}
+
+/**
+ * intel_opregion_vram_sr() - enable/disable vram_sr.
+ * @i915: pointer to i915 device.
+ * @enable: Argument to enable/disable vram_sr.
+ *
+ * It enables/disables vram_sr in opregion ASLE MBOX, based upon that
+ * HOST BIOS will enables and disbales VRAM_SR during
+ * ACPI _PS3/_OFF and _PS/_ON glue method.
+ */
+void intel_opregion_vram_sr(struct drm_i915_private *i915, bool enable)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+
+	if (!opregion->header || !opregion->asle)
+		return;
+
+	if (!intel_opregion_vram_sr_required(i915))
+		return;
+
+	if (enable)
+		opregion->asle->vrsr |= ASLE_VRSR_ENABLE;
+	else
+		opregion->asle->vrsr &= ~ASLE_VRSR_ENABLE;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 2f261f985400..55a61e8a28dc 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -75,6 +75,9 @@ int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
 				  pci_power_t state);
 int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
 struct edid *intel_opregion_get_edid(struct intel_connector *connector);
+bool intel_opregion_vram_sr_required(struct drm_i915_private *i915);
+bool intel_opregion_bios_supports_vram_sr(struct drm_i915_private *i915);
+void intel_opregion_vram_sr(struct drm_i915_private *i915, bool enable);
 
 bool intel_opregion_headless_sku(struct drm_i915_private *i915);
 
@@ -134,6 +137,20 @@ static inline bool intel_opregion_headless_sku(struct drm_i915_private *i915)
 	return false;
 }
 
+static inline bool intel_opregion_vram_sr_required(struct drm_i915_private *i915)
+{
+	return false;
+}
+
+static inline bool intel_opregion_bios_supports_vram_sr(struct drm_i915_private *i915)
+{
+	return false;
+}
+
+static inline void intel_opregion_vram_sr(struct drm_i915_private *i915, bool enable)
+{
+}
+
 #endif /* CONFIG_ACPI */
 
 #endif
-- 
2.26.2

