Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 692DA9AB2E1
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 17:57:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB6C10E204;
	Tue, 22 Oct 2024 15:57:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WU8EzN/3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E2B10E204;
 Tue, 22 Oct 2024 15:57:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729612660; x=1761148660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8bqCmzuBMcgsJs3QQUfZr1ZhK+kAu03XSNHsNkYc/v0=;
 b=WU8EzN/3ehvhndDKFWtXbKP0HTrkmFWCGxs6isDPNUKa/7SZJg83mVzQ
 0tXZXltae49B/EJha6Fsngfp8Vf4RIa1lhquSOymTYGpsUzODrC4xL6H7
 LiU4xngpCAHCm/u72Pq87AzgsKBOPJSt8y/inYXL9okRx7G4o2KGQ2vJt
 gfenoPDRKvdz/I5EVGmS7BOhndKeRhF2NZYtO46vnQwxzWuPr/Qi+skf4
 ysL4YbA9/+PxFuXwGmpnmlaCKhOPtsrQKjeQf8Q/LVlDzSRzIBNpSzXRQ
 L3R72zAGHJRsbdYdk6g7MofpUSD+lUJjXmH7LGF0Q3GOxb/pDRuHA9LlE A==;
X-CSE-ConnectionGUID: vlcrljXJSuOalNQEX/JiZw==
X-CSE-MsgGUID: HA96dzpORiWfsqVmZOTa6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29270565"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="29270565"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:57:40 -0700
X-CSE-ConnectionGUID: Zud6o3y5SBGsDz+T0cGW8Q==
X-CSE-MsgGUID: yOgGdE6DS663LbCkj9Xnsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79857937"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.58])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 08:57:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 01/11] drm/i915/gmbus: convert to struct intel_display
Date: Tue, 22 Oct 2024 18:57:18 +0300
Message-Id: <c9943348f29de4adaee9e174dd9def05835f09af.1729612605.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729612605.git.jani.nikula@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
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

struct intel_display will replace struct drm_i915_private as the main
device pointer for display code. Switch gmbus code over to it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     |   6 +-
 drivers/gpu/drm/i915/display/intel_crt.c      |   6 +-
 .../drm/i915/display/intel_display_driver.c   |   4 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  11 +-
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   5 +-
 drivers/gpu/drm/i915/display/intel_dvo.c      |   8 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c    | 290 +++++++++---------
 drivers/gpu/drm/i915/display/intel_gmbus.h    |  15 +-
 .../gpu/drm/i915/display/intel_gmbus_regs.h   |  16 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |   8 +-
 .../gpu/drm/i915/display/intel_hotplug_irq.c  |   6 +-
 drivers/gpu/drm/i915/display/intel_lvds.c     |   2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c     |   9 +-
 drivers/gpu/drm/i915/i915_suspend.c           |   2 +-
 14 files changed, 202 insertions(+), 186 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9967b65e3cf6..48c010b5b150 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2796,7 +2796,6 @@ static bool child_device_size_valid(struct intel_display *display, int size)
 static void
 parse_general_definitions(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct bdb_general_definitions *defs;
 	struct intel_bios_encoder_data *devdata;
 	const struct child_device_config *child;
@@ -2821,7 +2820,7 @@ parse_general_definitions(struct intel_display *display)
 
 	bus_pin = defs->crt_ddc_gmbus_pin;
 	drm_dbg_kms(display->drm, "crt_ddc_bus_pin: %d\n", bus_pin);
-	if (intel_gmbus_is_valid_pin(i915, bus_pin))
+	if (intel_gmbus_is_valid_pin(display, bus_pin))
 		display->vbt.crt_ddc_pin = bus_pin;
 
 	if (!child_device_size_valid(display, defs->child_dev_size))
@@ -3338,7 +3337,6 @@ bool intel_bios_is_tv_present(struct intel_display *display)
  */
 bool intel_bios_is_lvds_present(struct intel_display *display, u8 *i2c_pin)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct intel_bios_encoder_data *devdata;
 
 	if (list_empty(&display->vbt.display_devices))
@@ -3355,7 +3353,7 @@ bool intel_bios_is_lvds_present(struct intel_display *display, u8 *i2c_pin)
 		    child->device_type != DEVICE_TYPE_LFP)
 			continue;
 
-		if (intel_gmbus_is_valid_pin(i915, child->i2c_pin))
+		if (intel_gmbus_is_valid_pin(display, child->i2c_pin))
 			*i2c_pin = child->i2c_pin;
 
 		/* However, we cannot trust the BIOS writers to populate
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index fd78adbaadbe..8222b1c251db 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -935,6 +935,7 @@ intel_crt_detect(struct drm_connector *connector,
 
 static int intel_crt_get_modes(struct drm_connector *connector)
 {
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct drm_device *dev = connector->dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
@@ -954,7 +955,7 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 		goto out;
 
 	/* Try to probe digital port for output in DVI-I -> VGA mode. */
-	ddc = intel_gmbus_get_adapter(dev_priv, GMBUS_PIN_DPB);
+	ddc = intel_gmbus_get_adapter(display, GMBUS_PIN_DPB);
 	ret = intel_crt_ddc_get_modes(connector, ddc);
 
 out:
@@ -1009,6 +1010,7 @@ static const struct drm_encoder_funcs intel_crt_enc_funcs = {
 
 void intel_crt_init(struct drm_i915_private *dev_priv)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct drm_connector *connector;
 	struct intel_crt *crt;
 	struct intel_connector *intel_connector;
@@ -1057,7 +1059,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	drm_connector_init_with_ddc(&dev_priv->drm, connector,
 				    &intel_crt_connector_funcs,
 				    DRM_MODE_CONNECTOR_VGA,
-				    intel_gmbus_get_adapter(dev_priv, ddc_pin));
+				    intel_gmbus_get_adapter(display, ddc_pin));
 
 	drm_encoder_init(&dev_priv->drm, &crt->base.base, &intel_crt_enc_funcs,
 			 DRM_MODE_ENCODER_DAC, "CRT");
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 673f9b965494..ae5470078173 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -432,7 +432,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 
 	intel_pps_setup(display);
 
