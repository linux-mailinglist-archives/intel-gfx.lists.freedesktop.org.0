Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 366C166DDAE
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 13:33:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E1C810E53F;
	Tue, 17 Jan 2023 12:33:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2FD110E53B
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 12:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673958809; x=1705494809;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VZWm3m2ql/M7hUWBIZzD1K3TSclM1vblcvF3pMJNBXc=;
 b=KNKULQU0O4mTjpDnoaNhqSC+qvLkKeFQAP3CgEjthphIVOoXN450wt98
 jt7nuyNURPcQXIzGi+mpdOEKZCpIr9rT+vKcbguRWAQL3MnufOgbf9ztO
 b6Bq3E/aniQxG+rvw6NC9AiDVUpdcwknVMRB3J5uAKHgqRKFvK+IDpRbt
 Pr4qk8y46hSDfmja12msD9OK6ibFmPbjvHCE8Up9e2zvmztKO7pfrIo90
 M/DTzhiUk2hma8CbAVwqju9UGMzGCIkrlrAEKr+50N3drxMEJilafUrW5
 /9aWs9cxlxyvRHFmkXb9l/flr51UkjxLit8pmj95m2wcHCzq+fRG9UwFC g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="387034156"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="387034156"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 04:33:17 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="636856891"
X-IronPort-AV: E=Sophos;i="5.97,222,1669104000"; d="scan'208";a="636856891"
Received: from vishvend-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.14.88])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 04:33:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Jan 2023 14:33:06 +0200
Message-Id: <c10c8f16cb5d12041e009f788bd9810225d6962d.1673958757.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1673958757.git.jani.nikula@intel.com>
References: <cover.1673958757.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915: add gmch substruct to struct
 drm_i915_private
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

Group the GMCH related members together.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c  |  4 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c |  2 +-
 drivers/gpu/drm/i915/i915_driver.c        | 58 +++++++++++------------
 drivers/gpu/drm/i915/i915_drv.h           | 10 ++--
 4 files changed, 37 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index a69bfcac9a94..9cedeb8c2f4d 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -104,7 +104,7 @@ intel_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 	unsigned int reg = DISPLAY_VER(i915) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
 	u16 gmch_ctrl;
 
-	if (pci_read_config_word(i915->bridge_dev, reg, &gmch_ctrl)) {
+	if (pci_read_config_word(i915->gmch.pdev, reg, &gmch_ctrl)) {
 		drm_err(&i915->drm, "failed to read control word\n");
 		return -EIO;
 	}
@@ -117,7 +117,7 @@ intel_vga_set_state(struct drm_i915_private *i915, bool enable_decode)
 	else
 		gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;
 
-	if (pci_write_config_word(i915->bridge_dev, reg, gmch_ctrl)) {
+	if (pci_write_config_word(i915->gmch.pdev, reg, gmch_ctrl)) {
 		drm_err(&i915->drm, "failed to write control word\n");
 		return -EIO;
 	}
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
index 4e2163a1aa46..221c675e90cc 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
@@ -81,7 +81,7 @@ int intel_ggtt_gmch_probe(struct i915_ggtt *ggtt)
 	phys_addr_t gmadr_base;
 	int ret;
 
-	ret = intel_gmch_probe(i915->bridge_dev, to_pci_dev(i915->drm.dev), NULL);
+	ret = intel_gmch_probe(i915->gmch.pdev, to_pci_dev(i915->drm.dev), NULL);
 	if (!ret) {
 		drm_err(&i915->drm, "failed to set up gmch\n");
 		return -EIO;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index c1e427ba57ae..59cbc24cda6c 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -117,15 +117,15 @@ static int i915_get_bridge_dev(struct drm_i915_private *dev_priv)
 {
 	int domain = pci_domain_nr(to_pci_dev(dev_priv->drm.dev)->bus);
 
-	dev_priv->bridge_dev =
+	dev_priv->gmch.pdev =
 		pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(0, 0));
-	if (!dev_priv->bridge_dev) {
+	if (!dev_priv->gmch.pdev) {
 		drm_err(&dev_priv->drm, "bridge device not found\n");
 		return -EIO;
 	}
 
 	return drmm_add_action_or_reset(&dev_priv->drm, i915_release_bridge_dev,
-					dev_priv->bridge_dev);
+					dev_priv->gmch.pdev);
 }
 
 /* Allocate space for the MCH regs if needed, return nonzero on error */
@@ -138,8 +138,8 @@ intel_alloc_mchbar_resource(struct drm_i915_private *dev_priv)
 	int ret;
 
 	if (GRAPHICS_VER(dev_priv) >= 4)
-		pci_read_config_dword(dev_priv->bridge_dev, reg + 4, &temp_hi);
-	pci_read_config_dword(dev_priv->bridge_dev, reg, &temp_lo);
+		pci_read_config_dword(dev_priv->gmch.pdev, reg + 4, &temp_hi);
+	pci_read_config_dword(dev_priv->gmch.pdev, reg, &temp_lo);
 	mchbar_addr = ((u64)temp_hi << 32) | temp_lo;
 
 	/* If ACPI doesn't have it, assume we need to allocate it ourselves */
@@ -150,26 +150,26 @@ intel_alloc_mchbar_resource(struct drm_i915_private *dev_priv)
 #endif
 
 	/* Get some space for it */
-	dev_priv->mch_res.name = "i915 MCHBAR";
-	dev_priv->mch_res.flags = IORESOURCE_MEM;
-	ret = pci_bus_alloc_resource(dev_priv->bridge_dev->bus,
-				     &dev_priv->mch_res,
+	dev_priv->gmch.mch_res.name = "i915 MCHBAR";
+	dev_priv->gmch.mch_res.flags = IORESOURCE_MEM;
+	ret = pci_bus_alloc_resource(dev_priv->gmch.pdev->bus,
+				     &dev_priv->gmch.mch_res,
 				     MCHBAR_SIZE, MCHBAR_SIZE,
 				     PCIBIOS_MIN_MEM,
 				     0, pcibios_align_resource,
-				     dev_priv->bridge_dev);
+				     dev_priv->gmch.pdev);
 	if (ret) {
 		drm_dbg(&dev_priv->drm, "failed bus alloc: %d\n", ret);
-		dev_priv->mch_res.start = 0;
+		dev_priv->gmch.mch_res.start = 0;
 		return ret;
 	}
 
 	if (GRAPHICS_VER(dev_priv) >= 4)
-		pci_write_config_dword(dev_priv->bridge_dev, reg + 4,
-				       upper_32_bits(dev_priv->mch_res.start));
+		pci_write_config_dword(dev_priv->gmch.pdev, reg + 4,
+				       upper_32_bits(dev_priv->gmch.mch_res.start));
 
-	pci_write_config_dword(dev_priv->bridge_dev, reg,
-			       lower_32_bits(dev_priv->mch_res.start));
+	pci_write_config_dword(dev_priv->gmch.pdev, reg,
+			       lower_32_bits(dev_priv->gmch.mch_res.start));
 	return 0;
 }
 
@@ -184,13 +184,13 @@ intel_setup_mchbar(struct drm_i915_private *dev_priv)
 	if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
 		return;
 
-	dev_priv->mchbar_need_disable = false;
+	dev_priv->gmch.mchbar_need_disable = false;
 
 	if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
-		pci_read_config_dword(dev_priv->bridge_dev, DEVEN, &temp);
+		pci_read_config_dword(dev_priv->gmch.pdev, DEVEN, &temp);
 		enabled = !!(temp & DEVEN_MCHBAR_EN);
 	} else {
-		pci_read_config_dword(dev_priv->bridge_dev, mchbar_reg, &temp);
+		pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg, &temp);
 		enabled = temp & 1;
 	}
 
