Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F644504F12
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 12:54:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697D910F57F;
	Mon, 18 Apr 2022 10:54:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF52B10F57F
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 10:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650279269; x=1681815269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EsTreps34wHQq/JpTa/3TQgOKkUTkHCqKq4UDWEpZMc=;
 b=f+32bwOXe6vfeNDVUwxBLUkfmQ5rfFAaVMXfmdTlclfJIlXbzp/LZc2x
 9wfOLb+btUHQPFpoeq/e10fkxzsZOl0cus9iZIksQAe/lxCiExZtbf+nV
 Ryp0oMOQcrt8vH+3wfPFZ/1JgNnp7/wnZG/wRXPphUwPaNRhE73Da7T2r
 IlyfrydjB5cEWjNj8LA4C/1eaRYnVZtB4HgKqKuln+wQCQqoT4mRA+rMq
 J3gP/ZquCYF7fYI04bK3VyLMlQbCO3GRl96HavKW0UpptuFrJC+ZDUnAz
 nYjlnHfQ7fseImDiTtSteg9rYRoe6JtMIFq8QtkGn4dq1iY3lbrByiBov g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10320"; a="250798267"
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="250798267"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 03:54:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,269,1643702400"; d="scan'208";a="665139336"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 03:54:26 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Apr 2022 16:24:04 +0530
Message-Id: <20220418105408.13444-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220418105408.13444-1-anshuman.gupta@intel.com>
References: <20220418105408.13444-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/6] drm/i915/opregion: Abstract opregion
 function
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Abstract opregion operations like get opregion base, get rvda and
opregion cleanup in form of i915_opregion_ops.
This will be required to converge igfx and dgfx opregion.

v2:
- Keep only function pointer abstraction stuff. [Jani]
- Add alloc_rvda error handling.
v3:
- Added necessary credit to Manasi for static analysis fix around
  drm_WARN_ON(&i915->drm, !opregion->asls || !opregion->header)
v4:
- intel_opregion_get_asls() returns asls. [Jani]
- Added IS_ERR(rvda)in free_rvda(). [Jani]
- Fix free_{opregion, rvda} abstraction level. [Jani]

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Badal Nilawar <badal.nilawar@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 177 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_opregion.h |   3 +
 2 files changed, 133 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 9b56064ddb5d..e43aac5c0425 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -138,6 +138,13 @@ struct opregion_asle_ext {
 	u8 rsvd[764];
 } __packed;
 
+struct i915_opregion_func {
+	void *(*alloc_opregion)(struct drm_i915_private *i915);
+	void *(*alloc_rvda)(struct drm_i915_private *i915);
+	void (*free_rvda)(struct drm_i915_private *i915, void *rvda);
+	void (*free_opregion)(struct drm_i915_private *i915, void *opregion);
+};
+
 /* Driver readiness indicator */
 #define ASLE_ARDY_READY		(1 << 0)
 #define ASLE_ARDY_NOT_READY	(0 << 0)
@@ -876,10 +883,7 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 static int intel_opregion_setup(struct drm_i915_private *dev_priv)
 {
 	struct intel_opregion *opregion = &dev_priv->opregion;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-	u32 asls, mboxes;
-	char buf[sizeof(OPREGION_SIGNATURE)];
-	int err = 0;
+	u32 mboxes;
 	void *base;
 	const void *vbt;
 	u32 vbt_size;
@@ -890,27 +894,12 @@ static int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	BUILD_BUG_ON(sizeof(struct opregion_asle) != 0x100);
 	BUILD_BUG_ON(sizeof(struct opregion_asle_ext) != 0x400);
 
-	pci_read_config_dword(pdev, ASLS, &asls);
-	drm_dbg(&dev_priv->drm, "graphic opregion physical addr: 0x%x\n",
-		asls);
-	if (asls == 0) {
-		drm_dbg(&dev_priv->drm, "ACPI OpRegion not supported!\n");
-		return -ENOTSUPP;
-	}
-
 	INIT_WORK(&opregion->asle_work, asle_work);
 
-	base = memremap(asls, OPREGION_SIZE, MEMREMAP_WB);
-	if (!base)
-		return -ENOMEM;
+	base = opregion->opregion_func->alloc_opregion(dev_priv);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
 
-	memcpy(buf, base, sizeof(buf));
-
-	if (memcmp(buf, OPREGION_SIGNATURE, 16)) {
-		drm_dbg(&dev_priv->drm, "opregion signature mismatch\n");
-		err = -EINVAL;
-		goto err_out;
-	}
 	opregion->header = base;
 	opregion->lid_state = base + ACPI_CLID;
 
@@ -970,23 +959,10 @@ static int intel_opregion_setup(struct drm_i915_private *dev_priv)
 
 	if (opregion->header->over.major >= 2 && opregion->asle &&
 	    opregion->asle->rvda && opregion->asle->rvds) {
-		resource_size_t rvda = opregion->asle->rvda;
-
-		/*
-		 * opregion 2.0: rvda is the physical VBT address.
-		 *
-		 * opregion 2.1+: rvda is unsigned, relative offset from
-		 * opregion base, and should never point within opregion.
-		 */
-		if (opregion->header->over.major > 2 ||
-		    opregion->header->over.minor >= 1) {
-			drm_WARN_ON(&dev_priv->drm, rvda < OPREGION_SIZE);
-
-			rvda += asls;
-		}
 
-		opregion->rvda = memremap(rvda, opregion->asle->rvds,
-					  MEMREMAP_WB);
+		opregion->rvda = opregion->opregion_func->alloc_rvda(dev_priv);
+		if (IS_ERR(opregion->rvda))
+			goto mbox4_vbt;
 
 		vbt = opregion->rvda;
 		vbt_size = opregion->asle->rvds;
@@ -999,11 +975,13 @@ static int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		} else {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Invalid VBT in ACPI OpRegion (RVDA)\n");
-			memunmap(opregion->rvda);
+			opregion->opregion_func->free_rvda(dev_priv, opregion->rvda);
 			opregion->rvda = NULL;
 		}
 	}
 
