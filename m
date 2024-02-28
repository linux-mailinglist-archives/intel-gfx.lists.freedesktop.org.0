Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6734E86B9F9
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 22:34:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCCD910E20E;
	Wed, 28 Feb 2024 21:34:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RDD1238g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E70710E284
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709156049; x=1740692049;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QrGtwNzhWbJQmj7eAHx6yQUFhoypdSSAHiGc8q9DWJ8=;
 b=RDD1238guCrvVSk4/AN4TuL1yQOD3W3Weau3UBk8xXrvN3Ynj108bxHs
 jpA7R0JplqzScuoxrrulUkIyTOOhgTIA4rUTOErn6O4QzLtWaGq0RNvAm
 jLJiGs6tNlbFGrjee8J0ddCWgMW9uiNb4SS02d3/r6Hlhzg3tZ5ytbwYE
 QYDJB7aDACqw5pJHNUVYmYLf2d4BeQCQKwO8eDk1erl8bu1cz6/yaFwT1
 yV0LfKPwaTtucf8xFyZ/37/BSPq0J3vBGIITzTWk/DwWsxaLcIVUEhcGZ
 wCtpeq/ioF8JB7NQ3Sf2gT20tbaZ+gPQSeMerACTIPnWR0fDvQOcQdpJA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3753131"
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="3753131"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="7623742"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 13:34:07 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v3 6/6] drm/i915: Show bios vbt when read from
 firmware/spi/oprom
Date: Wed, 28 Feb 2024 13:32:35 -0800
Message-Id: <20240228213235.2495611-7-radhakrishna.sripada@intel.com>
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

Make debugfs vbt only shows valid vbt when read from ACPI opregion.
Make it work when read from firmware/spi/pci oprom cases.

v2: Extract getiing vbt from different sources to its own function.
    Protect sysfs write with vbt check(Jani)

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 60 +++++++++++------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index e5229c41dbf7..80d1bbcc68df 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3116,6 +3116,29 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
 	return NULL;
 }
 
+static const struct vbt_header *intel_bios_get_vbt(struct drm_i915_private *i915,
+						   size_t *sizep)
+{
+	const struct vbt_header *vbt = NULL;
+
+	vbt = firmware_get_vbt(i915, sizep);
+
+	if (!vbt)
+		vbt = intel_opregion_get_vbt(i915, sizep);
+
+	/*
+	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
+	 * PCI mapping
+	 */
+	if (!vbt && IS_DGFX(i915))
+		vbt = spi_oprom_get_vbt(i915, sizep);
+
+	if (!vbt)
+		vbt = oprom_get_vbt(i915, sizep);
+
+	return vbt;
+}
+
 /**
  * intel_bios_init - find VBT and initialize settings from the BIOS
  * @i915: i915 device instance
@@ -3127,7 +3150,6 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
 void intel_bios_init(struct drm_i915_private *i915)
 {
 	const struct vbt_header *vbt;
-	struct vbt_header *oprom_vbt = NULL;
 	const struct bdb_header *bdb;
 
 	INIT_LIST_HEAD(&i915->display.vbt.display_devices);
@@ -3141,28 +3163,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 
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
-
+	vbt = intel_bios_get_vbt(i915, NULL);
 	if (!vbt)
 		goto out;
 
@@ -3194,7 +3195,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 	parse_sdvo_device_mapping(i915);
 	parse_ddi_ports(i915);
 
-	kfree(oprom_vbt);
+	kfree(vbt);
 }
 
 static void intel_bios_init_panel(struct drm_i915_private *i915,
@@ -3724,13 +3725,12 @@ static int intel_bios_vbt_show(struct seq_file *m, void *unused)
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

