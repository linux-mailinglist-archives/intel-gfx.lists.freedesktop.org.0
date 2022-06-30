Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3943562386
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 21:51:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A9712AEE3;
	Thu, 30 Jun 2022 19:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F0A12AEE0;
 Thu, 30 Jun 2022 19:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656618688; x=1688154688;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o65+lf7Kjd7r7Di3ZK17HtMUZzXdcseG+fipoQ+kPyY=;
 b=hfn9FziDbhXP9jtSlYrSbUsiji1ehyYZ1VZy4IeaeCcH5QNH+UNTAFfy
 DPxRjF3ApZJuEcP2gmaTYBnsb3EGCfRCfslTCZuK/QGLWIyD84KlgNsiQ
 z4yl3gHZd7sHWwhip7yHmCXgi1exWANu0DiGxIr+dyeWMVYjjKU4AvJ5U
 fkgS3DWVjcHDTkXvZWpAyIKMsmE6h8l/XgWuJF2hcsxMdrHc5Zq5zdifS
 rFPG+/SfUiOPxF0oJT+xayZom25Pf9YHdZEHJc3FgCUFciDs7HERvSZfW
 4MKgftWvt3aLA2hcedrQkloXgpScTg+M74EXT8jha36tR4qqHEW4ZXpYD Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="346440440"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="346440440"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 12:51:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="694198437"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga002.fm.intel.com with SMTP; 30 Jun 2022 12:51:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jun 2022 22:51:24 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 30 Jun 2022 22:51:13 +0300
Message-Id: <20220630195114.17407-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630195114.17407-1-ville.syrjala@linux.intel.com>
References: <20220630195114.17407-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm: Remove linux/media-bus-format.h
 from drm_crtc.h
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Sam Ravnborg <sam@ravnborg.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

drm_crtc.h has no need for linux/media-bus-format.h, so don't
include it. Avoids useless rebuilds of the entire universe when
touching linux/media-bus-format.h.

Quite a few placs do currently depend on linux/media-bus-format.h
without actually including it directly. All of those need to be
fixed up.

v2: Deal with ingenic as well
v3: Fix up mxsfb and remaining parts of imx

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c        | 1 +
 drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c   | 1 +
 drivers/gpu/drm/bridge/chipone-icn6211.c              | 1 +
 drivers/gpu/drm/bridge/display-connector.c            | 1 +
 drivers/gpu/drm/bridge/fsl-ldb.c                      | 1 +
 drivers/gpu/drm/bridge/imx/imx-ldb-helper.c           | 1 +
 drivers/gpu/drm/bridge/imx/imx8qm-ldb-drv.c           | 1 +
 drivers/gpu/drm/bridge/imx/imx8qxp-ldb-drv.c          | 1 +
 drivers/gpu/drm/bridge/imx/imx8qxp-pixel-combiner.c   | 1 +
 drivers/gpu/drm/bridge/imx/imx8qxp-pixel-link.c       | 1 +
 drivers/gpu/drm/bridge/imx/imx8qxp-pxl2dpi.c          | 1 +
 drivers/gpu/drm/bridge/ite-it66121.c                  | 1 +
 drivers/gpu/drm/bridge/lontium-lt8912b.c              | 1 +
 drivers/gpu/drm/bridge/lontium-lt9211.c               | 1 +
 drivers/gpu/drm/bridge/lontium-lt9611.c               | 1 +
 drivers/gpu/drm/bridge/nwl-dsi.c                      | 1 +
 drivers/gpu/drm/bridge/sii902x.c                      | 1 +
 drivers/gpu/drm/bridge/tc358767.c                     | 1 +
 drivers/gpu/drm/bridge/tc358775.c                     | 1 +
 drivers/gpu/drm/bridge/ti-dlpc3433.c                  | 1 +
 drivers/gpu/drm/bridge/ti-sn65dsi83.c                 | 1 +
 drivers/gpu/drm/bridge/ti-tfp410.c                    | 1 +
 drivers/gpu/drm/drm_bridge.c                          | 1 +
 drivers/gpu/drm/drm_of.c                              | 1 +
 drivers/gpu/drm/imx/imx-ldb.c                         | 1 +
 drivers/gpu/drm/imx/parallel-display.c                | 1 +
 drivers/gpu/drm/ingenic/ingenic-drm-drv.c             | 1 +
 drivers/gpu/drm/mediatek/mtk_dpi.c                    | 1 +
 drivers/gpu/drm/mxsfb/lcdif_kms.c                     | 1 +
 drivers/gpu/drm/mxsfb/mxsfb_kms.c                     | 1 +
 drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c | 1 +
 drivers/gpu/drm/panel/panel-raydium-rm67191.c         | 1 +
 drivers/gpu/drm/panel/panel-seiko-43wvf1g.c           | 1 +
 drivers/gpu/drm/panel/panel-simple.c                  | 1 +
 drivers/gpu/drm/pl111/pl111_display.c                 | 1 +
 drivers/gpu/drm/rcar-du/rcar_lvds.c                   | 1 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c          | 1 +
 drivers/gpu/drm/rockchip/rockchip_rgb.c               | 1 +
 drivers/gpu/drm/stm/ltdc.c                            | 1 +
 drivers/gpu/drm/sun4i/sun4i_tcon.c                    | 1 +
 drivers/gpu/drm/tidss/tidss_dispc.c                   | 1 +
 drivers/gpu/drm/vc4/vc4_dpi.c                         | 1 +
 include/drm/drm_crtc.h                                | 1 -
 43 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
