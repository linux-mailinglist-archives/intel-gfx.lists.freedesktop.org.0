Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B78C666DDAB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 13:33:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1778110E53C;
	Tue, 17 Jan 2023 12:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E3910E53C
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 12:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673958806; x=1705494806;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e5ETwbVCCkmUvnaNNJQs7ZQc55qQa4wNbG/kTun2BZY=;
 b=XvG4DGs+rVxEWiS6o4RERzDsli0TKxEFlq2ejSuJlHwji+h6qODTyF9E
 MlnoNO4uFGezGjrqx+cgiF6bscPm5zSQc136GRojBpoUauzsEWC/5FtpM
 lOOIWSxRE+vcRkuJd6+Zbc/Hf1Ujz72T15ipADEShlOg+PXp9yjg4n+Gm
 ov/U2shhw745U4wNEm60EV9nqWAtn9wKdEdtUXG5ukZPyveN/a5BgCLN0
 PN+DN9xJ9A6jDMx+ITwZaLNLDaxwwV4yFDPrfQ4qzPl6aaubpfRuOXrqS
 1tRBgi/PIOsfqSlZJiDJ5wySUljn7nbcAdeONlGoEinQONFkQ6lFQpecX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="351928986"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="351928986"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 04:33:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="801726446"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="801726446"
Received: from vishvend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.14.88])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 04:33:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jan 2023 14:33:08 +0200
Message-Id: <3e4aaadeb4a027165f5724027963aa5e8d747190.1673958757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1673958757.git.jani.nikula@intel.com>
References: <cover.1673958757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/gmch: mass rename dev_priv to i915
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Prefer the contemporary naming.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_gmch.c | 95 +++++++++++++--------------
 1 file changed, 47 insertions(+), 48 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i915/soc/intel_gmch.c
index 75916aa072e7..d5fbb7907725 100644
--- a/drivers/gpu/drm/i915/soc/intel_gmch.c
+++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
@@ -17,33 +17,32 @@ static void intel_gmch_bridge_release(struct drm_device *dev, void *bridge)
 	pci_dev_put(bridge);
 }
 
-int intel_gmch_bridge_setup(struct drm_i915_private *dev_priv)
+int intel_gmch_bridge_setup(struct drm_i915_private *i915)
 {
-	int domain = pci_domain_nr(to_pci_dev(dev_priv->drm.dev)->bus);
+	int domain = pci_domain_nr(to_pci_dev(i915->drm.dev)->bus);
 
-	dev_priv->gmch.pdev =
-		pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 0));
-	if (!dev_priv->gmch.pdev) {
-		drm_err(&dev_priv->drm, "bridge device not found\n");
+	i915->gmch.pdev = pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 0));
+	if (!i915->gmch.pdev) {
+		drm_err(&i915->drm, "bridge device not found\n");
 		return -EIO;
 	}
 
-	return drmm_add_action_or_reset(&dev_priv->drm, intel_gmch_bridge_release,
-					dev_priv->gmch.pdev);
+	return drmm_add_action_or_reset(&i915->drm, intel_gmch_bridge_release,
+					i915->gmch.pdev);
 }
 
 /* Allocate space for the MCH regs if needed, return nonzero on error */
 static int
-intel_alloc_mchbar_resource(struct drm_i915_private *dev_priv)
+intel_alloc_mchbar_resource(struct drm_i915_private *i915)
 {
-	int reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
+	int reg = GRAPHICS_VER(i915) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
 	u32 temp_lo, temp_hi = 0;
 	u64 mchbar_addr;
 	int ret;
 
-	if (GRAPHICS_VER(dev_priv) >= 4)
-		pci_read_config_dword(dev_priv->gmch.pdev, reg + 4, &temp_hi);
-	pci_read_config_dword(dev_priv->gmch.pdev, reg, &temp_lo);
+	if (GRAPHICS_VER(i915) >= 4)
+		pci_read_config_dword(i915->gmch.pdev, reg + 4, &temp_hi);
+	pci_read_config_dword(i915->gmch.pdev, reg, &temp_lo);
 	mchbar_addr = ((u64)temp_hi << 32) | temp_lo;
 
 	/* If ACPI doesn't have it, assume we need to allocate it ourselves */
@@ -54,46 +53,46 @@ intel_alloc_mchbar_resource(struct drm_i915_private *dev_priv)
 #endif
 
 	/* Get some space for it */
-	dev_priv->gmch.mch_res.name = "i915 MCHBAR";
-	dev_priv->gmch.mch_res.flags = IORESOURCE_MEM;
-	ret = pci_bus_alloc_resource(dev_priv->gmch.pdev->bus,
-				     &dev_priv->gmch.mch_res,
+	i915->gmch.mch_res.name = "i915 MCHBAR";
+	i915->gmch.mch_res.flags = IORESOURCE_MEM;
+	ret = pci_bus_alloc_resource(i915->gmch.pdev->bus,
+				     &i915->gmch.mch_res,
 				     MCHBAR_SIZE, MCHBAR_SIZE,
 				     PCIBIOS_MIN_MEM,
 				     0, pcibios_align_resource,
-				     dev_priv->gmch.pdev);
+				     i915->gmch.pdev);
 	if (ret) {
-		drm_dbg(&dev_priv->drm, "failed bus alloc: %d\n", ret);
-		dev_priv->gmch.mch_res.start = 0;
+		drm_dbg(&i915->drm, "failed bus alloc: %d\n", ret);
+		i915->gmch.mch_res.start = 0;
 		return ret;
 	}
 
-	if (GRAPHICS_VER(dev_priv) >= 4)
-		pci_write_config_dword(dev_priv->gmch.pdev, reg + 4,
-				       upper_32_bits(dev_priv->gmch.mch_res.start));
+	if (GRAPHICS_VER(i915) >= 4)
+		pci_write_config_dword(i915->gmch.pdev, reg + 4,
+				       upper_32_bits(i915->gmch.mch_res.start));
 
-	pci_write_config_dword(dev_priv->gmch.pdev, reg,
-			       lower_32_bits(dev_priv->gmch.mch_res.start));
+	pci_write_config_dword(i915->gmch.pdev, reg,
+			       lower_32_bits(i915->gmch.mch_res.start));
 	return 0;
 }
 
 /* Setup MCHBAR if possible, return true if we should disable it again */
