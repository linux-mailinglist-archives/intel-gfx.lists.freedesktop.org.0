Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE34794D227
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 16:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C4510E91E;
	Fri,  9 Aug 2024 14:27:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HrW13dvK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72E9610E91E;
 Fri,  9 Aug 2024 14:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723213653; x=1754749653;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O0T9qZ8RdWSepTputCIq/a2nOAjCDvr/lFa37EdyzEw=;
 b=HrW13dvKtGuoANsRSwG048IGw4UmJ4SCF9fuylmdYYNkNZCT39H9FCd1
 wAvRfpNfqGxYfnfMk7J4tRCC6zT64R0dYxikuiIcTOZ4drwNULDyzuX7q
 QApFqI0RNxN8WfoQT7XE5kuwgLC4TEmjx965nAmxPteEqzQVQ41/w6Ax1
 v3Q9P7A30G7Q5QDEYePCIrYatxNNF4zothhMUcHxAy7+bVwab9pmbWLUZ
 T6m6Q6U/lnOYPIzoSvszDxMk0ls33auu928Xp+hY+qbkJjch4KJHCVJEY
 Tr7j2Mi+9bou/PxH6/Sxeh5yqT/4/5F/ctXctDulpLzg0liJXGABw6XEY g==;
X-CSE-ConnectionGUID: Y1MbcYc7RlegTq3BcEkPxQ==
X-CSE-MsgGUID: pFtEtr3qTlKfg3Pu5RbzhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11159"; a="32013751"
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="32013751"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 07:27:31 -0700
X-CSE-ConnectionGUID: 0aGIRgIcQ960bDEuvhqlYA==
X-CSE-MsgGUID: rGMEIv8mTu2cXU6YZd4FYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,276,1716274800"; d="scan'208";a="57471514"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 07:27:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH v2 3/4] drm/i915/opregion: convert to struct intel_display
Date: Fri,  9 Aug 2024 17:27:05 +0300
Message-Id: <aef94503909bbbf95f0244dc382a4d4cd050b903.1723213547.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1723213547.git.jani.nikula@intel.com>
References: <cover.1723213547.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Going forward, struct intel_display shall replace struct
drm_i915_private as the main display device data pointer type. Convert
intel_opregion.[ch] to struct intel_display.

v2:
- Fix declarations for !CONFIG_ACPI (Imre, kernel test robot)
- Pass encoder/connector directly to intel_display() (Imre)