-	intel_gmbus_setup(i915);
+	intel_gmbus_setup(display);
 
 	drm_dbg_kms(&i915->drm, "%d display pipe%s available.\n",
 		    INTEL_NUM_PIPES(i915),
@@ -608,7 +608,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
 
 	intel_overlay_cleanup(i915);
 
-	intel_gmbus_teardown(i915);
+	intel_gmbus_teardown(display);
 
 	destroy_workqueue(i915->display.wq.flip);
 	destroy_workqueue(i915->display.wq.modeset);
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a4f42ed3f21a..0478fe3cdd86 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -543,12 +543,13 @@ void i965_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 		intel_opregion_asle_intr(display);
 
 	if (pipe_stats[0] & PIPE_GMBUS_INTERRUPT_STATUS)
-		intel_gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(display);
 }
 
 void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 				     u32 pipe_stats[I915_MAX_PIPES])
 {
+	struct intel_display *display = &dev_priv->display;
 	enum pipe pipe;
 
 	for_each_pipe(dev_priv, pipe) {
@@ -566,7 +567,7 @@ void valleyview_pipestat_irq_handler(struct drm_i915_private *dev_priv,
 	}
 
 	if (pipe_stats[0] & PIPE_GMBUS_INTERRUPT_STATUS)
-		intel_gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(display);
 }
 
 static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
@@ -588,7 +589,7 @@ static void ibx_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_dp_aux_irq_handler(display);
 
 	if (pch_iir & SDE_GMBUS)
-		intel_gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(display);
 
 	if (pch_iir & SDE_AUDIO_HDCP_MASK)
 		drm_dbg(&dev_priv->drm, "PCH HDCP audio interrupt\n");
@@ -677,7 +678,7 @@ static void cpt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_dp_aux_irq_handler(display);
 
 	if (pch_iir & SDE_GMBUS_CPT)
-		intel_gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(display);
 
 	if (pch_iir & SDE_AUDIO_CP_REQ_CPT)
 		drm_dbg(&dev_priv->drm, "Audio CP request interrupt\n");
@@ -1109,7 +1110,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 			if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
 			    (iir & BXT_DE_PORT_GMBUS)) {
-				intel_gmbus_irq_handler(dev_priv);
+				intel_gmbus_irq_handler(display);
 				found = true;
 			}
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index f0e3be0fe420..e8129a720210 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -323,6 +323,7 @@ enum {
 static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
 				      int gpio, bool value)
 {
+	struct intel_display *display = &dev_priv->display;
 	int index;
 
 	if (drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) == 11 && gpio >= MIPI_RESET_2))
@@ -367,7 +368,7 @@ static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
 	case MIPI_AVEE_EN_2:
 		index = gpio == MIPI_AVEE_EN_1 ? 1 : 2;
 
-		intel_de_rmw(dev_priv, GPIO(dev_priv, index),
+		intel_de_rmw(display, GPIO(display, index),
 			     GPIO_CLOCK_VAL_OUT,
 			     GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_DIR_OUT |
 			     GPIO_CLOCK_VAL_MASK | (value ? GPIO_CLOCK_VAL_OUT : 0));
@@ -376,7 +377,7 @@ static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
 	case MIPI_VIO_EN_2:
 		index = gpio == MIPI_VIO_EN_1 ? 1 : 2;
 
-		intel_de_rmw(dev_priv, GPIO(dev_priv, index),
+		intel_de_rmw(display, GPIO(display, index),
 			     GPIO_DATA_VAL_OUT,
 			     GPIO_DATA_DIR_MASK | GPIO_DATA_DIR_OUT |
 			     GPIO_DATA_VAL_MASK | (value ? GPIO_DATA_VAL_OUT : 0));
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 9508ceae0d84..2d5ffb37eac9 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -417,6 +417,7 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 			       struct intel_dvo *intel_dvo,
 			       const struct intel_dvo_device *dvo)
 {
+	struct intel_display *display = &dev_priv->display;
 	struct i2c_adapter *i2c;
 	u32 dpll[I915_MAX_PIPES];
 	enum pipe pipe;
@@ -428,7 +429,7 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 	 * special cases, but otherwise default to what's defined
 	 * in the spec.
 	 */
-	if (intel_gmbus_is_valid_pin(dev_priv, dvo->gpio))
+	if (intel_gmbus_is_valid_pin(display, dvo->gpio))
 		gpio = dvo->gpio;
 	else if (dvo->type == INTEL_DVO_CHIP_LVDS)
 		gpio = GMBUS_PIN_SSC;
@@ -440,7 +441,7 @@ static bool intel_dvo_init_dev(struct drm_i915_private *dev_priv,
 	 * It appears that everything is on GPIOE except for panels
 	 * on i830 laptops, which are on GPIOB (DVOA).
 	 */
-	i2c = intel_gmbus_get_adapter(dev_priv, gpio);
+	i2c = intel_gmbus_get_adapter(display, gpio);
 
 	intel_dvo->dev = *dvo;
 
@@ -489,6 +490,7 @@ static bool intel_dvo_probe(struct drm_i915_private *i915,
 
 void intel_dvo_init(struct drm_i915_private *i915)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_connector *connector;
 	struct intel_encoder *encoder;
 	struct intel_dvo *intel_dvo;
@@ -549,7 +551,7 @@ void intel_dvo_init(struct drm_i915_private *i915)
 	drm_connector_init_with_ddc(&i915->drm, &connector->base,
 				    &intel_dvo_connector_funcs,
 				    intel_dvo_connector_type(&intel_dvo->dev),
-				    intel_gmbus_get_adapter(i915, GMBUS_PIN_DPC));
+				    intel_gmbus_get_adapter(display, GMBUS_PIN_DPC));
 
 	drm_connector_helper_add(&connector->base,
 				 &intel_dvo_connector_helper_funcs);
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 6470f75106bd..e3d938c7f83e 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -48,7 +48,7 @@ struct intel_gmbus {
 	u32 reg0;
 	i915_reg_t gpio_reg;
 	struct i2c_algo_bit_data bit_algo;
-	struct drm_i915_private *i915;
+	struct intel_display *display;
 };
 
 enum gmbus_gpio {
@@ -149,9 +149,10 @@ static const struct gmbus_pin gmbus_pins_mtp[] = {
 	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIOM },
 };
 
-static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
+static const struct gmbus_pin *get_gmbus_pin(struct intel_display *display,
 					     unsigned int pin)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	const struct gmbus_pin *pins;
 	size_t size;
 
@@ -173,7 +174,7 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
 	} else if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
 		pins = gmbus_pins_bxt;
 		size = ARRAY_SIZE(gmbus_pins_bxt);
-	} else if (DISPLAY_VER(i915) == 9) {
+	} else if (DISPLAY_VER(display) == 9) {
 		pins = gmbus_pins_skl;
 		size = ARRAY_SIZE(gmbus_pins_skl);
 	} else if (IS_BROADWELL(i915)) {
@@ -190,9 +191,9 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
 	return &pins[pin];
 }
 
-bool intel_gmbus_is_valid_pin(struct drm_i915_private *i915, unsigned int pin)
+bool intel_gmbus_is_valid_pin(struct intel_display *display, unsigned int pin)
 {
-	return get_gmbus_pin(i915, pin);
+	return get_gmbus_pin(display, pin);
 }
 
 /* Intel GPIO access functions */
@@ -206,42 +207,45 @@ to_intel_gmbus(struct i2c_adapter *i2c)
 }
 
 void
-intel_gmbus_reset(struct drm_i915_private *i915)
+intel_gmbus_reset(struct intel_display *display)
 {
-	intel_de_write(i915, GMBUS0(i915), 0);
-	intel_de_write(i915, GMBUS4(i915), 0);
+	intel_de_write(display, GMBUS0(display), 0);
+	intel_de_write(display, GMBUS4(display), 0);
 }
 
