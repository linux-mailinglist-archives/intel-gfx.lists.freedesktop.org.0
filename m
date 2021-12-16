Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AAB476A5A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 07:26:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91DAC11240B;
	Thu, 16 Dec 2021 06:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F136A11240B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 06:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639635989; x=1671171989;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vv415+NiTcvnSNSlnz92fsXCkGt307Fj6sx/G4zyj3o=;
 b=FMKz9x4qJ5h5QJMD2OU0EK6bzCwfRUVGByKFkXc7GmxXOkZO/8WNOCR+
 MB+CCCJ2p0MI96QMbV2s7ynyx0FCzaAmpueU1mVuou5lkmZOl/D6VV41v
 atrVdXE3dvYrTjWgXtPEF7ttd1Rgknkkg5UiWzizxjR4cm63qe2hz+SvI
 l5YRNQvGG6ek1Swy4/vF9r1Mgm46Q2OmcqlBg8wLQayF7u2Nbha5RX4+K
 IphxXfXVDEd0SifUIJqN8mjKgOqerHBy0N8aNLUnuN58pjlthKhvzfA9U
 uMxcHE0FXhbqg0wkQ8+kv1a4Dubs6ujKf6n3C9QXrKzV5im5Uhkw+plhR Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="239227092"
X-IronPort-AV: E=Sophos;i="5.88,210,1635231600"; d="scan'208";a="239227092"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 22:26:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,210,1635231600"; d="scan'208";a="545864299"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 22:26:28 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Dec 2021 22:26:45 -0800
Message-Id: <20211216062645.3477854-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/dg1: Read OPROM via SPI controller
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Tomas Winkler <tomas.winkler@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Clint Taylor <clinton.a.taylor@intel.com>

Read OPROM SPI through MMIO and find VBT entry since we can't use
OpRegion and PCI mapping may not work on some systems due to most BIOSes
not leaving the Option ROM mapped.

v2: Remove message with allocation failure

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 77 +++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h           |  8 +++
 2 files changed, 79 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9d989c9f5da4..76a8f001f4c4 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2335,6 +2335,63 @@ bool intel_bios_is_valid_vbt(const void *buf, size_t size)
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
+	if (!vbt)
+		goto err_not_found;
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
@@ -2384,6 +2441,8 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 
 	pci_unmap_rom(pdev, oprom);
 
+	drm_dbg_kms(&i915->drm, "Found valid VBT in PCI ROM\n");
+
 	return vbt;
 
 err_free_vbt:
@@ -2418,17 +2477,23 @@ void intel_bios_init(struct drm_i915_private *i915)
 
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
index 698a023e70f5..3240b3eb1ddd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -12974,6 +12974,14 @@ enum skl_power_gate {
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
2.34.1

