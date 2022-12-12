Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 388BF649D8D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Dec 2022 12:28:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C6D910E1AB;
	Mon, 12 Dec 2022 11:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18D210E1AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Dec 2022 11:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670844508; x=1702380508;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=vpQicHIzr5akcoiR4h4n7/fhr4yPQ1OCns9YBL2JoDs=;
 b=F0d6XW1S6bHmkUe6L16SMNhkbUvh92I07enF49g7u35W5nA4tE/aH725
 t3H8CBOujixUgX7Xw8CKVAiYi6Xmg139tt7gaVe9g2/7M4McqSKNLVm1n
 27tDFxg9kTOgnhU4iMJ7symizXb+WYpQjMRaZRa919NlqrROR0CxL8TlM
 xOWHtfQfH2nkwBKS8/ecjgq50cRhv3uFAHT8+mbed0b8dZCaieH7WgEkf
 Co32nxHcUZv04HWCADpJKFPfSZcbbt8T8g5zwrdkFG/7Qizm4fa3uA47g
 I/eNxpKxoq8tvwFoWcDV0V2gDCWQhNbV1IUM2M/ZEsdv6uuBhHKipaaPm Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="305473957"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="305473957"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 03:28:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10558"; a="772560891"
X-IronPort-AV: E=Sophos;i="5.96,238,1665471600"; d="scan'208";a="772560891"
Received: from sshumihi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.5.95])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2022 03:28:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Dec 2022 13:28:22 +0200
Message-Id: <20221212112822.1391254-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dsi: add support for ICL+ native MIPI
 GPIO sequence
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

Starting from ICL, the default for MIPI GPIO sequences seems to be using
native GPIOs i.e. GPIOs available in the GPU. These native GPIOs reuse
many pins that quite frankly seem scary to poke based on the VBT
sequences. We pretty much have to trust that the board is configured
such that the relevant HPD, PP_CONTROL and GPIO bits aren't used for
anything else.

MIPI sequence v4 also adds a flag to fall back to non-native sequences.

v2:
- Fix HPD pin output set (impacts GPIOs 0 and 5)
- Fix GPIO data output direction set (impacts GPIOs 4 and 9)
- Reduce register accesses to single intel_de_rwm()

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6131
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 84 +++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h              |  1 +
 2 files changed, 82 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index fce69fa446d5..18c6c2153076 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -41,9 +41,11 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_de.h"
 #include "intel_display_types.h"
 #include "intel_dsi.h"
 #include "intel_dsi_vbt.h"
+#include "intel_gmbus_regs.h"
 #include "vlv_dsi.h"
 #include "vlv_dsi_regs.h"
 #include "vlv_sideband.h"
@@ -377,6 +379,75 @@ static void icl_exec_gpio(struct intel_connector *connector,
 	drm_dbg_kms(&dev_priv->drm, "Skipping ICL GPIO element execution\n");
 }
 
