Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 242E5A6B921
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 11:53:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 974F510E78C;
	Fri, 21 Mar 2025 10:53:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d9UBSF4x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2572010E78C;
 Fri, 21 Mar 2025 10:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742554399; x=1774090399;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KdUN+R93JsUqRISYx7UpJVHdyFtXg/EdNLxoPgrBxyQ=;
 b=d9UBSF4xpKBDBtsg8SdNGMZLga2o5XZOUU/KXs8mttTjEcTn2SwxpTcc
 2V+rN0AtXmTRP4JvWn5IJqT6RN6lFwa22tDqnpqdRgStFYhok79NVzV5e
 YPFBe64Bw35fsCNsW1A/uxRwr3zWhXT1snZLOojmwQ2YICMrtTF29gnDW
 Qyoc2spYwCIXkDbzzKQrnxzqJpubMaMNxQcSVX/Ujr1OgX3eWCl4xfINh
 JJyC896Ty/RCLp7DSt+FLDJyI/UP7W10MLh18qDhPHial4lABX2jSRnRR
 wLwUzYdwxjRQfbFLmwchSS8g5HwantuSaGWHUR0myjWQiG2dgC2Wfl1N4 w==;
X-CSE-ConnectionGUID: fCyV7fTqQMuenvwLNVXXsQ==
X-CSE-MsgGUID: HdAIauxKTBCpEd1OMpXqPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="54483892"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="54483892"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:19 -0700
X-CSE-ConnectionGUID: 8yvuq647TlaRthqbG10nJg==
X-CSE-MsgGUID: jKQQWVBdTb6TNtHic8YizQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123830032"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 03:53:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 04/12] drm/i915/dsi: convert intel_dsi_vbt.[ch] to struct
 intel_display
Date: Fri, 21 Mar 2025 12:52:48 +0200
Message-Id: <d2a327c7121263cd67986a2d9199e18d7bf03acd.1742554320.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1742554320.git.jani.nikula@intel.com>
References: <cover.1742554320.git.jani.nikula@intel.com>
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

Going forward, struct intel_display is the main display device data
pointer. Convert as much as possible of intel_dsi_vbt.[ch] to struct
intel_display.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 131 +++++++++----------
 1 file changed, 63 insertions(+), 68 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index 802f210bfafe..4e92504f5c14 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -102,13 +102,13 @@ static enum port intel_dsi_seq_port_to_port(struct intel_dsi *intel_dsi,
 static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 				       const u8 *data)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	struct mipi_dsi_device *dsi_device;
 	u8 type, flags, seq_port;
 	u16 len;
 	enum port port;
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	flags = *data++;
 	type = *data++;
@@ -120,12 +120,12 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 
 	port = intel_dsi_seq_port_to_port(intel_dsi, seq_port);
 
-	if (drm_WARN_ON(&dev_priv->drm, !intel_dsi->dsi_hosts[port]))
+	if (drm_WARN_ON(display->drm, !intel_dsi->dsi_hosts[port]))
 		goto out;
 
 	dsi_device = intel_dsi->dsi_hosts[port]->device;
 	if (!dsi_device) {
-		drm_dbg_kms(&dev_priv->drm, "no dsi device for port %c\n",
+		drm_dbg_kms(display->drm, "no dsi device for port %c\n",
 			    port_name(port));
 		goto out;
 	}
@@ -150,8 +150,7 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 	case MIPI_DSI_GENERIC_READ_REQUEST_0_PARAM:
 	case MIPI_DSI_GENERIC_READ_REQUEST_1_PARAM:
 	case MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM:
-		drm_dbg(&dev_priv->drm,
-			"Generic Read not yet implemented or used\n");
+		drm_dbg_kms(display->drm, "Generic Read not yet implemented or used\n");
 		break;
 	case MIPI_DSI_GENERIC_LONG_WRITE:
 		mipi_dsi_generic_write(dsi_device, data, len);
@@ -163,15 +162,14 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 		mipi_dsi_dcs_write_buffer(dsi_device, data, 2);
 		break;
 	case MIPI_DSI_DCS_READ:
-		drm_dbg(&dev_priv->drm,
-			"DCS Read not yet implemented or used\n");
+		drm_dbg_kms(display->drm, "DCS Read not yet implemented or used\n");
 		break;
 	case MIPI_DSI_DCS_LONG_WRITE:
 		mipi_dsi_dcs_write_buffer(dsi_device, data, len);
 		break;
 	}
 