Reviewed-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |  10 +-
 .../drm/i915/display/intel_display_debugfs.c  |   5 +-
 .../drm/i915/display/intel_display_device.c   |   8 +-
 .../drm/i915/display/intel_display_driver.c   |   6 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  24 +-
 drivers/gpu/drm/i915/display/intel_opregion.c | 296 +++++++++---------
 drivers/gpu/drm/i915/display/intel_opregion.h |  58 ++--
 drivers/gpu/drm/i915/i915_driver.c            |  22 +-
 drivers/gpu/drm/xe/display/xe_display.c       |  19 +-
 9 files changed, 240 insertions(+), 208 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 83fa093ccf8b..0b13b37f24a4 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -622,7 +622,9 @@ static int opregion_get_panel_type(struct drm_i915_private *i915,
 				   const struct intel_bios_encoder_data *devdata,
 				   const struct drm_edid *drm_edid, bool use_fallback)
 {
-	return intel_opregion_get_panel_type(i915);
+	struct intel_display *display = &i915->display;
+
+	return intel_opregion_get_panel_type(display);
 }
 
 static int vbt_get_panel_type(struct drm_i915_private *i915,
@@ -3158,13 +3160,14 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
 static const struct vbt_header *intel_bios_get_vbt(struct drm_i915_private *i915,
 						   size_t *sizep)
 {
+	struct intel_display *display = &i915->display;
 	const struct vbt_header *vbt = NULL;
 	intel_wakeref_t wakeref;
 
 	vbt = firmware_get_vbt(i915, sizep);
 
 	if (!vbt)
-		vbt = intel_opregion_get_vbt(i915, sizep);
+		vbt = intel_opregion_get_vbt(display, sizep);
 
 	/*
 	 * If the OpRegion does not have VBT, look in SPI flash
@@ -3378,6 +3381,7 @@ bool intel_bios_is_tv_present(struct drm_i915_private *i915)
  */
 bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
 {
+	struct intel_display *display = &i915->display;
 	const struct intel_bios_encoder_data *devdata;
 
 	if (list_empty(&i915->display.vbt.display_devices))
@@ -3410,7 +3414,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
 		 * additional data.  Trust that if the VBT was written into
 		 * the OpRegion then they have validated the LVDS's existence.
 		 */
-		return intel_opregion_vbt_present(i915);
+		return intel_opregion_vbt_present(display);
 	}
 
 	return false;
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index a0a3b3e180f4..7d3ae826a353 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1049,6 +1049,7 @@ static const struct {
 
 void intel_display_debugfs_register(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct drm_minor *minor = i915->drm.primary;
 	int i;
 
@@ -1067,9 +1068,9 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
 	intel_bios_debugfs_register(i915);
 	intel_cdclk_debugfs_register(i915);
 	intel_dmc_debugfs_register(i915);
-	intel_fbc_debugfs_register(&i915->display);
+	intel_fbc_debugfs_register(display);
 	intel_hpd_debugfs_register(i915);
-	intel_opregion_debugfs_register(i915);
+	intel_opregion_debugfs_register(display);
 	intel_psr_debugfs_register(i915);
 	intel_wm_debugfs_register(i915);
 	intel_display_debugfs_params(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index dd7dce4b0e7a..a31f89df2c0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1529,9 +1529,11 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
  */
 bool intel_display_device_enabled(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	/* Only valid when HAS_DISPLAY() is true */
-	drm_WARN_ON(&i915->drm, !HAS_DISPLAY(i915));
+	drm_WARN_ON(display->drm, !HAS_DISPLAY(display));
 
-	return !i915->display.params.disable_display &&
-		!intel_opregion_headless_sku(i915);
+	return !display->params.disable_display &&
+		!intel_opregion_headless_sku(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 392c10359a52..a2666b69834e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -535,7 +535,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 		return;
 
 	/* Must be done after probing outputs */
-	intel_opregion_register(i915);
+	intel_opregion_register(display);
 	intel_acpi_video_register(display);
 
 	intel_audio_init(i915);
@@ -626,6 +626,8 @@ void intel_display_driver_remove_nogem(struct drm_i915_private *i915)
 
 void intel_display_driver_unregister(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	if (!HAS_DISPLAY(i915))
 		return;
 
@@ -645,7 +647,7 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
 	drm_atomic_helper_shutdown(&i915->drm);
 
 	acpi_video_unregister();
-	intel_opregion_unregister(i915);
+	intel_opregion_unregister(display);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 5219ba295c74..6cc1cc5e94d5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -270,10 +270,12 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
 
 static bool i915_has_asle(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
+
 	if (!IS_PINEVIEW(i915) && !IS_MOBILE(i915))
 		return false;
 
-	return intel_opregion_asle_present(i915);
+	return intel_opregion_asle_present(display);
 }
 
 /**
@@ -497,6 +499,8 @@ void i8xx_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 void i915_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
+	struct intel_display *display = &dev_priv->display;
+
 	bool blc_event = false;
 	enum pipe pipe;
 
@@ -515,12 +519,13 @@ void i915_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 	}
 
 	if (blc_event || (iir & I915_ASLE_INTERRUPT))
-		intel_opregion_asle_intr(dev_priv);
+		intel_opregion_asle_intr(display);
 }
 
 void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 			       u32 iir, u32 pipe_stats[I915_MAX_PIPES])
 {
+	struct intel_display *display = &dev_priv->display;
 	bool blc_event = false;
 	enum pipe pipe;
 
@@ -539,7 +544,7 @@ void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 	}
 
 	if (blc_event || (iir & I915_ASLE_INTERRUPT))
-		intel_opregion_asle_intr(dev_priv);
+		intel_opregion_asle_intr(display);
 
 	if (pipe_stats[0] & PIPE_GMBUS_INTERRUPT_STATUS)
 		intel_gmbus_irq_handler(dev_priv);
@@ -695,6 +700,7 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 
 void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG;
 
@@ -705,7 +711,7 @@ void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 		intel_dp_aux_irq_handler(dev_priv);
 
 	if (de_iir & DE_GSE)
-		intel_opregion_asle_intr(dev_priv);
+		intel_opregion_asle_intr(display);
 
 	if (de_iir & DE_POISON)
 		drm_err(&dev_priv->drm, "Poison interrupt\n");
@@ -743,6 +749,7 @@ void ilk_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 
 void ivb_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 	u32 hotplug_trigger = de_iir & DE_DP_A_HOTPLUG_IVB;
 
@@ -770,7 +777,7 @@ void ivb_display_irq_handler(struct drm_i915_private *dev_priv, u32 de_iir)
 		intel_dp_aux_irq_handler(dev_priv);
 
 	if (de_iir & DE_GSE_IVB)
-		intel_opregion_asle_intr(dev_priv);
+		intel_opregion_asle_intr(display);
 
 	for_each_pipe(dev_priv, pipe) {
 		if (de_iir & DE_PIPE_VBLANK_IVB(pipe))
@@ -894,6 +901,7 @@ static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_priv)
 static void
 gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 {
+	struct intel_display *display = &dev_priv->display;
 	bool found = false;
 
 	if (DISPLAY_VER(dev_priv) >= 14) {
@@ -907,7 +915,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
 			found = true;
 		}
 	} else if (iir & GEN8_DE_MISC_GSE) {
-		intel_opregion_asle_intr(dev_priv);
+		intel_opregion_asle_intr(display);
 		found = true;
 	}
 
@@ -1211,8 +1219,10 @@ u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
 
 void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
 {
+	struct intel_display *display = &i915->display;
+
 	if (iir & GEN11_GU_MISC_GSE)
-		intel_opregion_asle_intr(i915);
+		intel_opregion_asle_intr(display);
 }
 
 void gen11_display_irq_handler(struct drm_i915_private *i915)
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index 4c9b9e7ebc91..7a9d6b2f4100 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -252,7 +252,7 @@ struct opregion_asle_ext {
 #define OPREGION_SIZE	(8 * 1024)
 
 struct intel_opregion {
-	struct drm_i915_private *i915;
+	struct intel_display *display;
 
 	struct opregion_header *header;
 	struct opregion_acpi *acpi;
@@ -268,9 +268,9 @@ struct intel_opregion {
 	struct notifier_block acpi_notifier;
 };
 
-static int check_swsci_function(struct drm_i915_private *i915, u32 function)
+static int check_swsci_function(struct intel_display *display, u32 function)
 {
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 	struct opregion_swsci *swsci;
 	u32 main_function, sub_function;
 
@@ -300,20 +300,20 @@ static int check_swsci_function(struct drm_i915_private *i915, u32 function)
 	return 0;
 }
 
-static int swsci(struct drm_i915_private *dev_priv,
+static int swsci(struct intel_display *display,
 		 u32 function, u32 parm, u32 *parm_out)
 {
 	struct opregion_swsci *swsci;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	u32 scic, dslp;
 	u16 swsci_val;
 	int ret;
 
-	ret = check_swsci_function(dev_priv, function);
+	ret = check_swsci_function(display, function);
 	if (ret)
 		return ret;
 
-	swsci = dev_priv->display.opregion->swsci;
+	swsci = display->opregion->swsci;
 
 	/* Driver sleep timeout in ms. */
 	dslp = swsci->dslp;
@@ -331,7 +331,7 @@ static int swsci(struct drm_i915_private *dev_priv,
 	/* The spec tells us to do this, but we are the only user... */
 	scic = swsci->scic;
 	if (scic & SWSCI_SCIC_INDICATOR) {
-		drm_dbg(&dev_priv->drm, "SWSCI request already in progress\n");
+		drm_dbg(display->drm, "SWSCI request already in progress\n");
 		return -EBUSY;
 	}
 
@@ -355,7 +355,7 @@ static int swsci(struct drm_i915_private *dev_priv,
 	/* Poll for the result. */
 #define C (((scic = swsci->scic) & SWSCI_SCIC_INDICATOR) == 0)
 	if (wait_for(C, dslp)) {
-		drm_dbg(&dev_priv->drm, "SWSCI request timed out\n");
+		drm_dbg(display->drm, "SWSCI request timed out\n");
 		return -ETIMEDOUT;
 	}
 
@@ -364,7 +364,7 @@ static int swsci(struct drm_i915_private *dev_priv,
 
 	/* Note: scic == 0 is an error! */
 	if (scic != SWSCI_SCIC_EXIT_STATUS_SUCCESS) {
-		drm_dbg(&dev_priv->drm, "SWSCI request error %u\n", scic);
+		drm_dbg(display->drm, "SWSCI request error %u\n", scic);
 		return -EIO;
 	}
 
@@ -384,18 +384,18 @@ static int swsci(struct drm_i915_private *dev_priv,
 int intel_opregion_notify_encoder(struct intel_encoder *encoder,
 				  bool enable)
 {
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(encoder);
 	u32 parm = 0;
 	u32 type = 0;
 	u32 port;
 	int ret;
 
 	/* don't care about old stuff for now */
-	if (!HAS_DDI(dev_priv))
+	if (!HAS_DDI(display))
 		return 0;
 
 	/* Avoid port out of bounds checks if SWSCI isn't there. */
-	ret = check_swsci_function(dev_priv, SWSCI_SBCB_DISPLAY_POWER_STATE);
+	ret = check_swsci_function(display, SWSCI_SBCB_DISPLAY_POWER_STATE);
 	if (ret)
 		return ret;
 
@@ -419,7 +419,7 @@ int intel_opregion_notify_encoder(struct intel_encoder *encoder,
 	 * number is out of bounds after mapping.
 	 */
 	if (port > 4) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] port %c (index %u) out of bounds for display power state notification\n",
 			    encoder->base.base.id, encoder->base.name,
 			    port_name(encoder->port), port);
@@ -444,7 +444,7 @@ int intel_opregion_notify_encoder(struct intel_encoder *encoder,
 		type = DISPLAY_TYPE_INTERNAL_FLAT_PANEL;
 		break;
 	default:
-		drm_WARN_ONCE(&dev_priv->drm, 1,
+		drm_WARN_ONCE(display->drm, 1,
 			      "unsupported intel_encoder type %d\n",
 			      encoder->type);
 		return -EINVAL;
@@ -452,7 +452,7 @@ int intel_opregion_notify_encoder(struct intel_encoder *encoder,
 
 	parm |= type << (16 + port * 3);
 
-	return swsci(dev_priv, SWSCI_SBCB_DISPLAY_POWER_STATE, parm, NULL);
+	return swsci(display, SWSCI_SBCB_DISPLAY_POWER_STATE, parm, NULL);
 }
 
 static const struct {
@@ -466,33 +466,33 @@ static const struct {
 	{ PCI_D3cold,	0x04 },
 };
 
-int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
+int intel_opregion_notify_adapter(struct intel_display *display,
 				  pci_power_t state)
 {
 	int i;
 
-	if (!HAS_DDI(dev_priv))
+	if (!HAS_DDI(display))
 		return 0;
 
 	for (i = 0; i < ARRAY_SIZE(power_state_map); i++) {
 		if (state == power_state_map[i].pci_power_state)
-			return swsci(dev_priv, SWSCI_SBCB_ADAPTER_POWER_STATE,
+			return swsci(display, SWSCI_SBCB_ADAPTER_POWER_STATE,
 				     power_state_map[i].parm, NULL);
 	}
 
 	return -EINVAL;
 }
 
-static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
+static u32 asle_set_backlight(struct intel_display *display, u32 bclp)
 {
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
-	struct opregion_asle *asle = dev_priv->display.opregion->asle;
+	struct opregion_asle *asle = display->opregion->asle;
 
-	drm_dbg(&dev_priv->drm, "bclp = 0x%08x\n", bclp);
+	drm_dbg(display->drm, "bclp = 0x%08x\n", bclp);
 
 	if (acpi_video_get_backlight_type() == acpi_backlight_native) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "opregion backlight request ignored\n");
 		return 0;
 	}
@@ -504,104 +504,104 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
 	if (bclp > 255)
 		return ASLC_BACKLIGHT_FAILED;
 
-	drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex, NULL);
+	drm_modeset_lock(&display->drm->mode_config.connection_mutex, NULL);
 
 	/*
 	 * Update backlight on all connectors that support backlight (usually
 	 * only one).
 	 */
-	drm_dbg_kms(&dev_priv->drm, "updating opregion backlight %d/255\n",
+	drm_dbg_kms(display->drm, "updating opregion backlight %d/255\n",
 		    bclp);
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter)
 		intel_backlight_set_acpi(connector->base.state, bclp, 255);
 	drm_connector_list_iter_end(&conn_iter);
 	asle->cblv = DIV_ROUND_UP(bclp * 100, 255) | ASLE_CBLV_VALID;
 
-	drm_modeset_unlock(&dev_priv->drm.mode_config.connection_mutex);
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
 
 	return 0;
 }
 
-static u32 asle_set_als_illum(struct drm_i915_private *dev_priv, u32 alsi)
+static u32 asle_set_als_illum(struct intel_display *display, u32 alsi)
 {
 	/* alsi is the current ALS reading in lux. 0 indicates below sensor
 	   range, 0xffff indicates above sensor range. 1-0xfffe are valid */
-	drm_dbg(&dev_priv->drm, "Illum is not supported\n");
+	drm_dbg(display->drm, "Illum is not supported\n");
 	return ASLC_ALS_ILLUM_FAILED;
 }
 
-static u32 asle_set_pwm_freq(struct drm_i915_private *dev_priv, u32 pfmb)
+static u32 asle_set_pwm_freq(struct intel_display *display, u32 pfmb)
 {
-	drm_dbg(&dev_priv->drm, "PWM freq is not supported\n");
+	drm_dbg(display->drm, "PWM freq is not supported\n");
 	return ASLC_PWM_FREQ_FAILED;
 }
 
-static u32 asle_set_pfit(struct drm_i915_private *dev_priv, u32 pfit)
+static u32 asle_set_pfit(struct intel_display *display, u32 pfit)
 {
 	/* Panel fitting is currently controlled by the X code, so this is a
 	   noop until modesetting support works fully */
-	drm_dbg(&dev_priv->drm, "Pfit is not supported\n");
+	drm_dbg(display->drm, "Pfit is not supported\n");
 	return ASLC_PFIT_FAILED;
 }
 
-static u32 asle_set_supported_rotation_angles(struct drm_i915_private *dev_priv, u32 srot)
+static u32 asle_set_supported_rotation_angles(struct intel_display *display, u32 srot)
 {
-	drm_dbg(&dev_priv->drm, "SROT is not supported\n");
+	drm_dbg(display->drm, "SROT is not supported\n");
 	return ASLC_ROTATION_ANGLES_FAILED;
 }
 
-static u32 asle_set_button_array(struct drm_i915_private *dev_priv, u32 iuer)
+static u32 asle_set_button_array(struct intel_display *display, u32 iuer)
 {
 	if (!iuer)
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"Button array event is not supported (nothing)\n");
 	if (iuer & ASLE_IUER_ROTATION_LOCK_BTN)
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"Button array event is not supported (rotation lock)\n");
 	if (iuer & ASLE_IUER_VOLUME_DOWN_BTN)
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"Button array event is not supported (volume down)\n");
 	if (iuer & ASLE_IUER_VOLUME_UP_BTN)
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"Button array event is not supported (volume up)\n");
 	if (iuer & ASLE_IUER_WINDOWS_BTN)
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"Button array event is not supported (windows)\n");
 	if (iuer & ASLE_IUER_POWER_BTN)
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"Button array event is not supported (power)\n");
 
 	return ASLC_BUTTON_ARRAY_FAILED;
 }
 
-static u32 asle_set_convertible(struct drm_i915_private *dev_priv, u32 iuer)
+static u32 asle_set_convertible(struct intel_display *display, u32 iuer)
 {
 	if (iuer & ASLE_IUER_CONVERTIBLE)
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"Convertible is not supported (clamshell)\n");
 	else
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"Convertible is not supported (slate)\n");
 
 	return ASLC_CONVERTIBLE_FAILED;
 }
 
-static u32 asle_set_docking(struct drm_i915_private *dev_priv, u32 iuer)
+static u32 asle_set_docking(struct intel_display *display, u32 iuer)
 {
 	if (iuer & ASLE_IUER_DOCKING)
-		drm_dbg(&dev_priv->drm, "Docking is not supported (docked)\n");
+		drm_dbg(display->drm, "Docking is not supported (docked)\n");
 	else
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"Docking is not supported (undocked)\n");
 
 	return ASLC_DOCKING_FAILED;
 }
 
-static u32 asle_isct_state(struct drm_i915_private *dev_priv)
+static u32 asle_isct_state(struct intel_display *display)
 {
-	drm_dbg(&dev_priv->drm, "ISCT is not supported\n");
+	drm_dbg(display->drm, "ISCT is not supported\n");
 	return ASLC_ISCT_STATE_FAILED;
 }
 
@@ -609,7 +609,7 @@ static void asle_work(struct work_struct *work)
 {
 	struct intel_opregion *opregion =
 		container_of(work, struct intel_opregion, asle_work);
-	struct drm_i915_private *dev_priv = opregion->i915;
+	struct intel_display *display = opregion->display;
 	struct opregion_asle *asle = opregion->asle;
 	u32 aslc_stat = 0;
 	u32 aslc_req;
@@ -620,50 +620,51 @@ static void asle_work(struct work_struct *work)
 	aslc_req = asle->aslc;
 
 	if (!(aslc_req & ASLC_REQ_MSK)) {
-		drm_dbg(&dev_priv->drm,
+		drm_dbg(display->drm,
 			"No request on ASLC interrupt 0x%08x\n", aslc_req);
 		return;
 	}
 
 	if (aslc_req & ASLC_SET_ALS_ILLUM)
-		aslc_stat |= asle_set_als_illum(dev_priv, asle->alsi);
+		aslc_stat |= asle_set_als_illum(display, asle->alsi);
 
 	if (aslc_req & ASLC_SET_BACKLIGHT)
-		aslc_stat |= asle_set_backlight(dev_priv, asle->bclp);
+		aslc_stat |= asle_set_backlight(display, asle->bclp);
 
 	if (aslc_req & ASLC_SET_PFIT)
-		aslc_stat |= asle_set_pfit(dev_priv, asle->pfit);
+		aslc_stat |= asle_set_pfit(display, asle->pfit);
 
 	if (aslc_req & ASLC_SET_PWM_FREQ)
-		aslc_stat |= asle_set_pwm_freq(dev_priv, asle->pfmb);
+		aslc_stat |= asle_set_pwm_freq(display, asle->pfmb);
 
 	if (aslc_req & ASLC_SUPPORTED_ROTATION_ANGLES)
-		aslc_stat |= asle_set_supported_rotation_angles(dev_priv,
+		aslc_stat |= asle_set_supported_rotation_angles(display,
 							asle->srot);
 
 	if (aslc_req & ASLC_BUTTON_ARRAY)
-		aslc_stat |= asle_set_button_array(dev_priv, asle->iuer);
+		aslc_stat |= asle_set_button_array(display, asle->iuer);
 
 	if (aslc_req & ASLC_CONVERTIBLE_INDICATOR)
-		aslc_stat |= asle_set_convertible(dev_priv, asle->iuer);
+		aslc_stat |= asle_set_convertible(display, asle->iuer);
 
 	if (aslc_req & ASLC_DOCKING_INDICATOR)
-		aslc_stat |= asle_set_docking(dev_priv, asle->iuer);
+		aslc_stat |= asle_set_docking(display, asle->iuer);
 
 	if (aslc_req & ASLC_ISCT_STATE_CHANGE)
-		aslc_stat |= asle_isct_state(dev_priv);
+		aslc_stat |= asle_isct_state(display);
 
 	asle->aslc = aslc_stat;
 }
 
-bool intel_opregion_asle_present(struct drm_i915_private *i915)
+bool intel_opregion_asle_present(struct intel_display *display)
 {
-	return i915->display.opregion && i915->display.opregion->asle;
+	return display->opregion && display->opregion->asle;
 }
 
-void intel_opregion_asle_intr(struct drm_i915_private *i915)
+void intel_opregion_asle_intr(struct intel_display *display)
 {
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_opregion *opregion = display->opregion;
 
 	if (opregion && opregion->asle)
 		queue_work(i915->unordered_wq, &opregion->asle_work);
@@ -720,9 +721,8 @@ static void set_did(struct intel_opregion *opregion, int i, u32 val)
 	}
 }
 
-static void intel_didl_outputs(struct drm_i915_private *dev_priv)
+static void intel_didl_outputs(struct intel_display *display)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct intel_opregion *opregion = display->opregion;
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
@@ -740,7 +740,7 @@ static void intel_didl_outputs(struct drm_i915_private *dev_priv)
 
 	intel_acpi_device_id_update(display);
 
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		if (i < max_outputs)
 			set_did(opregion, i, connector->acpi_device_id);
@@ -748,10 +748,10 @@ static void intel_didl_outputs(struct drm_i915_private *dev_priv)
 	}
 	drm_connector_list_iter_end(&conn_iter);
 
-	drm_dbg_kms(&dev_priv->drm, "%d outputs detected\n", i);
+	drm_dbg_kms(display->drm, "%d outputs detected\n", i);
 
 	if (i > max_outputs)
-		drm_err(&dev_priv->drm,
+		drm_err(display->drm,
 			"More than %d outputs in connector list\n",
 			max_outputs);
 
@@ -760,9 +760,9 @@ static void intel_didl_outputs(struct drm_i915_private *dev_priv)
 		set_did(opregion, i, 0);
 }
 
-static void intel_setup_cadls(struct drm_i915_private *dev_priv)
+static void intel_setup_cadls(struct intel_display *display)
 {
-	struct intel_opregion *opregion = dev_priv->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 	struct intel_connector *connector;
 	struct drm_connector_list_iter conn_iter;
 	int i = 0;
@@ -777,7 +777,7 @@ static void intel_setup_cadls(struct drm_i915_private *dev_priv)
 	 * Note that internal panels should be at the front of the connector
 	 * list already, ensuring they're not left out.
 	 */
-	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
+	drm_connector_list_iter_begin(display->drm, &conn_iter);
 	for_each_intel_connector_iter(connector, &conn_iter) {
 		if (i >= ARRAY_SIZE(opregion->acpi->cadl))
 			break;
@@ -790,9 +790,9 @@ static void intel_setup_cadls(struct drm_i915_private *dev_priv)
 		opregion->acpi->cadl[i] = 0;
 }
 
-static void swsci_setup(struct drm_i915_private *dev_priv)
+static void swsci_setup(struct intel_display *display)
 {
-	struct intel_opregion *opregion = dev_priv->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 	bool requested_callbacks = false;
 	u32 tmp;
 
@@ -801,7 +801,7 @@ static void swsci_setup(struct drm_i915_private *dev_priv)
 	opregion->swsci_sbcb_sub_functions = 1;
 
 	/* We use GBDA to ask for supported GBDA calls. */
-	if (swsci(dev_priv, SWSCI_GBDA_SUPPORTED_CALLS, 0, &tmp) == 0) {
+	if (swsci(display, SWSCI_GBDA_SUPPORTED_CALLS, 0, &tmp) == 0) {
 		/* make the bits match the sub-function codes */
 		tmp <<= 1;
 		opregion->swsci_gbda_sub_functions |= tmp;
@@ -812,7 +812,7 @@ static void swsci_setup(struct drm_i915_private *dev_priv)
 	 * must not call interfaces that are not specifically requested by the
 	 * bios.
 	 */
-	if (swsci(dev_priv, SWSCI_GBDA_REQUESTED_CALLBACKS, 0, &tmp) == 0) {
+	if (swsci(display, SWSCI_GBDA_REQUESTED_CALLBACKS, 0, &tmp) == 0) {
 		/* here, the bits already match sub-function codes */
 		opregion->swsci_sbcb_sub_functions |= tmp;
 		requested_callbacks = true;
@@ -823,7 +823,7 @@ static void swsci_setup(struct drm_i915_private *dev_priv)
 	 * the callback is _requested_. But we still can't call interfaces that
 	 * are not requested.
 	 */
-	if (swsci(dev_priv, SWSCI_SBCB_SUPPORTED_CALLBACKS, 0, &tmp) == 0) {
+	if (swsci(display, SWSCI_SBCB_SUPPORTED_CALLBACKS, 0, &tmp) == 0) {
 		/* make the bits match the sub-function codes */
 		u32 low = tmp & 0x7ff;
 		u32 high = tmp & ~0xfff; /* bit 11 is reserved */
@@ -833,7 +833,7 @@ static void swsci_setup(struct drm_i915_private *dev_priv)
 		if (requested_callbacks) {
 			u32 req = opregion->swsci_sbcb_sub_functions;
 			if ((req & tmp) != req)
-				drm_dbg(&dev_priv->drm,
+				drm_dbg(display->drm,
 					"SWSCI BIOS requested (%08x) SBCB callbacks that are not supported (%08x)\n",
 					req, tmp);
 			/* XXX: for now, trust the requested callbacks */
@@ -843,7 +843,7 @@ static void swsci_setup(struct drm_i915_private *dev_priv)
 		}
 	}
 
-	drm_dbg(&dev_priv->drm,
+	drm_dbg(display->drm,
 		"SWSCI GBDA callbacks %08x, SBCB callbacks %08x\n",
 		opregion->swsci_gbda_sub_functions,
 		opregion->swsci_sbcb_sub_functions);
@@ -868,10 +868,11 @@ static const struct dmi_system_id intel_no_opregion_vbt[] = {
 	{ }
 };
 
-int intel_opregion_setup(struct drm_i915_private *dev_priv)
+int intel_opregion_setup(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	struct intel_opregion *opregion;
-	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	u32 asls, mboxes;
 	char buf[sizeof(OPREGION_SIGNATURE)];
 	int err = 0;
@@ -886,10 +887,10 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	BUILD_BUG_ON(sizeof(struct opregion_asle_ext) != 0x400);
 
 	pci_read_config_dword(pdev, ASLS, &asls);
-	drm_dbg(&dev_priv->drm, "graphic opregion physical addr: 0x%x\n",
+	drm_dbg(display->drm, "graphic opregion physical addr: 0x%x\n",
 		asls);
 	if (asls == 0) {
-		drm_dbg(&dev_priv->drm, "ACPI OpRegion not supported!\n");
+		drm_dbg(display->drm, "ACPI OpRegion not supported!\n");
 		return -ENOTSUPP;
 	}
 
@@ -897,8 +898,8 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	if (!opregion)
 		return -ENOMEM;
 
-	opregion->i915 = dev_priv;
-	dev_priv->display.opregion = opregion;
+	opregion->display = display;
+	display->opregion = opregion;
 
 	INIT_WORK(&opregion->asle_work, asle_work);
 
@@ -911,20 +912,20 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	memcpy(buf, base, sizeof(buf));
 
 	if (memcmp(buf, OPREGION_SIGNATURE, 16)) {
-		drm_dbg(&dev_priv->drm, "opregion signature mismatch\n");
+		drm_dbg(display->drm, "opregion signature mismatch\n");
 		err = -EINVAL;
 		goto err_out;
 	}
 	opregion->header = base;
 
-	drm_dbg(&dev_priv->drm, "ACPI OpRegion version %u.%u.%u\n",
+	drm_dbg(display->drm, "ACPI OpRegion version %u.%u.%u\n",
 		opregion->header->over.major,
 		opregion->header->over.minor,
 		opregion->header->over.revision);
 
 	mboxes = opregion->header->mboxes;
 	if (mboxes & MBOX_ACPI) {
-		drm_dbg(&dev_priv->drm, "Public ACPI methods supported\n");
+		drm_dbg(display->drm, "Public ACPI methods supported\n");
 		opregion->acpi = base + OPREGION_ACPI_OFFSET;
 		/*
 		 * Indicate we handle monitor hotplug events ourselves so we do
@@ -939,30 +940,30 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		u8 major = opregion->header->over.major;
 
 		if (major >= 3) {
-			drm_err(&dev_priv->drm, "SWSCI Mailbox #2 present for opregion v3.x, ignoring\n");
+			drm_err(display->drm, "SWSCI Mailbox #2 present for opregion v3.x, ignoring\n");
 		} else {
 			if (major >= 2)
-				drm_dbg(&dev_priv->drm, "SWSCI Mailbox #2 present for opregion v2.x\n");
-			drm_dbg(&dev_priv->drm, "SWSCI supported\n");
+				drm_dbg(display->drm, "SWSCI Mailbox #2 present for opregion v2.x\n");
+			drm_dbg(display->drm, "SWSCI supported\n");
 			opregion->swsci = base + OPREGION_SWSCI_OFFSET;
-			swsci_setup(dev_priv);
+			swsci_setup(display);
 		}
 	}
 
 	if (mboxes & MBOX_ASLE) {
-		drm_dbg(&dev_priv->drm, "ASLE supported\n");
+		drm_dbg(display->drm, "ASLE supported\n");
 		opregion->asle = base + OPREGION_ASLE_OFFSET;
 
 		opregion->asle->ardy = ASLE_ARDY_NOT_READY;
 	}
 
 	if (mboxes & MBOX_ASLE_EXT) {
-		drm_dbg(&dev_priv->drm, "ASLE extension supported\n");
+		drm_dbg(display->drm, "ASLE extension supported\n");
 		opregion->asle_ext = base + OPREGION_ASLE_EXT_OFFSET;
 	}
 
 	if (mboxes & MBOX_BACKLIGHT) {
-		drm_dbg(&dev_priv->drm, "Mailbox #2 for backlight present\n");
+		drm_dbg(display->drm, "Mailbox #2 for backlight present\n");
 	}
 
 	if (dmi_check_system(intel_no_opregion_vbt))
@@ -980,7 +981,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 		 */
 		if (opregion->header->over.major > 2 ||
 		    opregion->header->over.minor >= 1) {
-			drm_WARN_ON(&dev_priv->drm, rvda < OPREGION_SIZE);
+			drm_WARN_ON(display->drm, rvda < OPREGION_SIZE);
 
 			rvda += asls;
 		}
@@ -990,14 +991,14 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 
 		vbt = opregion->rvda;
 		vbt_size = opregion->asle->rvds;
-		if (intel_bios_is_valid_vbt(dev_priv, vbt, vbt_size)) {
-			drm_dbg_kms(&dev_priv->drm,
+		if (intel_bios_is_valid_vbt(i915, vbt, vbt_size)) {
+			drm_dbg_kms(display->drm,
 				    "Found valid VBT in ACPI OpRegion (RVDA)\n");
 			opregion->vbt = vbt;
 			opregion->vbt_size = vbt_size;
 			goto out;
 		} else {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "Invalid VBT in ACPI OpRegion (RVDA)\n");
 			memunmap(opregion->rvda);
 			opregion->rvda = NULL;
@@ -1015,13 +1016,13 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	vbt_size = (mboxes & MBOX_ASLE_EXT) ?
 		OPREGION_ASLE_EXT_OFFSET : OPREGION_SIZE;
 	vbt_size -= OPREGION_VBT_OFFSET;
-	if (intel_bios_is_valid_vbt(dev_priv, vbt, vbt_size)) {
-		drm_dbg_kms(&dev_priv->drm,
+	if (intel_bios_is_valid_vbt(i915, vbt, vbt_size)) {
+		drm_dbg_kms(display->drm,
 			    "Found valid VBT in ACPI OpRegion (Mailbox #4)\n");
 		opregion->vbt = vbt;
 		opregion->vbt_size = vbt_size;
 	} else {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Invalid VBT in ACPI OpRegion (Mailbox #4)\n");
 	}
 
@@ -1032,7 +1033,7 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
 	memunmap(base);
 err_memremap:
 	kfree(opregion);
-	dev_priv->display.opregion = NULL;
+	display->opregion = NULL;
 
 	return err;
 }
@@ -1055,25 +1056,25 @@ static const struct dmi_system_id intel_use_opregion_panel_type[] = {
 };
 
 int
-intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
+intel_opregion_get_panel_type(struct intel_display *display)
 {
 	u32 panel_details;
 	int ret;
 
-	ret = swsci(dev_priv, SWSCI_GBDA_PANEL_DETAILS, 0x0, &panel_details);
+	ret = swsci(display, SWSCI_GBDA_PANEL_DETAILS, 0x0, &panel_details);
 	if (ret)
 		return ret;
 
 	ret = (panel_details >> 8) & 0xff;
 	if (ret > 0x10) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Invalid OpRegion panel type 0x%x\n", ret);
 		return -EINVAL;
 	}
 
 	/* fall back to VBT panel type? */
 	if (ret == 0x0) {
-		drm_dbg_kms(&dev_priv->drm, "No panel type in OpRegion\n");
+		drm_dbg_kms(display->drm, "No panel type in OpRegion\n");
 		return -ENODEV;
 	}
 
@@ -1083,7 +1084,7 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
 	 * via a quirk list :(
 	 */
 	if (!dmi_check_system(intel_use_opregion_panel_type)) {
-		drm_dbg_kms(&dev_priv->drm,
+		drm_dbg_kms(display->drm,
 			    "Ignoring OpRegion panel type (%d)\n", ret - 1);
 		return -ENODEV;
 	}
@@ -1104,8 +1105,8 @@ intel_opregion_get_panel_type(struct drm_i915_private *dev_priv)
  */
 const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_opregion *opregion = display->opregion;
 	const struct drm_edid *drm_edid;
 	const void *edid;
 	int len;
@@ -1123,7 +1124,7 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector
 	drm_edid = drm_edid_alloc(edid, len);
 
 	if (!drm_edid_valid(drm_edid)) {
-		drm_dbg_kms(&i915->drm, "Invalid EDID in ACPI OpRegion (Mailbox #5)\n");
+		drm_dbg_kms(display->drm, "Invalid EDID in ACPI OpRegion (Mailbox #5)\n");
 		drm_edid_free(drm_edid);
 		drm_edid = NULL;
 	}
@@ -1131,9 +1132,9 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector
 	return drm_edid;
 }
 
-bool intel_opregion_vbt_present(struct drm_i915_private *i915)
+bool intel_opregion_vbt_present(struct intel_display *display)
 {
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 
 	if (!opregion || !opregion->vbt)
 		return false;
@@ -1141,9 +1142,9 @@ bool intel_opregion_vbt_present(struct drm_i915_private *i915)
 	return true;
 }
 
-const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
+const void *intel_opregion_get_vbt(struct intel_display *display, size_t *size)
 {
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 
 	if (!opregion || !opregion->vbt)
 		return NULL;
@@ -1154,9 +1155,9 @@ const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
 	return kmemdup(opregion->vbt, opregion->vbt_size, GFP_KERNEL);
 }
 
-bool intel_opregion_headless_sku(struct drm_i915_private *i915)
+bool intel_opregion_headless_sku(struct intel_display *display)
 {
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 	struct opregion_header *header;
 
 	if (!opregion)
@@ -1171,9 +1172,9 @@ bool intel_opregion_headless_sku(struct drm_i915_private *i915)
 	return opregion->header->pcon & PCON_HEADLESS_SKU;
 }
 
-void intel_opregion_register(struct drm_i915_private *i915)
+void intel_opregion_register(struct intel_display *display)
 {
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 
 	if (!opregion)
 		return;
@@ -1184,17 +1185,16 @@ void intel_opregion_register(struct drm_i915_private *i915)
 		register_acpi_notifier(&opregion->acpi_notifier);
 	}
 
-	intel_opregion_resume(i915);
+	intel_opregion_resume(display);
 }
 
-static void intel_opregion_resume_display(struct drm_i915_private *i915)
+static void intel_opregion_resume_display(struct intel_display *display)
 {
-	struct intel_display *display = &i915->display;
 	struct intel_opregion *opregion = display->opregion;
 
 	if (opregion->acpi) {
-		intel_didl_outputs(i915);
-		intel_setup_cadls(i915);
+		intel_didl_outputs(display);
+		intel_setup_cadls(display);
 
 		/*
 		 * Notify BIOS we are ready to handle ACPI video ext notifs.
@@ -1214,22 +1214,22 @@ static void intel_opregion_resume_display(struct drm_i915_private *i915)
 	intel_dsm_get_bios_data_funcs_supported(display);
 }
 
-void intel_opregion_resume(struct drm_i915_private *i915)
+void intel_opregion_resume(struct intel_display *display)
 {
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 
 	if (!opregion)
 		return;
 
-	if (HAS_DISPLAY(i915))
-		intel_opregion_resume_display(i915);
+	if (HAS_DISPLAY(display))
+		intel_opregion_resume_display(display);
 
-	intel_opregion_notify_adapter(i915, PCI_D0);
+	intel_opregion_notify_adapter(display, PCI_D0);
 }
 
-static void intel_opregion_suspend_display(struct drm_i915_private *i915)
+static void intel_opregion_suspend_display(struct intel_display *display)
 {
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 
 	if (opregion->asle)
 		opregion->asle->ardy = ASLE_ARDY_NOT_READY;
@@ -1240,24 +1240,24 @@ static void intel_opregion_suspend_display(struct drm_i915_private *i915)
 		opregion->acpi->drdy = 0;
 }
 
-void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
+void intel_opregion_suspend(struct intel_display *display, pci_power_t state)
 {
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 
 	if (!opregion)
 		return;
 
-	intel_opregion_notify_adapter(i915, state);
+	intel_opregion_notify_adapter(display, state);
 
-	if (HAS_DISPLAY(i915))
-		intel_opregion_suspend_display(i915);
+	if (HAS_DISPLAY(display))
+		intel_opregion_suspend_display(display);
 }
 
-void intel_opregion_unregister(struct drm_i915_private *i915)
+void intel_opregion_unregister(struct intel_display *display)
 {
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 
-	intel_opregion_suspend(i915, PCI_D1);
+	intel_opregion_suspend(display, PCI_D1);
 
 	if (!opregion)
 		return;
@@ -1268,9 +1268,9 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
 	}
 }
 
-void intel_opregion_cleanup(struct drm_i915_private *i915)
+void intel_opregion_cleanup(struct intel_display *display)
 {
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_opregion *opregion = display->opregion;
 
 	if (!opregion)
 		return;
@@ -1279,13 +1279,13 @@ void intel_opregion_cleanup(struct drm_i915_private *i915)
 	if (opregion->rvda)
 		memunmap(opregion->rvda);
 	kfree(opregion);
-	i915->display.opregion = NULL;
+	display->opregion = NULL;
 }
 
 static int intel_opregion_show(struct seq_file *m, void *unused)
 {
-	struct drm_i915_private *i915 = m->private;
-	struct intel_opregion *opregion = i915->display.opregion;
+	struct intel_display *display = m->private;
+	struct intel_opregion *opregion = display->opregion;
 
 	if (opregion)
 		seq_write(m, opregion->header, OPREGION_SIZE);
@@ -1295,10 +1295,10 @@ static int intel_opregion_show(struct seq_file *m, void *unused)
 
 DEFINE_SHOW_ATTRIBUTE(intel_opregion);
 
-void intel_opregion_debugfs_register(struct drm_i915_private *i915)
+void intel_opregion_debugfs_register(struct intel_display *display)
 {
-	struct drm_minor *minor = i915->drm.primary;
+	struct drm_minor *minor = display->drm->primary;
 
 	debugfs_create_file("i915_opregion", 0444, minor->debugfs_root,
-			    i915, &intel_opregion_fops);
+			    display, &intel_opregion_fops);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
index 4dcd13c672e4..8101eeebfd8b 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.h
+++ b/drivers/gpu/drm/i915/display/intel_opregion.h
@@ -28,72 +28,72 @@
 #include <linux/pci.h>
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct intel_connector;
+struct intel_display;
 struct intel_encoder;
 
 #ifdef CONFIG_ACPI
 
-int intel_opregion_setup(struct drm_i915_private *dev_priv);
-void intel_opregion_cleanup(struct drm_i915_private *i915);
+int intel_opregion_setup(struct intel_display *display);
+void intel_opregion_cleanup(struct intel_display *display);
 
-void intel_opregion_register(struct drm_i915_private *dev_priv);
-void intel_opregion_unregister(struct drm_i915_private *dev_priv);
+void intel_opregion_register(struct intel_display *display);
+void intel_opregion_unregister(struct intel_display *display);
 
-void intel_opregion_resume(struct drm_i915_private *dev_priv);
-void intel_opregion_suspend(struct drm_i915_private *dev_priv,
+void intel_opregion_resume(struct intel_display *display);
+void intel_opregion_suspend(struct intel_display *display,
 			    pci_power_t state);
 
-bool intel_opregion_asle_present(struct drm_i915_private *i915);
-void intel_opregion_asle_intr(struct drm_i915_private *dev_priv);
+bool intel_opregion_asle_present(struct intel_display *display);
+void intel_opregion_asle_intr(struct intel_display *display);
 int intel_opregion_notify_encoder(struct intel_encoder *encoder,
 				  bool enable);
-int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
+int intel_opregion_notify_adapter(struct intel_display *display,
 				  pci_power_t state);
-int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
+int intel_opregion_get_panel_type(struct intel_display *display);
 const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector);
 
-bool intel_opregion_vbt_present(struct drm_i915_private *i915);
-const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size);
+bool intel_opregion_vbt_present(struct intel_display *display);
+const void *intel_opregion_get_vbt(struct intel_display *display, size_t *size);
 
-bool intel_opregion_headless_sku(struct drm_i915_private *i915);
+bool intel_opregion_headless_sku(struct intel_display *display);
 
-void intel_opregion_debugfs_register(struct drm_i915_private *i915);
+void intel_opregion_debugfs_register(struct intel_display *display);
 
 #else /* CONFIG_ACPI*/
 
-static inline int intel_opregion_setup(struct drm_i915_private *dev_priv)
+static inline int intel_opregion_setup(struct intel_display *display)
 {
 	return 0;
 }
 
-static inline void intel_opregion_cleanup(struct drm_i915_private *i915)
+static inline void intel_opregion_cleanup(struct intel_display *display)
 {
 }
 
-static inline void intel_opregion_register(struct drm_i915_private *dev_priv)
+static inline void intel_opregion_register(struct intel_display *display)
 {
 }
 
-static inline void intel_opregion_unregister(struct drm_i915_private *dev_priv)
+static inline void intel_opregion_unregister(struct intel_display *display)
 {
 }
 
-static inline void intel_opregion_resume(struct drm_i915_private *dev_priv)
+static inline void intel_opregion_resume(struct intel_display *display)
 {
 }
 
-static inline void intel_opregion_suspend(struct drm_i915_private *dev_priv,
+static inline void intel_opregion_suspend(struct intel_display *display,
 					  pci_power_t state)
 {
 }
 
-static inline bool intel_opregion_asle_present(struct drm_i915_private *i915)
+static inline bool intel_opregion_asle_present(struct intel_display *display)
 {
 	return false;
 }
 
-static inline void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
+static inline void intel_opregion_asle_intr(struct intel_display *display)
 {
 }
 
@@ -104,12 +104,12 @@ intel_opregion_notify_encoder(struct intel_encoder *encoder, bool enable)
 }
 
 static inline int
-intel_opregion_notify_adapter(struct drm_i915_private *dev, pci_power_t state)
+intel_opregion_notify_adapter(struct intel_display *display, pci_power_t state)
 {
 	return 0;
 }
 
-static inline int intel_opregion_get_panel_type(struct drm_i915_private *dev)
+static inline int intel_opregion_get_panel_type(struct intel_display *display)
 {
 	return -ENODEV;
 }
@@ -120,23 +120,23 @@ intel_opregion_get_edid(struct intel_connector *connector)
 	return NULL;
 }
 
-static inline bool intel_opregion_vbt_present(struct drm_i915_private *i915)
+static inline bool intel_opregion_vbt_present(struct intel_display *display)
 {
 	return false;
 }
 
 static inline const void *
-intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
+intel_opregion_get_vbt(struct intel_display *display, size_t *size)
 {
 	return NULL;
 }
 
-static inline bool intel_opregion_headless_sku(struct drm_i915_private *i915)
+static inline bool intel_opregion_headless_sku(struct intel_display *display)
 {
 	return false;
 }
 
-static inline void intel_opregion_debugfs_register(struct drm_i915_private *i915)
+static inline void intel_opregion_debugfs_register(struct intel_display *display)
 {
 }
 
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b518d29596e9..e32766286369 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -442,6 +442,7 @@ static int i915_pcode_init(struct drm_i915_private *i915)
  */
 static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	int ret;
 
@@ -542,7 +543,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	if (ret)
 		goto err_msi;
 
-	intel_opregion_setup(dev_priv);
+	intel_opregion_setup(display);
 
 	ret = i915_pcode_init(dev_priv);
 	if (ret)
@@ -559,7 +560,7 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
 	return 0;
 
 err_opregion:
-	intel_opregion_cleanup(dev_priv);
+	intel_opregion_cleanup(display);
 err_msi:
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
@@ -580,11 +581,12 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
  */
 static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 
 	i915_perf_fini(dev_priv);
 
-	intel_opregion_cleanup(dev_priv);
+	intel_opregion_cleanup(display);
 
 	if (pdev->msi_enabled)
 		pci_disable_msi(pdev);
@@ -1014,6 +1016,7 @@ static int i915_drm_prepare(struct drm_device *dev)
 static int i915_drm_suspend(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = &dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	pci_power_t opregion_target_state;
 
@@ -1049,7 +1052,7 @@ static int i915_drm_suspend(struct drm_device *dev)
 	i915_save_display(dev_priv);
 
 	opregion_target_state = suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3cold;
-	intel_opregion_suspend(dev_priv, opregion_target_state);
+	intel_opregion_suspend(display, opregion_target_state);
 
 	dev_priv->suspend_count++;
 
@@ -1138,6 +1141,7 @@ int i915_driver_suspend_switcheroo(struct drm_i915_private *i915,
 static int i915_drm_resume(struct drm_device *dev)
 {
 	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = &dev_priv->display;
 	struct intel_gt *gt;
 	int ret, i;
 
@@ -1205,7 +1209,7 @@ static int i915_drm_resume(struct drm_device *dev)
 	}
 	intel_hpd_poll_disable(dev_priv);
 
-	intel_opregion_resume(dev_priv);
+	intel_opregion_resume(display);
 
 	intel_fbdev_set_suspend(dev, FBINFO_STATE_RUNNING, false);
 
@@ -1454,6 +1458,7 @@ static int i915_pm_restore(struct device *kdev)
 static int intel_runtime_suspend(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
+	struct intel_display *display = &dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct pci_dev *root_pdev;
@@ -1528,7 +1533,7 @@ static int intel_runtime_suspend(struct device *kdev)
 		 * won't be able to restore them. Since PCI_D3hot matches the
 		 * actual specification and appears to be working, use it.
 		 */
-		intel_opregion_notify_adapter(dev_priv, PCI_D3hot);
+		intel_opregion_notify_adapter(display, PCI_D3hot);
 	} else {
 		/*
 		 * current versions of firmware which depend on this opregion
@@ -1537,7 +1542,7 @@ static int intel_runtime_suspend(struct device *kdev)
 		 * to distinguish it from notifications that might be sent via
 		 * the suspend path.
 		 */
-		intel_opregion_notify_adapter(dev_priv, PCI_D1);
+		intel_opregion_notify_adapter(display, PCI_D1);
 	}
 
 	assert_forcewakes_inactive(&dev_priv->uncore);
@@ -1552,6 +1557,7 @@ static int intel_runtime_suspend(struct device *kdev)
 static int intel_runtime_resume(struct device *kdev)
 {
 	struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
+	struct intel_display *display = &dev_priv->display;
 	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 	struct pci_dev *root_pdev;
@@ -1566,7 +1572,7 @@ static int intel_runtime_resume(struct device *kdev)
 	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
 	disable_rpm_wakeref_asserts(rpm);
 
-	intel_opregion_notify_adapter(dev_priv, PCI_D0);
+	intel_opregion_notify_adapter(display, PCI_D0);
 
 	root_pdev = pcie_find_root_port(pdev);
 	if (root_pdev)
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index ca4468c82078..0e4adde84cb2 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -127,16 +127,18 @@ int xe_display_init_nommio(struct xe_device *xe)
 static void xe_display_fini_noirq(void *arg)
 {
 	struct xe_device *xe = arg;
+	struct intel_display *display = &xe->display;
 
 	if (!xe->info.enable_display)
 		return;
 
 	intel_display_driver_remove_noirq(xe);
-	intel_opregion_cleanup(xe);
+	intel_opregion_cleanup(display);
 }
 
 int xe_display_init_noirq(struct xe_device *xe)
 {
+	struct intel_display *display = &xe->display;
 	int err;
 
 	if (!xe->info.enable_display)
@@ -145,7 +147,7 @@ int xe_display_init_noirq(struct xe_device *xe)
 	intel_display_driver_early_probe(xe);
 
 	/* Early display init.. */
-	intel_opregion_setup(xe);
+	intel_opregion_setup(display);
 
 	/*
 	 * Fill the dram structure to get the system dram info. This will be
@@ -159,7 +161,7 @@ int xe_display_init_noirq(struct xe_device *xe)
 
 	err = intel_display_driver_probe_noirq(xe);
 	if (err) {
-		intel_opregion_cleanup(xe);
+		intel_opregion_cleanup(display);
 		return err;
 	}
 
@@ -250,11 +252,13 @@ void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
 
 void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.enable_display)
 		return;
 
 	if (gu_misc_iir & GU_MISC_GSE)
-		intel_opregion_asle_intr(xe);
+		intel_opregion_asle_intr(display);
 }
 
 void xe_display_irq_reset(struct xe_device *xe)
@@ -285,6 +289,7 @@ static bool suspend_to_idle(void)
 
 void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 {
+	struct intel_display *display = &xe->display;
 	bool s2idle = suspend_to_idle();
 	if (!xe->info.enable_display)
 		return;
@@ -306,7 +311,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	intel_encoder_suspend_all(&xe->display);
 
-	intel_opregion_suspend(xe, s2idle ? PCI_D1 : PCI_D3cold);
+	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
 
 	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
 
@@ -336,6 +341,8 @@ void xe_display_pm_resume_early(struct xe_device *xe)
 
 void xe_display_pm_resume(struct xe_device *xe, bool runtime)
 {
+	struct intel_display *display = &xe->display;
+
 	if (!xe->info.enable_display)
 		return;
 
@@ -356,7 +363,7 @@ void xe_display_pm_resume(struct xe_device *xe, bool runtime)
 	if (has_display(xe))
 		drm_kms_helper_poll_enable(&xe->drm);
 
-	intel_opregion_resume(xe);
+	intel_opregion_resume(display);
 
 	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
 
-- 
2.39.2