-void intel_gmch_bar_setup(struct drm_i915_private *dev_priv)
+void intel_gmch_bar_setup(struct drm_i915_private *i915)
 {
-	int mchbar_reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
+	int mchbar_reg = GRAPHICS_VER(i915) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
 	u32 temp;
 	bool enabled;
 
-	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		return;
 
-	dev_priv->gmch.mchbar_need_disable = false;
+	i915->gmch.mchbar_need_disable = false;
 
-	if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
-		pci_read_config_dword(dev_priv->gmch.pdev, DEVEN, &temp);
+	if (IS_I915G(i915) || IS_I915GM(i915)) {
+		pci_read_config_dword(i915->gmch.pdev, DEVEN, &temp);
 		enabled = !!(temp & DEVEN_MCHBAR_EN);
 	} else {
-		pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg, &temp);
+		pci_read_config_dword(i915->gmch.pdev, mchbar_reg, &temp);
 		enabled = temp & 1;
 	}
 
@@ -101,45 +100,45 @@ void intel_gmch_bar_setup(struct drm_i915_private *dev_priv)
 	if (enabled)
 		return;
 
-	if (intel_alloc_mchbar_resource(dev_priv))
+	if (intel_alloc_mchbar_resource(i915))
 		return;
 
-	dev_priv->gmch.mchbar_need_disable = true;
+	i915->gmch.mchbar_need_disable = true;
 
 	/* Space is allocated or reserved, so enable it. */
-	if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
-		pci_write_config_dword(dev_priv->gmch.pdev, DEVEN,
+	if (IS_I915G(i915) || IS_I915GM(i915)) {
+		pci_write_config_dword(i915->gmch.pdev, DEVEN,
 				       temp | DEVEN_MCHBAR_EN);
 	} else {
-		pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg, &temp);
-		pci_write_config_dword(dev_priv->gmch.pdev, mchbar_reg, temp | 1);
+		pci_read_config_dword(i915->gmch.pdev, mchbar_reg, &temp);
+		pci_write_config_dword(i915->gmch.pdev, mchbar_reg, temp | 1);
 	}
 }
 
-void intel_gmch_bar_teardown(struct drm_i915_private *dev_priv)
+void intel_gmch_bar_teardown(struct drm_i915_private *i915)
 {
-	int mchbar_reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
+	int mchbar_reg = GRAPHICS_VER(i915) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
 
-	if (dev_priv->gmch.mchbar_need_disable) {
-		if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
+	if (i915->gmch.mchbar_need_disable) {
+		if (IS_I915G(i915) || IS_I915GM(i915)) {
 			u32 deven_val;
 
-			pci_read_config_dword(dev_priv->gmch.pdev, DEVEN,
+			pci_read_config_dword(i915->gmch.pdev, DEVEN,
 					      &deven_val);
 			deven_val &= ~DEVEN_MCHBAR_EN;
-			pci_write_config_dword(dev_priv->gmch.pdev, DEVEN,
+			pci_write_config_dword(i915->gmch.pdev, DEVEN,
 					       deven_val);
 		} else {
 			u32 mchbar_val;
 
-			pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg,
+			pci_read_config_dword(i915->gmch.pdev, mchbar_reg,
 					      &mchbar_val);
 			mchbar_val &= ~1;
-			pci_write_config_dword(dev_priv->gmch.pdev, mchbar_reg,
+			pci_write_config_dword(i915->gmch.pdev, mchbar_reg,
 					       mchbar_val);
 		}
 	}
 
-	if (dev_priv->gmch.mch_res.start)
-		release_resource(&dev_priv->gmch.mch_res);
+	if (i915->gmch.mch_res.start)
+		release_resource(&i915->gmch.mch_res);
 }
-- 
2.34.1

