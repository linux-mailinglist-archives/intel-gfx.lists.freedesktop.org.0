Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 60537493DED
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 17:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C35C089F2A;
	Wed, 19 Jan 2022 16:04:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com
 [IPv6:2607:f8b0:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA98789EF7
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 16:04:55 +0000 (UTC)
Received: by mail-pf1-x432.google.com with SMTP id 128so2679598pfe.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 08:04:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Cgcs27L5znL3hlyeeWEC5ZmG6ozT7jFZYXfiz/gLhQs=;
 b=IbyHz4/WsqK4V/ZNMdBWcgWdHAE4wJ1j2MKHzR/JP+r4vycNMvlwd4u5aOJZELH0XT
 UOIi9pX9vMlVDtK7cxHuycwaAAKXI7lJogSSWvZIQgPsHGGeJOsVRFCKF/tGIQxIQJb/
 Elhc/WSuVvwcJ5bK8bIifeuq3lHk+JG0AznC9rVkgm48NCjsHYoY+xuwYeKrH045Ib6H
 727Ws1bMK5xtVB5QvhdjnRB7J/LKnK/Uryw+CzWQma0mAlagUy8hJ2sV/qmLq7EWoxza
 8EGwl0oEVgfNBaaqxIJw9Nnj02FRDYqc2qFsYe6v0OEJissSEuSfrl6TKP/2P5FzOm6U
 R3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Cgcs27L5znL3hlyeeWEC5ZmG6ozT7jFZYXfiz/gLhQs=;
 b=GIJVoIPxCGqPwooEwXuey/+/yJOq1PWAuuBGRLqPky1dSbAL9lAn+7lgiFMpEHwusH
 p/+VbkaPzoZ1ln5FTJa5WjzTbD7Y9jGSZwqFWFP0bOkvDcvH+AhYyAQIward0rvtxMwq
 fymsZilvF3ttCoWZcj3rbAqCXAqBlsJeWVufchzHdY0adanEcKlqXx3BPPT1pZ2sD0Qa
 Xhx82l6jayX09SQuP5aSvpG4ACme4Ne9dNrxkxKYjTPJjWRlUOrdATAmHb5yVuGCGj1y
 175/mU1Pydh1L9feR6sN3K9zxzoEbSY/G4pvF/8b3SLPRwF3FkWvK7cj1gaY9sqJxxVj
 RDjQ==
X-Gm-Message-State: AOAM530f+s0LQ4uBkw4PK57Wb24zE4IJQPAcKQeGlq3bIprJE/HGeWvZ
 R3J1TMfiwhsS5uhAuBkYzAW6FVLS2cQ=
X-Google-Smtp-Source: ABdhPJxnjg9vPP+/8CKXaAhPxTKM2RQ+m+ZCXUH3fVcUVdwvC35VEKbPQLdeFFAZ5kcfRcS8s8J92w==
X-Received: by 2002:a63:8a4c:: with SMTP id y73mr28039772pgd.249.1642608295144; 
 Wed, 19 Jan 2022 08:04:55 -0800 (PST)
Received: from gnu-tgl-3.localdomain ([172.58.35.133])
 by smtp.gmail.com with ESMTPSA id b22sm108000pfl.121.2022.01.19.08.04.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Jan 2022 08:04:54 -0800 (PST)
Received: from gnu-tgl-3.. (localhost [IPv6:::1])
 by gnu-tgl-3.localdomain (Postfix) with ESMTP id 36417C051C;
 Wed, 19 Jan 2022 08:04:53 -0800 (PST)
From: "H.J. Lu" <hjl.tools@gmail.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jan 2022 08:04:45 -0800
Message-Id: <20220119160445.3609367-1-hjl.tools@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/bios: Workaround broken video BIOS in
 LG Gram 2021
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
Cc: "H.J. Lu" <hjl.tools@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

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
 drivers/gpu/drm/i915/display/intel_bios.c     | 14 ++++---
 drivers/gpu/drm/i915/display/intel_bios.h     |  3 +-
 drivers/gpu/drm/i915/display/intel_opregion.c |  9 +++--
 drivers/gpu/drm/i915/display/intel_quirks.c   | 40 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h   |  1 +
 drivers/gpu/drm/i915/i915_drv.h               |  1 +
 6 files changed, 58 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 7d04572dd18b..4e960eb45a5a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2273,7 +2273,8 @@ static const struct bdb_header *get_bdb_header(const struct vbt_header *vbt)
  *
  * Returns true on valid VBT.
  */
-bool intel_bios_is_valid_vbt(const void *buf, size_t size)
+bool intel_bios_is_valid_vbt(struct drm_i915_private *dev_priv,
+			     const void *buf, size_t size)
 {
 	const struct vbt_header *vbt = buf;
 	const struct bdb_header *bdb;
@@ -2296,16 +2297,17 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
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
@@ -2359,7 +2361,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 		*(vbt + store++) = data;
 	}
 
-	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
+	if (!intel_bios_is_valid_vbt(i915, vbt, vbt_size))
 		goto err_free_vbt;
 
 	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
@@ -2416,7 +2418,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 
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
index af9d30f56cc1..7a9b4d72d18c 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -36,6 +36,7 @@
 #include "intel_display_types.h"
 #include "intel_opregion.h"
 #include "intel_pci_config.h"
+#include "intel_quirks.h"
 
 #define OPREGION_HEADER_OFFSET 0
 #define OPREGION_ACPI_OFFSET   0x100
@@ -817,7 +818,7 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 		return ret;
 	}
 
-	if (intel_bios_is_valid_vbt(fw->data, fw->size)) {
+	if (intel_bios_is_valid_vbt(dev_priv, fw->data, fw->size)) {
 		opregion->vbt_firmware = kmemdup(fw->data, fw->size, GFP_KERNEL);
 		if (opregion->vbt_firmware) {
 			drm_dbg_kms(&dev_priv->drm,
@@ -922,6 +923,8 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	if (dmi_check_system(intel_no_opregion_vbt))
 		goto out;
 
+	intel_init_opregion_quirks(dev_priv);
+
 	if (opregion->header->over.major >= 2 && opregion->asle &&
 	    opregion->asle->rvda && opregion->asle->rvds) {
 		resource_size_t rvda = opregion->asle->rvda;
@@ -944,7 +947,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 
 		vbt = opregion->rvda;
 		vbt_size = opregion->asle->rvds;
-		if (intel_bios_is_valid_vbt(vbt, vbt_size)) {
+		if (intel_bios_is_valid_vbt(dev_priv, vbt, vbt_size)) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Found valid VBT in ACPI OpRegion (RVDA)\n");
 			opregion->vbt = vbt;
@@ -969,7 +972,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
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
index 890f1f6fbc49..08572fae2d97 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -403,6 +403,7 @@ struct i915_drrs {
 #define QUIRK_INCREASE_T12_DELAY (1<<6)
 #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
 #define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
+#define QUIRK_USE_FW_SIZE_AS_VBT_SIZE (1<<9)
 
 struct intel_fbdev;
 
-- 
2.34.1