-	if (DISPLAY_VER(dev_priv) < 11)
+	if (DISPLAY_VER(display) < 11)
 		vlv_dsi_wait_for_fifo_empty(intel_dsi, port);
 
 out:
@@ -182,10 +180,10 @@ static const u8 *mipi_exec_send_packet(struct intel_dsi *intel_dsi,
 
 static const u8 *mipi_exec_delay(struct intel_dsi *intel_dsi, const u8 *data)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	u32 delay = *((const u32 *) data);
 
-	drm_dbg_kms(&i915->drm, "%d usecs\n", delay);
+	drm_dbg_kms(display->drm, "%d usecs\n", delay);
 
 	usleep_range(delay, delay + 10);
 	data += 4;
@@ -196,7 +194,7 @@ static const u8 *mipi_exec_delay(struct intel_dsi *intel_dsi, const u8 *data)
 static void soc_gpio_set_value(struct intel_connector *connector, u8 gpio_index,
 			       const char *con_id, u8 idx, bool value)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	/* XXX: this table is a quick ugly hack. */
 	static struct gpio_desc *soc_gpio_table[U8_MAX + 1];
 	struct gpio_desc *gpio_desc = soc_gpio_table[gpio_index];
@@ -204,10 +202,10 @@ static void soc_gpio_set_value(struct intel_connector *connector, u8 gpio_index,
 	if (gpio_desc) {
 		gpiod_set_value(gpio_desc, value);
 	} else {
-		gpio_desc = devm_gpiod_get_index(dev_priv->drm.dev, con_id, idx,
+		gpio_desc = devm_gpiod_get_index(display->drm->dev, con_id, idx,
 						 value ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW);
 		if (IS_ERR(gpio_desc)) {
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"GPIO index %u request failed (%pe)\n",
 				gpio_index, gpio_desc);
 			return;
@@ -242,16 +240,16 @@ static void soc_opaque_gpio_set_value(struct intel_connector *connector,
 static void vlv_gpio_set_value(struct intel_connector *connector,
 			       u8 gpio_source, u8 gpio_index, bool value)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
 	/* XXX: this assumes vlv_gpio_table only has NC GPIOs. */
 	if (connector->panel.vbt.dsi.seq_version < 3) {
 		if (gpio_source == 1) {
-			drm_dbg_kms(&dev_priv->drm, "SC gpio not supported\n");
+			drm_dbg_kms(display->drm, "SC gpio not supported\n");
 			return;
 		}
 		if (gpio_source > 1) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "unknown gpio source %u\n", gpio_source);
 			return;
 		}
@@ -264,7 +262,7 @@ static void vlv_gpio_set_value(struct intel_connector *connector,
 static void chv_gpio_set_value(struct intel_connector *connector,
 			       u8 gpio_source, u8 gpio_index, bool value)
 {
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 
 	if (connector->panel.vbt.dsi.seq_version >= 3) {
 		if (gpio_index >= CHV_GPIO_IDX_START_SE) {
@@ -284,13 +282,13 @@ static void chv_gpio_set_value(struct intel_connector *connector,
 	} else {
 		/* XXX: The spec is unclear about CHV GPIO on seq v2 */
 		if (gpio_source != 0) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "unknown gpio source %u\n", gpio_source);
 			return;
 		}
 
 		if (gpio_index >= CHV_GPIO_IDX_START_E) {
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "invalid gpio index %u for GPIO N\n",
 				    gpio_index);
 			return;
@@ -320,13 +318,13 @@ enum {
 	MIPI_VIO_EN_2,
 };
 
-static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
+static void icl_native_gpio_set_value(struct intel_display *display,
 				      int gpio, bool value)
 {
-	struct intel_display *display = &dev_priv->display;
+	struct drm_i915_private *dev_priv = to_i915(display->drm);
 	int index;
 
-	if (drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) == 11 && gpio >= MIPI_RESET_2))
+	if (drm_WARN_ON(display->drm, DISPLAY_VER(display) == 11 && gpio >= MIPI_RESET_2))
 		return;
 
 	switch (gpio) {
@@ -344,7 +342,7 @@ static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
 		 * modifications in irq setup and handling.
 		 */
 		spin_lock_irq(&dev_priv->irq_lock);
-		intel_de_rmw(dev_priv, SHOTPLUG_CTL_DDI,
+		intel_de_rmw(display, SHOTPLUG_CTL_DDI,
 			     SHOTPLUG_CTL_DDI_HPD_ENABLE(index) |
 			     SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(index),
 			     value ? SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(index) : 0);
@@ -354,14 +352,14 @@ static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
 	case MIPI_AVDD_EN_2:
 		index = gpio == MIPI_AVDD_EN_1 ? 0 : 1;
 
-		intel_de_rmw(dev_priv, PP_CONTROL(dev_priv, index), PANEL_POWER_ON,
+		intel_de_rmw(display, PP_CONTROL(display, index), PANEL_POWER_ON,
 			     value ? PANEL_POWER_ON : 0);
 		break;
 	case MIPI_BKLT_EN_1:
 	case MIPI_BKLT_EN_2:
 		index = gpio == MIPI_BKLT_EN_1 ? 0 : 1;
 
-		intel_de_rmw(dev_priv, PP_CONTROL(dev_priv, index), EDP_BLC_ENABLE,
+		intel_de_rmw(display, PP_CONTROL(display, index), EDP_BLC_ENABLE,
 			     value ? EDP_BLC_ENABLE : 0);
 		break;
 	case MIPI_AVEE_EN_1:
@@ -389,13 +387,12 @@ static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
 
 static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 {
-	struct drm_device *dev = intel_dsi->base.base.dev;
-	struct drm_i915_private *i915 = to_i915(dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	u8 gpio_source = 0, gpio_index = 0, gpio_number;
 	bool value;
 	int size;
-	bool native = DISPLAY_VER(i915) >= 11;
+	bool native = DISPLAY_VER(display) >= 11;
 
 	if (connector->panel.vbt.dsi.seq_version >= 3) {
 		size = 3;
@@ -416,16 +413,16 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 			gpio_source = (data[1] >> 1) & 3;
 	}
 
-	drm_dbg_kms(&i915->drm, "GPIO index %u, number %u, source %u, native %s, set to %s\n",
+	drm_dbg_kms(display->drm, "GPIO index %u, number %u, source %u, native %s, set to %s\n",
 		    gpio_index, gpio_number, gpio_source, str_yes_no(native), str_on_off(value));
 
 	if (native)
-		icl_native_gpio_set_value(i915, gpio_number, value);
-	else if (DISPLAY_VER(i915) >= 9)
+		icl_native_gpio_set_value(display, gpio_number, value);
+	else if (DISPLAY_VER(display) >= 9)
 		bxt_gpio_set_value(connector, gpio_index, value);
-	else if (IS_VALLEYVIEW(i915))
+	else if (display->platform.valleyview)
 		vlv_gpio_set_value(connector, gpio_source, gpio_number, value);
-	else if (IS_CHERRYVIEW(i915))
+	else if (display->platform.cherryview)
 		chv_gpio_set_value(connector, gpio_source, gpio_number, value);
 
 	return data + size;
@@ -463,8 +460,8 @@ static int i2c_adapter_lookup(struct acpi_resource *ares, void *data)
 static void i2c_acpi_find_adapter(struct intel_dsi *intel_dsi,
 				  const u16 target_addr)
 {
-	struct drm_device *drm_dev = intel_dsi->base.base.dev;
-	struct acpi_device *adev = ACPI_COMPANION(drm_dev->dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
+	struct acpi_device *adev = ACPI_COMPANION(display->drm->dev);
 	struct i2c_adapter_lookup lookup = {
 		.target_addr = target_addr,
 		.intel_dsi = intel_dsi,
@@ -484,7 +481,7 @@ static inline void i2c_acpi_find_adapter(struct intel_dsi *intel_dsi,
 
 static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *data)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	struct i2c_adapter *adapter;
 	struct i2c_msg msg;
 	int ret;
@@ -494,7 +491,7 @@ static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *data)
 	u8 payload_size = *(data + 6);
 	u8 *payload_data;
 
-	drm_dbg_kms(&i915->drm, "bus %d target-addr 0x%02x reg 0x%02x data %*ph\n",
+	drm_dbg_kms(display->drm, "bus %d target-addr 0x%02x reg 0x%02x data %*ph\n",
 		    vbt_i2c_bus_num, target_addr, reg_offset, payload_size, data + 7);
 
 	if (intel_dsi->i2c_bus_num < 0) {
@@ -504,7 +501,7 @@ static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *data)
 
 	adapter = i2c_get_adapter(intel_dsi->i2c_bus_num);
 	if (!adapter) {
-		drm_err(&i915->drm, "Cannot find a valid i2c bus for xfer\n");
+		drm_err(display->drm, "Cannot find a valid i2c bus for xfer\n");
 		goto err_bus;
 	}
 
@@ -522,7 +519,7 @@ static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *data)
 
 	ret = i2c_transfer(adapter, &msg, 1);
 	if (ret < 0)
-		drm_err(&i915->drm,
+		drm_err(display->drm,
 			"Failed to xfer payload of size (%u) to reg (%u)\n",
 			payload_size, reg_offset);
 
@@ -535,16 +532,16 @@ static const u8 *mipi_exec_i2c(struct intel_dsi *intel_dsi, const u8 *data)
 
 static const u8 *mipi_exec_spi(struct intel_dsi *intel_dsi, const u8 *data)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 
-	drm_dbg_kms(&i915->drm, "Skipping SPI element execution\n");
+	drm_dbg_kms(display->drm, "Skipping SPI element execution\n");
 
 	return data + *(data + 5) + 6;
 }
 
 static const u8 *mipi_exec_pmic(struct intel_dsi *intel_dsi, const u8 *data)
 {
-	struct drm_i915_private *i915 = to_i915(intel_dsi->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 #ifdef CONFIG_PMIC_OPREGION
 	u32 value, mask, reg_address;
 	u16 i2c_address;
@@ -560,9 +557,9 @@ static const u8 *mipi_exec_pmic(struct intel_dsi *intel_dsi, const u8 *data)
 							reg_address,
 							value, mask);
 	if (ret)
-		drm_err(&i915->drm, "%s failed, error: %d\n", __func__, ret);
+		drm_err(display->drm, "%s failed, error: %d\n", __func__, ret);
 #else
-	drm_err(&i915->drm,
+	drm_err(display->drm,
 		"Your hardware requires CONFIG_PMIC_OPREGION and it is not set\n");
 #endif
 
@@ -612,12 +609,12 @@ static const char *sequence_name(enum mipi_seq seq_id)
 static void intel_dsi_vbt_exec(struct intel_dsi *intel_dsi,
 			       enum mipi_seq seq_id)
 {
-	struct drm_i915_private *dev_priv = to_i915(intel_dsi->base.base.dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	const u8 *data;
 	fn_mipi_elem_exec mipi_elem_exec;
 
-	if (drm_WARN_ON(&dev_priv->drm,
+	if (drm_WARN_ON(display->drm,
 			seq_id >= ARRAY_SIZE(connector->panel.vbt.dsi.sequence)))
 		return;
 
@@ -625,9 +622,9 @@ static void intel_dsi_vbt_exec(struct intel_dsi *intel_dsi,
 	if (!data)
 		return;
 
-	drm_WARN_ON(&dev_priv->drm, *data != seq_id);
+	drm_WARN_ON(display->drm, *data != seq_id);
 
-	drm_dbg_kms(&dev_priv->drm, "Starting MIPI sequence %d - %s\n",
+	drm_dbg_kms(display->drm, "Starting MIPI sequence %d - %s\n",
 		    seq_id, sequence_name(seq_id));
 
 	/* Skip Sequence Byte. */
@@ -657,19 +654,19 @@ static void intel_dsi_vbt_exec(struct intel_dsi *intel_dsi,
 
 			/* Consistency check if we have size. */
 			if (operation_size && data != next) {
-				drm_err(&dev_priv->drm,
+				drm_err(display->drm,
 					"Inconsistent operation size\n");
 				return;
 			}
 		} else if (operation_size) {
 			/* We have size, skip. */
-			drm_dbg_kms(&dev_priv->drm,
+			drm_dbg_kms(display->drm,
 				    "Unsupported MIPI operation byte %u\n",
 				    operation_byte);
 			data += operation_size;
 		} else {
 			/* No size, can't skip without parsing. */
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"Unsupported MIPI operation byte %u\n",
 				operation_byte);
 			return;
@@ -754,8 +751,7 @@ static enum mipi_dsi_pixel_format vbt_to_dsi_pixel_format(unsigned int format)
 
 bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 {
-	struct drm_device *dev = intel_dsi->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	struct mipi_pps_data *pps = connector->panel.vbt.dsi.pps;
@@ -763,7 +759,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 	u16 burst_mode_ratio;
 	enum port port;
 
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	drm_dbg_kms(display->drm, "\n");
 
 	intel_dsi->eotp_pkt = mipi_config->eot_pkt_disabled ? 0 : 1;
 	intel_dsi->clock_stop = mipi_config->enable_clk_stop ? 1 : 0;
@@ -809,7 +805,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 		u32 bitrate;
 
 		if (mipi_config->target_burst_mode_freq == 0) {
-			drm_err(&dev_priv->drm, "Burst mode target is not set\n");
+			drm_err(display->drm, "Burst mode target is not set\n");
 			return false;
 		}
 
@@ -826,7 +822,7 @@ bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id)
 			mipi_config->target_burst_mode_freq = bitrate;
 
 		if (mipi_config->target_burst_mode_freq < bitrate) {
-			drm_err(&dev_priv->drm, "Burst mode freq is less than computed\n");
+			drm_err(display->drm, "Burst mode freq is less than computed\n");
 			return false;
 		}
 
@@ -890,8 +886,7 @@ static const struct pinctrl_map soc_pwm_pinctrl_map[] = {
 
 void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on)
 {
-	struct drm_device *dev = intel_dsi->base.base.dev;
-	struct drm_i915_private *dev_priv = to_i915(dev);
+	struct intel_display *display = to_intel_display(&intel_dsi->base);
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	struct mipi_config *mipi_config = connector->panel.vbt.dsi.config;
 	enum gpiod_flags flags = panel_is_on ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
@@ -901,13 +896,13 @@ void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on)
 	struct pinctrl *pinctrl;
 	int ret;
 
-	if ((IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
+	if ((display->platform.valleyview || display->platform.cherryview) &&
 	    mipi_config->pwm_blc == PPS_BLC_PMIC) {
 		gpiod_lookup_table = &pmic_panel_gpio_table;
 		want_panel_gpio = true;
 	}
 
-	if (IS_VALLEYVIEW(dev_priv) && mipi_config->pwm_blc == PPS_BLC_SOC) {
+	if (display->platform.valleyview && mipi_config->pwm_blc == PPS_BLC_SOC) {
 		gpiod_lookup_table = &soc_panel_gpio_table;
 		want_panel_gpio = true;
 		want_backlight_gpio = true;
@@ -916,12 +911,12 @@ void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on)
 		ret = pinctrl_register_mappings(soc_pwm_pinctrl_map,
 					     ARRAY_SIZE(soc_pwm_pinctrl_map));
 		if (ret)
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"Failed to register pwm0 pinmux mapping\n");
 
-		pinctrl = devm_pinctrl_get_select(dev->dev, "soc_pwm0");
+		pinctrl = devm_pinctrl_get_select(display->drm->dev, "soc_pwm0");
 		if (IS_ERR(pinctrl))
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"Failed to set pinmux to PWM\n");
 	}
 
@@ -929,9 +924,9 @@ void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on)
 		gpiod_add_lookup_table(gpiod_lookup_table);
 
 	if (want_panel_gpio) {
-		intel_dsi->gpio_panel = devm_gpiod_get(dev->dev, "panel", flags);
+		intel_dsi->gpio_panel = devm_gpiod_get(display->drm->dev, "panel", flags);
 		if (IS_ERR(intel_dsi->gpio_panel)) {
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"Failed to own gpio for panel control\n");
 			intel_dsi->gpio_panel = NULL;
 		}
@@ -939,9 +934,9 @@ void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on)
 
 	if (want_backlight_gpio) {
 		intel_dsi->gpio_backlight =
-			devm_gpiod_get(dev->dev, "backlight", flags);
+			devm_gpiod_get(display->drm->dev, "backlight", flags);
 		if (IS_ERR(intel_dsi->gpio_backlight)) {
-			drm_err(&dev_priv->drm,
+			drm_err(display->drm,
 				"Failed to own gpio for backlight control\n");
 			intel_dsi->gpio_backlight = NULL;
 		}
-- 
2.39.5

