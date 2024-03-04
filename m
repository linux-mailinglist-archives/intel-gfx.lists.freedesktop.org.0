Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C34E6870C6C
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 22:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0661A10FC25;
	Mon,  4 Mar 2024 21:25:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BCKSpm/v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF31E10FC25
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 21:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709587503; x=1741123503;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UAqeotTc3nSsTtBXD8yZ/052+nXICux88THfi48wUhM=;
 b=BCKSpm/v1dTB9FHB81PNwCdLbNsR/E+w3Nff45GwzRa11JreZd5Ld+tf
 xMfudfREnFaT8ArGtUKV/ZxG2OosnC924uQgjTA5AylhFatdMEdrRs1qx
 hZoMZga0zSU9jYa+ltb7vCHB11sT+/tGJbo5pX247PAkcIGB5BcHjQb1m
 HutUUjIz6G36Mfkj3JosaLEbWsjTca5JF1J9V60zd/mJeGdzkK9iGRSzW
 sMP+2ZdtxXXxdAFHn50dEqKt2Fv6OwfF8U4HKfKLDn6ORaF3t0iYvTkiG
 J6E0SDJqxWMQvReKAVHnxR2R6hEa7ngJIUHpL674VVJZH7Jy1EKkoSyG+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7916637"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="7916637"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 13:25:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="9243441"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 13:25:01 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v6] drm/i915: Show bios vbt when read from firmware/spi/oprom
Date: Mon,  4 Mar 2024 13:23:31 -0800
Message-Id: <20240304212331.640424-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240301221239.180884-1-radhakrishna.sripada@intel.com>
References: <20240301221239.180884-1-radhakrishna.sripada@intel.com>
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

Make debugfs vbt only shows valid vbt when read from ACPI opregion.
Make it work when read from firmware/spi/pci oprom cases. In the cases
where VBT needs to be read from spi/pci oprom, take the wakeref to
prevent WARN while reading DE registers during debugfs vbt dump.

v2: Extract getting vbt from different sources to its own function.
    Protect sysfs write with vbt check(Jani)
v3: Fix CI error by probing bios vbt with runtime_pm wakeref
v4: Update commit message and skip waking up runtime while accessing
    vbt from opregion/firmware(Jani)
v5: Skip grabbing unnecessary wakeref(Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 62 ++++++++++++-----------
 1 file changed, 33 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 44c9dfe86a00..9e1be997a359 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3135,6 +3135,32 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
 	return NULL;
 }
 
+static const struct vbt_header *intel_bios_get_vbt(struct drm_i915_private *i915,
+						   size_t *sizep)
+{
+	const struct vbt_header *vbt = NULL;
+	intel_wakeref_t wakeref;
+
+	vbt = firmware_get_vbt(i915, sizep);
+
+	if (!vbt)
+		vbt = intel_opregion_get_vbt(i915, sizep);
+
+	/*
+	 * If the OpRegion does not have VBT, look in SPI flash
+	 * through MMIO or PCI mapping
+	 */
+	if (!vbt && IS_DGFX(i915))
+		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+			vbt = spi_oprom_get_vbt(i915, sizep);
+
+	if (!vbt)
+		with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+			vbt = oprom_get_vbt(i915, sizep);
+
+	return vbt;
+}
+
 /**
  * intel_bios_init - find VBT and initialize settings from the BIOS
  * @i915: i915 device instance
@@ -3146,7 +3172,6 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
 void intel_bios_init(struct drm_i915_private *i915)
 {
 	const struct vbt_header *vbt;
-	struct vbt_header *oprom_vbt = NULL;
 	const struct bdb_header *bdb;
 
 	INIT_LIST_HEAD(&i915->display.vbt.display_devices);
@@ -3160,27 +3185,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 
 	init_vbt_defaults(i915);
 
-	oprom_vbt = firmware_get_vbt(i915, NULL);
-	vbt = oprom_vbt;
-
-	if (!vbt) {
-		oprom_vbt = intel_opregion_get_vbt(i915, NULL);
-		vbt = oprom_vbt;
-	}
-
-	/*
-	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
-	 * PCI mapping
-	 */
-	if (!vbt && IS_DGFX(i915)) {
-		oprom_vbt = spi_oprom_get_vbt(i915, NULL);
-		vbt = oprom_vbt;
-	}
-
-	if (!vbt) {
-		oprom_vbt = oprom_get_vbt(i915, NULL);
-		vbt = oprom_vbt;
-	}
+	vbt = intel_bios_get_vbt(i915, NULL);
 
 	if (!vbt)
 		goto out;
@@ -3213,7 +3218,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	parse_sdvo_device_mapping(i915);
 	parse_ddi_ports(i915);
 
-	kfree(oprom_vbt);
+	kfree(vbt);
 }
 
 static void intel_bios_init_panel(struct drm_i915_private *i915,
@@ -3743,13 +3748,12 @@ static int intel_bios_vbt_show(struct seq_file *m, void *unused)
 	const void *vbt;
 	size_t vbt_size;
 
-	/*
-	 * FIXME: VBT might originate from other places than opregion, and then
-	 * this would be incorrect.
-	 */
-	vbt = intel_opregion_get_vbt(i915, &vbt_size);
-	if (vbt)
+	vbt = intel_bios_get_vbt(i915, &vbt_size);
+
+	if (vbt) {
 		seq_write(m, vbt, vbt_size);
+		kfree(vbt);
+	}
 
 	return 0;
 }
-- 
2.34.1