@@ -201,15 +201,15 @@ intel_setup_mchbar(struct drm_i915_private *dev_priv)
 	if (intel_alloc_mchbar_resource(dev_priv))
 		return;
 
-	dev_priv->mchbar_need_disable = true;
+	dev_priv->gmch.mchbar_need_disable = true;
 
 	/* Space is allocated or reserved, so enable it. */
 	if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
-		pci_write_config_dword(dev_priv->bridge_dev, DEVEN,
+		pci_write_config_dword(dev_priv->gmch.pdev, DEVEN,
 				       temp | DEVEN_MCHBAR_EN);
 	} else {
-		pci_read_config_dword(dev_priv->bridge_dev, mchbar_reg, &temp);
-		pci_write_config_dword(dev_priv->bridge_dev, mchbar_reg, temp | 1);
+		pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg, &temp);
+		pci_write_config_dword(dev_priv->gmch.pdev, mchbar_reg, temp | 1);
 	}
 }
 
@@ -218,28 +218,28 @@ intel_teardown_mchbar(struct drm_i915_private *dev_priv)
 {
 	int mchbar_reg = GRAPHICS_VER(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
 
-	if (dev_priv->mchbar_need_disable) {
+	if (dev_priv->gmch.mchbar_need_disable) {
 		if (IS_I915G(dev_priv) || IS_I915GM(dev_priv)) {
 			u32 deven_val;
 
-			pci_read_config_dword(dev_priv->bridge_dev, DEVEN,
+			pci_read_config_dword(dev_priv->gmch.pdev, DEVEN,
 					      &deven_val);
 			deven_val &= ~DEVEN_MCHBAR_EN;
-			pci_write_config_dword(dev_priv->bridge_dev, DEVEN,
+			pci_write_config_dword(dev_priv->gmch.pdev, DEVEN,
 					       deven_val);
 		} else {
 			u32 mchbar_val;
 
-			pci_read_config_dword(dev_priv->bridge_dev, mchbar_reg,
+			pci_read_config_dword(dev_priv->gmch.pdev, mchbar_reg,
 					      &mchbar_val);
 			mchbar_val &= ~1;
-			pci_write_config_dword(dev_priv->bridge_dev, mchbar_reg,
+			pci_write_config_dword(dev_priv->gmch.pdev, mchbar_reg,
 					       mchbar_val);
 		}
 	}
 
-	if (dev_priv->mch_res.start)
-		release_resource(&dev_priv->mch_res);
+	if (dev_priv->gmch.mch_res.start)
+		release_resource(&dev_priv->gmch.mch_res);
 }
 
 static int i915_workqueues_init(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 48fd82722f12..e4e09ccacc43 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -236,13 +236,15 @@ struct drm_i915_private {
 
 	struct intel_gvt *gvt;
 
-	struct pci_dev *bridge_dev;
+	struct {
+		struct pci_dev *pdev;
+		struct resource mch_res;
+		bool mchbar_need_disable;
+	} gmch;
 
 	struct rb_root uabi_engines;
 	unsigned int engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS + 1];
 
-	struct resource mch_res;
-
 	/* protects the irq masks */
 	spinlock_t irq_lock;
 
@@ -288,8 +290,6 @@ struct drm_i915_private {
 
 	struct i915_gem_mm mm;
 
-	bool mchbar_need_disable;
-
 	struct intel_l3_parity l3_parity;
 
 	/*
-- 
2.34.1

