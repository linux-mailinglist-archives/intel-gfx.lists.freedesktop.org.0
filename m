Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD5B562381
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 21:51:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3610312AEDB;
	Thu, 30 Jun 2022 19:51:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F76412AEE1;
 Thu, 30 Jun 2022 19:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656618684; x=1688154684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uRzs1x2ts43xYquqeYv8Caws/Ioz2tV6EYs5szcSqKk=;
 b=Ma8Tqhh0s9uqxah6MVQe4sJnNMhkzVD+9uLJG5yZvMJAvLpz7o4rBuly
 DqjzjY5UXlTW0T8eZ55Sp5hcKiWl0JzUwD45mhlN2jPfHrn6Utlj8T7bE
 PgCD0eZnHWaCNYADDys9LOc60h4hRGdnW5vOWIK0jC0LyCt6/kQIFUAGF
 LOiL6QeOSBsQIa3edIpME+ySc6Exk0BYrNfjyEut321c554rHT1C95GS5
 570niRJISoUeK+nmZiGmYfFUlq7q2mptSTB8nOxNrVKHJLnuNqp4uOAap
 Sb37vP/dehuyL7N88tFgDSutRJlDgXyGsfoaAwRVz+fP6++61vJQsAbKJ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="262251831"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="262251831"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 12:51:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="648032986"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by fmsmga008.fm.intel.com with SMTP; 30 Jun 2022 12:51:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jun 2022 22:51:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 30 Jun 2022 22:51:12 +0300
Message-Id: <20220630195114.17407-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630195114.17407-1-ville.syrjala@linux.intel.com>
References: <20220630195114.17407-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/4] drm: Remove linux/fb.h from drm_crtc.h
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

drm_crtc.h has no need for linux/fb.h, so don't include it.
Avoids useless rebuilds of the entire universe when
touching linux/fb.h.

Quite a few placs do currently depend on linux/fb.h or other
headers pulled in by it without actually including any of it
directly. All of those need to be fixed up.

v2: Split the vmwgfx change out

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Acked-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c | 2 ++
 drivers/gpu/drm/armada/armada_510.c                  | 1 +
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c     | 1 +
 drivers/gpu/drm/bridge/tc358764.c                    | 1 +
 drivers/gpu/drm/display/drm_dp_helper.c              | 1 +
 drivers/gpu/drm/drm_connector.c                      | 1 +
 drivers/gpu/drm/drm_mipi_dbi.c                       | 1 +
 drivers/gpu/drm/drm_modes.c                          | 1 +
 drivers/gpu/drm/drm_of.c                             | 1 +
 drivers/gpu/drm/exynos/exynos_drm_dpi.c              | 1 +
 drivers/gpu/drm/hisilicon/kirin/dw_drm_dsi.c         | 1 +
 drivers/gpu/drm/i915/display/intel_backlight.c       | 1 +
 drivers/gpu/drm/imx/dcss/dcss-drv.c                  | 1 +
 drivers/gpu/drm/kmb/kmb_dsi.c                        | 1 +
 drivers/gpu/drm/omapdrm/omap_dmm_tiler.c             | 1 +
 drivers/gpu/drm/rcar-du/rcar_du_encoder.c            | 1 +
 drivers/gpu/drm/sti/sti_compositor.c                 | 1 +
 drivers/gpu/drm/sti/sti_gdp.c                        | 1 +
 drivers/gpu/drm/sti/sti_hda.c                        | 1 +
 drivers/gpu/drm/sti/sti_hqvdp.c                      | 1 +
 drivers/gpu/drm/sun4i/sun4i_tcon.h                   | 1 +
 drivers/gpu/drm/tilcdc/tilcdc_panel.c                | 1 +
 drivers/gpu/drm/vc4/vc4_drv.h                        | 1 +
 drivers/gpu/drm/vmwgfx/vmwgfx_fb.c                   | 1 +
 include/drm/drm_crtc.h                               | 1 -
 include/drm/drm_fb_helper.h                          | 1 +
 26 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c b/drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c
