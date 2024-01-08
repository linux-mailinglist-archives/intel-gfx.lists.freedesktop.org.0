Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F05F0827B3D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36A3010E335;
	Mon,  8 Jan 2024 23:07:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2970A10E2CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755221; x=1736291221;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=spb7YV+KtZbyiaXA8GBIoHXE8b8AyPX1JhgjiQ3q9nw=;
 b=JKoc5kpbZoX+/lZy8duj8EZM8DOOMyY71sT1B+nEmubtioUauU8EUyyq
 N/hhaoPExZC8BNbBMpHvRuq11nfs8X9aB9aXxaJDcwpwoc25CD+y86qQz
 sf2H+tiLY/Y0wXVzBBeatek+3ajxLWpXv+1qOWpdpxy+rUpRUdLh0gXUz
 YdH9TuiJ9XP+Y666ue3sKjqyyX/urnTYuNpvzCRkfeDLiSicYL9tiaXAq
 R1meGUp7TSd6zgvz8qIV3zUfV7+YUk1FB61c16mU736SmT8408C81Ma0b
 iy+Gh8VN7txTjYUV6mHTN3H1VkM45t60oJSAQ1Ie4gI/OU2JVizVv3V+v g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514118"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514118"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647077"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647077"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:06:59 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 02/15] drm/i915: Move vbt fields from opregion to its own
 structure
Date: Mon,  8 Jan 2024 15:05:04 -0800
Message-Id: <20240108230517.1497504-3-radhakrishna.sripada@intel.com>
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

