Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9683CCE51
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 09:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B76AB6E0A6;
	Mon, 19 Jul 2021 07:16:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D5476E0A6
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 07:16:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10049"; a="209103104"
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="209103104"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2021 00:16:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,251,1620716400"; d="scan'208";a="631817003"
Received: from shawnle1-build-machine.itwn.intel.com ([10.5.253.12])
 by orsmga005.jf.intel.com with ESMTP; 19 Jul 2021 00:16:33 -0700
From: Lee Shawn C <shawn.c.lee@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 19 Jul 2021 15:22:19 +0800
Message-Id: <20210719072222.13369-3-shawn.c.lee@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210719072222.13369-1-shawn.c.lee@intel.com>
References: <20210719072222.13369-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/jsl: program DSI panel GPIOs
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
Cc: Cooper Chiou <cooper.chiou@intel.com>,
 William Tseng <william.tseng@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DSI driver should have its own implementation to toggle
gpio pins based on GPIO info coming from VBT sequences.

Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
Cc: Cooper Chiou <cooper.chiou@intel.com>
Cc: William Tseng <william.tseng@intel.com>
Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 44 +++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h              | 10 +++++
 2 files changed, 53 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
index cc93e045a425..dd03e5629ba6 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -43,6 +43,7 @@
 #include "intel_display_types.h"
 #include "intel_dsi.h"
 #include "intel_sideband.h"
+#include "intel_de.h"
 
 #define MIPI_TRANSFER_MODE_SHIFT	0
 #define MIPI_VIRTUAL_CHANNEL_SHIFT	1
@@ -354,7 +355,48 @@ static void bxt_exec_gpio(struct drm_i915_private *dev_priv,
 static void icl_exec_gpio(struct drm_i915_private *dev_priv,
 			  u8 gpio_source, u8 gpio_index, bool value)
 {
-	drm_dbg_kms(&dev_priv->drm, "Skipping ICL GPIO element execution\n");
+	u32 val;
+
+	switch (gpio_index) {
+	case ICL_GPIO_L_VDDEN_1:
+		val = intel_de_read(dev_priv, ICP_PP_CONTROL(1));
+		if (value)
+			val |= PWR_STATE_TARGET;
+		else
+			val &= ~PWR_STATE_TARGET;
+		intel_de_write(dev_priv, ICP_PP_CONTROL(1), val);
+		break;
+	case ICL_GPIO_L_BKLTEN_1:
+		val = intel_de_read(dev_priv, ICP_PP_CONTROL(1));
+		if (value)
+			val |= BACKLIGHT_ENABLE;
+		else
+			val &= ~BACKLIGHT_ENABLE;
+		intel_de_write(dev_priv, ICP_PP_CONTROL(1), val);
+		break;
+	case ICL_GPIO_DDPA_CTRLCLK_1:
+		val = intel_de_read(dev_priv, GPIO(1));
+		if (value)
+			val |= GPIO_CLOCK_VAL_OUT;
+		else
+			val &= ~GPIO_CLOCK_VAL_OUT;
+		val |= GPIO_CLOCK_DIR_MASK | GPIO_CLOCK_DIR_OUT | GPIO_CLOCK_VAL_MASK;
+		intel_de_write(dev_priv, GPIO(1), val);
+		break;
+	case ICL_GPIO_DDPA_CTRLDATA_1:
+		val = intel_de_read(dev_priv, GPIO(1));
+		if (value)
+			val |= GPIO_DATA_VAL_OUT;
+		else
+			val &= ~GPIO_DATA_VAL_OUT;
+		val |= GPIO_DATA_DIR_MASK | GPIO_DATA_DIR_OUT | GPIO_DATA_VAL_MASK;
+		intel_de_write(dev_priv, GPIO(1), val);
+		break;
+	default:
+		/* TODO: Add support for remaining GPIOs */
+		DRM_ERROR("Invalid GPIO number (%d) from VBT\n", gpio_index);
+		break;
+	}
 }
 
 static const u8 *mipi_exec_gpio(struct intel_dsi *intel_dsi, const u8 *data)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 943fe485c662..b725234e0e9c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5143,6 +5143,16 @@ enum {
 #define _PP_STATUS			0x61200
 #define PP_STATUS(pps_idx)		_MMIO_PPS(pps_idx, _PP_STATUS)
 #define   PP_ON				REG_BIT(31)
+
+#define _PP_CONTROL_1			0xc7204
+#define _PP_CONTROL_2			0xc7304
+#define ICP_PP_CONTROL(x)		_MMIO(((x) == 1) ? _PP_CONTROL_1 : \
+					      _PP_CONTROL_2)
+#define  POWER_CYCLE_DELAY_MASK		REG_GENMASK(8, 4)
+#define  VDD_OVERRIDE_FORCE		REG_BIT(3)
+#define  BACKLIGHT_ENABLE		REG_BIT(2)
+#define  PWR_DOWN_ON_RESET		REG_BIT(1)
+#define  PWR_STATE_TARGET		REG_BIT(0)
 /*
  * Indicates that all dependencies of the panel are on:
  *
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