-static void pnv_gmbus_clock_gating(struct drm_i915_private *i915,
+static void pnv_gmbus_clock_gating(struct intel_display *display,
 				   bool enable)
 {
 	/* When using bit bashing for I2C, this bit needs to be set to 1 */
-	intel_de_rmw(i915, DSPCLK_GATE_D(i915), PNV_GMBUSUNIT_CLOCK_GATE_DISABLE,
+	intel_de_rmw(display, DSPCLK_GATE_D(display),
+		     PNV_GMBUSUNIT_CLOCK_GATE_DISABLE,
 		     !enable ? PNV_GMBUSUNIT_CLOCK_GATE_DISABLE : 0);
 }
 
-static void pch_gmbus_clock_gating(struct drm_i915_private *i915,
+static void pch_gmbus_clock_gating(struct intel_display *display,
 				   bool enable)
 {
-	intel_de_rmw(i915, SOUTH_DSPCLK_GATE_D, PCH_GMBUSUNIT_CLOCK_GATE_DISABLE,
+	intel_de_rmw(display, SOUTH_DSPCLK_GATE_D,
+		     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE,
 		     !enable ? PCH_GMBUSUNIT_CLOCK_GATE_DISABLE : 0);
 }
 
-static void bxt_gmbus_clock_gating(struct drm_i915_private *i915,
+static void bxt_gmbus_clock_gating(struct intel_display *display,
 				   bool enable)
 {
-	intel_de_rmw(i915, GEN9_CLKGATE_DIS_4, BXT_GMBUS_GATING_DIS,
+	intel_de_rmw(display, GEN9_CLKGATE_DIS_4, BXT_GMBUS_GATING_DIS,
 		     !enable ? BXT_GMBUS_GATING_DIS : 0);
 }
 
 static u32 get_reserved(struct intel_gmbus *bus)
 {
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u32 reserved = 0;
 
 	/* On most chips, these bits must be preserved in software. */
 	if (!IS_I830(i915) && !IS_I845G(i915))
-		reserved = intel_de_read_notrace(i915, bus->gpio_reg) &
+		reserved = intel_de_read_notrace(display, bus->gpio_reg) &
 			(GPIO_DATA_PULLUP_DISABLE | GPIO_CLOCK_PULLUP_DISABLE);
 
 	return reserved;
@@ -250,31 +254,31 @@ static u32 get_reserved(struct intel_gmbus *bus)
 static int get_clock(void *data)
 {
 	struct intel_gmbus *bus = data;
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
 	u32 reserved = get_reserved(bus);
 
-	intel_de_write_notrace(i915, bus->gpio_reg, reserved | GPIO_CLOCK_DIR_MASK);
-	intel_de_write_notrace(i915, bus->gpio_reg, reserved);
+	intel_de_write_notrace(display, bus->gpio_reg, reserved | GPIO_CLOCK_DIR_MASK);
+	intel_de_write_notrace(display, bus->gpio_reg, reserved);
 
-	return (intel_de_read_notrace(i915, bus->gpio_reg) & GPIO_CLOCK_VAL_IN) != 0;
+	return (intel_de_read_notrace(display, bus->gpio_reg) & GPIO_CLOCK_VAL_IN) != 0;
 }
 
 static int get_data(void *data)
 {
 	struct intel_gmbus *bus = data;
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
 	u32 reserved = get_reserved(bus);
 
-	intel_de_write_notrace(i915, bus->gpio_reg, reserved | GPIO_DATA_DIR_MASK);
-	intel_de_write_notrace(i915, bus->gpio_reg, reserved);
+	intel_de_write_notrace(display, bus->gpio_reg, reserved | GPIO_DATA_DIR_MASK);
+	intel_de_write_notrace(display, bus->gpio_reg, reserved);
 
-	return (intel_de_read_notrace(i915, bus->gpio_reg) & GPIO_DATA_VAL_IN) != 0;
+	return (intel_de_read_notrace(display, bus->gpio_reg) & GPIO_DATA_VAL_IN) != 0;
 }
 
 static void set_clock(void *data, int state_high)
 {
 	struct intel_gmbus *bus = data;
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
 	u32 reserved = get_reserved(bus);
 	u32 clock_bits;
 
@@ -284,14 +288,14 @@ static void set_clock(void *data, int state_high)
 		clock_bits = GPIO_CLOCK_DIR_OUT | GPIO_CLOCK_DIR_MASK |
 			     GPIO_CLOCK_VAL_MASK;
 
-	intel_de_write_notrace(i915, bus->gpio_reg, reserved | clock_bits);
-	intel_de_posting_read(i915, bus->gpio_reg);
+	intel_de_write_notrace(display, bus->gpio_reg, reserved | clock_bits);
+	intel_de_posting_read(display, bus->gpio_reg);
 }
 
 static void set_data(void *data, int state_high)
 {
 	struct intel_gmbus *bus = data;
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
 	u32 reserved = get_reserved(bus);
 	u32 data_bits;
 
@@ -301,20 +305,21 @@ static void set_data(void *data, int state_high)
 		data_bits = GPIO_DATA_DIR_OUT | GPIO_DATA_DIR_MASK |
 			GPIO_DATA_VAL_MASK;
 
-	intel_de_write_notrace(i915, bus->gpio_reg, reserved | data_bits);
-	intel_de_posting_read(i915, bus->gpio_reg);
+	intel_de_write_notrace(display, bus->gpio_reg, reserved | data_bits);
+	intel_de_posting_read(display, bus->gpio_reg);
 }
 
 static int
 intel_gpio_pre_xfer(struct i2c_adapter *adapter)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
-	intel_gmbus_reset(i915);
+	intel_gmbus_reset(display);
 
 	if (IS_PINEVIEW(i915))
-		pnv_gmbus_clock_gating(i915, false);
+		pnv_gmbus_clock_gating(display, false);
 
 	set_data(bus, 1);
 	set_clock(bus, 1);
@@ -326,13 +331,14 @@ static void
 intel_gpio_post_xfer(struct i2c_adapter *adapter)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	set_data(bus, 1);
 	set_clock(bus, 1);
 
 	if (IS_PINEVIEW(i915))
-		pnv_gmbus_clock_gating(i915, true);
+		pnv_gmbus_clock_gating(display, true);
 }
 
 static void
@@ -355,16 +361,17 @@ intel_gpio_setup(struct intel_gmbus *bus, i915_reg_t gpio_reg)
 	algo->data = bus;
 }
 
-static bool has_gmbus_irq(struct drm_i915_private *i915)
+static bool has_gmbus_irq(struct intel_display *display)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	/*
 	 * encoder->shutdown() may want to use GMBUS
 	 * after irqs have already been disabled.
 	 */
-	return HAS_GMBUS_IRQ(i915) && intel_irqs_enabled(i915);
+	return HAS_GMBUS_IRQ(display) && intel_irqs_enabled(i915);
 }
 
-static int gmbus_wait(struct drm_i915_private *i915, u32 status, u32 irq_en)
+static int gmbus_wait(struct intel_display *display, u32 status, u32 irq_en)
 {
 	DEFINE_WAIT(wait);
 	u32 gmbus2;
@@ -374,21 +381,21 @@ static int gmbus_wait(struct drm_i915_private *i915, u32 status, u32 irq_en)
 	 * we also need to check for NAKs besides the hw ready/idle signal, we
 	 * need to wake up periodically and check that ourselves.
 	 */
-	if (!has_gmbus_irq(i915))
+	if (!has_gmbus_irq(display))
 		irq_en = 0;
 
-	add_wait_queue(&i915->display.gmbus.wait_queue, &wait);
-	intel_de_write_fw(i915, GMBUS4(i915), irq_en);
+	add_wait_queue(&display->gmbus.wait_queue, &wait);
+	intel_de_write_fw(display, GMBUS4(display), irq_en);
 
 	status |= GMBUS_SATOER;
-	ret = wait_for_us((gmbus2 = intel_de_read_fw(i915, GMBUS2(i915))) & status,
+	ret = wait_for_us((gmbus2 = intel_de_read_fw(display, GMBUS2(display))) & status,
 			  2);
 	if (ret)
-		ret = wait_for((gmbus2 = intel_de_read_fw(i915, GMBUS2(i915))) & status,
+		ret = wait_for((gmbus2 = intel_de_read_fw(display, GMBUS2(display))) & status,
 			       50);
 
-	intel_de_write_fw(i915, GMBUS4(i915), 0);
-	remove_wait_queue(&i915->display.gmbus.wait_queue, &wait);
+	intel_de_write_fw(display, GMBUS4(display), 0);
+	remove_wait_queue(&display->gmbus.wait_queue, &wait);
 
 	if (gmbus2 & GMBUS_SATOER)
 		return -ENXIO;
@@ -397,7 +404,7 @@ static int gmbus_wait(struct drm_i915_private *i915, u32 status, u32 irq_en)
 }
 
 static int
-gmbus_wait_idle(struct drm_i915_private *i915)
+gmbus_wait_idle(struct intel_display *display)
 {
 	DEFINE_WAIT(wait);
 	u32 irq_enable;
@@ -405,33 +412,33 @@ gmbus_wait_idle(struct drm_i915_private *i915)
 
 	/* Important: The hw handles only the first bit, so set only one! */
 	irq_enable = 0;
-	if (has_gmbus_irq(i915))
+	if (has_gmbus_irq(display))
 		irq_enable = GMBUS_IDLE_EN;
 
-	add_wait_queue(&i915->display.gmbus.wait_queue, &wait);
-	intel_de_write_fw(i915, GMBUS4(i915), irq_enable);
+	add_wait_queue(&display->gmbus.wait_queue, &wait);
+	intel_de_write_fw(display, GMBUS4(display), irq_enable);
 
-	ret = intel_de_wait_fw(i915, GMBUS2(i915), GMBUS_ACTIVE, 0, 10);
+	ret = intel_de_wait_fw(display, GMBUS2(display), GMBUS_ACTIVE, 0, 10);
 
-	intel_de_write_fw(i915, GMBUS4(i915), 0);
-	remove_wait_queue(&i915->display.gmbus.wait_queue, &wait);
+	intel_de_write_fw(display, GMBUS4(display), 0);
+	remove_wait_queue(&display->gmbus.wait_queue, &wait);
 
 	return ret;
 }
 
-static unsigned int gmbus_max_xfer_size(struct drm_i915_private *i915)
+static unsigned int gmbus_max_xfer_size(struct intel_display *display)
 {
-	return DISPLAY_VER(i915) >= 9 ? GEN9_GMBUS_BYTE_COUNT_MAX :
+	return DISPLAY_VER(display) >= 9 ? GEN9_GMBUS_BYTE_COUNT_MAX :
 	       GMBUS_BYTE_COUNT_MAX;
 }
 
 static int
-gmbus_xfer_read_chunk(struct drm_i915_private *i915,
+gmbus_xfer_read_chunk(struct intel_display *display,
 		      unsigned short addr, u8 *buf, unsigned int len,
 		      u32 gmbus0_reg, u32 gmbus1_index)
 {
 	unsigned int size = len;
-	bool burst_read = len > gmbus_max_xfer_size(i915);
+	bool burst_read = len > gmbus_max_xfer_size(display);
 	bool extra_byte_added = false;
 
 	if (burst_read) {
@@ -444,21 +451,21 @@ gmbus_xfer_read_chunk(struct drm_i915_private *i915,
 			len++;
 		}
 		size = len % 256 + 256;
-		intel_de_write_fw(i915, GMBUS0(i915),
+		intel_de_write_fw(display, GMBUS0(display),
 				  gmbus0_reg | GMBUS_BYTE_CNT_OVERRIDE);
 	}
 
-	intel_de_write_fw(i915, GMBUS1(i915),
+	intel_de_write_fw(display, GMBUS1(display),
 			  gmbus1_index | GMBUS_CYCLE_WAIT | (size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_READ | GMBUS_SW_RDY);
 	while (len) {
 		int ret;
 		u32 val, loop = 0;
 
-		ret = gmbus_wait(i915, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
+		ret = gmbus_wait(display, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
 		if (ret)
 			return ret;
 
-		val = intel_de_read_fw(i915, GMBUS3(i915));
+		val = intel_de_read_fw(display, GMBUS3(display));
 		do {
 			if (extra_byte_added && len == 1)
 				break;
@@ -469,7 +476,7 @@ gmbus_xfer_read_chunk(struct drm_i915_private *i915,
 
 		if (burst_read && len == size - 4)
 			/* Reset the override bit */
-			intel_de_write_fw(i915, GMBUS0(i915), gmbus0_reg);
+			intel_de_write_fw(display, GMBUS0(display), gmbus0_reg);
 	}
 
 	return 0;
@@ -486,9 +493,10 @@ gmbus_xfer_read_chunk(struct drm_i915_private *i915,
 #define INTEL_GMBUS_BURST_READ_MAX_LEN		767U
 
 static int
-gmbus_xfer_read(struct drm_i915_private *i915, struct i2c_msg *msg,
+gmbus_xfer_read(struct intel_display *display, struct i2c_msg *msg,
 		u32 gmbus0_reg, u32 gmbus1_index)
 {
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u8 *buf = msg->buf;
 	unsigned int rx_size = msg->len;
 	unsigned int len;
@@ -498,9 +506,9 @@ gmbus_xfer_read(struct drm_i915_private *i915, struct i2c_msg *msg,
 		if (HAS_GMBUS_BURST_READ(i915))
 			len = min(rx_size, INTEL_GMBUS_BURST_READ_MAX_LEN);
 		else
-			len = min(rx_size, gmbus_max_xfer_size(i915));
+			len = min(rx_size, gmbus_max_xfer_size(display));
 
-		ret = gmbus_xfer_read_chunk(i915, msg->addr, buf, len,
+		ret = gmbus_xfer_read_chunk(display, msg->addr, buf, len,
 					    gmbus0_reg, gmbus1_index);
 		if (ret)
 			return ret;
@@ -513,7 +521,7 @@ gmbus_xfer_read(struct drm_i915_private *i915, struct i2c_msg *msg,
 }
 
 static int
-gmbus_xfer_write_chunk(struct drm_i915_private *i915,
+gmbus_xfer_write_chunk(struct intel_display *display,
 		       unsigned short addr, u8 *buf, unsigned int len,
 		       u32 gmbus1_index)
 {
@@ -526,8 +534,8 @@ gmbus_xfer_write_chunk(struct drm_i915_private *i915,
 		len -= 1;
 	}
 
-	intel_de_write_fw(i915, GMBUS3(i915), val);
-	intel_de_write_fw(i915, GMBUS1(i915),
+	intel_de_write_fw(display, GMBUS3(display), val);
+	intel_de_write_fw(display, GMBUS1(display),
 			  gmbus1_index | GMBUS_CYCLE_WAIT | (chunk_size << GMBUS_BYTE_COUNT_SHIFT) | (addr << GMBUS_SLAVE_ADDR_SHIFT) | GMBUS_SLAVE_WRITE | GMBUS_SW_RDY);
 	while (len) {
 		int ret;
@@ -537,9 +545,9 @@ gmbus_xfer_write_chunk(struct drm_i915_private *i915,
 			val |= *buf++ << (8 * loop);
 		} while (--len && ++loop < 4);
 
-		intel_de_write_fw(i915, GMBUS3(i915), val);
+		intel_de_write_fw(display, GMBUS3(display), val);
 
-		ret = gmbus_wait(i915, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
+		ret = gmbus_wait(display, GMBUS_HW_RDY, GMBUS_HW_RDY_EN);
 		if (ret)
 			return ret;
 	}
@@ -548,7 +556,7 @@ gmbus_xfer_write_chunk(struct drm_i915_private *i915,
 }
 
 static int
-gmbus_xfer_write(struct drm_i915_private *i915, struct i2c_msg *msg,
+gmbus_xfer_write(struct intel_display *display, struct i2c_msg *msg,
 		 u32 gmbus1_index)
 {
 	u8 *buf = msg->buf;
@@ -557,9 +565,9 @@ gmbus_xfer_write(struct drm_i915_private *i915, struct i2c_msg *msg,
 	int ret;
 
 	do {
-		len = min(tx_size, gmbus_max_xfer_size(i915));
+		len = min(tx_size, gmbus_max_xfer_size(display));
 
-		ret = gmbus_xfer_write_chunk(i915, msg->addr, buf, len,
+		ret = gmbus_xfer_write_chunk(display, msg->addr, buf, len,
 					     gmbus1_index);
 		if (ret)
 			return ret;
@@ -586,7 +594,7 @@ gmbus_is_index_xfer(struct i2c_msg *msgs, int i, int num)
 }
 
 static int
-gmbus_index_xfer(struct drm_i915_private *i915, struct i2c_msg *msgs,
+gmbus_index_xfer(struct intel_display *display, struct i2c_msg *msgs,
 		 u32 gmbus0_reg)
 {
 	u32 gmbus1_index = 0;
@@ -602,17 +610,17 @@ gmbus_index_xfer(struct drm_i915_private *i915, struct i2c_msg *msgs,
 
 	/* GMBUS5 holds 16-bit index */
 	if (gmbus5)
-		intel_de_write_fw(i915, GMBUS5(i915), gmbus5);
+		intel_de_write_fw(display, GMBUS5(display), gmbus5);
 
 	if (msgs[1].flags & I2C_M_RD)
-		ret = gmbus_xfer_read(i915, &msgs[1], gmbus0_reg,
+		ret = gmbus_xfer_read(display, &msgs[1], gmbus0_reg,
 				      gmbus1_index);
 	else
-		ret = gmbus_xfer_write(i915, &msgs[1], gmbus1_index);
+		ret = gmbus_xfer_write(display, &msgs[1], gmbus1_index);
 
 	/* Clear GMBUS5 after each index transfer */
 	if (gmbus5)
-		intel_de_write_fw(i915, GMBUS5(i915), 0);
+		intel_de_write_fw(display, GMBUS5(display), 0);
 
 	return ret;
 }
@@ -622,34 +630,35 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	      u32 gmbus0_source)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	int i = 0, inc, try = 0;
 	int ret = 0;
 
 	/* Display WA #0868: skl,bxt,kbl,cfl,glk */
 	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
-		bxt_gmbus_clock_gating(i915, false);
+		bxt_gmbus_clock_gating(display, false);
 	else if (HAS_PCH_SPT(i915) || HAS_PCH_CNP(i915))
-		pch_gmbus_clock_gating(i915, false);
+		pch_gmbus_clock_gating(display, false);
 
 retry:
-	intel_de_write_fw(i915, GMBUS0(i915), gmbus0_source | bus->reg0);
+	intel_de_write_fw(display, GMBUS0(display), gmbus0_source | bus->reg0);
 
 	for (; i < num; i += inc) {
 		inc = 1;
 		if (gmbus_is_index_xfer(msgs, i, num)) {
-			ret = gmbus_index_xfer(i915, &msgs[i],
+			ret = gmbus_index_xfer(display, &msgs[i],
 					       gmbus0_source | bus->reg0);
 			inc = 2; /* an index transmission is two msgs */
 		} else if (msgs[i].flags & I2C_M_RD) {
-			ret = gmbus_xfer_read(i915, &msgs[i],
+			ret = gmbus_xfer_read(display, &msgs[i],
 					      gmbus0_source | bus->reg0, 0);
 		} else {
-			ret = gmbus_xfer_write(i915, &msgs[i], 0);
+			ret = gmbus_xfer_write(display, &msgs[i], 0);
 		}
 
 		if (!ret)
-			ret = gmbus_wait(i915,
+			ret = gmbus_wait(display,
 					 GMBUS_HW_WAIT_PHASE, GMBUS_HW_WAIT_EN);
 		if (ret == -ETIMEDOUT)
 			goto timeout;
@@ -661,19 +670,19 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * a STOP on the very first cycle. To simplify the code we
 	 * unconditionally generate the STOP condition with an additional gmbus
 	 * cycle. */
-	intel_de_write_fw(i915, GMBUS1(i915), GMBUS_CYCLE_STOP | GMBUS_SW_RDY);
+	intel_de_write_fw(display, GMBUS1(display), GMBUS_CYCLE_STOP | GMBUS_SW_RDY);
 
 	/* Mark the GMBUS interface as disabled after waiting for idle.
 	 * We will re-enable it at the start of the next xfer,
 	 * till then let it sleep.
 	 */
-	if (gmbus_wait_idle(i915)) {
-		drm_dbg_kms(&i915->drm,
+	if (gmbus_wait_idle(display)) {
+		drm_dbg_kms(display->drm,
 			    "GMBUS [%s] timed out waiting for idle\n",
 			    adapter->name);
 		ret = -ETIMEDOUT;
 	}
-	intel_de_write_fw(i915, GMBUS0(i915), 0);
+	intel_de_write_fw(display, GMBUS0(display), 0);
 	ret = ret ?: i;
 	goto out;
 
@@ -692,8 +701,8 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * it's slow responding and only answers on the 2nd retry.
 	 */
 	ret = -ENXIO;
-	if (gmbus_wait_idle(i915)) {
-		drm_dbg_kms(&i915->drm,
+	if (gmbus_wait_idle(display)) {
+		drm_dbg_kms(display->drm,
 			    "GMBUS [%s] timed out after NAK\n",
 			    adapter->name);
 		ret = -ETIMEDOUT;
@@ -703,11 +712,11 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * of resetting the GMBUS controller and so clearing the
 	 * BUS_ERROR raised by the target's NAK.
 	 */
-	intel_de_write_fw(i915, GMBUS1(i915), GMBUS_SW_CLR_INT);
-	intel_de_write_fw(i915, GMBUS1(i915), 0);
-	intel_de_write_fw(i915, GMBUS0(i915), 0);
+	intel_de_write_fw(display, GMBUS1(display), GMBUS_SW_CLR_INT);
+	intel_de_write_fw(display, GMBUS1(display), 0);
+	intel_de_write_fw(display, GMBUS0(display), 0);
 
-	drm_dbg_kms(&i915->drm, "GMBUS [%s] NAK for addr: %04x %c(%d)\n",
+	drm_dbg_kms(display->drm, "GMBUS [%s] NAK for addr: %04x %c(%d)\n",
 		    adapter->name, msgs[i].addr,
 		    (msgs[i].flags & I2C_M_RD) ? 'r' : 'w', msgs[i].len);
 
@@ -718,7 +727,7 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	 * drm_do_probe_ddc_edid, which bails out on the first -ENXIO.
 	 */
 	if (ret == -ENXIO && i == 0 && try++ == 0) {
-		drm_dbg_kms(&i915->drm,
+		drm_dbg_kms(display->drm,
 			    "GMBUS [%s] NAK on first message, retry\n",
 			    adapter->name);
 		goto retry;
@@ -727,10 +736,10 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 	goto out;
 
 timeout:
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "GMBUS [%s] timed out, falling back to bit banging on pin %d\n",
 		    bus->adapter.name, bus->reg0 & 0xff);
-	intel_de_write_fw(i915, GMBUS0(i915), 0);
+	intel_de_write_fw(display, GMBUS0(display), 0);
 
 	/*
 	 * Hardware may not support GMBUS over these pins? Try GPIO bitbanging
@@ -741,9 +750,9 @@ do_gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num,
 out:
 	/* Display WA #0868: skl,bxt,kbl,cfl,glk */
 	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
-		bxt_gmbus_clock_gating(i915, true);
+		bxt_gmbus_clock_gating(display, true);
 	else if (HAS_PCH_SPT(i915) || HAS_PCH_CNP(i915))
-		pch_gmbus_clock_gating(i915, true);
+		pch_gmbus_clock_gating(display, true);
 
 	return ret;
 }
@@ -752,7 +761,8 @@ static int
 gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	intel_wakeref_t wakeref;
 	int ret;
 
@@ -776,7 +786,8 @@ gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
 int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	u8 cmd = DRM_HDCP_DDC_AKSV;
 	u8 buf[DRM_HDCP_KSV_LEN] = {};
 	struct i2c_msg msgs[] = {
@@ -797,7 +808,7 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	int ret;
 
 	wakeref = intel_display_power_get(i915, POWER_DOMAIN_GMBUS);
-	mutex_lock(&i915->display.gmbus.mutex);
+	mutex_lock(&display->gmbus.mutex);
 
 	/*
 	 * In order to output Aksv to the receiver, use an indexed write to
@@ -806,7 +817,7 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	 */
 	ret = do_gmbus_xfer(adapter, msgs, ARRAY_SIZE(msgs), GMBUS_AKSV_SELECT);
 
-	mutex_unlock(&i915->display.gmbus.mutex);
+	mutex_unlock(&display->gmbus.mutex);
 	intel_display_power_put(i915, POWER_DOMAIN_GMBUS, wakeref);
 
 	return ret;
@@ -830,27 +841,27 @@ static void gmbus_lock_bus(struct i2c_adapter *adapter,
 			   unsigned int flags)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
 
-	mutex_lock(&i915->display.gmbus.mutex);
+	mutex_lock(&display->gmbus.mutex);
 }
 
 static int gmbus_trylock_bus(struct i2c_adapter *adapter,
 			     unsigned int flags)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
 
-	return mutex_trylock(&i915->display.gmbus.mutex);
+	return mutex_trylock(&display->gmbus.mutex);
 }
 
 static void gmbus_unlock_bus(struct i2c_adapter *adapter,
 			     unsigned int flags)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
 
-	mutex_unlock(&i915->display.gmbus.mutex);
+	mutex_unlock(&display->gmbus.mutex);
 }
 
 static const struct i2c_lock_operations gmbus_lock_ops = {
@@ -861,31 +872,32 @@ static const struct i2c_lock_operations gmbus_lock_ops = {
 
 /**
  * intel_gmbus_setup - instantiate all Intel i2c GMBuses
- * @i915: i915 device private
+ * @display: display device
  */
-int intel_gmbus_setup(struct drm_i915_private *i915)
+int intel_gmbus_setup(struct intel_display *display)
 {
-	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	unsigned int pin;
 	int ret;
 
 	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
-		i915->display.gmbus.mmio_base = VLV_DISPLAY_BASE;
-	else if (!HAS_GMCH(i915))
+		display->gmbus.mmio_base = VLV_DISPLAY_BASE;
+	else if (!HAS_GMCH(display))
 		/*
 		 * Broxton uses the same PCH offsets for South Display Engine,
 		 * even though it doesn't have a PCH.
 		 */
-		i915->display.gmbus.mmio_base = PCH_DISPLAY_BASE;
+		display->gmbus.mmio_base = PCH_DISPLAY_BASE;
 
-	mutex_init(&i915->display.gmbus.mutex);
-	init_waitqueue_head(&i915->display.gmbus.wait_queue);
+	mutex_init(&display->gmbus.mutex);
+	init_waitqueue_head(&display->gmbus.wait_queue);
 
-	for (pin = 0; pin < ARRAY_SIZE(i915->display.gmbus.bus); pin++) {
+	for (pin = 0; pin < ARRAY_SIZE(display->gmbus.bus); pin++) {
 		const struct gmbus_pin *gmbus_pin;
 		struct intel_gmbus *bus;
 
-		gmbus_pin = get_gmbus_pin(i915, pin);
+		gmbus_pin = get_gmbus_pin(display, pin);
 		if (!gmbus_pin)
 			continue;
 
@@ -901,7 +913,7 @@ int intel_gmbus_setup(struct drm_i915_private *i915)
 			 "i915 gmbus %s", gmbus_pin->name);
 
 		bus->adapter.dev.parent = &pdev->dev;
-		bus->i915 = i915;
+		bus->display = display;
 
 		bus->adapter.algo = &gmbus_algorithm;
 		bus->adapter.lock_ops = &gmbus_lock_ops;
@@ -919,7 +931,7 @@ int intel_gmbus_setup(struct drm_i915_private *i915)
 		if (IS_I830(i915))
 			bus->force_bit = 1;
 
-		intel_gpio_setup(bus, GPIO(i915, gmbus_pin->gpio));
+		intel_gpio_setup(bus, GPIO(display, gmbus_pin->gpio));
 
 		ret = i2c_add_adapter(&bus->adapter);
 		if (ret) {
@@ -927,43 +939,43 @@ int intel_gmbus_setup(struct drm_i915_private *i915)
 			goto err;
 		}
 
-		i915->display.gmbus.bus[pin] = bus;
+		display->gmbus.bus[pin] = bus;
 	}
 
-	intel_gmbus_reset(i915);
+	intel_gmbus_reset(display);
 
 	return 0;
 
 err:
-	intel_gmbus_teardown(i915);
+	intel_gmbus_teardown(display);
 
 	return ret;
 }
 
-struct i2c_adapter *intel_gmbus_get_adapter(struct drm_i915_private *i915,
+struct i2c_adapter *intel_gmbus_get_adapter(struct intel_display *display,
 					    unsigned int pin)
 {
-	if (drm_WARN_ON(&i915->drm, pin >= ARRAY_SIZE(i915->display.gmbus.bus) ||
-			!i915->display.gmbus.bus[pin]))
+	if (drm_WARN_ON(display->drm, pin >= ARRAY_SIZE(display->gmbus.bus) ||
+			!display->gmbus.bus[pin]))
 		return NULL;
 
-	return &i915->display.gmbus.bus[pin]->adapter;
+	return &display->gmbus.bus[pin]->adapter;
 }
 
 void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
-	struct drm_i915_private *i915 = bus->i915;
+	struct intel_display *display = bus->display;
 
-	mutex_lock(&i915->display.gmbus.mutex);
+	mutex_lock(&display->gmbus.mutex);
 
 	bus->force_bit += force_bit ? 1 : -1;
-	drm_dbg_kms(&i915->drm,
+	drm_dbg_kms(display->drm,
 		    "%sabling bit-banging on %s. force bit now %d\n",
 		    force_bit ? "en" : "dis", adapter->name,
 		    bus->force_bit);
 
-	mutex_unlock(&i915->display.gmbus.mutex);
+	mutex_unlock(&display->gmbus.mutex);
 }
 
 bool intel_gmbus_is_forced_bit(struct i2c_adapter *adapter)
@@ -973,25 +985,25 @@ bool intel_gmbus_is_forced_bit(struct i2c_adapter *adapter)
 	return bus->force_bit;
 }
 
-void intel_gmbus_teardown(struct drm_i915_private *i915)
+void intel_gmbus_teardown(struct intel_display *display)
 {
 	unsigned int pin;
 
-	for (pin = 0; pin < ARRAY_SIZE(i915->display.gmbus.bus); pin++) {
+	for (pin = 0; pin < ARRAY_SIZE(display->gmbus.bus); pin++) {
 		struct intel_gmbus *bus;
 
-		bus = i915->display.gmbus.bus[pin];
+		bus = display->gmbus.bus[pin];
 		if (!bus)
 			continue;
 
 		i2c_del_adapter(&bus->adapter);
 
 		kfree(bus);
-		i915->display.gmbus.bus[pin] = NULL;
+		display->gmbus.bus[pin] = NULL;
 	}
 }
 
-void intel_gmbus_irq_handler(struct drm_i915_private *i915)
+void intel_gmbus_irq_handler(struct intel_display *display)
 {
-	wake_up_all(&i915->display.gmbus.wait_queue);
+	wake_up_all(&display->gmbus.wait_queue);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.h b/drivers/gpu/drm/i915/display/intel_gmbus.h
index 8111eb23e2af..35a200a9efc0 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.h
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.h
@@ -8,8 +8,8 @@
 
 #include <linux/types.h>
 
-struct drm_i915_private;
 struct i2c_adapter;
+struct intel_display;
 
 #define GMBUS_PIN_DISABLED	0
 #define GMBUS_PIN_SSC		1
@@ -34,18 +34,17 @@ struct i2c_adapter;
 
 #define GMBUS_NUM_PINS	15 /* including 0 */
 
-int intel_gmbus_setup(struct drm_i915_private *dev_priv);
-void intel_gmbus_teardown(struct drm_i915_private *dev_priv);
-bool intel_gmbus_is_valid_pin(struct drm_i915_private *dev_priv,
-			      unsigned int pin);
+int intel_gmbus_setup(struct intel_display *display);
+void intel_gmbus_teardown(struct intel_display *display);
+bool intel_gmbus_is_valid_pin(struct intel_display *display, unsigned int pin);
 int intel_gmbus_output_aksv(struct i2c_adapter *adapter);
 
 struct i2c_adapter *
-intel_gmbus_get_adapter(struct drm_i915_private *dev_priv, unsigned int pin);
+intel_gmbus_get_adapter(struct intel_display *display, unsigned int pin);
 void intel_gmbus_force_bit(struct i2c_adapter *adapter, bool force_bit);
 bool intel_gmbus_is_forced_bit(struct i2c_adapter *adapter);
-void intel_gmbus_reset(struct drm_i915_private *dev_priv);
+void intel_gmbus_reset(struct intel_display *display);
 
-void intel_gmbus_irq_handler(struct drm_i915_private *i915);
+void intel_gmbus_irq_handler(struct intel_display *display);
 
 #endif /* __INTEL_GMBUS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus_regs.h b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
index 53aacbda983c..59bad1dda6d6 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_gmbus_regs.h
@@ -8,9 +8,9 @@
 
 #include "i915_reg_defs.h"
 
-#define GMBUS_MMIO_BASE(__i915) ((__i915)->display.gmbus.mmio_base)
+#define __GMBUS_MMIO_BASE(__display) ((__display)->gmbus.mmio_base)
 
-#define GPIO(__i915, gpio)	_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5010 + 4 * (gpio))
+#define GPIO(__display, gpio)	_MMIO(__GMBUS_MMIO_BASE(__display) + 0x5010 + 4 * (gpio))
 #define   GPIO_CLOCK_DIR_MASK		(1 << 0)
 #define   GPIO_CLOCK_DIR_IN		(0 << 1)
 #define   GPIO_CLOCK_DIR_OUT		(1 << 1)
@@ -27,7 +27,7 @@
 #define   GPIO_DATA_PULLUP_DISABLE	(1 << 13)
 
 /* clock/port select */
-#define GMBUS0(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5100)
+#define GMBUS0(__display)	_MMIO(__GMBUS_MMIO_BASE(__display) + 0x5100)
 #define   GMBUS_AKSV_SELECT		(1 << 11)
 #define   GMBUS_RATE_100KHZ		(0 << 8)
 #define   GMBUS_RATE_50KHZ		(1 << 8)
@@ -37,7 +37,7 @@
 #define   GMBUS_BYTE_CNT_OVERRIDE	(1 << 6)
 
 /* command/status */
-#define GMBUS1(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5104)
+#define GMBUS1(__display)	_MMIO(__GMBUS_MMIO_BASE(__display) + 0x5104)
 #define   GMBUS_SW_CLR_INT		(1 << 31)
 #define   GMBUS_SW_RDY			(1 << 30)
 #define   GMBUS_ENT			(1 << 29) /* enable timeout */
@@ -54,7 +54,7 @@
 #define   GMBUS_SLAVE_WRITE		(0 << 0)
 
 /* status */
-#define GMBUS2(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5108)
+#define GMBUS2(__display)	_MMIO(__GMBUS_MMIO_BASE(__display) + 0x5108)
 #define   GMBUS_INUSE			(1 << 15)
 #define   GMBUS_HW_WAIT_PHASE		(1 << 14)
 #define   GMBUS_STALL_TIMEOUT		(1 << 13)
@@ -64,10 +64,10 @@
 #define   GMBUS_ACTIVE			(1 << 9)
 
 /* data buffer bytes 3-0 */
-#define GMBUS3(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x510c)
+#define GMBUS3(__display)	_MMIO(__GMBUS_MMIO_BASE(__display) + 0x510c)
 
 /* interrupt mask (Pineview+) */
-#define GMBUS4(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5110)
+#define GMBUS4(__display)	_MMIO(__GMBUS_MMIO_BASE(__display) + 0x5110)
 #define   GMBUS_SLAVE_TIMEOUT_EN	(1 << 4)
 #define   GMBUS_NAK_EN			(1 << 3)
 #define   GMBUS_IDLE_EN			(1 << 2)
@@ -75,7 +75,7 @@
 #define   GMBUS_HW_RDY_EN		(1 << 0)
 
 /* byte index */
-#define GMBUS5(__i915)		_MMIO(GMBUS_MMIO_BASE(__i915) + 0x5120)
+#define GMBUS5(__display)	_MMIO(__GMBUS_MMIO_BASE(__display) + 0x5120)
 #define   GMBUS_2BYTE_INDEX_EN		(1 << 31)
 
 #endif /* __INTEL_GMBUS_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 72ac910bf6ec..022ba3635101 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2917,7 +2917,6 @@ static struct intel_encoder *
 get_encoder_by_ddc_pin(struct intel_encoder *encoder, u8 ddc_pin)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_encoder *other;
 
 	for_each_intel_encoder(display->drm, other) {
@@ -2931,7 +2930,7 @@ get_encoder_by_ddc_pin(struct intel_encoder *encoder, u8 ddc_pin)
 
 		connector = enc_to_dig_port(other)->hdmi.attached_connector;
 
-		if (connector && connector->base.ddc == intel_gmbus_get_adapter(i915, ddc_pin))
+		if (connector && connector->base.ddc == intel_gmbus_get_adapter(display, ddc_pin))
 			return other;
 	}
 
@@ -2941,7 +2940,6 @@ get_encoder_by_ddc_pin(struct intel_encoder *encoder, u8 ddc_pin)
 static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	struct intel_encoder *other;
 	const char *source;
 	u8 ddc_pin;
@@ -2954,7 +2952,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 		source = "platform default";
 	}
 
-	if (!intel_gmbus_is_valid_pin(i915, ddc_pin)) {
+	if (!intel_gmbus_is_valid_pin(display, ddc_pin)) {
 		drm_dbg_kms(display->drm,
 			    "[ENCODER:%d:%s] Invalid DDC pin %d\n",
 			    encoder->base.base.id, encoder->base.name, ddc_pin);
@@ -3052,7 +3050,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 	drm_connector_init_with_ddc(dev, connector,
 				    &intel_hdmi_connector_funcs,
 				    DRM_MODE_CONNECTOR_HDMIA,
-				    intel_gmbus_get_adapter(dev_priv, ddc_pin));
+				    intel_gmbus_get_adapter(display, ddc_pin));
 
 	drm_connector_helper_add(connector, &intel_hdmi_connector_helper_funcs);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
index 5d055dc9366f..cb64c6f0ad1b 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
@@ -556,6 +556,7 @@ void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
 
 void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 ddi_hotplug_trigger = pch_iir & SDE_DDI_HOTPLUG_MASK_ICP;
 	u32 tc_hotplug_trigger = pch_iir & SDE_TC_HOTPLUG_MASK_ICP;
 	u32 pin_mask = 0, long_mask = 0;
@@ -589,11 +590,12 @@ void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
 
 	if (pch_iir & SDE_GMBUS_ICP)
-		intel_gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(display);
 }
 
 void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 {
+	struct intel_display *display = &dev_priv->display;
 	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_SPT &
 		~SDE_PORTE_HOTPLUG_SPT;
 	u32 hotplug2_trigger = pch_iir & SDE_PORTE_HOTPLUG_SPT;
@@ -625,7 +627,7 @@ void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
 		intel_hpd_irq_handler(dev_priv, pin_mask, long_mask);
 
 	if (pch_iir & SDE_GMBUS_CPT)
-		intel_gmbus_irq_handler(dev_priv);
+		intel_gmbus_irq_handler(display);
 }
 
 void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 hotplug_trigger)
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 5f753ee743c6..96fa238b461d 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -900,7 +900,7 @@ void intel_lvds_init(struct drm_i915_private *i915)
 	drm_connector_init_with_ddc(&i915->drm, &connector->base,
 				    &intel_lvds_connector_funcs,
 				    DRM_MODE_CONNECTOR_LVDS,
-				    intel_gmbus_get_adapter(i915, ddc_pin));
+				    intel_gmbus_get_adapter(display, ddc_pin));
 
 	drm_encoder_init(&i915->drm, &encoder->base, &intel_lvds_enc_funcs,
 			 DRM_MODE_ENCODER_LVDS, "LVDS");
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index b83bf813677d..7a28104f68ad 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2082,10 +2082,10 @@ intel_sdvo_get_edid(struct drm_connector *connector)
 static const struct drm_edid *
 intel_sdvo_get_analog_edid(struct drm_connector *connector)
 {
-	struct drm_i915_private *i915 = to_i915(connector->dev);
+	struct intel_display *display = to_intel_display(connector->dev);
 	struct i2c_adapter *ddc;
 
-	ddc = intel_gmbus_get_adapter(i915, i915->display.vbt.crt_ddc_pin);
+	ddc = intel_gmbus_get_adapter(display, display->vbt.crt_ddc_pin);
 	if (!ddc)
 		return NULL;
 
@@ -2638,6 +2638,7 @@ intel_sdvo_select_ddc_bus(struct intel_sdvo *sdvo,
 static void
 intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
 {
+	struct intel_display *display = to_intel_display(&sdvo->base);
 	struct drm_i915_private *dev_priv = to_i915(sdvo->base.base.dev);
 	const struct sdvo_device_mapping *mapping;
 	u8 pin;
@@ -2648,7 +2649,7 @@ intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
 		mapping = &dev_priv->display.vbt.sdvo_mappings[1];
 
 	if (mapping->initialized &&
-	    intel_gmbus_is_valid_pin(dev_priv, mapping->i2c_pin))
+	    intel_gmbus_is_valid_pin(display, mapping->i2c_pin))
 		pin = mapping->i2c_pin;
 	else
 		pin = GMBUS_PIN_DPB;
@@ -2657,7 +2658,7 @@ intel_sdvo_select_i2c_bus(struct intel_sdvo *sdvo)
 		    sdvo->base.base.base.id, sdvo->base.base.name,
 		    pin, sdvo->target_addr);
 
-	sdvo->i2c = intel_gmbus_get_adapter(dev_priv, pin);
+	sdvo->i2c = intel_gmbus_get_adapter(display, pin);
 
 	/*
 	 * With gmbus we should be able to drive sdvo i2c at 2MHz, but somehow
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index 9d3d9b983032..f18f1acf2158 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -137,5 +137,5 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
 
 	intel_vga_redisable(display);
 
-	intel_gmbus_reset(dev_priv);
+	intel_gmbus_reset(display);
 }
-- 
2.39.5

