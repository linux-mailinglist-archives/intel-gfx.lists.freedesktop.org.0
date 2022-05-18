Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEDC52BB51
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 15:07:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7845010ED79;
	Wed, 18 May 2022 13:07:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E18F710ED79
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 13:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652879267; x=1684415267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TuQt+Uk2tLjZ3jjWI0Fb7WSw1oCC2fsHDuy8wJfIPwk=;
 b=bFmbo5j/VFwa59BLqVJWSaH+sqVstixwqyU5Ku6eJty+1dT41M6CqK6c
 g0CVtMY0E+LHvdQB9vnKr2zZ4JAnd/V+Ui7dLnUwUVrQTQqvUkbcy0YT5
 eyS0t97GJ0MC78Vhsy3IOJbZ3UO0bhkbjiXl7JNSobR4EwKqjwfrnws1S
 Kvs35wQjpVUE155rhOxdVEMZCfCtpYdp5as4OpXS608RhcDT+tvPDnS7Z
 iyoI03PgYq+FIIR8etie9qrql6oxd8ZciKI6Q/OE7QGZ7Csi3bE276oma
 QgXNRVretLp6Uqywn9Jxc49tBd2LT29KLUzltAuhs6kVog6/RWfWxNGIy A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="358071670"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="358071670"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:30 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="742314257"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:28 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 18:37:10 +0530
Message-Id: <20220518130716.10936-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220518130716.10936-1-anshuman.gupta@intel.com>
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915/dgfx: OpRegion VRAM Self Refresh
 Support
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

Intel DGFX cards provides a feature Video Ram Self Refrsh(VRSR).
DGFX VRSR can be enabled with runtime suspend D3Cold flow and with
opportunistic S0ix system wide suspend flow as well.

Without VRSR enablement i915 has to evict the lmem objects to
system memory. Depending on some heuristics driver will evict
lmem objects without VRSR.

VRSR feature requires Host BIOS support, VRSR will be enable/disable
by HOST BIOS using ACPI OpRegion.

Adding OpRegion VRSR support in order to enable/disable
VRSR on discrete cards.

BSpec: 53440
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 47 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.h | 11 +++++
 2 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index f31e8c3f8ce0..a728f4c2f532 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -53,6 +53,9 @@
 #define MBOX_ASLE_EXT		BIT(4)	/* Mailbox #5 */
 #define MBOX_BACKLIGHT		BIT(5)	/* Mailbox #2 (valid from v3.x) */
 
+#define PCON_DGFX_BIOS_SUPPORTS_VRSR			BIT(11)
+#define PCON_DGFX_BIOS_SUPPORTS_VRSR_FIELD_VALID	BIT(12)
+
 struct opregion_header {
 	u8 signature[16];
 	u32 size;
@@ -128,7 +131,8 @@ struct opregion_asle {
 	u64 rvda;	/* Physical (2.0) or relative from opregion (2.1+)
 			 * address of raw VBT data. */
 	u32 rvds;	/* Size of raw vbt data */
-	u8 rsvd[58];
+	u8 vrsr;	/* DGFX Video Ram Self Refresh */
+	u8 rsvd[57];
 } __packed;
 
 /* OpRegion mailbox #5: ASLE ext */
@@ -199,6 +203,9 @@ struct opregion_asle_ext {
 
 #define ASLE_PHED_EDID_VALID_MASK	0x3
 
+/* VRAM SR */
+#define ASLE_VRSR_ENABLE		BIT(0)
+
 /* Software System Control Interrupt (SWSCI) */
 #define SWSCI_SCIC_INDICATOR		(1 << 0)
 #define SWSCI_SCIC_MAIN_FUNCTION_SHIFT	1
@@ -919,6 +926,8 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		opregion->header->over.minor,
 		opregion->header->over.revision);
 
+	drm_dbg(&dev_priv->drm, "OpRegion PCON values 0x%x\n", opregion->header->pcon);
+
 	mboxes = opregion->header->mboxes;
 	if (mboxes & MBOX_ACPI) {
 		drm_dbg(&dev_priv->drm, "Public ACPI methods supported\n");
@@ -1232,3 +1241,39 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 	opregion->vbt = NULL;
 	opregion->lid_state = NULL;
 }
+
+/*
+ * intel_opregion_bios_supports_vram_sr() get HOST BIOS VRAM Self
+ * Refresh capability support.
+ * @i915: pointer to i915 device.
+ */
+bool intel_opregion_bios_supports_vram_sr(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+
+	if (!IS_DGFX(i915))
+		return false;
+
+	if (opregion->header->pcon & PCON_DGFX_BIOS_SUPPORTS_VRSR_FIELD_VALID)
+		return opregion->header->pcon & PCON_DGFX_BIOS_SUPPORTS_VRSR;
+	else
+		return false;
+}
+
+/*
+ * intel_opregion_vram_sr() enable/disable VRAM Self Refresh.
+ * @i915: pointer to i915 device.
+ * @enable: Argument to enable/disable VRSR.
+ */
+void intel_opregion_vram_sr(struct drm_i915_private *i915, bool enable)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+
+	if (drm_WARN(&i915->drm, !opregion->asle, "ASLE MAILBOX3 is not available\n"))
+		return;
+
+	if (enable)
+		opregion->asle->vrsr |= ASLE_VRSR_ENABLE;
+	else
+		opregion->asle->vrsr &= ~ASLE_VRSR_ENABLE;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 82cc0ba34af7..0aa1c4a8a482 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -75,6 +75,8 @@ int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
 				  pci_power_t state);
 int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
 struct edid *intel_opregion_get_edid(struct intel_connector *connector);
+bool intel_opregion_bios_supports_vram_sr(struct drm_i915_private *i915);
+void intel_opregion_vram_sr(struct drm_i915_private *i915, bool enable);
 
 #else /* CONFIG_ACPI*/
 
@@ -127,6 +129,15 @@ intel_opregion_get_edid(struct intel_connector *connector)
 	return NULL;
 }
 
+static bool intel_opregion_bios_supports_vram_sr(struct drm_i915_private *i915)
+{
+	return false;
+}
+
+static void intel_opregion_vram_sr(struct drm_i915_private *i915, bool enable)
+{
+}
+
 #endif /* CONFIG_ACPI */
 
 #endif
-- 
2.26.2