index cfe4fc69277e..58184cd6ab0b 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_crtc.c
@@ -8,6 +8,7 @@
  */
 
 #include <linux/clk.h>
+#include <linux/media-bus-format.h>
 #include <linux/mfd/atmel-hlcdc.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/pm.h>
diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
index ba5f695703dc..ab63e7b11944 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
@@ -26,6 +26,7 @@
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/irq.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
diff --git a/drivers/gpu/drm/bridge/chipone-icn6211.c b/drivers/gpu/drm/bridge/chipone-icn6211.c
index d25bc62bfebd..481c86b2406e 100644
--- a/drivers/gpu/drm/bridge/chipone-icn6211.c
+++ b/drivers/gpu/drm/bridge/chipone-icn6211.c
@@ -14,6 +14,7 @@
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/regmap.h>
diff --git a/drivers/gpu/drm/bridge/display-connector.c b/drivers/gpu/drm/bridge/display-connector.c
index e4d52a7e31b7..9a12449ad7b8 100644
--- a/drivers/gpu/drm/bridge/display-connector.c
+++ b/drivers/gpu/drm/bridge/display-connector.c
@@ -6,6 +6,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
 #include <linux/interrupt.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/of.h>
diff --git a/drivers/gpu/drm/bridge/fsl-ldb.c b/drivers/gpu/drm/bridge/fsl-ldb.c
index b2675c769a55..8d091521ccba 100644
--- a/drivers/gpu/drm/bridge/fsl-ldb.c
+++ b/drivers/gpu/drm/bridge/fsl-ldb.c
@@ -4,6 +4,7 @@
  */
 
 #include <linux/clk.h>
+#include <linux/media-bus-format.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
diff --git a/drivers/gpu/drm/bridge/imx/imx-ldb-helper.c b/drivers/gpu/drm/bridge/imx/imx-ldb-helper.c
index e85eb9ab5947..7338b84bc83d 100644
--- a/drivers/gpu/drm/bridge/imx/imx-ldb-helper.c
+++ b/drivers/gpu/drm/bridge/imx/imx-ldb-helper.c
@@ -4,6 +4,7 @@
  * Copyright 2019,2020,2022 NXP
  */
 
