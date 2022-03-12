Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A064D702D
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Mar 2022 18:39:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2600610E00F;
	Sat, 12 Mar 2022 17:39:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com
 [IPv6:2607:f8b0:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C57B8931F
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Mar 2022 17:39:14 +0000 (UTC)
Received: by mail-pg1-x534.google.com with SMTP id o26so10149279pgb.8
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Mar 2022 09:39:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=3vIABokiVenHSqnBlJrFtTPsom0JqabsqmHTsmCE1mI=;
 b=WgsyXLM+wKOkO4n51aIpd3tW3l3oJCEYV14jWVD3nm2B+IIYn/ayYw5T/xfYoS3jL8
 pKN3IN3q8+EtRtRTNCGfDp3eNpMB+VNYjyaqucfwrU5ZyorlrKx+kklXc/Y1QQmBIam2
 NkhOyrmMslajeFnawsJ7G7WZxSOpWidG11ke6KrVlCuYwjDyIVo20OiPg1SRdmWeM8MO
 B8V7ghZbEHNLsAqzKR5XFLKj6F4K49gS0/dNn7K28Zv775bBqVkqb4kiU/y+LmxV8eTE
 B/y5aiPI+R1W5jYAmnDOVd6Y+0D0bR3jYSRRBu/FJDyjfEQO21j6J39rN/B/FWEubmfk
 5h5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=3vIABokiVenHSqnBlJrFtTPsom0JqabsqmHTsmCE1mI=;
 b=lvshIbvw4cfodpmEXC56UZFLkt1Fnxn5CNrzHODJNwZ9dBHV2+yMxfEekFBLy5shAV
 B+Won48YAM+Z5OeEzFXMJWyLQWwcPzUtZyDC6LeH91eo8kizGHIDByhDWsS9SD1xZJsS
 B1PON+SbzG+G9bByYi2Ig2hHw1XlF1/OBFfT0SYTkooj3aoHLlDkd61C5Q6+P5gsPss0
 yED8Rq9vngO10k71rRJLheNVOuWFJMYjZIXpob+GIVa43KmYNX7uaoBb572Bk7XhgFwJ
 gXvjVMOBOsBxKSSOyXACWY8lyeMjKbydy0qomev4oXBZEKa/tEaPg6nCGrNmtVCId4Ew
 BFJg==
X-Gm-Message-State: AOAM532fcHLmWKxYmAioKNhiCt/+9Me3IzQ/v6pxwqQcWPMMswMAO2v9
 zCJD6GUXr/Zygn2HyaervFdu7pRTvVs=
X-Google-Smtp-Source: ABdhPJyWan9dmTeGtuRAdAqW5MNNOElbTysKTzcTayakW+TggGsJlnvhSsEp5K91XaPPdJ2xIYjrDg==
X-Received: by 2002:a05:6a00:228b:b0:4f7:9155:b685 with SMTP id
 f11-20020a056a00228b00b004f79155b685mr7809832pfe.61.1647106752323; 
 Sat, 12 Mar 2022 09:39:12 -0800 (PST)
Received: from gnu-tgl-3.localdomain ([172.58.38.221])
 by smtp.gmail.com with ESMTPSA id
 y2-20020a056a00190200b004f6ef638551sm15082558pfi.98.2022.03.12.09.39.11
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 12 Mar 2022 09:39:11 -0800 (PST)
Received: by gnu-tgl-3.localdomain (Postfix, from userid 1000)
 id C7BD4C055A; Sat, 12 Mar 2022 09:39:10 -0800 (PST)
Date: Sat, 12 Mar 2022 09:39:10 -0800
From: "H.J. Lu" <hjl.tools@gmail.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YizavhoUkeEDQ9hd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [Intel-gfx] [Rebase][PATCH] drm/i915/bios: Workaround broken video
 BIOS in LG Gram 2021
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

Rebase against

5b1b60c09550 drm-tip: 2022y-03m-12d-07h-42m-20s UTC integration manifest

---
LG Gram 2021 laptop 17Z95P-K.ADE9U1 OpRegion has

FW size: 0x2200
VBT size: 0x2000
BDB offset: 0x30
BDB size: 0x216e

Add intel_init_opregion_quirks to use FW size as VBT size on LG Gram
17Z95P-K.ADE9U1 and update intel_bios_is_valid_vbt to use FW size,
instead of VBT size if the quirk is applied, in range_overflows_t for
BDB size overflow check.  This fixes:

https://gitlab.freedesktop.org/drm/intel/-/issues/4763

Signed-off-by: H.J. Lu <hjl.tools@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 15 ++++---
 drivers/gpu/drm/i915/display/intel_bios.h     |  3 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |  9 +++--
 drivers/gpu/drm/i915/display/intel_quirks.c   | 40 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h   |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 6 files changed, 59 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c7afe19dd44a..00bda2a8cc4d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2286,12 +2286,14 @@ static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
 
 /**
  * intel_bios_is_valid_vbt - does the given buffer contain a valid VBT
+ * @dev_priv:	i915 device instance
  * @buf:	pointer to a buffer to validate
  * @size:	size of the buffer
  *
  * Returns true on valid VBT.
  */
-bool intel_bios_is_valid_vbt(const void *buf, size_t size)
+bool intel_bios_is_valid_vbt(struct drm_i915_private *dev_priv,
+			     const void *buf, size_t size)
 {
 	const struct vbt_header *vbt = buf;
 	const struct bdb_header *bdb;
@@ -2314,16 +2316,17 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
 		return false;
 	}
 
-	size = vbt->vbt_size;
-
 	if (range_overflows_t(size_t,
 			      vbt->bdb_offset,
 			      sizeof(struct bdb_header),
-			      size)) {
+			      vbt->vbt_size)) {
 		DRM_DEBUG_DRIVER("BDB header incomplete\n");
 		return false;
 	}
 
