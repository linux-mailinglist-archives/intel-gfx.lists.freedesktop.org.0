Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C427B4AB004
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Feb 2022 15:43:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028E710E3DF;
	Sun,  6 Feb 2022 14:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 289A810E3DF
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Feb 2022 14:43:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644158609; x=1675694609;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tCq6YWQEdYlFGOy+7V8DrBsVW8kbAlDXRz1xkTBSAcg=;
 b=AO/PCSFTUK8yuFKmyw7WvcCpugkVyaleY+cfwHQuxsQy9Pa1236yYRoz
 CzMFWy4AxB3jOVHlThcD7Cdzsar7MZPb85MCb2yZMEJL2Y7ciDLyjI0wi
 GG67v/cFbaB6IaZ8r5xP125Fs2p94FqIPcM5T+HhayBDxLYyNA2c13Ryg
 lckHAmXHEqMIs6SWiMMSNyCyBwGgfT+abUUZCxiNv3tDuIml56CCqSZo1
 o0NwJRdvzkQLyZTKk6s8e/8kc9+H+hHJ9OTcz0fkHWUBYR/E90PG+3D4w
 H0gXxyeYrYMphIuCg5Cyy6d5bNcyydhjZJXC553lSrUp5mB8L9DCFEfLM A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10249"; a="334987565"
X-IronPort-AV: E=Sophos;i="5.88,347,1635231600"; d="scan'208";a="334987565"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 06:43:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,347,1635231600"; d="scan'208";a="700183720"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2022 06:43:26 -0800
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  6 Feb 2022 20:13:08 +0530
Message-Id: <20220206144311.5053-2-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220206144311.5053-1-anshuman.gupta@intel.com>
References: <20220206144311.5053-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/opregion: Abstract opregion
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Abstract opregion operations like get opregion base, get rvda and
opregion cleanup in form of i915_opregion_ops.
This will be required to converge igfx and dgfx opregion.
This keeps intel_opregion_setup() as static function, and adds
a new function intel_opregion_init().

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Badal Nilawar <badal.nilawar@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_opregion.c | 215 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_opregion.h |   8 +-
 drivers/gpu/drm/i915/i915_driver.c            |   2 +-
 3 files changed, 172 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index af9d30f56cc1..19f0558c0fbf 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -137,6 +137,13 @@ struct opregion_asle_ext {
 	u8 rsvd[764];
 } __packed;
 
+struct i915_opregion_func {
+	void *(*alloc_opregion)(struct drm_i915_private *i915);
+	void *(*alloc_rvda)(struct drm_i915_private *i915);
+	void (*free_rvda)(struct drm_i915_private *i915);
+	void (*free_opregion)(struct drm_i915_private *i915);
+};
+
 /* Driver readiness indicator */
 #define ASLE_ARDY_READY		(1 << 0)
 #define ASLE_ARDY_NOT_READY	(0 << 0)
@@ -839,13 +846,10 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
 	return ret;
 }
 
-int intel_opregion_setup(struct drm_i915_private *dev_priv)
+static int intel_opregion_setup(struct drm_i915_private *dev_priv)
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
@@ -856,27 +860,12 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
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
 
@@ -924,23 +913,8 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 
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
 
 		vbt = opregion->rvda;
 		vbt_size = opregion->asle->rvds;
@@ -953,8 +927,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		} else {
 			drm_dbg_kms(&dev_priv->drm,
 				    "Invalid VBT in ACPI OpRegion (RVDA)\n");
-			memunmap(opregion->rvda);
-			opregion->rvda = NULL;
+			opregion->opregion_func->free_rvda(dev_priv);
 		}
 	}
 
@@ -982,9 +955,6 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 out:
 	return 0;
 
-err_out:
-	memunmap(base);
-	return err;
 }
 
 static int intel_use_opregion_panel_type_callback(const struct dmi_system_id *id)
@@ -1169,11 +1139,9 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 	}
 
 	/* just clear all opregion memory pointers now */