+enum {
+	MIPI_RESET_1 = 0,
+	MIPI_AVDD_EN_1,
+	MIPI_BKLT_EN_1,
+	MIPI_AVEE_EN_1,
+	MIPI_VIO_EN_1,
+	MIPI_RESET_2,
+	MIPI_AVDD_EN_2,
+	MIPI_BKLT_EN_2,
+	MIPI_AVEE_EN_2,
+	MIPI_VIO_EN_2,
+};
+
+static void icl_native_gpio_set_value(struct drm_i915_private *dev_priv,
+				      int gpio, bool value)
+{
+	int index;
+
+	if (drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) == 11 && gpio >= MIPI_RESET_2))
+		return;
+
+	switch (gpio) {
+	case MIPI_RESET_1:
+	case MIPI_RESET_2:
+		index = gpio == MIPI_RESET_1 ? HPD_PORT_A : HPD_PORT_B;
+
+		/* Disable HPD to set the pin to output, and set output value */
+		intel_de_rmw(dev_priv, SHOTPLUG_CTL_DDI,
+			     SHOTPLUG_CTL_DDI_HPD_ENABLE(index) |
+			     SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(index),
+			     value ? SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(index) : 0);
+		break;
+	case MIPI_AVDD_EN_1:
+	case MIPI_AVDD_EN_2:
+		index = gpio == MIPI_AVDD_EN_1 ? 0 : 1;
+
+		intel_de_rmw(dev_priv, PP_CONTROL(index), PANEL_POWER_ON,
+			     value ? PANEL_POWER_ON : 0);
+		break;
+	case MIPI_BKLT_EN_1:
+	case MIPI_BKLT_EN_2:
+		index = gpio == MIPI_AVDD_EN_1 ? 0 : 1;
+
+		intel_de_rmw(dev_priv, PP_CONTROL(index), EDP_BLC_ENABLE,
+			     value ? EDP_BLC_ENABLE : 0);
+		break;
+	case MIPI_AVEE_EN_1:
+	case MIPI_AVEE_EN_2:
+		index = gpio == MIPI_AVEE_EN_1 ? 1 : 2;
+
+		intel_de_rmw(dev_priv, GPIO(dev_priv, index),
+			     GPIO_CLOCK_VAL_OUT,
+			     GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_DIR_OUT |
+			     GPIO_CLOCK_VAL_MASK | value ? GPIO_CLOCK_VAL_OUT : 0);
+		break;
+	case MIPI_VIO_EN_1:
+	case MIPI_VIO_EN_2:
+		index = gpio == MIPI_VIO_EN_1 ? 1 : 2;
+
+		intel_de_rmw(dev_priv, GPIO(dev_priv, index),
+			     GPIO_DATA_VAL_OUT,
+			     GPIO_DATA_DIR_MASK | GPIO_DATA_DIR_OUT |
+			     GPIO_DATA_VAL_MASK | value ? GPIO_DATA_VAL_OUT : 0);
+		break;
+	default:
+		MISSING_CASE(gpio);
+	}
+}
+
 static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 {
 	struct drm_device *dev = intel_dsi->base.base.dev;
@@ -384,8 +455,7 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	struct intel_connector *connector = intel_dsi->attached_connector;
 	u8 gpio_source, gpio_index = 0, gpio_number;
 	bool value;
-
-	drm_dbg_kms(&dev_priv->drm, "\n");
+	bool native = DISPLAY_VER(dev_priv) >= 11;
 
 	if (connector->panel.vbt.dsi.seq_version >= 3)
 		gpio_index = *data++;
@@ -398,10 +468,18 @@ static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
 	else
 		gpio_source = 0;
 
+	if (connector->panel.vbt.dsi.seq_version >= 4 && *data & BIT(1))
+		native = false;
+
 	/* pull up/down */
 	value = *data++ & 1;
 
-	if (DISPLAY_VER(dev_priv) >= 11)
+	drm_dbg_kms(&dev_priv->drm, "GPIO index %u, number %u, source %u, native %s, set to %s\n",
+		    gpio_index, gpio_number, gpio_source, str_yes_no(native), str_on_off(value));
+
+	if (native)
+		icl_native_gpio_set_value(dev_priv, gpio_number, value);
+	else if (DISPLAY_VER(dev_priv) >= 11)
 		icl_exec_gpio(connector, gpio_source, gpio_index, value);
 	else if (IS_VALLEYVIEW(dev_priv))
 		vlv_exec_gpio(connector, gpio_source, gpio_number, value);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2b7a63754e4d..7008d04a06b8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5965,6 +5965,7 @@
 
 #define SHOTPLUG_CTL_DDI				_MMIO(0xc4030)
 #define   SHOTPLUG_CTL_DDI_HPD_ENABLE(hpd_pin)			(0x8 << (_HPD_PIN_DDI(hpd_pin) * 4))
+#define   SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(hpd_pin)		(0x4 << (_HPD_PIN_DDI(hpd_pin) * 4))
 #define   SHOTPLUG_CTL_DDI_HPD_STATUS_MASK(hpd_pin)		(0x3 << (_HPD_PIN_DDI(hpd_pin) * 4))
 #define   SHOTPLUG_CTL_DDI_HPD_NO_DETECT(hpd_pin)		(0x0 << (_HPD_PIN_DDI(hpd_pin) * 4))
 #define   SHOTPLUG_CTL_DDI_HPD_SHORT_DETECT(hpd_pin)		(0x1 << (_HPD_PIN_DDI(hpd_pin) * 4))
-- 
2.34.1