index 06c595378dda..4b7d94961527 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_pipeline.c
@@ -4,6 +4,8 @@
  * Author: James.Qian.Wang <james.qian.wang@arm.com>
  *
  */
+#include <linux/of.h>
+
 #include <drm/drm_print.h>
 
 #include "komeda_dev.h"
diff --git a/drivers/gpu/drm/armada/armada_510.c b/drivers/gpu/drm/armada/armada_510.c
index 93d5c0a2d49a..93cd7e1a08ab 100644
--- a/drivers/gpu/drm/armada/armada_510.c
+++ b/drivers/gpu/drm/armada/armada_510.c
@@ -6,6 +6,7 @@
  */
 #include <linux/clk.h>
 #include <linux/io.h>
+#include <linux/of.h>
 #include <drm/drm_probe_helper.h>
 #include "armada_crtc.h"
 #include "armada_drm.h"
diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c
index 43bc709e3523..50fee6a93964 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_output.c
@@ -9,6 +9,7 @@
  */
 
 #include <linux/media-bus-format.h>
+#include <linux/of.h>
 #include <linux/of_graph.h>
 
 #include <drm/drm_bridge.h>
diff --git a/drivers/gpu/drm/bridge/tc358764.c b/drivers/gpu/drm/bridge/tc358764.c
index dca41ed32f8a..fdfb14aca926 100644
--- a/drivers/gpu/drm/bridge/tc358764.c
+++ b/drivers/gpu/drm/bridge/tc358764.c
@@ -9,6 +9,7 @@
 
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/of_graph.h>
 #include <linux/regulator/consumer.h>
diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
index 0c765375640f..e5bab236b3ae 100644
--- a/drivers/gpu/drm/display/drm_dp_helper.c
+++ b/drivers/gpu/drm/display/drm_dp_helper.c
@@ -20,6 +20,7 @@
  * OF THIS SOFTWARE.
  */
 
+#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/errno.h>
 #include <linux/i2c.h>
diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 7b1b61183747..1ab083b35e3b 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -32,6 +32,7 @@
 #include <drm/drm_privacy_screen_consumer.h>
 #include <drm/drm_sysfs.h>
 
+#include <linux/fb.h>
 #include <linux/uaccess.h>
 
 #include "drm_crtc_internal.h"
diff --git a/drivers/gpu/drm/drm_mipi_dbi.c b/drivers/gpu/drm/drm_mipi_dbi.c
index 0eda9dcb0e52..2f61f53d472f 100644
--- a/drivers/gpu/drm/drm_mipi_dbi.c
+++ b/drivers/gpu/drm/drm_mipi_dbi.c
@@ -5,6 +5,7 @@
  * Copyright 2016 Noralf Trønnes
  */
 
+#include <linux/backlight.h>
 #include <linux/debugfs.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
diff --git a/drivers/gpu/drm/drm_modes.c b/drivers/gpu/drm/drm_modes.c
index a2542254233e..304004fb80aa 100644
--- a/drivers/gpu/drm/drm_modes.c
+++ b/drivers/gpu/drm/drm_modes.c
@@ -34,6 +34,7 @@
 #include <linux/list.h>
 #include <linux/list_sort.h>
 #include <linux/export.h>
+#include <linux/fb.h>
 
 #include <video/of_display_timing.h>
 #include <video/of_videomode.h>
diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 2c1ee601f1d8..6d640d2ab4d4 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -2,6 +2,7 @@
 #include <linux/component.h>
 #include <linux/export.h>
 #include <linux/list.h>
+#include <linux/of.h>
 #include <linux/of_graph.h>
 
 #include <drm/drm_bridge.h>