+#include <linux/media-bus-format.h>
 #include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/regmap.h>
diff --git a/drivers/gpu/drm/bridge/imx/imx8qm-ldb-drv.c b/drivers/gpu/drm/bridge/imx/imx8qm-ldb-drv.c
index 29f8f36f814e..178af8d2d80b 100644
--- a/drivers/gpu/drm/bridge/imx/imx8qm-ldb-drv.c
+++ b/drivers/gpu/drm/bridge/imx/imx8qm-ldb-drv.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/clk.h>
+#include <linux/media-bus-format.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
diff --git a/drivers/gpu/drm/bridge/imx/imx8qxp-ldb-drv.c b/drivers/gpu/drm/bridge/imx/imx8qxp-ldb-drv.c
index 1cca5fc96a4b..63948d5d20fd 100644
--- a/drivers/gpu/drm/bridge/imx/imx8qxp-ldb-drv.c
+++ b/drivers/gpu/drm/bridge/imx/imx8qxp-ldb-drv.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/clk.h>
+#include <linux/media-bus-format.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
diff --git a/drivers/gpu/drm/bridge/imx/imx8qxp-pixel-combiner.c b/drivers/gpu/drm/bridge/imx/imx8qxp-pixel-combiner.c
index 86ae98a211b4..682ae0c73722 100644
--- a/drivers/gpu/drm/bridge/imx/imx8qxp-pixel-combiner.c
+++ b/drivers/gpu/drm/bridge/imx/imx8qxp-pixel-combiner.c
@@ -7,6 +7,7 @@
 #include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_graph.h>
diff --git a/drivers/gpu/drm/bridge/imx/imx8qxp-pixel-link.c b/drivers/gpu/drm/bridge/imx/imx8qxp-pixel-link.c
index 305c833f11ee..9e5f2b4dc2e5 100644
--- a/drivers/gpu/drm/bridge/imx/imx8qxp-pixel-link.c
+++ b/drivers/gpu/drm/bridge/imx/imx8qxp-pixel-link.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/firmware/imx/svc/misc.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_graph.h>
diff --git a/drivers/gpu/drm/bridge/imx/imx8qxp-pxl2dpi.c b/drivers/gpu/drm/bridge/imx/imx8qxp-pxl2dpi.c
index 309f47a14cb6..d0fec82f0cf8 100644
--- a/drivers/gpu/drm/bridge/imx/imx8qxp-pxl2dpi.c
+++ b/drivers/gpu/drm/bridge/imx/imx8qxp-pxl2dpi.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/firmware/imx/svc/misc.h>
+#include <linux/media-bus-format.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
diff --git a/drivers/gpu/drm/bridge/ite-it66121.c b/drivers/gpu/drm/bridge/ite-it66121.c
index 448c58e60c11..44278d54d35d 100644
--- a/drivers/gpu/drm/bridge/ite-it66121.c
+++ b/drivers/gpu/drm/bridge/ite-it66121.c
@@ -7,6 +7,7 @@
  *
  */
 
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/device.h>
 #include <linux/interrupt.h>
diff --git a/drivers/gpu/drm/bridge/lontium-lt8912b.c b/drivers/gpu/drm/bridge/lontium-lt8912b.c
index 6a7a6983e796..28bad30dc4e5 100644
--- a/drivers/gpu/drm/bridge/lontium-lt8912b.c
+++ b/drivers/gpu/drm/bridge/lontium-lt8912b.c
@@ -7,6 +7,7 @@
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
+#include <linux/media-bus-format.h>
 #include <linux/regmap.h>
 
 #include <drm/drm_probe_helper.h>