For discrete cards, vbt need not exist in opregion as in the case with
pre opregion platforms. To handle vbt in such cases, move vbt fields
in opregion structure to newly introduced vbt structure. This organizes vbt
related fields and processed intel_vbt_data under the same structure.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 +-
 .../gpu/drm/i915/display/intel_display_core.h |  3 ++
 .../drm/i915/display/intel_display_debugfs.c  |  6 +--
 drivers/gpu/drm/i915/display/intel_opregion.c | 38 +++++++++----------
 drivers/gpu/drm/i915/display/intel_opregion.h |  3 --
 5 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index b9120eb1321d..0e09454ba79c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3075,7 +3075,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
  */
 void intel_bios_init(struct drm_i915_private *i915)
 {
-	const struct vbt_header *vbt = i915->display.opregion.vbt;
+	const struct vbt_header *vbt = i915->display.vbt.vbt;
 	struct vbt_header *oprom_vbt = NULL;
 	const struct bdb_header *bdb;
 
@@ -3308,7 +3308,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
 		 * additional data.  Trust that if the VBT was written into
 		 * the OpRegion then they have validated the LVDS's existence.
 		 */
-		if (i915->display.opregion.vbt)
+		if (i915->display.vbt.vbt)
 			return true;
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 6e1aa58aad61..9e134b08aea0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -233,6 +233,9 @@ struct intel_vbt_data {
 };
 
 struct intel_vbt {
+	void *vbt_firmware;
+	const void *vbt;
+	u32 vbt_size;
 	struct intel_vbt_data data;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index d951edb36687..c01e04a0142a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -100,10 +100,10 @@ static int i915_opregion(struct seq_file *m, void *unused)
 static int i915_vbt(struct seq_file *m, void *unused)
 {
 	struct drm_i915_private *i915 = node_to_i915(m->private);
-	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_vbt *vbt = &i915->display.vbt;
 
-	if (opregion->vbt)
-		seq_write(m, opregion->vbt, opregion->vbt_size);
+	if (vbt->vbt)
+		seq_write(m, vbt->vbt, vbt->vbt_size);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 1ce785db6a5e..fa25007fac3a 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -839,7 +839,7 @@ static const struct dmi_system_id intel_no_opregion_vbt[] = {
 
 static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 {
-	struct intel_opregion *opregion = &dev_priv->display.opregion;
+	struct intel_vbt *vbt = &dev_priv->display.vbt;
 	const struct firmware *fw = NULL;
 	const char *name = dev_priv->display.params.vbt_firmware;
 	int ret;
@@ -856,12 +856,12 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 	}
 
 	if (intel_bios_is_valid_vbt(fw->data, fw->size)) {
-		opregion->vbt_firmware = kmemdup(fw->data, fw->size, GFP_KERNEL);
-		if (opregion->vbt_firmware) {
+		vbt->vbt_firmware = kmemdup(fw->data, fw->size, GFP_KERNEL);
+		if (vbt->vbt_firmware) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Found valid VBT firmware \"%s\"\n", name);
-			opregion->vbt = opregion->vbt_firmware;
-			opregion->vbt_size = fw->size;
+			vbt->vbt = vbt->vbt_firmware;
+			vbt->vbt_size = fw->size;
 			ret = 0;
 		} else {
 			ret = -ENOMEM;
@@ -880,12 +880,13 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 int intel_opregion_setup(struct drm_i915_private *dev_priv)
 {
 	struct intel_opregion *opregion = &dev_priv->display.opregion;
+	struct intel_vbt *vbt = &dev_priv->display.vbt;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	u32 asls, mboxes;
 	char buf[sizeof(OPREGION_SIGNATURE)];
 	int err = 0;
 	void *base;
-	const void *vbt;
+	const void *vbt_data;
 	u32 vbt_size;
 
 	BUILD_BUG_ON(sizeof(struct opregion_header) != 0x100);
@@ -992,13 +993,13 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		opregion->rvda = memremap(rvda, opregion->asle->rvds,
 					  MEMREMAP_WB);
 
-		vbt = opregion->rvda;
+		vbt_data = opregion->rvda;
 		vbt_size = opregion->asle->rvds;
-		if (intel_bios_is_valid_vbt(vbt, vbt_size)) {
+		if (intel_bios_is_valid_vbt(vbt_data, vbt_size)) {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Found valid VBT in ACPI OpRegion (RVDA)\n");
-			opregion->vbt = vbt;
-			opregion->vbt_size = vbt_size;
+			vbt->vbt = vbt_data;
+			vbt->vbt_size = vbt_size;
 			goto out;
 		} else {
 			drm_dbg_kms(&dev_priv->drm,
@@ -1008,7 +1009,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		}
 	}
 
-	vbt = base + OPREGION_VBT_OFFSET;
+	vbt_data = base + OPREGION_VBT_OFFSET;
 	/*
 	 * The VBT specification says that if the ASLE ext mailbox is not used
 	 * its area is reserved, but on some CHT boards the VBT extends into the
@@ -1019,11 +1020,11 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	vbt_size = (mboxes & MBOX_ASLE_EXT) ?
 		OPREGION_ASLE_EXT_OFFSET : OPREGION_SIZE;
 	vbt_size -= OPREGION_VBT_OFFSET;
-	if (intel_bios_is_valid_vbt(vbt, vbt_size)) {
+	if (intel_bios_is_valid_vbt(vbt_data, vbt_size)) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Found valid VBT in ACPI OpRegion (Mailbox #4)\n");
-		opregion->vbt = vbt;
-		opregion->vbt_size = vbt_size;
+		vbt->vbt = vbt_data;
+		vbt->vbt_size = vbt_size;
 	} else {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Invalid VBT in ACPI OpRegion (Mailbox #4)\n");
@@ -1243,6 +1244,7 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 void intel_opregion_cleanup(struct drm_i915_private *i915)
 {
 	struct intel_opregion *opregion = &i915->display.opregion;
+	struct intel_vbt *vbt = &i915->display.vbt;
 
 	if (!opregion->header)
 		return;
@@ -1253,15 +1255,13 @@ void intel_opregion_cleanup(struct drm_i915_private *i915)
 		memunmap(opregion->rvda);
 		opregion->rvda = NULL;
 	}
-	if (opregion->vbt_firmware) {
-		kfree(opregion->vbt_firmware);
-		opregion->vbt_firmware = NULL;
-	}
+	kfree(vbt->vbt_firmware);
+	vbt->vbt_firmware = NULL;
 	opregion->header = NULL;
 	opregion->acpi = NULL;
 	opregion->swsci = NULL;
 	opregion->asle = NULL;
 	opregion->asle_ext = NULL;
-	opregion->vbt = NULL;
+	vbt->vbt = NULL;
 	opregion->lid_state = NULL;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index fd2ea8ef0fa2..7e1c8f1c2da5 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -47,9 +47,6 @@ struct intel_opregion {
 	struct opregion_asle *asle;
 	struct opregion_asle_ext *asle_ext;
 	void *rvda;
-	void *vbt_firmware;
-	const void *vbt;
-	u32 vbt_size;
 	u32 *lid_state;
 	struct work_struct asle_work;
 	struct notifier_block acpi_notifier;
-- 
2.34.1