diff --git a/drivers/gpu/drm/exynos/exynos_drm_dpi.c b/drivers/gpu/drm/exynos/exynos_drm_dpi.c
index 741323a2e6c3..378e5381978f 100644
--- a/drivers/gpu/drm/exynos/exynos_drm_dpi.c
+++ b/drivers/gpu/drm/exynos/exynos_drm_dpi.c
@@ -7,6 +7,7 @@
  * Contacts: Andrzej Hajda <a.hajda@samsung.com>
 */
 
+#include <linux/of.h>
 #include <linux/of_graph.h>
 #include <linux/regulator/consumer.h>
 
diff --git a/drivers/gpu/drm/hisilicon/kirin/dw_drm_dsi.c b/drivers/gpu/drm/hisilicon/kirin/dw_drm_dsi.c
index 1d556482bb46..a0d5aa727d58 100644
--- a/drivers/gpu/drm/hisilicon/kirin/dw_drm_dsi.c
+++ b/drivers/gpu/drm/hisilicon/kirin/dw_drm_dsi.c
@@ -14,6 +14,7 @@
 #include <linux/clk.h>
 #include <linux/component.h>
 #include <linux/delay.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
 
diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 68513206a66a..110fc98ec280 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -3,6 +3,7 @@
  * Copyright © 2021 Intel Corporation
  */
 
+#include <linux/backlight.h>
 #include <linux/kernel.h>
 #include <linux/pwm.h>
 #include <linux/string_helpers.h>
diff --git a/drivers/gpu/drm/imx/dcss/dcss-drv.c b/drivers/gpu/drm/imx/dcss/dcss-drv.c
index 24147ee7080e..1c70f70247f6 100644
--- a/drivers/gpu/drm/imx/dcss/dcss-drv.c
+++ b/drivers/gpu/drm/imx/dcss/dcss-drv.c
@@ -5,6 +5,7 @@
 
 #include <linux/module.h>
 #include <linux/kernel.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <drm/drm_module.h>
 #include <drm/drm_of.h>
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.c b/drivers/gpu/drm/kmb/kmb_dsi.c
index f6071882054c..cf7cf0b07541 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.c
+++ b/drivers/gpu/drm/kmb/kmb_dsi.c
@@ -5,6 +5,7 @@
 
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/of.h>
 #include <linux/of_graph.h>
 #include <linux/mfd/syscon.h>
 #include <linux/platform_device.h>
diff --git a/drivers/gpu/drm/omapdrm/omap_dmm_tiler.c b/drivers/gpu/drm/omapdrm/omap_dmm_tiler.c
index 852e78a5f142..ac869acf80ea 100644
--- a/drivers/gpu/drm/omapdrm/omap_dmm_tiler.c
+++ b/drivers/gpu/drm/omapdrm/omap_dmm_tiler.c
@@ -17,6 +17,7 @@
 #include <linux/list.h>
 #include <linux/mm.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/platform_device.h> /* platform_device() */
 #include <linux/sched.h>
 #include <linux/seq_file.h>
diff --git a/drivers/gpu/drm/rcar-du/rcar_du_encoder.c b/drivers/gpu/drm/rcar-du/rcar_du_encoder.c
index 3977aaa1ab5a..abf8022eb884 100644
--- a/drivers/gpu/drm/rcar-du/rcar_du_encoder.c
+++ b/drivers/gpu/drm/rcar-du/rcar_du_encoder.c
@@ -8,6 +8,7 @@
  */
 
 #include <linux/export.h>
+#include <linux/of.h>
 #include <linux/slab.h>
 
 #include <drm/drm_bridge.h>
diff --git a/drivers/gpu/drm/sti/sti_compositor.c b/drivers/gpu/drm/sti/sti_compositor.c
index 9caaf3ccfabe..142a8e1b4436 100644
--- a/drivers/gpu/drm/sti/sti_compositor.c
+++ b/drivers/gpu/drm/sti/sti_compositor.c
@@ -9,6 +9,7 @@
 #include <linux/component.h>
 #include <linux/io.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/reset.h>
 