diff --git a/drivers/gpu/drm/bridge/lontium-lt9211.c b/drivers/gpu/drm/bridge/lontium-lt9211.c
index 84d764b4139b..9a3e90427d12 100644
--- a/drivers/gpu/drm/bridge/lontium-lt9211.c
+++ b/drivers/gpu/drm/bridge/lontium-lt9211.c
@@ -14,6 +14,7 @@
 #include <linux/clk.h>
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_graph.h>
diff --git a/drivers/gpu/drm/bridge/lontium-lt9611.c b/drivers/gpu/drm/bridge/lontium-lt9611.c
index 88f2a4f43cfb..585506eae10c 100644
--- a/drivers/gpu/drm/bridge/lontium-lt9611.c
+++ b/drivers/gpu/drm/bridge/lontium-lt9611.c
@@ -6,6 +6,7 @@
 
 #include <linux/gpio/consumer.h>
 #include <linux/interrupt.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of_graph.h>
 #include <linux/platform_device.h>
diff --git a/drivers/gpu/drm/bridge/nwl-dsi.c b/drivers/gpu/drm/bridge/nwl-dsi.c
index d83111be4829..6dc2a4e191d7 100644
--- a/drivers/gpu/drm/bridge/nwl-dsi.c
+++ b/drivers/gpu/drm/bridge/nwl-dsi.c
@@ -12,6 +12,7 @@
 #include <linux/irq.h>
 #include <linux/math64.h>
 #include <linux/mfd/syscon.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/mux/consumer.h>
 #include <linux/of.h>
diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
index 65549fbfdc87..281f8a9ba4fd 100644
--- a/drivers/gpu/drm/bridge/sii902x.c
+++ b/drivers/gpu/drm/bridge/sii902x.c
@@ -15,6 +15,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/i2c-mux.h>
 #include <linux/i2c.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
diff --git a/drivers/gpu/drm/bridge/tc358767.c b/drivers/gpu/drm/bridge/tc358767.c
index 44f32bf483c5..02bd757a8987 100644
--- a/drivers/gpu/drm/bridge/tc358767.c
+++ b/drivers/gpu/drm/bridge/tc358767.c
@@ -24,6 +24,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
 #include <linux/kernel.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
diff --git a/drivers/gpu/drm/bridge/tc358775.c b/drivers/gpu/drm/bridge/tc358775.c
index 7423b1b9d961..f1c6e62b0e1d 100644
--- a/drivers/gpu/drm/bridge/tc358775.c
+++ b/drivers/gpu/drm/bridge/tc358775.c
@@ -13,6 +13,7 @@
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
 #include <linux/kernel.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/regulator/consumer.h>
 #include <linux/slab.h>
diff --git a/drivers/gpu/drm/bridge/ti-dlpc3433.c b/drivers/gpu/drm/bridge/ti-dlpc3433.c
index 06e519798ac5..cef454862b67 100644
--- a/drivers/gpu/drm/bridge/ti-dlpc3433.c
+++ b/drivers/gpu/drm/bridge/ti-dlpc3433.c
@@ -16,6 +16,7 @@
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/regmap.h>
 #include <linux/regulator/consumer.h>
diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
index dc26640e7d9b..14e7aa77e758 100644
--- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
+++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
@@ -29,6 +29,7 @@
 #include <linux/clk.h>
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_graph.h>
diff --git a/drivers/gpu/drm/bridge/ti-tfp410.c b/drivers/gpu/drm/bridge/ti-tfp410.c
index 4541126a45ea..401fe61217c7 100644
--- a/drivers/gpu/drm/bridge/ti-tfp410.c
+++ b/drivers/gpu/drm/bridge/ti-tfp410.c
@@ -6,6 +6,7 @@
 
 #include <linux/gpio/consumer.h>
 #include <linux/i2c.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of_graph.h>
 #include <linux/platform_device.h>
diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
index e275b4ca344b..6abf7a2407e9 100644
--- a/drivers/gpu/drm/drm_bridge.c
+++ b/drivers/gpu/drm/drm_bridge.c
@@ -22,6 +22,7 @@
  */
 
 #include <linux/err.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
 
diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 6d640d2ab4d4..7bbcb999bb75 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -2,6 +2,7 @@
 #include <linux/component.h>
 #include <linux/export.h>
 #include <linux/list.h>
+#include <linux/media-bus-format.h>
 #include <linux/of.h>
 #include <linux/of_graph.h>
 
diff --git a/drivers/gpu/drm/imx/imx-ldb.c b/drivers/gpu/drm/imx/imx-ldb.c
index 8bf885137977..41799011f73b 100644
--- a/drivers/gpu/drm/imx/imx-ldb.c
+++ b/drivers/gpu/drm/imx/imx-ldb.c
@@ -7,6 +7,7 @@
 
 #include <linux/clk.h>
 #include <linux/component.h>
+#include <linux/media-bus-format.h>
 #include <linux/mfd/syscon.h>
 #include <linux/mfd/syscon/imx6q-iomuxc-gpr.h>
 #include <linux/module.h>
diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index e4fd453afa3c..06723b2e9b84 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/component.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/videodev2.h>
diff --git a/drivers/gpu/drm/ingenic/ingenic-drm-drv.c b/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
index 2c559885347a..1ad9b76dbc6b 100644
--- a/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
+++ b/drivers/gpu/drm/ingenic/ingenic-drm-drv.c
@@ -11,6 +11,7 @@
 #include <linux/clk.h>
 #include <linux/dma-mapping.h>
 #include <linux/io.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/of_device.h>
diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index e61cd67b978f..6dafa6116546 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -8,6 +8,7 @@
 #include <linux/component.h>
 #include <linux/interrupt.h>
 #include <linux/kernel.h>
+#include <linux/media-bus-format.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
 #include <linux/of_gpio.h>
diff --git a/drivers/gpu/drm/mxsfb/lcdif_kms.c b/drivers/gpu/drm/mxsfb/lcdif_kms.c
index 4005660b0ced..1bec1279c8b5 100644
--- a/drivers/gpu/drm/mxsfb/lcdif_kms.c
+++ b/drivers/gpu/drm/mxsfb/lcdif_kms.c
@@ -8,6 +8,7 @@
 #include <linux/clk.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
+#include <linux/media-bus-format.h>
 #include <linux/pm_runtime.h>
 #include <linux/spinlock.h>
 
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_kms.c b/drivers/gpu/drm/mxsfb/mxsfb_kms.c
index 7d38769821c3..e38ce5737a5f 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_kms.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_kms.c
@@ -11,6 +11,7 @@
 #include <linux/clk.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
+#include <linux/media-bus-format.h>
 #include <linux/pm_runtime.h>
 #include <linux/spinlock.h>
 
diff --git a/drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c b/drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c
index 145047e19394..a6dc5ab182fa 100644
--- a/drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c
+++ b/drivers/gpu/drm/panel/panel-raspberrypi-touchscreen.c
@@ -45,6 +45,7 @@
 #include <linux/err.h>
 #include <linux/fb.h>
 #include <linux/i2c.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
diff --git a/drivers/gpu/drm/panel/panel-raydium-rm67191.c b/drivers/gpu/drm/panel/panel-raydium-rm67191.c
index 572547d1aa83..4e021a572211 100644
--- a/drivers/gpu/drm/panel/panel-raydium-rm67191.c
+++ b/drivers/gpu/drm/panel/panel-raydium-rm67191.c
@@ -8,6 +8,7 @@
 #include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/regulator/consumer.h>
diff --git a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
index 3939b25e6666..76160e5d43bd 100644
--- a/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
+++ b/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c
@@ -7,6 +7,7 @@
  */
 
 #include <linux/delay.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index b1e211a4b615..ee35f3065f4a 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -23,6 +23,7 @@
 
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
diff --git a/drivers/gpu/drm/pl111/pl111_display.c b/drivers/gpu/drm/pl111/pl111_display.c
index 56275f06a8f3..6263346f24c6 100644
--- a/drivers/gpu/drm/pl111/pl111_display.c
+++ b/drivers/gpu/drm/pl111/pl111_display.c
@@ -12,6 +12,7 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/dma-buf.h>
+#include <linux/media-bus-format.h>
 #include <linux/of_graph.h>
 
 #include <drm/drm_fb_cma_helper.h>