+	if (!(dev_priv->quirks & QUIRK_USE_FW_SIZE_AS_VBT_SIZE))
+		size = vbt->vbt_size;
+
 	bdb = get_bdb_header(vbt);
 	if (range_overflows_t(size_t, vbt->bdb_offset, bdb->bdb_size, size)) {
 		DRM_DEBUG_DRIVER("BDB incomplete\n");
@@ -2377,7 +2380,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 		*(vbt + store++) = data;
 	}
 
-	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
+	if (!intel_bios_is_valid_vbt(i915, vbt, vbt_size))
 		goto err_free_vbt;
 
 	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
@@ -2434,7 +2437,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 
 	memcpy_fromio(vbt, p, vbt_size);
 
-	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
+	if (!intel_bios_is_valid_vbt(i915, vbt, vbt_size))
 		goto err_free_vbt;
 
 	pci_unmap_rom(pdev, oprom);
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 4709c4d29805..368ee87390e7 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -231,7 +231,8 @@ struct mipi_pps_data {
 
 void intel_bios_init(struct drm_i915_private *dev_priv);
 void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
-bool intel_bios_is_valid_vbt(const void *buf, size_t size);
+bool intel_bios_is_valid_vbt(struct drm_i915_private *dev_priv,
+			     const void *buf, size_t size);
 bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
 bool intel_bios_is_lvds_present(struct drm_i915_private *dev_priv, u8 *i2c_pin);
 bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port port);
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index f31e8c3f8ce0..607371f94cfb 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -36,6 +36,7 @@
 #include "intel_display_types.h"
 #include "intel_opregion.h"
 #include "intel_pci_config.h"
+#include "intel_quirks.h"
 
 #define OPREGION_HEADER_OFFSET 0
 #define OPREGION_ACPI_OFFSET   0x100
@@ -851,7 +852,7 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 		return ret;
 	}
 