-	memunmap(opregion->header);
-	if (opregion->rvda) {
-		memunmap(opregion->rvda);
-		opregion->rvda = NULL;
-	}
+	opregion->opregion_func->free_rvda(i915);
+	opregion->opregion_func->free_opregion(i915);
+
 	if (opregion->vbt_firmware) {
 		kfree(opregion->vbt_firmware);
 		opregion->vbt_firmware = NULL;
@@ -1186,3 +1154,152 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 	opregion->vbt = NULL;
 	opregion->lid_state = NULL;
 }
+
+static int
+intel_opregion_get_asls(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	u32 asls;
+
+	pci_read_config_dword(pdev, ASLS, &asls);
+	drm_dbg(&i915->drm, "graphic opregion physical addr: 0x%x\n",
+		asls);
+	if (asls == 0) {
+		drm_dbg(&i915->drm, "ACPI OpRegion not supported!\n");
+		return -EINVAL;
+	}
+
+	opregion->asls = asls;
+
+	return 0;
+}
+
+static void *intel_igfx_alloc_opregion(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+	char buf[sizeof(OPREGION_SIGNATURE)];
+	int err = 0;
+	void *base;
+
+	err = intel_opregion_get_asls(i915);
+	if (err)
+		return ERR_PTR(err);
+
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
+	drm_WARN_ON(&i915->drm, !opregion->asls || !opregion->header);
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
+static void intel_igfx_free_rvda(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+
+	if (opregion->rvda) {
+		memunmap(opregion->rvda);
+		opregion->rvda = NULL;
+	}
+}
+
+static void intel_igfx_free_opregion(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+
+	if (opregion->header)
+		memunmap(opregion->header);
+}
+
+static void *intel_dgfx_alloc_opregion(struct drm_i915_private *i915)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
+static void *intel_dgfx_alloc_rvda(struct drm_i915_private *i915)
+{
+	return ERR_PTR(-EOPNOTSUPP);
+}
+
+static void intel_dgfx_free_rvda(struct drm_i915_private *i915)
+{
+}
+
+static void intel_dgfx_free_opregion(struct drm_i915_private *i915)
+{
+}
+
+static const struct i915_opregion_func igfx_opregion_func = {
+	.alloc_opregion = intel_igfx_alloc_opregion,
+	.alloc_rvda = intel_igfx_alloc_rvda,
+	.free_rvda = intel_igfx_free_rvda,
+	.free_opregion = intel_igfx_free_opregion,
+};
+
+static const struct i915_opregion_func dgfx_opregion_func = {
+	.alloc_opregion = intel_dgfx_alloc_opregion,
+	.alloc_rvda = intel_dgfx_alloc_rvda,
+	.free_rvda = intel_dgfx_free_rvda,
+	.free_opregion = intel_dgfx_free_opregion,
+};
+
+/**
+ * intel_opregion_init() - Init ACPI opregion.
+ * @i915 i915 device priv data.
+ * It initialize the dgfx/igfx opregion function pointers
+ * and setup the ACPI opregions.
+ */
+int intel_opregion_init(struct drm_i915_private *i915)
+{
+	struct intel_opregion *opregion = &i915->opregion;
+
+	if (IS_DGFX(i915))
+		opregion->opregion_func = &dgfx_opregion_func;
+	else
+		opregion->opregion_func = &igfx_opregion_func;
+
+	return intel_opregion_setup(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 82cc0ba34af7..4ff48c445044 100644
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
@@ -59,8 +62,7 @@ struct intel_opregion {
 
 #ifdef CONFIG_ACPI
 
-int intel_opregion_setup(struct drm_i915_private *dev_priv);
-
+int intel_opregion_init(struct drm_i915_private *i915);
 void intel_opregion_register(struct drm_i915_private *dev_priv);
 void intel_opregion_unregister(struct drm_i915_private *dev_priv);
 
@@ -78,7 +80,7 @@ struct edid *intel_opregion_get_edid(struct intel_connector *connector);
 
 #else /* CONFIG_ACPI*/
 
-static inline int intel_opregion_setup(struct drm_i915_private *dev_priv)
+static inline int intel_opregion_init(struct drm_i915_private *i915)
 {
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 3d41f532a5d6..f7cb34f5fa4a 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -634,7 +634,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_msi;
 
-	intel_opregion_setup(dev_priv);
+	intel_opregion_init(dev_priv);
 
 	ret = intel_pcode_init(dev_priv);
 	if (ret)
-- 
2.26.2