diff --git a/drivers/gpu/drm/rcar-du/rcar_lvds.c b/drivers/gpu/drm/rcar-du/rcar_lvds.c
index 8dbfbbd3cad1..830aac0a2cb4 100644
--- a/drivers/gpu/drm/rcar-du/rcar_lvds.c
+++ b/drivers/gpu/drm/rcar-du/rcar_lvds.c
@@ -10,6 +10,7 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/io.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 16791693b8e6..e4631f515ba4 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -9,6 +9,7 @@
 #include <linux/delay.h>
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
+#include <linux/media-bus-format.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
 #include <linux/of.h>
diff --git a/drivers/gpu/drm/rockchip/rockchip_rgb.c b/drivers/gpu/drm/rockchip/rockchip_rgb.c
index 418eb631d7cd..75eb7cca3d82 100644
--- a/drivers/gpu/drm/rockchip/rockchip_rgb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_rgb.c
@@ -6,6 +6,7 @@
  */
 
 #include <linux/component.h>
+#include <linux/media-bus-format.h>
 #include <linux/of_graph.h>
 
 #include <drm/display/drm_dp_helper.h>
diff --git a/drivers/gpu/drm/stm/ltdc.c b/drivers/gpu/drm/stm/ltdc.c
index cc6547de682f..da7a0a183b27 100644
--- a/drivers/gpu/drm/stm/ltdc.c
+++ b/drivers/gpu/drm/stm/ltdc.c
@@ -12,6 +12,7 @@
 #include <linux/component.h>
 #include <linux/delay.h>
 #include <linux/interrupt.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_graph.h>
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index 2ee158aaeb9e..523a6d787921 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -8,6 +8,7 @@
 
 #include <linux/component.h>
 #include <linux/ioport.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
diff --git a/drivers/gpu/drm/tidss/tidss_dispc.c b/drivers/gpu/drm/tidss/tidss_dispc.c
index 73f591cfb5a0..dd3c6a606ae2 100644
--- a/drivers/gpu/drm/tidss/tidss_dispc.c
+++ b/drivers/gpu/drm/tidss/tidss_dispc.c
@@ -11,6 +11,7 @@
 #include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
+#include <linux/media-bus-format.h>
 #include <linux/module.h>
 #include <linux/mfd/syscon.h>
 #include <linux/of.h>
diff --git a/drivers/gpu/drm/vc4/vc4_dpi.c b/drivers/gpu/drm/vc4/vc4_dpi.c
index 44355b347ff2..ef5e3921062c 100644
--- a/drivers/gpu/drm/vc4/vc4_dpi.c
+++ b/drivers/gpu/drm/vc4/vc4_dpi.c
@@ -20,6 +20,7 @@
 #include <drm/drm_simple_kms_helper.h>
 #include <linux/clk.h>
 #include <linux/component.h>
+#include <linux/media-bus-format.h>
 #include <linux/of_graph.h>
 #include <linux/of_platform.h>
 #include "vc4_drv.h"
diff --git a/include/drm/drm_crtc.h b/include/drm/drm_crtc.h
index 146898220d5b..a583669eb443 100644
--- a/include/drm/drm_crtc.h
+++ b/include/drm/drm_crtc.h
@@ -28,7 +28,6 @@
 #include <linux/i2c.h>
 #include <linux/spinlock.h>
 #include <linux/types.h>
-#include <linux/media-bus-format.h>
 #include <drm/drm_modeset_lock.h>
 #include <drm/drm_mode_object.h>
 #include <drm/drm_modes.h>
-- 
2.35.1

