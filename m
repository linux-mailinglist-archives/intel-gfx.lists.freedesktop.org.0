Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0499E827B44
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01E2010E340;
	Mon,  8 Jan 2024 23:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D862510E326
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jzFaJoFHu6zCAoGNHR4b3oPnLgUteZLeDkcR7OfqEHM=;
 b=bB1/xr8EoCvbQOsT2qDbR3B3OFm1+DcpH8U+pLy4c90zLBfdDsV32xVu
 VJTAENSyoJJGtHvzZmeGrmcMKh+bWMLf2av4upLE5dC8HPOfFdAJkmmXp
 XcDAmLNd0WHz4Bdc2sjXATcKwcRgBO//iGcQTjIWkTEWZ4erlXepZFll3
 rVpEj0rnyrNzPBcHxTGdESTVQncsxKEcgqFt1gU/5/IyqN88w3zdDPCdM
 ngpHDomll2uN6PnJC6kaGdGJ83Mkg2CP09usJe+XiQmYyoK9qBin8vXh8
 PYRZ5vaH9a3YHfLeoOxRfcH5gK1gZxNzlCYkOQygiagHfGxlk0f0X8U/c w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514128"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514128"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647103"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647103"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:00 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 10/15] drm/i915: Move vbt firmware load into intel_bios_init
Date: Mon,  8 Jan 2024 15:05:12 -0800
Message-Id: <20240108230517.1497504-11-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
References: <20240108230517.1497504-1-radhakrishna.sripada@intel.com>
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

Grouping various vbt load options, move vbt load from firmware option
from opregion vbt load function to bios init.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 47 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_opregion.c | 45 ------------------
 2 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 5d2a56df029d..711ae963ed7a 100644
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
@@ -2947,6 +2949,47 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
 	return vbt;
 }
 
+static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
+{
+	struct intel_vbt *vbt = &dev_priv->display.vbt;
+	const struct firmware *fw = NULL;
+	const char *name = dev_priv->display.params.vbt_firmware;
+	int ret;
+
+	if (!name || !*name)
+		return -ENOENT;
+
+	ret = request_firmware(&fw, name, dev_priv->drm.dev);
+	if (ret) {
+		drm_err(&dev_priv->drm,
+			"Requesting VBT firmware \"%s\" failed (%d)\n",
+			name, ret);
+		return ret;
+	}
+
+	if (intel_bios_is_valid_vbt(fw->data, fw->size)) {
+		vbt->vbt_firmware = kmemdup(fw->data, fw->size, GFP_KERNEL);
+		if (vbt->vbt_firmware) {
+			drm_dbg_kms(&dev_priv->drm,
+				    "Found valid VBT firmware \"%s\"\n", name);
+			vbt->vbt = vbt->vbt_firmware;
+			vbt->vbt_size = fw->size;
+			vbt->type = I915_VBT_FIRMWARE;
+			ret = 0;
+		} else {
+			ret = -ENOMEM;
+		}
+	} else {
+		drm_dbg_kms(&dev_priv->drm, "Invalid VBT firmware \"%s\"\n",
+			    name);
+		ret = -EINVAL;
+	}
+
+	release_firmware(fw);
+
+	return ret;
+}
+
 static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
 {
 	intel_uncore_write(uncore, PRIMARY_SPI_ADDRESS, offset);
@@ -3106,7 +3149,9 @@ void intel_bios_init(struct drm_i915_private *i915)
 
 	init_vbt_defaults(i915);
 
-	if (opregion->asls)
+	intel_load_vbt_firmware(i915);
+
+	if (!vbt->vbt && opregion->asls)
 		intel_load_opregion_vbt(i915, opregion, vbt);
 	/*
 	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 5ff6466548a3..32875f0e89bd 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -27,7 +27,6 @@
 
 #include <linux/acpi.h>
 #include <linux/dmi.h>
-#include <linux/firmware.h>
 #include <acpi/video.h>
 
 #include <drm/drm_edid.h>
@@ -837,47 +836,6 @@ static const struct dmi_system_id intel_no_opregion_vbt[] = {
 	{ }
 };
 
-static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
-{
-	struct intel_vbt *vbt = &dev_priv->display.vbt;
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
-	if (intel_bios_is_valid_vbt(fw->data, fw->size)) {
-		vbt->vbt_firmware = kmemdup(fw->data, fw->size, GFP_KERNEL);
-		if (vbt->vbt_firmware) {
-			drm_dbg_kms(&dev_priv->drm,
-				    "Found valid VBT firmware \"%s\"\n", name);
-			vbt->vbt = vbt->vbt_firmware;
-			vbt->vbt_size = fw->size;
-			vbt->type = I915_VBT_FIRMWARE;
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
 void intel_load_opregion_vbt(struct drm_i915_private *i915,
 			     struct intel_opregion *opregion,
 			     struct intel_vbt *vbt)
@@ -886,9 +844,6 @@ void intel_load_opregion_vbt(struct drm_i915_private *i915,
 	u32 vbt_size;
 	void *base = opregion->header;
 
-	if (intel_load_vbt_firmware(i915) == 0)
-		return;
-
 	if (dmi_check_system(intel_no_opregion_vbt))
 		return;
 
-- 
2.34.1