-	if (intel_bios_is_valid_vbt(fw->data, fw->size)) {
+	if (intel_bios_is_valid_vbt(dev_priv, fw->data, fw->size)) {
 		opregion->vbt_firmware = kmemdup(fw->data, fw->size, GFP_KERNEL);
 		if (opregion->vbt_firmware) {
 			drm_dbg_kms(&dev_priv->drm,
@@ -968,6 +969,8 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	if (dmi_check_system(intel_no_opregion_vbt))
 		goto out;
 
+	intel_init_opregion_quirks(dev_priv);
+
 	if (opregion->header->over.major >= 2 && opregion->asle &&
 	    opregion->asle->rvda && opregion->asle->rvds) {
 		resource_size_t rvda = opregion->asle->rvda;
@@ -990,7 +993,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 
 		vbt = opregion->rvda;
 		vbt_size = opregion->asle->rvds;
-		if (intel_bios_is_valid_vbt(vbt, vbt_size)) {
+		if (intel_bios_is_valid_vbt(dev_priv, vbt, vbt_size)) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Found valid VBT in ACPI OpRegion (RVDA)\n");
 			opregion->vbt = vbt;
@@ -1015,7 +1018,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	vbt_size = (mboxes & MBOX_ASLE_EXT) ?
 		OPREGION_ASLE_EXT_OFFSET : OPREGION_SIZE;
 	vbt_size -= OPREGION_VBT_OFFSET;
-	if (intel_bios_is_valid_vbt(vbt, vbt_size)) {
+	if (intel_bios_is_valid_vbt(dev_priv, vbt, vbt_size)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Found valid VBT in ACPI OpRegion (Mailbox #4)\n");
 		opregion->vbt = vbt;
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index c8488f5ebd04..c2604e8b5353 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -133,6 +133,36 @@ static const struct intel_dmi_quirk intel_dmi_quirks[] = {
 	},
 };
 
+static void quirk_opregion_use_fw_size_as_vbt_size(struct drm_i915_private *i915)
+{
+	i915->quirks |= QUIRK_USE_FW_SIZE_AS_VBT_SIZE;
+	drm_info(&i915->drm, "Applying FW size as VBT size quirk in OpRegion\n");
+}
+
+static int intel_dmi_opregion_use_fw_size_as_vbt_size(const struct dmi_system_id *id)
+{
+	DRM_INFO("Use FW size as VBT size on %s in OpRegion\n", id->ident);
+	return 1;
+}
+
+static const struct intel_dmi_quirk intel_dmi_opregion_quirks[] = {
+	{
+		.dmi_id_list = &(const struct dmi_system_id[]) {
+			{
+				.callback = intel_dmi_opregion_use_fw_size_as_vbt_size,
+				.ident = "LG Gram 17Z95P-K.ADE9U1",
+				.matches = {DMI_EXACT_MATCH(DMI_SYS_VENDOR, "LG Electronics"),
+					    DMI_EXACT_MATCH(DMI_PRODUCT_NAME, "17Z95P-K.ADE9U1"),
+					    DMI_EXACT_MATCH(DMI_BIOS_VERSION, "T4ZF0040 X64"),
+					    DMI_EXACT_MATCH(DMI_BIOS_DATE, "10/06/2021"),
+				},
+			},
+			{ }
+		},
+		.hook = quirk_opregion_use_fw_size_as_vbt_size,
+	},
+};
+
 static struct intel_quirk intel_quirks[] = {
 	/* Lenovo U160 cannot use SSC on LVDS */
 	{ 0x0046, 0x17aa, 0x3920, quirk_ssc_force_disable },
@@ -213,3 +243,13 @@ void intel_init_quirks(struct drm_i915_private *i915)
 			intel_dmi_quirks[i].hook(i915);
 	}
 }
+
+void intel_init_opregion_quirks(struct drm_i915_private *i915)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(intel_dmi_opregion_quirks); i++) {
+		if (dmi_check_system(*intel_dmi_opregion_quirks[i].dmi_id_list) != 0)
+			intel_dmi_opregion_quirks[i].hook(i915);
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index b0fcff142a56..3a6a84e0d502 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -9,5 +9,6 @@
 struct drm_i915_private;
 
 void intel_init_quirks(struct drm_i915_private *dev_priv);
+void intel_init_opregion_quirks(struct drm_i915_private *dev_priv);
 
 #endif /* __INTEL_QUIRKS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7d622d1afe93..68af3db268a3 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -223,6 +223,7 @@ struct i915_drrs {
 #define QUIRK_INCREASE_T12_DELAY (1<<6)
 #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
 #define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
+#define QUIRK_USE_FW_SIZE_AS_VBT_SIZE (1 << 9)
 
 struct i915_suspend_saved_registers {
 	u32 saveDSPARB;
-- 
2.35.1