+mbox4_vbt:
+
 	vbt = base + OPREGION_VBT_OFFSET;
 	/*
 	 * The VBT specification says that if the ASLE ext mailbox is not used
@@ -1028,9 +1006,6 @@ static int intel_opregion_setup(struct drm_i915_private *dev_priv)
 out:
 	return 0;
 
-err_out:
-	memunmap(base);
-	return err;
 }
 
 static int intel_use_opregion_panel_type_callback(const struct dmi_system_id *id)
@@ -1215,11 +1190,11 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 	}
 
 	/* just clear all opregion memory pointers now */
-	memunmap(opregion->header);
-	if (opregion->rvda) {
-		memunmap(opregion->rvda);
-		opregion->rvda = NULL;
-	}
+	opregion->opregion_func->free_rvda(i915, opregion->rvda);
+	opregion->rvda = NULL;
+	opregion->opregion_func->free_opregion(i915, opregion->header);
+	opregion->header = NULL;
+
 	if (opregion->vbt_firmware) {
 		kfree(opregion->vbt_firmware);
 		opregion->vbt_firmware = NULL;
@@ -1233,6 +1208,110 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 	opregion->lid_state = NULL;
 }
 
+static u32
+intel_opregion_get_asls(struct drm_i915_private *i915)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	u32 asls;
+
+	pci_read_config_dword(pdev, ASLS, &asls);
+	drm_dbg(&i915->drm, "graphic opregion physical addr: 0x%x\n",
+		asls);
+
+	return asls;
+}
+
+static void *intel_igfx_alloc_opregion(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+	char buf[sizeof(OPREGION_SIGNATURE)];
+	int err = 0;
+	void *base;
+	u32 asls;
+
+	asls = intel_opregion_get_asls(i915);
+	if (asls == 0) {
+		drm_dbg(&i915->drm, "ACPI OpRegion not supported!\n");
+		return ERR_PTR(-EINVAL);
+	}
+
+	opregion->asls = asls;
+	base = memremap(opregion->asls, OPREGION_SIZE, MEMREMAP_WB);
+	if (!base)
+		return ERR_PTR(-ENOMEM);
+
+	memcpy(buf, base, sizeof(buf));
+
+	if (memcmp(buf, OPREGION_SIGNATURE, 16)) {
+		drm_dbg(&i915->drm, "opregion signature mismatch\n");
+		err = -EINVAL;
+		goto err_out;
+	}
+
+	return base;
+
+err_out:
+	memunmap(base);
+
+	return ERR_PTR(err);
+}
+
+static void *intel_igfx_alloc_rvda(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+	resource_size_t rvda;
+	void *opreg_rvda;
+
+	if (drm_WARN_ON(&i915->drm, !opregion->asls || !opregion->header))
+		return ERR_PTR(-ENODEV);
+
+	rvda = opregion->asle->rvda;
+
+	/*
+	 * opregion 2.0: rvda is the physical VBT address.
+	 *
+	 * opregion 2.1+: rvda is unsigned, relative offset from
+	 * opregion base, and should never point within opregion.
+	 */
+	if (opregion->header->over.major > 2 ||
+	    opregion->header->over.minor >= 1) {
+		drm_WARN_ON(&i915->drm, rvda < OPREGION_SIZE);
+
+		rvda += opregion->asls;
+	}
+
+	opreg_rvda = memremap(rvda, opregion->asle->rvds, MEMREMAP_WB);
+	if (!opreg_rvda)
+		return ERR_PTR(-ENOMEM);
+
+	return opreg_rvda;
+}
+
+static void intel_igfx_free_rvda(struct drm_i915_private *i915, void *rvda)
+{
+	if (IS_ERR(rvda))
+		return;
+
+	if (rvda)
+		memunmap(rvda);
+}
+
+static void intel_igfx_free_opregion(struct drm_i915_private *i915, void *opreg)
+{
+	if (IS_ERR(opreg))
+		return;
+
+	if (opreg)
+		memunmap(opreg);
+}
+
+static const struct i915_opregion_func igfx_opregion_func = {
+	.alloc_opregion = intel_igfx_alloc_opregion,
+	.alloc_rvda = intel_igfx_alloc_rvda,
+	.free_rvda = intel_igfx_free_rvda,
+	.free_opregion = intel_igfx_free_opregion,
+};
+
 /**
  * intel_opregion_init() - Init ACPI opregion.
  * @i915 i915 device priv data.
@@ -1240,5 +1319,9 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
  */
 int intel_opregion_init(struct drm_i915_private *i915)
 {
+	struct intel_opregion *opregion = &i915->opregion;
+
+	opregion->opregion_func = &igfx_opregion_func;
+
 	return intel_opregion_setup(i915);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 744d53c804e2..7500c396b74d 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -37,6 +37,7 @@ struct opregion_acpi;
 struct opregion_swsci;
 struct opregion_asle;
 struct opregion_asle_ext;
+struct i915_opregion_func;
 
 struct intel_opregion {
 	struct opregion_header *header;
@@ -46,6 +47,8 @@ struct intel_opregion {
 	u32 swsci_sbcb_sub_functions;
 	struct opregion_asle *asle;
 	struct opregion_asle_ext *asle_ext;
+	const struct i915_opregion_func *opregion_func;
+	resource_size_t asls;
 	void *rvda;
 	void *vbt_firmware;
 	const void *vbt;
-- 
2.26.2

