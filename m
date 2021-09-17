Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4207D4101E2
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Sep 2021 01:48:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C79006EEA4;
	Fri, 17 Sep 2021 23:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A77D6EEA4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 23:48:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="219705958"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="219705958"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 16:48:40 -0700
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="554896398"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 16:48:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Clint Taylor <clinton.a.taylor@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Date: Fri, 17 Sep 2021 16:48:28 -0700
Message-Id: <20210917234828.1156078-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg1: Read OPROM via SPI controller
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

From: Clint Taylor <clinton.a.taylor@intel.com>

Read OPROM SPI through MMIO and find VBT entry since we can't use
OpRegion and PCI mapping may not work on some systems due to most BIOSes
not leaving the Option ROM mapped.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 80 +++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h           |  8 +++
 2 files changed, 82 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 3c25926092de..7f179dbdec1b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2280,6 +2280,66 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
 	return vbt;
 }
 
+static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
+{
+	u32 count, data, found, store = 0;
+	u32 static_region, oprom_offset;
+	u32 oprom_size = 0x200000;
+	u16 vbt_size;
+	u32 *vbt;
+
+	static_region = intel_uncore_read(&i915->uncore, SPI_STATIC_REGIONS);
+	static_region &= OPTIONROM_SPI_REGIONID_MASK;
+	intel_uncore_write(&i915->uncore, PRIMARY_SPI_REGIONID, static_region);
+
+	oprom_offset = intel_uncore_read(&i915->uncore, OROM_OFFSET);
+	oprom_offset &= OROM_OFFSET_MASK;
+
+	for (count = 0; count < oprom_size; count += 4) {
+		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, oprom_offset + count);
+		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
+
+		if (data == *((const u32 *)"$VBT")) {
+			found = oprom_offset + count;
+			break;
+		}
+	}
+
+	if (count >= oprom_size)
+		goto err_not_found;
+
+	/* Get VBT size and allocate space for the VBT */
+	intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found +
+		   offsetof(struct vbt_header, vbt_size));
+	vbt_size = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
+	vbt_size &= 0xffff;
+
+	vbt = kzalloc(vbt_size, GFP_KERNEL);
+	if (!vbt) {
+		drm_err(&i915->drm, "Unable to allocate %u bytes for VBT storage\n",
+			vbt_size);
+		goto err_not_found;
+	}
+
+	for (count = 0; count < vbt_size; count += 4) {
+		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found + count);
+		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
+		*(vbt + store++) = data;
+	}
+
+	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
+		goto err_free_vbt;
+
+	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
+
+	return (struct vbt_header *)vbt;
+
+err_free_vbt:
+	kfree(vbt);
+err_not_found:
+	return NULL;
+}
+
 static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
@@ -2329,6 +2389,8 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 
 	pci_unmap_rom(pdev, oprom);
 
+	drm_dbg_kms(&i915->drm, "Found valid VBT in PCI ROM\n");
+
 	return vbt;
 
 err_free_vbt:
@@ -2363,17 +2425,23 @@ void intel_bios_init(struct drm_i915_private *i915)
 
 	init_vbt_defaults(i915);
 
-	/* If the OpRegion does not have VBT, look in PCI ROM. */
+	/*
+	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
+	 * PCI mapping
+	 */
+	if (!vbt && IS_DGFX(i915)) {
+		oprom_vbt = spi_oprom_get_vbt(i915);
+		vbt = oprom_vbt;
+	}
+
 	if (!vbt) {
 		oprom_vbt = oprom_get_vbt(i915);
-		if (!oprom_vbt)
-			goto out;
-
 		vbt = oprom_vbt;
-
-		drm_dbg_kms(&i915->drm, "Found valid VBT in PCI ROM\n");
 	}
 
+	if (!vbt)
+		goto out;
+
 	bdb = get_bdb_header(vbt);
 	i915->vbt.version = bdb->version;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c3a21f7c003d..fd3fee090412 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12771,6 +12771,14 @@ enum skl_power_gate {
 #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
 #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
 
+#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
+#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
+#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
+#define SPI_STATIC_REGIONS			_MMIO(0x102090)
+#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
+#define OROM_OFFSET				_MMIO(0x1020c0)
+#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
+
 /* This register controls the Display State Buffer (DSB) engines. */
 #define _DSBSL_INSTANCE_BASE		0x70B00
 #define DSBSL_INSTANCE(pipe, id)	(_DSBSL_INSTANCE_BASE + \
-- 
2.33.0

