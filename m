Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D5486B9F5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 22:34:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3EE410E284;
	Wed, 28 Feb 2024 21:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L0ZaSrd+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FBA410E284
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709156049; x=1740692049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bo0CbZFnGhVlWG4S4t5rUlRXCNUdK+3JgMhJL1czYhA=;
 b=L0ZaSrd+1j0P3wQ9hQnOGzNY+odp1qJ3I/6lvFpYB0nQTRrvWPqxet7P
 JrKAMD04My59St7mrCiiP3zcT3d1YM/Hjw2ADomF0hWpB4ed/fiqWOcya
 hQSm5TC0jUgXPz8VnLArmrWQKDagzuy9eScAOpGARpbSHjROe4FG9+vO3
 b9bUqESTGrTowYlOJrFfiYmeqPGg3udwYXqz6tF6cnHA0ixjN4pnUDWgr
 Qu5k97IbDzZHdWVwAt9v+ki+p74rbNsfD97DEdL6MKA0zKdyIBVdbuk9x
 UQa0fxq2vrPkDHOWGas+VacWKP58CpqIq0GN5h27tu65l+hLSbYA01TM6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3753126"
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="3753126"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="7623733"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:07 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 3/6] drm/i915: Move vbt read from firmware to intel_bios.c
Date: Wed, 28 Feb 2024 13:32:32 -0800
Message-Id: <20240228213235.2495611-4-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
References: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
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

VBT read from firmware is currently nested within opregion vbt read.
Extract it and place it together with other vbt read mechanisms and
dis-associate vbt-firmware from opregion structure.

v2: Return NULL in failure cases and use a null check in
    intel_bios_init(Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 45 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.c | 46 -------------------
 2 files changed, 44 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 2723f4319b5f..a66fc79466bd 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -25,6 +25,8 @@
  *
  */
 
+#include <linux/firmware.h>
+
 #include <drm/display/drm_dp_helper.h>
 #include <drm/display/drm_dsc_helper.h>
 #include <drm/drm_edid.h>
@@ -2950,6 +2952,43 @@ bool intel_bios_is_valid_vbt(struct drm_i915_private *i915,
 	return vbt;
 }
 
+static struct vbt_header *firmware_get_vbt(struct drm_i915_private *i915,
+					   size_t *size)
+{
+	struct vbt_header *vbt = NULL;
+	const struct firmware *fw = NULL;
+	const char *name = i915->display.params.vbt_firmware;
+	int ret;
+
+	if (!name || !*name)
+		return NULL;
+
+	ret = request_firmware(&fw, name, i915->drm.dev);
+	if (ret) {
+		drm_err(&i915->drm,
+			"Requesting VBT firmware \"%s\" failed (%d)\n",
+			name, ret);
+		return NULL;
+	}
+
+	if (intel_bios_is_valid_vbt(i915, fw->data, fw->size)) {
+		vbt = kmemdup(fw->data, fw->size, GFP_KERNEL);
+		if (vbt) {
+			drm_dbg_kms(&i915->drm,
+				    "Found valid VBT firmware \"%s\"\n", name);
+			if (size)
+				*size = fw->size;
+		}
+	} else {
+		drm_dbg_kms(&i915->drm, "Invalid VBT firmware \"%s\"\n",
+			    name);
+	}
+
+	release_firmware(fw);
+
+	return vbt;
+}
+
 static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
 {
 	intel_uncore_write(uncore, PRIMARY_SPI_ADDRESS, offset);
@@ -3102,7 +3141,11 @@ void intel_bios_init(struct drm_i915_private *i915)
 
 	init_vbt_defaults(i915);
 
-	vbt = intel_opregion_get_vbt(i915, NULL);
+	oprom_vbt = firmware_get_vbt(i915, NULL);
+	vbt = oprom_vbt;
+
+	if (!vbt)
+		vbt = intel_opregion_get_vbt(i915, NULL);
 
 	/*
 	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index fcbb083318a7..5d07a002edaa 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -27,7 +27,6 @@
 
 #include <linux/acpi.h>
 #include <linux/dmi.h>
-#include <linux/firmware.h>
 #include <acpi/video.h>
 
 #include <drm/drm_edid.h>
@@ -263,7 +262,6 @@ struct intel_opregion {
 	struct opregion_asle *asle;
 	struct opregion_asle_ext *asle_ext;
 	void *rvda;
-	void *vbt_firmware;
 	const void *vbt;
 	u32 vbt_size;
 	struct work_struct asle_work;
@@ -869,46 +867,6 @@ static const struct dmi_system_id intel_no_opregion_vbt[] = {
 	{ }
 };
 
-static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
-{
-	struct intel_opregion *opregion = dev_priv->display.opregion;
-	const struct firmware *fw = NULL;
-	const char *name = dev_priv->display.params.vbt_firmware;
-	int ret;
-
-	if (!name || !*name)
-		return -ENOENT;
-
-	ret = request_firmware(&fw, name, dev_priv->drm.dev);
-	if (ret) {
-		drm_err(&dev_priv->drm,
-			"Requesting VBT firmware \"%s\" failed (%d)\n",
-			name, ret);
-		return ret;
-	}
-
-	if (intel_bios_is_valid_vbt(dev_priv, fw->data, fw->size)) {
-		opregion->vbt_firmware = kmemdup(fw->data, fw->size, GFP_KERNEL);
-		if (opregion->vbt_firmware) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "Found valid VBT firmware \"%s\"\n", name);
-			opregion->vbt = opregion->vbt_firmware;
-			opregion->vbt_size = fw->size;
-			ret = 0;
-		} else {
-			ret = -ENOMEM;
-		}
-	} else {
-		drm_dbg_kms(&dev_priv->drm, "Invalid VBT firmware \"%s\"\n",
-			    name);
-		ret = -EINVAL;
-	}
-
-	release_firmware(fw);
-
-	return ret;
-}
-
 int intel_opregion_setup(struct drm_i915_private *dev_priv)
 {
 	struct intel_opregion *opregion;
@@ -1006,9 +964,6 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		drm_dbg(&dev_priv->drm, "Mailbox #2 for backlight present\n");
 	}
 
-	if (intel_load_vbt_firmware(dev_priv) == 0)
-		goto out;
-
 	if (dmi_check_system(intel_no_opregion_vbt))
 		goto out;
 
@@ -1312,7 +1267,6 @@ void intel_opregion_cleanup(struct drm_i915_private *i915)
 	memunmap(opregion->header);
 	if (opregion->rvda)
 		memunmap(opregion->rvda);
-	kfree(opregion->vbt_firmware);
 	kfree(opregion);
 	i915->display.opregion = NULL;
 }
-- 
2.34.1

