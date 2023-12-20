Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0854C819689
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 02:51:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23AF10E28B;
	Wed, 20 Dec 2023 01:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB24B10E28B
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 01:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703037086; x=1734573086;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5vwPQmNA3WHOfwAJV3Nvga8+vhcubEsn1g1NbKbKcbc=;
 b=ZWxDkc6LJ8k7b9ExgchRpeRe9Z5mJCroFjl8mecfCdmGfDHwyAx5i/wT
 zOYVqFcaDJh8eG73GS4tsMlZ0+rJWDO3CqcxmHI7iLdEFn0m5fARt4j48
 /2TDLo68hofzyA2gda7040uY02KplwDjE3zaxg8/s4F9fPaGW4NIG7mag
 iils7eKCp8JqAhLq9jbMDORomJjh+5oFyLxd/dP7CVBzumEwxgdzVawxH
 a+guL9Y7bCH1RGxU1rmjdRHWVYeAflys6uwAYmvmetnANrjd439rPSRbC
 1yNKUlCVP5LrDUzliQbg+e4ZffX2HAL+kDvAHNOBxo7zKxqu1zGtoTXiD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="460090328"
X-IronPort-AV: E=Sophos;i="6.04,290,1695711600"; d="scan'208";a="460090328"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 17:51:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="949369696"
X-IronPort-AV: E=Sophos;i="6.04,290,1695711600"; d="scan'208";a="949369696"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 17:51:26 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915: Piggyback opregion vbt to store vbt read from
 flash/oprom
Date: Tue, 19 Dec 2023 17:49:52 -0800
Message-Id: <20231220014952.708652-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
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

Discrete cards do not have ACPI opregion. The vbt is stored in a special
flash accessible by the display controller. In order to access the vbt
in such cases, re-use the vbt, vbt_size fields in the opregion structure.

We should move away from storing the vbt in the opregion and store it,
if required in the vbt structure.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 44 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_opregion.c |  7 ++-
 2 files changed, 29 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 736499a6e2c7..cbfbc56ff5b2 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2930,12 +2930,11 @@ static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
 	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
 }
 
-static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
+static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915, u16 *vbt_size)
 {
 	u32 count, data, found, store = 0;
 	u32 static_region, oprom_offset;
 	u32 oprom_size = 0x200000;
-	u16 vbt_size;
 	u32 *vbt;
 
 	static_region = intel_uncore_read(&i915->uncore, SPI_STATIC_REGIONS);
@@ -2957,18 +2956,18 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 		goto err_not_found;
 
 	/* Get VBT size and allocate space for the VBT */
-	vbt_size = intel_spi_read(&i915->uncore,
+	*vbt_size = intel_spi_read(&i915->uncore,
 				  found + offsetof(struct vbt_header, vbt_size));
-	vbt_size &= 0xffff;
+	*vbt_size &= 0xffff;
 
-	vbt = kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
+	vbt = kzalloc(round_up(*vbt_size, 4), GFP_KERNEL);
 	if (!vbt)
 		goto err_not_found;
 
-	for (count = 0; count < vbt_size; count += 4)
+	for (count = 0; count < *vbt_size; count += 4)
 		*(vbt + store++) = intel_spi_read(&i915->uncore, found + count);
 
-	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
+	if (!intel_bios_is_valid_vbt(vbt, *vbt_size))
 		goto err_free_vbt;
 
 	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
@@ -2977,16 +2976,16 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 
 err_free_vbt:
 	kfree(vbt);
+	*vbt_size = 0;
 err_not_found:
 	return NULL;
 }
 
-static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
+static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915, u16 *vbt_size)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	void __iomem *p = NULL, *oprom;
 	struct vbt_header *vbt;
-	u16 vbt_size;
 	size_t i, size;
 
 	oprom = pci_map_rom(pdev, &size);
@@ -3011,21 +3010,21 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 		goto err_unmap_oprom;
 	}
 
-	vbt_size = ioread16(p + offsetof(struct vbt_header, vbt_size));
-	if (vbt_size > size) {
+	*vbt_size = ioread16(p + offsetof(struct vbt_header, vbt_size));
+	if (*vbt_size > size) {
 		drm_dbg(&i915->drm,
-			"VBT incomplete (vbt_size overflows)\n");
+			"VBT incomplete (*vbt_size overflows)\n");
 		goto err_unmap_oprom;
 	}
 
 	/* The rest will be validated by intel_bios_is_valid_vbt() */
-	vbt = kmalloc(vbt_size, GFP_KERNEL);
+	vbt = kmalloc(*vbt_size, GFP_KERNEL);
 	if (!vbt)
 		goto err_unmap_oprom;
 
-	memcpy_fromio(vbt, p, vbt_size);
+	memcpy_fromio(vbt, p, *vbt_size);
 
-	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
+	if (!intel_bios_is_valid_vbt(vbt, *vbt_size))
 		goto err_free_vbt;
 
 	pci_unmap_rom(pdev, oprom);
@@ -3036,6 +3035,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 
 err_free_vbt:
 	kfree(vbt);
+	*vbt_size = 0;
 err_unmap_oprom:
 	pci_unmap_rom(pdev, oprom);
 
@@ -3052,8 +3052,10 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
  */
 void intel_bios_init(struct drm_i915_private *i915)
 {
+	struct intel_opregion *opregion = &i915->display.opregion;
 	const struct vbt_header *vbt = i915->display.opregion.vbt;
 	struct vbt_header *oprom_vbt = NULL;
+	u16 vbt_size;
 	const struct bdb_header *bdb;
 
 	INIT_LIST_HEAD(&i915->display.vbt.display_devices);
@@ -3072,13 +3074,15 @@ void intel_bios_init(struct drm_i915_private *i915)
 	 * PCI mapping
 	 */
 	if (!vbt && IS_DGFX(i915)) {
-		oprom_vbt = spi_oprom_get_vbt(i915);
-		vbt = oprom_vbt;
+		oprom_vbt = spi_oprom_get_vbt(i915, &vbt_size);
+		opregion->vbt = vbt = oprom_vbt;
+		opregion->vbt_size = (u32)vbt_size;
 	}
 
 	if (!vbt) {
-		oprom_vbt = oprom_get_vbt(i915);
-		vbt = oprom_vbt;
+		oprom_vbt = oprom_get_vbt(i915, &vbt_size);
+		opregion->vbt = vbt = oprom_vbt;
+		opregion->vbt_size = (u32)vbt_size;
 	}
 
 	if (!vbt)
@@ -3111,8 +3115,6 @@ void intel_bios_init(struct drm_i915_private *i915)
 	/* Further processing on pre-parsed or generated child device data */
 	parse_sdvo_device_mapping(i915);
 	parse_ddi_ports(i915);
-
-	kfree(oprom_vbt);
 }
 
 static void intel_bios_init_panel(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 1ce785db6a5e..20b2160e9d0e 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1244,8 +1244,13 @@ void intel_opregion_cleanup(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->display.opregion;
 
-	if (!opregion->header)
+	if (!opregion->header) {
+		if (opregion->vbt) {
+			kfree(opregion->vbt);
+			opregion->vbt_size = 0;
+		}
 		return;
+	}
 
 	/* just clear all opregion memory pointers now */
 	memunmap(opregion->header);
-- 
2.34.1

