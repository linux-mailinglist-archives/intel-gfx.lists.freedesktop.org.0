Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A76CC86D9F9
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 04:16:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ACFC10E9F4;
	Fri,  1 Mar 2024 03:16:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RZjB5tgW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35E7F10E9F4
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 03:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709262988; x=1740798988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ACLVByXRfkH+d7XNUG/T2Qd9XEyIQt5RLZuCRmvjk4A=;
 b=RZjB5tgWa4y4TvoeT00eUK5E8rywBb/O1rPs1oTOheKSPSnSpJDOvVfN
 3DL0k846ilY/EjuzAS49IoC+dUPZ1MeyciVH0qjPnzYZdHVeRrz8tBfQG
 mZSRGqOCh881mIdp+QbDtLtHrgqHaqg27v0XvGQW486qU8/v+b8K3uTFx
 5D+MUTRohdbkFgmgUyncVCix02GWAQRUDkOaRnWcs6EWhFmrgYEBGY+2z
 egyq6F/BtBnGS/MiHQ4uE98cjDN2fDSPK8TgKjwRUggorBVz3MzewTm3R
 v00S/dq8WVQmML1T5a1sVxMnM79bL12awcn2gsqOQvS7E2I1PQS8Lt39Q w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="14931193"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="14931193"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 19:16:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="12736720"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 19:16:26 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v4] drm/i915: Show bios vbt when read from firmware/spi/oprom
Date: Thu, 29 Feb 2024 19:14:57 -0800
Message-Id: <20240301031457.2015603-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240228213235.2495611-7-radhakrishna.sripada@intel.com>
References: <20240228213235.2495611-7-radhakrishna.sripada@intel.com>
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

v2: Extract getting vbt from different sources to its own function.
    Protect sysfs write with vbt check(Jani)
v3: Fix CI error by probing bios vbt with runtime_pm wakeref

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 62 ++++++++++++-----------
 1 file changed, 33 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 44c9dfe86a00..3260aab63875 100644
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
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		vbt = firmware_get_vbt(i915, sizep);
+
+		if (!vbt)
+			vbt = intel_opregion_get_vbt(i915, sizep);
+
+		/*
+		 * If the OpRegion does not have VBT, look in SPI flash
+		 * through MMIO or PCI mapping
+		 */
+		if (!vbt && IS_DGFX(i915))
+			vbt = spi_oprom_get_vbt(i915, sizep);
+
+		if (!vbt)
+			vbt = oprom_get_vbt(i915, sizep);
+	}
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

