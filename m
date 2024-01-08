Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ED8827B40
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 00:07:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01EC410E33D;
	Mon,  8 Jan 2024 23:07:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4E810E335
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 23:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704755222; x=1736291222;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2wvkHG290jK/MvWeNh01aW0ou74azwyXwrdykMO+k6A=;
 b=LES2/Mvyc23uJCNW9ZsOhrciXLFdt3woQk5tUwJj/9uKZpq37L2GCdzj
 NUrL+naCnkyToTvbEdFnmkrZEnGSL/CfZdC5Ec9+5P0a3IhGKoa+e7W1n
 06k33+8pd1+6Jc75XSZs3M7cGY8WLHdoTlO8C24hCq8pwYV8SePY3CQHe
 9u9Qc+4mKVo10JLyDfB4HDkCrXj36iU6R4JcARjciwJUx3l7sfWrmuBR7
 x6mpQSh2F2guIh+PSkzoMxqhFcOlf9OzENDCdAIXXS61/DC41UBME/HAh
 a6zUoemgh42Cix4WJX+vAfX/TP2x9IzkOTDUBtjXMwM09zum19IruBHdr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="11514127"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="11514127"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="774647101"
X-IronPort-AV: E=Sophos;i="6.04,181,1695711600"; d="scan'208";a="774647101"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 15:07:00 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [RFC 09/15] drm/i915: Move vbt load from opregion to bios init
Date: Mon,  8 Jan 2024 15:05:11 -0800
Message-Id: <20240108230517.1497504-10-radhakrishna.sripada@intel.com>
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

Opregion is probed early during the driver bring up and if present,
vbt is extracted. Move vbt loading to a more appropriate place during
bios init where the vbt is parsed. While at it remove the empty return.

Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  4 ++++
 drivers/gpu/drm/i915/display/intel_opregion.c | 18 +++++++-----------
 drivers/gpu/drm/i915/display/intel_opregion.h |  9 +++++++++
 3 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index bde58a1ceadb..5d2a56df029d 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -34,6 +34,7 @@
 #include "intel_display.h"
 #include "intel_display_types.h"
 #include "intel_gmbus.h"
+#include "intel_opregion.h"
 
 #define _INTEL_BIOS_PRIVATE
 #include "intel_vbt_defs.h"
@@ -3082,6 +3083,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
 void intel_bios_init(struct drm_i915_private *i915)
 {
 	struct intel_vbt *vbt = &i915->display.vbt;
+	struct intel_opregion *opregion = &i915->display.opregion;
 	struct vbt_header *oprom_vbt = NULL;
 	struct vbt_header *header = NULL;
 	const struct bdb_header *bdb;
@@ -3104,6 +3106,8 @@ void intel_bios_init(struct drm_i915_private *i915)
 
 	init_vbt_defaults(i915);
 
+	if (opregion->asls)
+		intel_load_opregion_vbt(i915, opregion, vbt);
 	/*
 	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
 	 * PCI mapping
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index b879e89d0fb6..5ff6466548a3 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -878,19 +878,19 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 	return ret;
 }
 
-static int intel_load_opregion_vbt(struct drm_i915_private *i915,
-				   struct intel_opregion *opregion,
-				   struct intel_vbt *vbt)
+void intel_load_opregion_vbt(struct drm_i915_private *i915,
+			     struct intel_opregion *opregion,
+			     struct intel_vbt *vbt)
 {
 	const void *vbt_data;
 	u32 vbt_size;
 	void *base = opregion->header;
 
 	if (intel_load_vbt_firmware(i915) == 0)
-		goto out;
+		return;
 
 	if (dmi_check_system(intel_no_opregion_vbt))
-		goto out;
+		return;
 
 	if (opregion->header->over.major >= 2 && opregion->asle &&
 	    opregion->asle->rvda && opregion->asle->rvds) {
@@ -920,7 +920,7 @@ static int intel_load_opregion_vbt(struct drm_i915_private *i915,
 			vbt->vbt = vbt_data;
 			vbt->vbt_size = vbt_size;
 			vbt->type = I915_VBT_OPREGION;
-			goto out;
+			return;
 		} else {
 			drm_dbg_kms(&i915->drm,
 				    "Invalid VBT in ACPI OpRegion (RVDA)\n");
@@ -950,15 +950,11 @@ static int intel_load_opregion_vbt(struct drm_i915_private *i915,
 		drm_dbg_kms(&i915->drm,
 			    "Invalid VBT in ACPI OpRegion (Mailbox #4)\n");
 	}
-
-out:
-	return 0;
 }
 
 int intel_opregion_setup(struct drm_i915_private *dev_priv)
 {
 	struct intel_opregion *opregion = &dev_priv->display.opregion;
-	struct intel_vbt *vbt = &dev_priv->display.vbt;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	u32 asls, mboxes;
 	char buf[sizeof(OPREGION_SIGNATURE)];
@@ -1044,7 +1040,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		drm_dbg(&dev_priv->drm, "Mailbox #2 for backlight present\n");
 	}
 
-	return intel_load_opregion_vbt(dev_priv, opregion, vbt);
+	return 0;
 
 err_out:
 	memunmap(base);
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 03838fa39d0d..5a46a4b1805a 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -31,6 +31,7 @@
 struct drm_i915_private;
 struct intel_connector;
 struct intel_encoder;
+struct intel_vbt;
 
 struct opregion_header;
 struct opregion_acpi;
@@ -77,6 +78,9 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector
 
 bool intel_opregion_headless_sku(struct drm_i915_private *i915);
 
+void intel_load_opregion_vbt(struct drm_i915_private *i915,
+			     struct intel_opregion *opregion,
+			     struct intel_vbt *vbt);
 #else /* CONFIG_ACPI*/
 
 static inline int intel_opregion_setup(struct drm_i915_private *dev_priv)
@@ -137,6 +141,11 @@ static inline bool intel_opregion_headless_sku(struct drm_i915_private *i915)
 	return false;
 }
 
+static inline void intel_load_opregion_vbt(struct drm_i915_private *i915,
+					   struct intel_opregion *opregion,
+					   struct intel_vbt *vbt)
+{
+}
 #endif /* CONFIG_ACPI */
 
 #endif
-- 
2.34.1