diff --git a/drivers/gpu/drm/sti/sti_gdp.c b/drivers/gpu/drm/sti/sti_gdp.c
index a1f78d52fb33..af783f599306 100644
--- a/drivers/gpu/drm/sti/sti_gdp.c
+++ b/drivers/gpu/drm/sti/sti_gdp.c
@@ -7,6 +7,7 @@
  */
 
 #include <linux/dma-mapping.h>
+#include <linux/of.h>
 #include <linux/seq_file.h>
 
 #include <drm/drm_atomic.h>
diff --git a/drivers/gpu/drm/sti/sti_hda.c b/drivers/gpu/drm/sti/sti_hda.c
index 03f3377f918c..03cc401ed593 100644
--- a/drivers/gpu/drm/sti/sti_hda.c
+++ b/drivers/gpu/drm/sti/sti_hda.c
@@ -7,6 +7,7 @@
 #include <linux/clk.h>
 #include <linux/component.h>
 #include <linux/io.h>
+#include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/seq_file.h>
diff --git a/drivers/gpu/drm/sti/sti_hqvdp.c b/drivers/gpu/drm/sti/sti_hqvdp.c
index b5ae5d217bc0..271982080437 100644
--- a/drivers/gpu/drm/sti/sti_hqvdp.c
+++ b/drivers/gpu/drm/sti/sti_hqvdp.c
@@ -10,6 +10,7 @@
 #include <linux/firmware.h>
 #include <linux/io.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/reset.h>
 #include <linux/seq_file.h>
 
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/sun4i_tcon.h
index e624f6977eb8..fa23aa23fe4a 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
@@ -14,6 +14,7 @@
 
 #include <linux/kernel.h>
 #include <linux/list.h>
+#include <linux/mod_devicetable.h>
 #include <linux/reset.h>
 
 #define SUN4I_TCON_GCTL_REG			0x0
diff --git a/drivers/gpu/drm/tilcdc/tilcdc_panel.c b/drivers/gpu/drm/tilcdc/tilcdc_panel.c
index 42357808eaf2..2729e16bc053 100644
--- a/drivers/gpu/drm/tilcdc/tilcdc_panel.c
+++ b/drivers/gpu/drm/tilcdc/tilcdc_panel.c
@@ -4,6 +4,7 @@
  * Author: Rob Clark <robdclark@gmail.com>
  */
 
+#include <linux/backlight.h>
 #include <linux/gpio/consumer.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 93fd55b9e99e..1beb96b77b8c 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -6,6 +6,7 @@
 #define _VC4_DRV_H_
 
 #include <linux/delay.h>
+#include <linux/of.h>
 #include <linux/refcount.h>
 #include <linux/uaccess.h>
 
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c b/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c
index 0ba9739f406d..5b85b477e4c6 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_fb.c
@@ -26,6 +26,7 @@
  *
  **************************************************************************/
 
+#include <linux/fb.h>
 #include <linux/pci.h>
 
 #include <drm/drm_fourcc.h>
diff --git a/include/drm/drm_crtc.h b/include/drm/drm_crtc.h
index 1cbd95689f33..146898220d5b 100644
--- a/include/drm/drm_crtc.h
+++ b/include/drm/drm_crtc.h
@@ -28,7 +28,6 @@
 #include <linux/i2c.h>
 #include <linux/spinlock.h>
 #include <linux/types.h>
-#include <linux/fb.h>
 #include <linux/media-bus-format.h>
 #include <drm/drm_modeset_lock.h>
 #include <drm/drm_mode_object.h>
diff --git a/include/drm/drm_fb_helper.h b/include/drm/drm_fb_helper.h
index 329607ca65c0..fddd0d1af689 100644
--- a/include/drm/drm_fb_helper.h
+++ b/include/drm/drm_fb_helper.h
@@ -35,6 +35,7 @@ struct drm_fb_helper;
 #include <drm/drm_client.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
+#include <linux/fb.h>
 #include <linux/kgdb.h>
 
 enum mode_set_atomic {
-- 
2.35.1

