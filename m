Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E20396F6D4
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 16:33:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A07610EA62;
	Fri,  6 Sep 2024 14:33:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aPdshvaT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9556A10EA63;
 Fri,  6 Sep 2024 14:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725633201; x=1757169201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H4yln8+N3jGJiIl9wXPV6sKNvui+sVTE9eUhMPv6ArI=;
 b=aPdshvaTTsCai/CX7rBJ56yxBV4yaZP0IM7RrBVL6U5rb3TZ6IpRjymH
 04pWY2pJFg2sSwEKHwDfjIw4CnphkrkHAtzfd/kRC+Pbjs+pWkkRzHRkW
 39ss42mw8faDIJLZoI6anPt/Ji1nd0gNrv9VXSIzQYXFKEjlNHYPV8Ws+
 ibsempZUXJZSpng17s4jJsnk3MSBSkl+JNkal4cpjRXVUc8Eg4YKsdMU4
 vlV5uu9wuMYRS7gCsUQMTkmhoHzUbwFheiIUybO0PRT6mUJLxXbizkft7
 N4SY7K6WN7CGly+AVtcFT/NpCPR3XW0Us7G54jQTMa2xGggEGxXPYo5H8 A==;
X-CSE-ConnectionGUID: 69j+xBwSSvmhYBcJwTxczQ==
X-CSE-MsgGUID: dYgvtQ+xSyi2FFh/kRVQzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="41903068"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="41903068"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 07:33:21 -0700
X-CSE-ConnectionGUID: xsrC50a9Q/+IBE9edP1t/w==
X-CSE-MsgGUID: NbBU6yVrRq6YS2PvSKxJlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66003948"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 07:33:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 17:33:18 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/6] drm/i915/vga: Convert VGA code to intel_display
Date: Fri,  6 Sep 2024 17:33:04 +0300
Message-ID: <20240906143306.15937-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
References: <20240906143306.15937-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

struct intel_display will replace struct drm_i915_private as
the main thing for display code. Convert the VGA code to
use it (as much as possible at this stage).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 11 ++---
 .../i915/display/intel_display_power_well.c   |  6 ++-
 drivers/gpu/drm/i915/display/intel_vga.c      | 45 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_vga.h      | 14 +++---
 drivers/gpu/drm/i915/i915_suspend.c           |  3 +-
 5 files changed, 43 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 434e52f450ff..f8da72af2107 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -221,7 +221,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 
 	intel_bios_init(display);
 
-	ret = intel_vga_register(i915);
+	ret = intel_vga_register(display);
 	if (ret)
 		goto cleanup_bios;
 
@@ -275,7 +275,7 @@ int intel_display_driver_probe_noirq(struct drm_i915_private *i915)
 	intel_dmc_fini(i915);
 	intel_power_domains_driver_remove(i915);
 cleanup_vga:
-	intel_vga_unregister(i915);
+	intel_vga_unregister(display);
 cleanup_bios:
 	intel_bios_driver_remove(display);
 
@@ -458,7 +458,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 	intel_hti_init(display);
 
 	/* Just disable it once at startup */
-	intel_vga_disable(i915);
+	intel_vga_disable(display);
 	intel_setup_outputs(i915);
 
 	ret = intel_dp_tunnel_mgr_init(display);
@@ -625,7 +625,7 @@ void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
 
 	intel_power_domains_driver_remove(i915);
 
-	intel_vga_unregister(i915);
+	intel_vga_unregister(display);
 
 	intel_bios_driver_remove(display);
 }
@@ -683,12 +683,13 @@ __intel_display_driver_resume(struct drm_i915_private *i915,
 			      struct drm_atomic_state *state,
 			      struct drm_modeset_acquire_ctx *ctx)
 {
+	struct intel_display *display = &i915->display;
 	struct drm_crtc_state *crtc_state;
 	struct drm_crtc *crtc;
 	int ret, i;
 
 	intel_modeset_setup_hw_state(i915, ctx);
-	intel_vga_redisable(i915);
+	intel_vga_redisable(display);
 
 	if (!state)
 		return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 1f0084ca6248..a5d9b17e03a2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -187,8 +187,10 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
 static void hsw_power_well_post_enable(struct drm_i915_private *dev_priv,
 				       u8 irq_pipe_mask, bool has_vga)
 {
+	struct intel_display *display = &dev_priv->display;
+
 	if (has_vga)
-		intel_vga_reset_io_mem(dev_priv);
+		intel_vga_reset_io_mem(display);
 
 	if (irq_pipe_mask)
 		gen8_irq_power_well_post_enable(dev_priv, irq_pipe_mask);
@@ -1248,7 +1250,7 @@ static void vlv_display_power_well_init(struct drm_i915_private *dev_priv)
 			intel_crt_reset(&encoder->base);
 	}
 
-	intel_vga_redisable_power_on(dev_priv);
+	intel_vga_redisable_power_on(display);
 
 	intel_pps_unlock_regs_wa(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 0b5916c15307..2c76a0176a35 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -14,24 +14,26 @@
 #include "intel_de.h"
 #include "intel_vga.h"
 
-static i915_reg_t intel_vga_cntrl_reg(struct drm_i915_private *i915)
+static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
+
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 		return VLV_VGACNTRL;
-	else if (DISPLAY_VER(i915) >= 5)
+	else if (DISPLAY_VER(display) >= 5)
 		return CPU_VGACNTRL;
 	else
 		return VGACNTRL;
 }
 
 /* Disable the VGA plane that we never use */
-void intel_vga_disable(struct drm_i915_private *dev_priv)
+void intel_vga_disable(struct intel_display *display)
 {
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-	i915_reg_t vga_reg = intel_vga_cntrl_reg(dev_priv);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
+	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
 	u8 sr1;
 
-	if (intel_de_read(dev_priv, vga_reg) & VGA_DISP_DISABLE)
+	if (intel_de_read(display, vga_reg) & VGA_DISP_DISABLE)
 		return;
 
 	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
@@ -42,23 +44,24 @@ void intel_vga_disable(struct drm_i915_private *dev_priv)
 	vga_put(pdev, VGA_RSRC_LEGACY_IO);
 	udelay(300);
 
-	intel_de_write(dev_priv, vga_reg, VGA_DISP_DISABLE);
-	intel_de_posting_read(dev_priv, vga_reg);
+	intel_de_write(display, vga_reg, VGA_DISP_DISABLE);
+	intel_de_posting_read(display, vga_reg);
 }
 
-void intel_vga_redisable_power_on(struct drm_i915_private *dev_priv)
+void intel_vga_redisable_power_on(struct intel_display *display)
 {
-	i915_reg_t vga_reg = intel_vga_cntrl_reg(dev_priv);
+	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
 
-	if (!(intel_de_read(dev_priv, vga_reg) & VGA_DISP_DISABLE)) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (!(intel_de_read(display, vga_reg) & VGA_DISP_DISABLE)) {
+		drm_dbg_kms(display->drm,
 			    "Something enabled VGA plane, disabling it\n");
-		intel_vga_disable(dev_priv);
+		intel_vga_disable(display);
 	}
 }
 
-void intel_vga_redisable(struct drm_i915_private *i915)
+void intel_vga_redisable(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 
 	/*
@@ -74,14 +77,14 @@ void intel_vga_redisable(struct drm_i915_private *i915)
 	if (!wakeref)
 		return;
 
-	intel_vga_redisable_power_on(i915);
+	intel_vga_redisable_power_on(display);
 
 	intel_display_power_put(i915, POWER_DOMAIN_VGA, wakeref);
 }
 
-void intel_vga_reset_io_mem(struct drm_i915_private *i915)
+void intel_vga_reset_io_mem(struct intel_display *display)
 {
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 
 	/*
 	 * After we re-enable the power well, if we touch VGA register 0x3d5
@@ -98,10 +101,10 @@ void intel_vga_reset_io_mem(struct drm_i915_private *i915)
 	vga_put(pdev, VGA_RSRC_LEGACY_IO);
 }
 
-int intel_vga_register(struct drm_i915_private *i915)
+int intel_vga_register(struct intel_display *display)
 {
 
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	int ret;
 
 	/*
@@ -119,9 +122,9 @@ int intel_vga_register(struct drm_i915_private *i915)
 	return 0;
 }
 
-void intel_vga_unregister(struct drm_i915_private *i915)
+void intel_vga_unregister(struct intel_display *display)
 {
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 
 	vga_client_unregister(pdev);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vga.h b/drivers/gpu/drm/i915/display/intel_vga.h
index ba5b55b917f0..824dfc32a199 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.h
+++ b/drivers/gpu/drm/i915/display/intel_vga.h
@@ -6,13 +6,13 @@
 #ifndef __INTEL_VGA_H__
 #define __INTEL_VGA_H__
 
-struct drm_i915_private;
+struct intel_display;
 
-void intel_vga_reset_io_mem(struct drm_i915_private *i915);
-void intel_vga_disable(struct drm_i915_private *i915);
-void intel_vga_redisable(struct drm_i915_private *i915);
-void intel_vga_redisable_power_on(struct drm_i915_private *i915);
-int intel_vga_register(struct drm_i915_private *i915);
-void intel_vga_unregister(struct drm_i915_private *i915);
+void intel_vga_reset_io_mem(struct intel_display *display);
+void intel_vga_disable(struct intel_display *display);
+void intel_vga_redisable(struct intel_display *display);
+void intel_vga_redisable_power_on(struct intel_display *display);
+int intel_vga_register(struct intel_display *display);
+void intel_vga_unregister(struct intel_display *display);
 
 #endif /* __INTEL_VGA_H__ */
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index f8373a461f17..9d3d9b983032 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -118,6 +118,7 @@ void i915_save_display(struct drm_i915_private *dev_priv)
 
 void i915_restore_display(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -134,7 +135,7 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
 		intel_de_write(dev_priv, DSPARB(dev_priv),
 			       dev_priv->regfile.saveDSPARB);
 
-	intel_vga_redisable(dev_priv);
+	intel_vga_redisable(display);
 
 	intel_gmbus_reset(dev_priv);
 }
-- 
2.44.2

