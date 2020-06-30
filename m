Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B2520FEFA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:30:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC8F56E44F;
	Tue, 30 Jun 2020 21:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 061F36E33F;
 Tue, 30 Jun 2020 21:28:50 +0000 (UTC)
IronPort-SDR: +ei2KblC75qQLu9kVcZwAJvUE1vWrQ5bYXqsYd/VuvZQL4FyUwbxY8QNZqOjNZD/I2CTAdtOub
 PLDxb3E/bTgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="133846901"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="133846901"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:50 -0700
IronPort-SDR: D0yPWctphYqbqfFHbtxNrBroyqdMH7dVmPJcsLqroUkFc4YfO6RljzAj8/7+SBFdXIcJxWN8c7
 2/cFZUxNiT0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066771"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:49 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:27:50 -0700
Message-Id: <1593552491-23698-39-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 38/59] drm/kmb: Mipi DPHY initialization changes
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
Cc: daniel.vetter@intel.com, intel-gfx@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix test_mode_send and dphy_wait_fsm for 2-lane MIPI

- Fix test_mode_send when sending normal mode test codes
- Change dphy_wait_fsm to check for IDLE status rather than LOCK
  status for 2-lane MIPI

Signed-off-by: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
Signed-off-by: Edmund Dea <edmund.j.dea@intel.com>
---
 drivers/gpu/drm/kmb/kmb_crtc.c  |  23 +-
 drivers/gpu/drm/kmb/kmb_drv.c   |  90 ++--
 drivers/gpu/drm/kmb/kmb_drv.h   |  23 +-
 drivers/gpu/drm/kmb/kmb_dsi.c   | 904 +++++++++++++++++++++++++++++-----------
 drivers/gpu/drm/kmb/kmb_dsi.h   |   2 +-
 drivers/gpu/drm/kmb/kmb_plane.c |  59 ++-
 drivers/gpu/drm/kmb/kmb_regs.h  |  34 +-
 7 files changed, 840 insertions(+), 295 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_crtc.c b/drivers/gpu/drm/kmb/kmb_crtc.c
index 053da17..01ad82e 100644
--- a/drivers/gpu/drm/kmb/kmb_crtc.c
+++ b/drivers/gpu/drm/kmb/kmb_crtc.c
@@ -41,6 +41,7 @@
 #include "kmb_drv.h"
 #include "kmb_plane.h"
 #include "kmb_regs.h"
+#include "kmb_dsi.h"
 
 static void kmb_crtc_cleanup(struct drm_crtc *crtc)
 {
@@ -93,23 +94,33 @@ static const struct drm_crtc_funcs kmb_crtc_funcs = {
 
 static void kmb_crtc_mode_set_nofb(struct drm_crtc *crtc)
 {
-	struct drm_display_mode *m = &crtc->state->adjusted_mode;
 	struct drm_device *dev = crtc->dev;
+#ifdef LCD_TEST
+	struct drm_display_mode *m = &crtc->state->adjusted_mode;
 	struct videomode vm;
 	int vsync_start_offset;
 	int vsync_end_offset;
 	unsigned int ctrl = 0;
-
+#endif
+	/* initialize mipi */
+	kmb_dsi_hw_init(dev);
+#ifdef LCD_TEST
 	vm.vfront_porch = m->crtc_vsync_start - m->crtc_vdisplay;
 	vm.vback_porch = m->crtc_vtotal - m->crtc_vsync_end;
 	vm.vsync_len = m->crtc_vsync_end - m->crtc_vsync_start;
-	vm.hfront_porch = m->crtc_hsync_start - m->crtc_hdisplay;
+	//vm.hfront_porch = m->crtc_hsync_start - m->crtc_hdisplay;
+	vm.hfront_porch = 0;
 	vm.hback_porch = m->crtc_htotal - m->crtc_hsync_end;
 	vm.hsync_len = m->crtc_hsync_end - m->crtc_hsync_start;
 
 	vsync_start_offset = m->crtc_vsync_start - m->crtc_hsync_start;
 	vsync_end_offset = m->crtc_vsync_end - m->crtc_hsync_end;
 
+	DRM_INFO("%s : %dactive height= %d vbp=%d vfp=%d vsync-w=%d h-active=%d h-bp=%d h-fp=%d hysnc-l=%d\n",
+			__func__, __LINE__, m->crtc_vdisplay,
+			vm.vback_porch, vm.vfront_porch,
+			vm.vsync_len, m->crtc_hdisplay,
+			vm.hback_porch, vm.hfront_porch, vm.hsync_len);
 	kmb_write_lcd(dev->dev_private, LCD_V_ACTIVEHEIGHT,
 			m->crtc_vdisplay - 1);
 	kmb_write_lcd(dev->dev_private, LCD_V_BACKPORCH, vm.vback_porch - 1);
@@ -144,7 +155,7 @@ static void kmb_crtc_mode_set_nofb(struct drm_crtc *crtc)
 	kmb_write_lcd(dev->dev_private, LCD_CONTROL, ctrl);
 
 	kmb_write_lcd(dev->dev_private, LCD_TIMING_GEN_TRIG, ENABLE);
-
+#endif
 	/* TBD */
 	/* set clocks here */
 }
@@ -156,7 +167,7 @@ static void kmb_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	clk_prepare_enable(lcd->clk);
 	kmb_crtc_mode_set_nofb(crtc);
-	drm_crtc_vblank_on(crtc);
+//	drm_crtc_vblank_on(crtc);
 }
 
 static void kmb_crtc_atomic_disable(struct drm_crtc *crtc,
@@ -167,7 +178,7 @@ static void kmb_crtc_atomic_disable(struct drm_crtc *crtc,
 	/* always disable planes on the CRTC that is being turned off */
 	drm_atomic_helper_disable_planes_on_crtc(old_state, false);
 
-	drm_crtc_vblank_off(crtc);
+//	drm_crtc_vblank_off(crtc);
 	clk_disable_unprepare(lcd->clk);
 }
 
diff --git a/drivers/gpu/drm/kmb/kmb_drv.c b/drivers/gpu/drm/kmb/kmb_drv.c
index 1fc0b2e..b5c8711 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.c
+++ b/drivers/gpu/drm/kmb/kmb_drv.c
@@ -34,6 +34,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/clk.h>
 #include <drm/drm.h>
+#include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_probe_helper.h>
@@ -57,27 +58,27 @@ static irqreturn_t kmb_isr(int irq, void *arg);
 static struct clk *clk_lcd;
 static struct clk *clk_mipi;
 static struct clk *clk_msscam;
+static struct clk *clk_pll0out0;
 static struct clk *clk_mipi_ecfg;
 static struct clk *clk_mipi_cfg;
 
 struct drm_bridge *adv_bridge;
 
-static int kmb_display_clk_enable(void)
+int kmb_display_clk_enable(void)
 {
 	int ret = 0;
-
+#ifdef LCD_TEST
 	ret = clk_prepare_enable(clk_lcd);
 	if (ret) {
 		DRM_ERROR("Failed to enable LCD clock: %d\n", ret);
 		return ret;
 	}
-
+#endif
 	ret = clk_prepare_enable(clk_mipi);
 	if (ret) {
 		DRM_ERROR("Failed to enable MIPI clock: %d\n", ret);
 		return ret;
 	}
-
 /*	ret = clk_prepare_enable(clk_msscam);
 	if (ret) {
 		DRM_ERROR("Failed to enable MSSCAM clock: %d\n", ret);
@@ -178,19 +179,47 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 		iounmap(dev_p->mipi_mmio);
 		return -ENOMEM;
 	}
+/*testing*/
+	if (!request_mem_region(CPR_BASE_ADDR, 100, "cpr")) {
+		DRM_ERROR("failed to reserve %s registers\n", "cpr");
+		return -ENOMEM;
+	}
+	dev_p->cpr_mmio = ioremap_cache(CPR_BASE_ADDR, 0x100);
+	if (!dev_p->cpr_mmio) {
+		DRM_ERROR("failed to ioremap %s registers\n", "CPR");
+		release_mem_region(CPR_BASE_ADDR, 100);
+		return -ENOMEM;
+	}
 
+	if (IS_ERR(dev_p->msscam_mmio)) {
+		DRM_ERROR("failed to map MSSCAM registers\n");
+		iounmap(dev_p->lcd_mmio);
+		iounmap(dev_p->mipi_mmio);
+		return -ENOMEM;
+	}
+
+
+
+#define KMB_CLOCKS
+#ifdef KMB_CLOCKS
 	/* Enable display clocks*/
 	clk_lcd = clk_get(&pdev->dev, "clk_lcd");
 	if (IS_ERR(clk_lcd)) {
 		DRM_ERROR("clk_get() failed clk_lcd\n");
 		goto setup_fail;
 	}
-
 	clk_mipi = clk_get(&pdev->dev, "clk_mipi");
 	if (IS_ERR(clk_mipi)) {
 		DRM_ERROR("clk_get() failed clk_mipi\n");
 		goto setup_fail;
 	}
+	clk_pll0out0 = clk_get(&pdev->dev, "clk_pll0_out0");
+	if (IS_ERR(clk_pll0out0))
+		DRM_ERROR("clk_get() failed clk_pll0_out0\n");
+
+	if (clk_pll0out0)
+		DRM_INFO("Get clk_pll0out0 = %ld\n",
+				clk_get_rate(clk_pll0out0));
 
 	clk_mipi_ecfg = clk_get(&pdev->dev, "clk_mipi_ecfg");
 	if (IS_ERR(clk_mipi_ecfg)) {
@@ -204,8 +233,7 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 		goto setup_fail;
 	}
 
-	ret = kmb_display_clk_enable();
-
+#ifdef LCD_TEST
 	/* Set LCD clock to 200 Mhz*/
 	DRM_INFO("Get clk_lcd before set = %ld\n", clk_get_rate(clk_lcd));
 	ret = clk_set_rate(clk_lcd, KMB_LCD_DEFAULT_CLK);
@@ -216,10 +244,11 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 	DRM_INFO("Setting LCD clock to %d Mhz ret = %d\n",
 			KMB_LCD_DEFAULT_CLK/1000000, ret);
 	DRM_INFO("Get clk_lcd after set = %ld\n", clk_get_rate(clk_lcd));
-
+#endif
 	/* Set MIPI clock to 24 Mhz*/
 	DRM_INFO("Get clk_mipi before set = %ld\n", clk_get_rate(clk_mipi));
 	ret = clk_set_rate(clk_mipi, KMB_MIPI_DEFAULT_CLK);
+	DRM_INFO("Get clk_mipi after set = %ld\n", clk_get_rate(clk_mipi));
 	if (clk_get_rate(clk_mipi) != KMB_MIPI_DEFAULT_CLK) {
 		DRM_ERROR("failed to set to clk_mipi to %d\n",
 				KMB_MIPI_DEFAULT_CLK);
@@ -230,10 +259,10 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 	DRM_INFO("Get clk_mipi after set = %ld\n", clk_get_rate(clk_mipi));
 
 	clk = clk_get_rate(clk_mipi_ecfg);
-	if (clk != KMB_MIPI_DEFAULT_CLK) {
+	if (clk != KMB_MIPI_DEFAULT_CFG_CLK) {
 		/* Set MIPI_ECFG clock to 24 Mhz*/
 		DRM_INFO("Get clk_mipi_ecfg before set = %ld\n", clk);
-		ret = clk_set_rate(clk_mipi_ecfg, KMB_MIPI_DEFAULT_CLK);
+		ret = clk_set_rate(clk_mipi_ecfg, KMB_MIPI_DEFAULT_CFG_CLK);
 		clk = clk_get_rate(clk_mipi_ecfg);
 		if (clk != KMB_MIPI_DEFAULT_CLK) {
 			DRM_ERROR("failed to set to clk_mipi_ecfg to %d\n",
@@ -242,27 +271,29 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 		}
 		DRM_INFO("Setting MIPI_ECFG clock tp %d Mhz ret = %d\n",
 				KMB_MIPI_DEFAULT_CLK/1000000, ret);
-		DRM_INFO("Get clk_mipi_ecfg after set = %ld\n", clk);
 	}
 
 	clk = clk_get_rate(clk_mipi_cfg);
-	if (clk != KMB_MIPI_DEFAULT_CLK) {
+	if (clk != KMB_MIPI_DEFAULT_CFG_CLK) {
 		/* Set MIPI_CFG clock to 24 Mhz*/
 		DRM_INFO("Get clk_mipi_cfg before set = %ld\n", clk);
 		ret = clk_set_rate(clk_mipi_cfg, 24000000);
 		clk = clk_get_rate(clk_mipi_cfg);
-		if (clk != KMB_MIPI_DEFAULT_CLK) {
+		if (clk != KMB_MIPI_DEFAULT_CFG_CLK) {
 			DRM_ERROR("failed to set to clk_mipi_cfg to %d\n",
-					KMB_MIPI_DEFAULT_CLK);
+					KMB_MIPI_DEFAULT_CFG_CLK);
 			goto setup_fail;
 		}
 		DRM_INFO("Setting MIPI_CFG clock tp 24Mhz ret = %d\n", ret);
 		DRM_INFO("Get clk_mipi_cfg after set = %ld\n", clk);
 	}
 
+	ret = kmb_display_clk_enable();
+
 	/* enable MSS_CAM_CLK_CTRL for MIPI TX and LCD */
-	kmb_set_bitmask_msscam(dev_p, MSS_CAM_CLK_CTRL, 0xfff);
-	kmb_set_bitmask_msscam(dev_p, MSS_CAM_RSTN_CTRL, 0xfff);
+	kmb_set_bitmask_msscam(dev_p, MSS_CAM_CLK_CTRL, 0x1fff);
+	kmb_set_bitmask_msscam(dev_p, MSS_CAM_RSTN_CTRL, 0xffffffff);
+#endif //KMB_CLOCKS
 #ifdef WIP
 	/* Register irqs here - section 17.3 in databook
 	 * lists LCD at 79 and 82 for MIPI under MSS CPU -
@@ -312,6 +343,7 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 		goto setup_fail;
 	}
 
+
 	/* Initialize MIPI DSI */
 	ret = kmb_dsi_init(drm, adv_bridge);
 	if (ret) {
@@ -340,9 +372,17 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 	return ret;
 }
 
+int kmb_atomic_helper_check(struct drm_device *dev,
+		struct drm_atomic_state *state)
+{
+	if (!state)
+		return 0;
+	return drm_atomic_helper_check(dev, state);
+}
+
 static const struct drm_mode_config_funcs kmb_mode_config_funcs = {
 	.fb_create = drm_gem_fb_create,
-	.atomic_check = drm_atomic_helper_check,
+	.atomic_check = kmb_atomic_helper_check,
 	.atomic_commit = drm_atomic_helper_commit,
 };
 
@@ -503,13 +543,14 @@ static int kmb_probe(struct platform_device *pdev)
 	 *  afterwards and the bridge can be successfully attached.
 	 */
 	adv_bridge =  kmb_dsi_host_bridge_init(dev);
+#ifndef FCCTEST
 	if (adv_bridge == ERR_PTR(-EPROBE_DEFER))
 		return -EPROBE_DEFER;
 	else if (IS_ERR(adv_bridge)) {
 		DRM_ERROR("probe failed to initialize DSI host bridge\n");
 		return PTR_ERR(adv_bridge);
 	}
-
+#endif
 	/* Create DRM device */
 	drm = drm_dev_alloc(&kmb_driver, dev);
 	if (IS_ERR(drm))
@@ -534,13 +575,6 @@ static int kmb_probe(struct platform_device *pdev)
 
 	/* Set the CRTC's port so that the encoder component can find it */
 	lcd->crtc.port = of_graph_get_port_by_id(dev->of_node, 0);
-
-	ret = drm_vblank_init(drm, drm->mode_config.num_crtc);
-	if (ret < 0) {
-		DRM_ERROR("failed to initialize vblank\n");
-		goto err_vblank;
-	}
-
 	drm_mode_config_reset(drm);
 	drm_kms_helper_poll_init(drm);
 
@@ -550,13 +584,13 @@ static int kmb_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_register;
 
-	drm_fbdev_generic_setup(drm, 32);
-
+#ifndef FCCTEST
+//	drm_fbdev_generic_setup(drm, 32);
+#endif
 	return 0;
 
 err_register:
 	drm_kms_helper_poll_fini(drm);
-err_vblank:
 	pm_runtime_disable(drm->dev);
 err_free:
 	drm_mode_config_cleanup(drm);
diff --git a/drivers/gpu/drm/kmb/kmb_drv.h b/drivers/gpu/drm/kmb/kmb_drv.h
index 1511cd1..58bb967 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.h
+++ b/drivers/gpu/drm/kmb/kmb_drv.h
@@ -28,16 +28,19 @@
 
 #include "kmb_regs.h"
 
+/*#define FCCTEST*/
 #define KMB_MAX_WIDTH			1920 /*max width in pixels */
 #define KMB_MAX_HEIGHT			1080 /*max height in pixels */
-#define KMB_LCD_DEFAULT_CLK		24000000
+#define KMB_LCD_DEFAULT_CLK		250000000
 #define KMB_MIPI_DEFAULT_CLK		24000000
+#define KMB_MIPI_DEFAULT_CFG_CLK	24000000
 
 struct kmb_drm_private {
 	struct drm_device		drm;
 	void __iomem			*lcd_mmio;
 	void __iomem			*mipi_mmio;
 	void __iomem			*msscam_mmio;
+	void __iomem			*cpr_mmio;
 	unsigned char			n_layers;
 	struct clk			*clk;
 	struct drm_crtc			crtc;
@@ -88,12 +91,23 @@ static inline void kmb_write_bits(struct kmb_drm_private *lcd,
 	reg_val |= (value << offset);
 	writel(reg_val, lcd->mmio + reg);
 }
+static inline void kmb_write(unsigned int reg, u32 value)
+{
+	writel(value, reg);
+}
+
+static inline u32 kmb_read(unsigned int reg)
+{
+	return readl(reg);
+}
 #endif
 
 static inline void kmb_write_lcd(struct kmb_drm_private *dev_p,
 		unsigned int reg, u32 value)
 {
+#ifdef LCD_TEST
 	writel(value, (dev_p->lcd_mmio + reg));
+#endif
 }
 
 static inline void kmb_write_mipi(struct kmb_drm_private *dev_p,
@@ -124,23 +138,30 @@ static inline void kmb_set_bitmask_msscam(struct kmb_drm_private *dev_p,
 
 static inline u32 kmb_read_lcd(struct kmb_drm_private *dev_p, unsigned int reg)
 {
+#ifdef LCD_TEST
 	return readl(dev_p->lcd_mmio + reg);
+#endif
+	return 0;
 }
 
 static inline void kmb_set_bitmask_lcd(struct kmb_drm_private *dev_p,
 		unsigned int reg, u32 mask)
 {
+#ifdef LCD_TEST
 	u32 reg_val = kmb_read_lcd(dev_p, reg);
 
 	kmb_write_lcd(dev_p, reg, (reg_val | mask));
+#endif
 }
 
 static inline void kmb_clr_bitmask_lcd(struct kmb_drm_private *dev_p,
 		unsigned int reg, u32 mask)
 {
+#ifdef LCD_TEST
 	u32 reg_val = kmb_read_lcd(dev_p, reg);
 
 	kmb_write_lcd(dev_p, reg, (reg_val & (~mask)));
+#endif
 }
 
 static inline u32 kmb_read_mipi(struct kmb_drm_private *dev_p, unsigned int reg)
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.c b/drivers/gpu/drm/kmb/kmb_dsi.c
index 40fe552..5f7683e 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.c
+++ b/drivers/gpu/drm/kmb/kmb_dsi.c
@@ -35,22 +35,32 @@
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 #include <linux/gpio/consumer.h>
+#include <linux/delay.h>
 #include "kmb_drv.h"
 #include "kmb_regs.h"
 #include "kmb_dsi.h"
+#include <linux/fs.h>
+#include <linux/buffer_head.h>
 
-#define IMG_WIDTH_PX      1920
-#define IMG_HEIGHT_LINES  1080
+static int hw_initialized;
+#define IMAGE_PATH "/home/root/1280x720.pnm"
+#define MIPI_TX_TEST_PATTERN_GENERATION
+
+#define IMG_HEIGHT_LINES  720
+#define IMG_WIDTH_PX      1280
 #define LCD_BYTESPP       1
 
 /*MIPI TX CFG*/
-#define MIPI_TX_ACTIVE_LANES        4
-#define MIPI_TX_LANE_DATA_RATE_MBPS 888
+#define MIPI_TX_ACTIVE_LANES  2
+//#define MIPI_TX_LANE_DATA_RATE_MBPS 1782
+#define MIPI_TX_LANE_DATA_RATE_MBPS 891
+//#define MIPI_TX_LANE_DATA_RATE_MBPS 80
 #define MIPI_TX_REF_CLK_KHZ         24000
 #define MIPI_TX_CFG_CLK_KHZ         24000
 
 /*DPHY Tx test codes*/
 #define TEST_CODE_FSM_CONTROL				0x03
+#define TEST_CODE_MULTIPLE_PHY_CTRL			0x0C
 #define TEST_CODE_PLL_PROPORTIONAL_CHARGE_PUMP_CTRL	0x0E
 #define TEST_CODE_PLL_INTEGRAL_CHARGE_PUMP_CTRL		0x0F
 #define TEST_CODE_PLL_VCO_CTRL				0x12
@@ -64,6 +74,7 @@
 #define TEST_CODE_PLL_OUTPUT_CLK_SEL			0x19
 #define   PLL_N_OVR_EN					(1 << 4)
 #define   PLL_M_OVR_EN					(1 << 5)
+#define TEST_CODE_VOD_LEVEL				0x24
 #define TEST_CODE_PLL_CHARGE_PUMP_BIAS			0x1C
 #define TEST_CODE_PLL_LOCK_DETECTOR			0x1D
 #define TEST_CODE_HS_FREQ_RANGE_CFG			0x44
@@ -79,6 +90,7 @@
 #define PLL_M_MAX	623
 #define PLL_FVCO_MAX	1250
 
+#define TIMEOUT		600
 static struct mipi_dsi_host *dsi_host;
 static struct mipi_dsi_device *dsi_device;
 
@@ -91,8 +103,9 @@ struct mipi_tx_frame_section_cfg mipi_tx_frame0_sect_cfg = {
 	.width_pixels = IMG_WIDTH_PX,
 	.height_lines = IMG_HEIGHT_LINES,
 	.data_type = DSI_LP_DT_PPS_RGB888_24B,
-	.data_mode = MIPI_DATA_MODE1,
-	.dma_packed = 0
+	//.data_mode = MIPI_DATA_MODE1,
+	.data_mode = MIPI_DATA_MODE0,
+	.dma_packed = 1
 };
 
 struct mipi_tx_frame_cfg mipitx_frame0_cfg = {
@@ -101,11 +114,11 @@ struct mipi_tx_frame_cfg mipitx_frame0_cfg = {
 	.sections[2] = NULL,
 	.sections[3] = NULL,
 	.vsync_width = 5,
-	.v_backporch = 36,
-	.v_frontporch = 4,
-	.hsync_width = 44,
-	.h_backporch = 148,
-	.h_frontporch = 88
+	.v_backporch = 20,
+	.v_frontporch = 5,
+	.hsync_width = 40,
+	.h_backporch = 220,
+	.h_frontporch = 110,
 };
 
 struct mipi_tx_dsi_cfg mipitx_dsi_cfg = {
@@ -128,7 +141,8 @@ struct mipi_ctrl_cfg mipi_tx_init_cfg = {
 	.lane_rate_mbps = MIPI_TX_LANE_DATA_RATE_MBPS,
 	.ref_clk_khz = MIPI_TX_REF_CLK_KHZ,
 	.cfg_clk_khz = MIPI_TX_CFG_CLK_KHZ,
-	.data_if = MIPI_IF_PARALLEL,
+//      .data_if = MIPI_IF_PARALLEL,
+	.data_if = MIPI_IF_DMA,
 	.tx_ctrl_cfg = {
 			.frames[0] = &mipitx_frame0_cfg,
 			.frames[1] = NULL,
@@ -138,16 +152,20 @@ struct mipi_ctrl_cfg mipi_tx_init_cfg = {
 			.line_sync_pkt_en = 0,
 			.line_counter_active = 0,
 			.frame_counter_active = 0,
+			.tx_always_use_hact = 1,
+			.tx_hact_wait_stop = 1,
 			}
 
 };
 
-typedef struct{
+u8 *iBuf;
+
+struct mipi_hs_freq_range_cfg {
 	uint16_t default_bit_rate_mbps;
 	uint8_t hsfreqrange_code;
-} mipi_hs_freq_range_cfg;
+};
 
-static mipi_hs_freq_range_cfg
+static struct mipi_hs_freq_range_cfg
 	mipi_hs_freq_range[MIPI_DPHY_DEFAULT_BIT_RATES] = {
 	{.default_bit_rate_mbps = 80, .hsfreqrange_code = 0x00},
 	{.default_bit_rate_mbps = 90, .hsfreqrange_code = 0x10},
@@ -230,8 +248,8 @@ static int kmb_dsi_get_modes(struct drm_connector *connector)
 	int num_modes = 0;
 
 	num_modes = drm_add_modes_noedid(connector,
-			connector->dev->mode_config.max_width,
-			connector->dev->mode_config.max_height);
+				 connector->dev->mode_config.max_width,
+				 connector->dev->mode_config.max_height);
 	return num_modes;
 }
 
@@ -264,6 +282,7 @@ drm_connector_helper_funcs kmb_dsi_connector_helper_funcs = {
 static const struct drm_connector_funcs kmb_dsi_connector_funcs = {
 	.destroy = kmb_dsi_connector_destroy,
 	.fill_modes = drm_helper_probe_single_connector_modes,
+	.reset = drm_atomic_helper_connector_reset,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 };
@@ -293,10 +312,11 @@ static const struct mipi_dsi_host_ops kmb_dsi_host_ops = {
 };
 
 static struct kmb_dsi_host *kmb_dsi_host_init(struct drm_device *drm,
-		struct kmb_dsi *kmb_dsi)
+					      struct kmb_dsi *kmb_dsi)
 {
 	struct kmb_dsi_host *host;
 
+	DRM_INFO("%s : %d\n", __func__, __LINE__);
 	host = kzalloc(sizeof(*host), GFP_KERNEL);
 	if (!host)
 		return NULL;
@@ -336,7 +356,7 @@ struct drm_bridge *kmb_dsi_host_bridge_init(struct device *dev)
 		dsi_host->dev = dev;
 		mipi_dsi_host_register(dsi_host);
 	}
-
+#ifndef FCCTEST
 	/* find ADV7535 node and initialize it */
 	DRM_INFO("trying to get bridge info %pOF\n", dev->of_node);
 	encoder_node = of_parse_phandle(dev->of_node, "encoder-slave", 0);
@@ -353,7 +373,7 @@ struct drm_bridge *kmb_dsi_host_bridge_init(struct device *dev)
 		DRM_INFO("wait for external bridge driver DT\n");
 		return ERR_PTR(-EPROBE_DEFER);
 	}
-
+#endif
 	return bridge;
 }
 
@@ -363,7 +383,7 @@ void dsi_host_unregister(void)
 }
 
 u32 mipi_get_datatype_params(u32 data_type, u32 data_mode,
-		struct mipi_data_type_params *params)
+			     struct mipi_data_type_params *params)
 {
 	struct mipi_data_type_params data_type_parameters;
 
@@ -481,17 +501,18 @@ static u32 compute_unpacked_bytes(u32 wc, u8 bits_per_pclk)
 }
 
 static u32 mipi_tx_fg_section_cfg_regs(struct kmb_drm_private *dev_p,
-		u8 frame_id,
-		u8 section, u32 height_lines,
-		u32 unpacked_bytes, struct mipi_tx_frame_sect_phcfg *ph_cfg)
+				       u8 frame_id,
+				       u8 section, u32 height_lines,
+				       u32 unpacked_bytes,
+				       struct mipi_tx_frame_sect_phcfg *ph_cfg)
 {
 	u32 cfg = 0;
 	u32 ctrl_no = MIPI_CTRL6;
 	u32 reg_adr;
 
-	/*frame section packet header*/
-	/*word count*/
-	cfg = (ph_cfg->wc & MIPI_TX_SECT_WC_MASK) << 0; /* bits [15:0]*/
+	/*frame section packet header */
+	/*word count */
+	cfg = (ph_cfg->wc & MIPI_TX_SECT_WC_MASK) << 0;	/* bits [15:0] */
 	/*data type */
 	cfg |= ((ph_cfg->data_type & MIPI_TX_SECT_DT_MASK)
 		<< MIPI_TX_SECT_DT_SHIFT);	/* bits [21:16] */
@@ -503,9 +524,9 @@ static u32 mipi_tx_fg_section_cfg_regs(struct kmb_drm_private *dev_p,
 		<< MIPI_TX_SECT_DM_SHIFT);	/* bits [24:25] */
 	cfg |= MIPI_TX_SECT_DMA_PACKED;
 	DRM_INFO("%s : %d ctrl=%d frame_id=%d section=%d cfg=%x\n",
-			__func__, __LINE__, ctrl_no, frame_id, section, cfg);
+		 __func__, __LINE__, ctrl_no, frame_id, section, cfg);
 	kmb_write_mipi(dev_p, (MIPI_TXm_HS_FGn_SECTo_PH(ctrl_no, frame_id,
-					section)), cfg);
+							section)), cfg);
 	/*unpacked bytes */
 	/*there are 4 frame generators and each fg has 4 sections
 	 *there are 2 registers for unpacked bytes -
@@ -514,9 +535,9 @@ static u32 mipi_tx_fg_section_cfg_regs(struct kmb_drm_private *dev_p,
 	 *REG_UNPACKED_BYTES1: [15:0]-BYTES2, [31:16]-BYTES3
 	 */
 	reg_adr = MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(ctrl_no, frame_id)
-	+ (section/2)*4;
-	kmb_write_bits_mipi(dev_p, reg_adr, (section % 2)*16, 16,
-			unpacked_bytes);
+	    + (section / 2) * 4;
+	kmb_write_bits_mipi(dev_p, reg_adr, (section % 2) * 16, 16,
+			    unpacked_bytes);
 
 	/* line config */
 	reg_adr = MIPI_TXm_HS_FGn_SECTo_LINE_CFG(ctrl_no, frame_id, section);
@@ -525,9 +546,9 @@ static u32 mipi_tx_fg_section_cfg_regs(struct kmb_drm_private *dev_p,
 }
 
 static u32 mipi_tx_fg_section_cfg(struct kmb_drm_private *dev_p, u8 frame_id,
-		u8 section,
-		struct mipi_tx_frame_section_cfg *frame_scfg,
-		u32 *bits_per_pclk, u32 *wc)
+				  u8 section,
+				  struct mipi_tx_frame_section_cfg *frame_scfg,
+				  u32 *bits_per_pclk, u32 *wc)
 {
 	u32 ret = 0;
 	u32 unpacked_bytes;
@@ -535,8 +556,8 @@ static u32 mipi_tx_fg_section_cfg(struct kmb_drm_private *dev_p, u8 frame_id,
 	struct mipi_tx_frame_sect_phcfg ph_cfg;
 
 	ret = mipi_get_datatype_params(frame_scfg->data_type,
-			frame_scfg->data_mode,
-			&data_type_parameters);
+				       frame_scfg->data_mode,
+				       &data_type_parameters);
 	if (ret)
 		return ret;
 	/*
@@ -544,7 +565,7 @@ static u32 mipi_tx_fg_section_cfg(struct kmb_drm_private *dev_p, u8 frame_id,
 	 * (in pixels) set for each data type
 	 */
 	if (frame_scfg->width_pixels %
-		data_type_parameters.size_constraint_pixels != 0)
+	    data_type_parameters.size_constraint_pixels != 0)
 		return -EINVAL;
 
 	*wc = compute_wc(frame_scfg->width_pixels,
@@ -560,8 +581,8 @@ static u32 mipi_tx_fg_section_cfg(struct kmb_drm_private *dev_p, u8 frame_id,
 	ph_cfg.vchannel = frame_id;
 
 	mipi_tx_fg_section_cfg_regs(dev_p, frame_id, section,
-		frame_scfg->height_lines,
-		unpacked_bytes, &ph_cfg);
+				    frame_scfg->height_lines,
+				    unpacked_bytes, &ph_cfg);
 
 	/*caller needs bits_per_clk for additional caluclations */
 	*bits_per_pclk = data_type_parameters.bits_per_pclk;
@@ -569,17 +590,18 @@ static u32 mipi_tx_fg_section_cfg(struct kmb_drm_private *dev_p, u8 frame_id,
 }
 
 static void mipi_tx_fg_cfg_regs(struct kmb_drm_private *dev_p,
-		u8 frame_gen, struct mipi_tx_frame_timing_cfg *fg_cfg)
+				u8 frame_gen,
+				struct mipi_tx_frame_timing_cfg *fg_cfg)
 {
 	u32 sysclk;
 	/*float ppl_llp_ratio; */
 	u32 ppl_llp_ratio;
 	u32 ctrl_no = MIPI_CTRL6, reg_adr, val, offset;
 
-	/*Get system clock for blanking period cnfigurations*/
+	/*Get system clock for blanking period cnfigurations */
 	/*TODO need to get system clock from clock driver */
 	/* Assume 700 Mhz system clock for now */
-	sysclk = 700;
+	sysclk = 500;
 
 	/*ppl-pixel packing layer, llp-low level protocol
 	 * frame genartor timing parameters are clocked on the system clock
@@ -595,43 +617,42 @@ static void mipi_tx_fg_cfg_regs(struct kmb_drm_private *dev_p,
 	reg_adr = MIPI_TXm_HS_FGn_NUM_LINES(ctrl_no, frame_gen);
 	kmb_write_mipi(dev_p, reg_adr, fg_cfg->v_active);
 
-	DRM_INFO("%s : %d\n", __func__, __LINE__);
 	/*vsync width */
 	/*
 	 *there are 2 registers for vsync width -VSA in lines for channels 0-3
 	 *REG_VSYNC_WIDTH0: [15:0]-VSA for channel0, [31:16]-VSA for channel1
 	 *REG_VSYNC_WIDTH1: [15:0]-VSA for channel2, [31:16]-VSA for channel3
 	 */
-	offset = (frame_gen % 2)*16;
-	reg_adr = MIPI_TXm_HS_VSYNC_WIDTHn(ctrl_no, frame_gen/2);
+	offset = (frame_gen % 2) * 16;
+	reg_adr = MIPI_TXm_HS_VSYNC_WIDTHn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(dev_p, reg_adr, offset, 16, fg_cfg->vsync_width);
 
-	/*v backporch - same register config like vsync width*/
-	reg_adr = MIPI_TXm_HS_V_BACKPORCHESn(ctrl_no, frame_gen/2);
+	/*v backporch - same register config like vsync width */
+	reg_adr = MIPI_TXm_HS_V_BACKPORCHESn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(dev_p, reg_adr, offset, 16, fg_cfg->v_backporch);
 
-	/*v frontporch - same register config like vsync width*/
-	reg_adr = MIPI_TXm_HS_V_FRONTPORCHESn(ctrl_no, frame_gen/2);
+	/*v frontporch - same register config like vsync width */
+	reg_adr = MIPI_TXm_HS_V_FRONTPORCHESn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(dev_p, reg_adr, offset, 16, fg_cfg->v_frontporch);
 
-	/*v active - same register config like vsync width*/
-	reg_adr = MIPI_TXm_HS_V_ACTIVEn(ctrl_no, frame_gen/2);
+	/*v active - same register config like vsync width */
+	reg_adr = MIPI_TXm_HS_V_ACTIVEn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(dev_p, reg_adr, offset, 16, fg_cfg->v_active);
 
 	/*hsyc width */
 	reg_adr = MIPI_TXm_HS_HSYNC_WIDTHn(ctrl_no, frame_gen);
 	kmb_write_mipi(dev_p, reg_adr,
-			(fg_cfg->hsync_width * ppl_llp_ratio) / 1000);
+		       (fg_cfg->hsync_width * ppl_llp_ratio) / 1000);
 
 	/*h backporch */
 	reg_adr = MIPI_TXm_HS_H_BACKPORCHn(ctrl_no, frame_gen);
 	kmb_write_mipi(dev_p, reg_adr,
-			(fg_cfg->h_backporch * ppl_llp_ratio) / 1000);
+		       (fg_cfg->h_backporch * ppl_llp_ratio) / 1000);
 
 	/*h frontporch */
 	reg_adr = MIPI_TXm_HS_H_FRONTPORCHn(ctrl_no, frame_gen);
 	kmb_write_mipi(dev_p, reg_adr,
-			(fg_cfg->h_frontporch * ppl_llp_ratio) / 1000);
+		       (fg_cfg->h_frontporch * ppl_llp_ratio) / 1000);
 
 	/*h active */
 	reg_adr = MIPI_TXm_HS_H_ACTIVEn(ctrl_no, frame_gen);
@@ -649,16 +670,15 @@ static void mipi_tx_fg_cfg_regs(struct kmb_drm_private *dev_p,
 	reg_adr = MIPI_TXm_HS_LLP_H_BACKPORCHn(ctrl_no, frame_gen);
 	kmb_write_mipi(dev_p, reg_adr, fg_cfg->h_backporch * (fg_cfg->bpp / 8));
 
-	DRM_INFO("%s : %d\n", __func__, __LINE__);
 	/* llp h frontporch */
 	reg_adr = MIPI_TXm_HS_LLP_H_FRONTPORCHn(ctrl_no, frame_gen);
 	kmb_write_mipi(dev_p, reg_adr,
-			fg_cfg->h_frontporch * (fg_cfg->bpp / 8));
+		       fg_cfg->h_frontporch * (fg_cfg->bpp / 8));
 }
 
 static void mipi_tx_fg_cfg(struct kmb_drm_private *dev_p, u8 frame_gen,
-		u8 active_lanes, u32 bpp, u32 wc,
-		u32 lane_rate_mbps, struct mipi_tx_frame_cfg *fg_cfg)
+			   u8 active_lanes, u32 bpp, u32 wc,
+			   u32 lane_rate_mbps, struct mipi_tx_frame_cfg *fg_cfg)
 {
 	u32 i, fg_num_lines = 0;
 	struct mipi_tx_frame_timing_cfg fg_t_cfg;
@@ -688,20 +708,21 @@ static void mipi_tx_fg_cfg(struct kmb_drm_private *dev_p, u8 frame_gen,
 }
 
 static void mipi_tx_multichannel_fifo_cfg(struct kmb_drm_private *dev_p,
-		u8 active_lanes, u8 vchannel_id)
+					  u8 active_lanes, u8 vchannel_id)
 {
 	u32 fifo_size, fifo_rthreshold;
 	u32 ctrl_no = MIPI_CTRL6;
 
-	/*clear all mc fifo channel sizes and thresholds*/
+	/*clear all mc fifo channel sizes and thresholds */
 	kmb_write_mipi(dev_p, MIPI_TX_HS_MC_FIFO_CTRL_EN, 0);
 	kmb_write_mipi(dev_p, MIPI_TX_HS_MC_FIFO_CHAN_ALLOC0, 0);
 	kmb_write_mipi(dev_p, MIPI_TX_HS_MC_FIFO_CHAN_ALLOC1, 0);
 	kmb_write_mipi(dev_p, MIPI_TX_HS_MC_FIFO_RTHRESHOLD0, 0);
 	kmb_write_mipi(dev_p, MIPI_TX_HS_MC_FIFO_RTHRESHOLD1, 0);
 
-	fifo_size = (active_lanes > MIPI_D_LANES_PER_DPHY) ?
-	    MIPI_CTRL_4LANE_MAX_MC_FIFO_LOC : MIPI_CTRL_2LANE_MAX_MC_FIFO_LOC;
+	fifo_size = ((active_lanes > MIPI_D_LANES_PER_DPHY) ?
+		     MIPI_CTRL_4LANE_MAX_MC_FIFO_LOC :
+		     MIPI_CTRL_2LANE_MAX_MC_FIFO_LOC) - 1;
 	/*MC fifo size for virtual channels 0-3 */
 	/*
 	 *REG_MC_FIFO_CHAN_ALLOC0: [8:0]-channel0, [24:16]-channel1
@@ -710,21 +731,21 @@ static void mipi_tx_multichannel_fifo_cfg(struct kmb_drm_private *dev_p,
 	SET_MC_FIFO_CHAN_ALLOC(dev_p, ctrl_no, vchannel_id, fifo_size);
 
 	/*set threshold to half the fifo size, actual size=size*16 */
-	fifo_rthreshold = ((fifo_size + 1) * 8) & BIT_MASK_16;
+	fifo_rthreshold = ((fifo_size) * 8) & BIT_MASK_16;
 	SET_MC_FIFO_RTHRESHOLD(dev_p, ctrl_no, vchannel_id, fifo_rthreshold);
 
 	/*enable the MC FIFO channel corresponding to the Virtual Channel */
 	kmb_set_bit_mipi(dev_p, MIPI_TXm_HS_MC_FIFO_CTRL_EN(ctrl_no),
-			vchannel_id);
+			 vchannel_id);
 }
 
 static void mipi_tx_ctrl_cfg(struct kmb_drm_private *dev_p, u8 fg_id,
-		struct mipi_ctrl_cfg *ctrl_cfg)
+			     struct mipi_ctrl_cfg *ctrl_cfg)
 {
 	u32 sync_cfg = 0, ctrl = 0, fg_en;
 	u32 ctrl_no = MIPI_CTRL6;
 
-	/*MIPI_TX_HS_SYNC_CFG*/
+	/*MIPI_TX_HS_SYNC_CFG */
 	if (ctrl_cfg->tx_ctrl_cfg.line_sync_pkt_en)
 		sync_cfg |= LINE_SYNC_PKT_ENABLE;
 	if (ctrl_cfg->tx_ctrl_cfg.frame_counter_active)
@@ -754,7 +775,7 @@ static void mipi_tx_ctrl_cfg(struct kmb_drm_private *dev_p, u8 fg_id,
 		sync_cfg |= HACT_WAIT_STOP(fg_en);
 
 	/* MIPI_TX_HS_CTRL */
-	ctrl = HS_CTRL_EN | TX_SOURCE;	/* type:DSI,source:LCD */
+	ctrl = HS_CTRL_EN;	/* type:DSI,source:LCD */
 	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->eotp_en)
 		ctrl |= DSI_EOTP_EN;
 	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->hfp_blank_en)
@@ -770,32 +791,30 @@ static void mipi_tx_ctrl_cfg(struct kmb_drm_private *dev_p, u8 fg_id,
 
 #ifdef MIPI_TX_TEST_PATTERN_GENERATION
 static void mipi_tx_hs_tp_gen(struct kmb_drm_private *dev_p, int vc,
-		int tp_sel, u32 stripe_width, u32 color0, u32 color1)
+			      int tp_sel, u32 stripe_width, u32 color0,
+			      u32 color1, u32 ctrl_no)
 {
-	u32 ctrl_no = MIPI_CTRL6;
-
+	int val = 0;
 	/* Select test pattern mode on the virtual channel */
-	kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_CTRL(ctrl_no),
-			TP_SEL_VCm(vc, tp_sel));
+	val = TP_SEL_VCm(vc, tp_sel);
 
 	if (tp_sel == MIPI_TX_HS_TP_V_STRIPES ||
-			tp_sel == MIPI_TX_HS_TP_H_STRIPES) {
-		kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_CTRL(ctrl_no),
-				TP_STRIPE_WIDTH(stripe_width));
+	    tp_sel == MIPI_TX_HS_TP_H_STRIPES) {
+		val |= TP_STRIPE_WIDTH(stripe_width);
 	}
 
 	/* Configure test pattern colors */
-	kmb_write_mipi(dev_p, MIPI_TX_HS_TEST_PAT_COLOR0, color0);
-	kmb_write_mipi(dev_p, MIPI_TX_HS_TEST_PAT_COLOR1, color1);
+	kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_COLOR0(ctrl_no), color0);
+	kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_COLOR1(ctrl_no), color1);
 
 	/* Enable test pattern generation on the virtual channel */
-	kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_CTRL(ctrl_no),
-			TP_EN_VCm(vc));
+	val |= TP_EN_VCm(vc);
+	kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_CTRL(ctrl_no), val);
 }
 #endif
 
 static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_p,
-		struct mipi_ctrl_cfg *ctrl_cfg)
+			      struct mipi_ctrl_cfg *ctrl_cfg)
 {
 	u32 ret;
 	u8 active_vchannels = 0;
@@ -822,12 +841,13 @@ static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_p,
 		 */
 		for (sect = 0; sect < MIPI_CTRL_VIRTUAL_CHANNELS; sect++) {
 			if (ctrl_cfg->tx_ctrl_cfg.frames[frame_id]->sections[sect]
-				== NULL)
+			    == NULL)
 				continue;
 
 			ret = mipi_tx_fg_section_cfg(dev_p, frame_id, sect,
-					ctrl_cfg->tx_ctrl_cfg.frames[frame_id]->sections[sect],
-					&bits_per_pclk, &word_count);
+						     ctrl_cfg->tx_ctrl_cfg.frames[frame_id]->sections[sect],
+						     &bits_per_pclk,
+						     &word_count);
 			if (ret)
 				return ret;
 
@@ -835,14 +855,13 @@ static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_p,
 
 		/* set frame specific parameters */
 		mipi_tx_fg_cfg(dev_p, frame_id, ctrl_cfg->active_lanes,
-			bits_per_pclk,
-			word_count, ctrl_cfg->lane_rate_mbps,
-			ctrl_cfg->tx_ctrl_cfg.frames[frame_id]);
+			       bits_per_pclk,
+			       word_count, ctrl_cfg->lane_rate_mbps,
+			       ctrl_cfg->tx_ctrl_cfg.frames[frame_id]);
 
 		active_vchannels++;
 
 		/*connect lcd to mipi */
-		kmb_write_msscam(dev_p, MSS_LCD_MIPI_CFG, 1);
 
 		/*stop iterating as only one virtual channel shall be used for
 		 * LCD connection
@@ -852,23 +871,152 @@ static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_p,
 
 	if (active_vchannels == 0)
 		return -EINVAL;
-	/*Multi-Channel FIFO Configuration*/
+	/*Multi-Channel FIFO Configuration */
 	mipi_tx_multichannel_fifo_cfg(dev_p, ctrl_cfg->active_lanes, frame_id);
 
-#ifdef MIPI_TX_TEST_PATTERN_GENERATION
-	mipi_tx_hs_tp_gen(dev_p, 0, MIPI_TX_HS_TP_WHOLE_FRAME_COLOR0, 0,
-			0xffffffff, 0);
-#endif
-
 	/*Frame Generator Enable */
 	mipi_tx_ctrl_cfg(dev_p, frame_id, ctrl_cfg);
 	return ret;
 }
 
+int dphy_read_testcode(struct kmb_drm_private *dev_p, int dphy_sel,
+		       int test_code)
+{
+	u32 reg_wr_data;
+	u32 reg_rd_data;
+	int data;
+
+	reg_wr_data = dphy_sel;
+	kmb_write_mipi(dev_p, DPHY_TEST_CTRL1, reg_wr_data);
+
+	data = 0;
+	reg_wr_data = 0;
+	reg_rd_data = 0;
+
+	if (((dphy_sel >> 0 & 0x1) == 1) | ((dphy_sel >> 4 & 0x1) ==
+					    1) | ((dphy_sel >> 8 & 0x1) == 1))
+		reg_wr_data |= data << 0;
+	if (((dphy_sel >> 1 & 0x1) == 1) | ((dphy_sel >> 5 & 0x1) ==
+					    1) | ((dphy_sel >> 9 & 0x1) == 1))
+		reg_wr_data |= data << 8;
+	if (((dphy_sel >> 2 & 0x1) == 1) | ((dphy_sel >> 6 & 0x1) ==
+					    1) | ((dphy_sel >> 10 & 0x1) == 1))
+		reg_wr_data |= data << 16;
+	if (((dphy_sel >> 3 & 0x1) == 1) | ((dphy_sel >> 7 & 0x1) ==
+					    1) | ((dphy_sel >> 11 & 0x1) == 1))
+		reg_wr_data |= data << 24;
+
+	if ((dphy_sel >> 0 & 0xf) > 0)
+		kmb_write_mipi(dev_p, DPHY_TEST_DIN0_3, reg_wr_data);
+	if ((dphy_sel >> 4 & 0xf) > 0)
+		kmb_write_mipi(dev_p, DPHY_TEST_DIN4_7, reg_wr_data);
+	if ((dphy_sel >> 8 & 0x3) > 0)
+		kmb_write_mipi(dev_p, DPHY_TEST_DIN8_9, reg_wr_data);
+
+	reg_wr_data = 0;
+	reg_wr_data = (dphy_sel | dphy_sel << 12);
+	kmb_write_mipi(dev_p, DPHY_TEST_CTRL1, reg_wr_data);
+
+	reg_wr_data = 0;
+	reg_wr_data = dphy_sel << 12;
+	kmb_write_mipi(dev_p, DPHY_TEST_CTRL1, reg_wr_data);
+
+	reg_wr_data = 0;
+	kmb_write_mipi(dev_p, DPHY_TEST_CTRL1, reg_wr_data);
+
+	data = test_code >> 8 & 0xf;
+	reg_wr_data = 0;
+	if (((dphy_sel >> 0 & 0x1) == 1) | ((dphy_sel >> 4 & 0x1) ==
+					    1) | ((dphy_sel >> 8 & 0x1) == 1))
+		reg_wr_data |= data << 0;
+	if (((dphy_sel >> 1 & 0x1) == 1) | ((dphy_sel >> 5 & 0x1) ==
+					    1) | ((dphy_sel >> 9 & 0x1) == 1))
+		reg_wr_data |= data << 8;
+	if (((dphy_sel >> 2 & 0x1) == 1) | ((dphy_sel >> 6 & 0x1) ==
+					    1) | ((dphy_sel >> 10 & 0x1) == 1))
+		reg_wr_data |= data << 16;
+	if (((dphy_sel >> 3 & 0x1) == 1) | ((dphy_sel >> 7 & 0x1) ==
+					    1) | ((dphy_sel >> 11 & 0x1) == 1))
+		reg_wr_data |= data << 24;
+
+	if ((dphy_sel >> 0 & 0xf) > 0)
+		kmb_write_mipi(dev_p, DPHY_TEST_DIN0_3, reg_wr_data);
+	if ((dphy_sel >> 4 & 0xf) > 0)
+		kmb_write_mipi(dev_p, DPHY_TEST_DIN4_7, reg_wr_data);
+	if ((dphy_sel >> 8 & 0x3) > 0)
+		kmb_write_mipi(dev_p, DPHY_TEST_DIN8_9, reg_wr_data);
+
+	reg_wr_data = 0;
+	reg_wr_data = dphy_sel;
+	kmb_write_mipi(dev_p, DPHY_TEST_CTRL1, reg_wr_data);
+
+	data = test_code & 0xff;
+	reg_wr_data = 0;
+	if (((dphy_sel >> 0 & 0x1) == 1) | ((dphy_sel >> 4 & 0x1) ==
+					    1) | ((dphy_sel >> 8 & 0x1) == 1))
+		reg_wr_data |= data << 0;
+	if (((dphy_sel >> 1 & 0x1) == 1) | ((dphy_sel >> 5 & 0x1) ==
+					    1) | ((dphy_sel >> 9 & 0x1) == 1))
+		reg_wr_data |= data << 8;
+	if (((dphy_sel >> 2 & 0x1) == 1) | ((dphy_sel >> 6 & 0x1) ==
+					    1) | ((dphy_sel >> 10 & 0x1) == 1))
+		reg_wr_data |= data << 16;
+	if (((dphy_sel >> 3 & 0x1) == 1) | ((dphy_sel >> 7 & 0x1) ==
+					    1) | ((dphy_sel >> 11 & 0x1) == 1))
+		reg_wr_data |= data << 24;
+
+	if ((dphy_sel >> 0 & 0xf) > 0)
+		kmb_write_mipi(dev_p, DPHY_TEST_DIN0_3, reg_wr_data);
+	if ((dphy_sel >> 4 & 0xf) > 0)
+		kmb_write_mipi(dev_p, DPHY_TEST_DIN4_7, reg_wr_data);
+	if ((dphy_sel >> 8 & 0x3) > 0)
+		kmb_write_mipi(dev_p, DPHY_TEST_DIN8_9, reg_wr_data);
+
+	reg_wr_data = 0;
+	reg_wr_data = (dphy_sel | dphy_sel << 12);
+	kmb_write_mipi(dev_p, DPHY_TEST_CTRL1, reg_wr_data);
+
+	reg_wr_data = 0;
+	reg_wr_data = dphy_sel << 12;
+	kmb_write_mipi(dev_p, DPHY_TEST_CTRL1, reg_wr_data);
+
+	reg_wr_data = 0;
+	kmb_write_mipi(dev_p, DPHY_TEST_CTRL1, reg_wr_data);
+
+	if ((dphy_sel >> 0 & 0xf) > 0)
+		reg_rd_data = kmb_read_mipi(dev_p, DPHY_TEST_DOUT0_3);
+	if ((dphy_sel >> 4 & 0xf) > 0)
+		reg_rd_data = kmb_read_mipi(dev_p, DPHY_TEST_DOUT4_7);
+	if ((dphy_sel >> 8 & 0x3) > 0)
+		reg_rd_data = kmb_read_mipi(dev_p, DPHY_TEST_DOUT8_9);
+
+	if (((dphy_sel >> 0 & 0x1) == 1) | ((dphy_sel >> 4 & 0x1) == 1) |
+	    ((dphy_sel >> 8 & 0x1) == 1))
+		data = reg_rd_data >> 0;
+	if (((dphy_sel >> 1 & 0x1) == 1) | ((dphy_sel >> 5 & 0x1) == 1) |
+	    ((dphy_sel >> 9 & 0x1) == 1))
+		data = reg_rd_data >> 8;
+	if (((dphy_sel >> 2 & 0x1) == 1) | ((dphy_sel >> 6 & 0x1) == 1) |
+	    ((dphy_sel >> 10 & 0x1) == 1))
+		data = reg_rd_data >> 16;
+	if (((dphy_sel >> 3 & 0x1) == 1) | ((dphy_sel >> 7 & 0x1) == 1) |
+	    ((dphy_sel >> 11 & 0x1) == 1))
+		data = reg_rd_data >> 24;
+
+	return data;
+
+}
+
 static void test_mode_send(struct kmb_drm_private *dev_p, u32 dphy_no,
-		u32 test_code, u32 test_data)
+			   u32 test_code, u32 test_data)
 {
-	/*send the test code first */
+#ifdef DEBUG
+	if (test_code != TEST_CODE_FSM_CONTROL)
+		DRM_INFO("test_code = %02x, test_data = %08x\n", test_code,
+			 test_data);
+#endif
+
+	/* send the test code first */
 	/*  Steps for code:
 	 * - set testclk HIGH
 	 * - set testdin with test code
@@ -876,55 +1024,77 @@ static void test_mode_send(struct kmb_drm_private *dev_p, u32 dphy_no,
 	 * - set testclk LOW
 	 * - set testen LOW
 	 */
+
+	/* Set testclk high */
 	SET_DPHY_TEST_CTRL1_CLK(dev_p, dphy_no);
+
+	/* Set testdin */
 	SET_TEST_DIN0_3(dev_p, dphy_no, test_code);
+
+	/* Set testen high */
 	SET_DPHY_TEST_CTRL1_EN(dev_p, dphy_no);
+
+	/* Set testclk low */
 	CLR_DPHY_TEST_CTRL1_CLK(dev_p, dphy_no);
+
+	/* Set testen low */
 	CLR_DPHY_TEST_CTRL1_EN(dev_p, dphy_no);
 
-	/*send the test data next */
+	/* Send the test data next */
 	/*  Steps for data:
 	 * - set testen LOW
 	 * - set testclk LOW
 	 * - set testdin with data
 	 * - set testclk HIGH
 	 */
-	CLR_DPHY_TEST_CTRL1_EN(dev_p, dphy_no);
-	CLR_DPHY_TEST_CTRL1_CLK(dev_p, dphy_no);
-	SET_TEST_DIN0_3(dev_p, dphy_no, test_data);
-	SET_DPHY_TEST_CTRL1_CLK(dev_p, dphy_no);
+	if (test_code) {
+		/* Set testen low */
+		CLR_DPHY_TEST_CTRL1_EN(dev_p, dphy_no);
+
+		/* Set testclk low */
+		CLR_DPHY_TEST_CTRL1_CLK(dev_p, dphy_no);
+
+		/* Set data in testdin */
+		kmb_write_mipi(dev_p,
+			       DPHY_TEST_DIN0_3 + ((dphy_no / 0x4) * 0x4),
+			       test_data << ((dphy_no % 4) * 8));
+
+		/* Set testclk high */
+		SET_DPHY_TEST_CTRL1_CLK(dev_p, dphy_no);
+	}
 }
 
 static inline void
 	set_test_mode_src_osc_freq_target_low_bits(struct kmb_drm_private
-			*dev_p,	u32 dphy_no, u32 freq)
+							      *dev_p,
+							      u32 dphy_no,
+							      u32 freq)
 {
 	/*typical rise/fall time=166,
 	 * refer Table 1207 databook,sr_osc_freq_target[7:0
 	 */
 	test_mode_send(dev_p, dphy_no,
-			TEST_CODE_SLEW_RATE_DDL_CYCLES, (freq & 0x7f));
+		       TEST_CODE_SLEW_RATE_DDL_CYCLES, (freq & 0x7f));
 }
 
 static inline void
-	set_test_mode_slew_rate_calib_en(struct kmb_drm_private *dev_p,
-			u32 dphy_no)
+set_test_mode_slew_rate_calib_en(struct kmb_drm_private *dev_p, u32 dphy_no)
 {
 	/*do not bypass slew rate calibration algorithm */
-	/*bits[1:0}=srcal_en_ovr_en, srcal_en_ovr, bit[6]=sr_range*/
+	/*bits[1:0}=srcal_en_ovr_en, srcal_en_ovr, bit[6]=sr_range */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_SLEW_RATE_OVERRIDE_CTRL,
-		(0x03 | (1 << 6)));
+		       (0x03 | (1 << 6)));
 }
 
 static inline void
-	set_test_mode_src_osc_freq_target_hi_bits(struct kmb_drm_private *dev_p,
-		u32 dphy_no, u32 freq)
+set_test_mode_src_osc_freq_target_hi_bits(struct kmb_drm_private *dev_p,
+					  u32 dphy_no, u32 freq)
 {
 	u32 data;
 	/*typical rise/fall time=166, refer Table 1207 databook,
 	 * sr_osc_freq_target[11:7
 	 */
-	data = ((freq >> 6) & 0x1f) | (1 << 7); /*flag this as high nibble */
+	data = ((freq >> 6) & 0x1f) | (1 << 7);	/*flag this as high nibble */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_SLEW_RATE_DDL_CYCLES, data);
 }
 
@@ -961,20 +1131,20 @@ static void mipi_tx_get_vco_params(struct vco_params *vco)
 }
 
 static void mipi_tx_pll_setup(struct kmb_drm_private *dev_p, u32 dphy_no,
-		u32 ref_clk_mhz, u32 target_freq_mhz)
+			      u32 ref_clk_mhz, u32 target_freq_mhz)
 {
 	/* pll_ref_clk: - valid range: 2~64 MHz; Typically 24 MHz
 	 * Fvco: - valid range: 320~1250 MHz (Gen3 D-PHY)
 	 * Fout: - valid range: 40~1250 MHz (Gen3 D-PHY)
 	 * n: - valid range [0 15]
 	 * N: - N = n + 1
-	 *	-valid range: [1 16]
-	 *	-conditions: - (pll_ref_clk / N) >= 2 MHz
-	 *		-(pll_ref_clk / N) <= 8 MHz
+	 *      -valid range: [1 16]
+	 *      -conditions: - (pll_ref_clk / N) >= 2 MHz
+	 *              -(pll_ref_clk / N) <= 8 MHz
 	 * m: valid range [62 623]
 	 * M: - M = m + 2
-	 *	-valid range [64 625]
-	 *	-Fvco = (M/N) * pll_ref_clk
+	 *      -valid range [64 625]
+	 *      -Fvco = (M/N) * pll_ref_clk
 	 */
 	struct vco_params vco_p = {
 		.range = 0,
@@ -992,7 +1162,7 @@ static void mipi_tx_pll_setup(struct kmb_drm_private *dev_p, u32 dphy_no,
 		 * multiply by 1000 for precision -
 		 * no floating point, add n for rounding
 		 */
-		div = ((ref_clk_mhz * 1000) + n)/(n+1);
+		div = ((ref_clk_mhz * 1000) + n) / (n + 1);
 		/*found a valid n parameter */
 		if ((div < 2000 || div > 8000))
 			continue;
@@ -1003,7 +1173,7 @@ static void mipi_tx_pll_setup(struct kmb_drm_private *dev_p, u32 dphy_no,
 			 */
 			freq = div * (m + 2);
 			freq /= 1000;
-			/* trim the potential pll freq to max supported*/
+			/* trim the potential pll freq to max supported */
 			if (freq > PLL_FVCO_MAX)
 				continue;
 
@@ -1024,37 +1194,39 @@ static void mipi_tx_pll_setup(struct kmb_drm_private *dev_p, u32 dphy_no,
 	 * PLL_VCO_Control[6]   = pll_vco_cntrl_ovr_en
 	 */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_VCO_CTRL, (vco_p.range
-			| (1 << 6)));
+								| (1 << 6)));
 
 	/*Program m, n pll parameters */
 
+	DRM_INFO("%s : %d m = %d n = %d\n", __func__, __LINE__, best_m, best_n);
+
 	/*PLL_Input_Divider_Ratio[3:0] = pll_n_ovr */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_INPUT_DIVIDER,
-			(best_n & 0x0f));
+		       (best_n & 0x0f));
 
 	/* m - low nibble PLL_Loop_Divider_Ratio[4:0] = pll_m_ovr[4:0] */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_FEEDBACK_DIVIDER,
-			(best_m & 0x1f));
+		       (best_m & 0x1f));
 
 	/*m -high nibble PLL_Loop_Divider_Ratio[4:0] = pll_m_ovr[9:5] */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_FEEDBACK_DIVIDER,
-			((best_m >> 5) & 0x1f) | PLL_FEEDBACK_DIVIDER_HIGH);
+		       ((best_m >> 5) & 0x1f) | PLL_FEEDBACK_DIVIDER_HIGH);
 
-	/*enable overwrite of n,m parameters :pll_n_ovr_en, pll_m_ovr_en*/
+	/*enable overwrite of n,m parameters :pll_n_ovr_en, pll_m_ovr_en */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_OUTPUT_CLK_SEL,
-			(PLL_N_OVR_EN | PLL_M_OVR_EN));
+		       (PLL_N_OVR_EN | PLL_M_OVR_EN));
 
 	/*Program Charge-Pump parameters */
 
 	/*pll_prop_cntrl-fixed values for prop_cntrl from DPHY doc */
 	t_freq = target_freq_mhz * vco_p.divider;
 	test_mode_send(dev_p, dphy_no,
-			TEST_CODE_PLL_PROPORTIONAL_CHARGE_PUMP_CTRL,
-			((t_freq > 1150) ? 0x0C : 0x0B));
+		       TEST_CODE_PLL_PROPORTIONAL_CHARGE_PUMP_CTRL,
+		       ((t_freq > 1150) ? 0x0C : 0x0B));
 
 	/*pll_int_cntrl-fixed value for int_cntrl from DPHY doc */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_INTEGRAL_CHARGE_PUMP_CTRL,
-			0x00);
+		       0x00);
 
 	/*pll_gmp_cntrl-fixed value for gmp_cntrl from DPHY doci */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_GMP_CTRL, 0x10);
@@ -1062,13 +1234,13 @@ static void mipi_tx_pll_setup(struct kmb_drm_private *dev_p, u32 dphy_no,
 	/*pll_cpbias_cntrl-fixed value for cpbias_cntrl from DPHY doc */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_CHARGE_PUMP_BIAS, 0x10);
 
-	/*PLL Lock Configuration */
-
-	/*pll_th1 -Lock Detector Phase error threshold,
-	 * document gives fixed value
+	/*pll_th1 -Lock Detector Phase error threshold, document gives fixed
+	 * value
 	 */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_PHASE_ERR_CTRL, 0x02);
 
+	/*PLL Lock Configuration */
+
 	/*pll_th2 - Lock Filter length, document gives fixed value */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_LOCK_FILTER, 0x60);
 
@@ -1082,24 +1254,37 @@ static void mipi_tx_pll_setup(struct kmb_drm_private *dev_p, u32 dphy_no,
 }
 
 static void dphy_init_sequence(struct kmb_drm_private *dev_p,
-		struct mipi_ctrl_cfg *cfg, u32 dphy_no, enum dphy_mode mode)
+			       struct mipi_ctrl_cfg *cfg, u32 dphy_no,
+			       int active_lanes, enum dphy_mode mode)
 {
 	u32 test_code = 0;
 	u32 test_data = 0, val;
-	int i;
+	int i = 0;
 
+	/* deassert SHUTDOWNZ signal */
+	DRM_INFO("%s : %d  MIPI_DPHY_STAT0_4_7 = 0x%x)\n", __func__, __LINE__,
+		 kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));
 	/*Set D-PHY in shutdown mode */
 	/*assert RSTZ signal */
 	CLR_DPHY_INIT_CTRL0(dev_p, dphy_no, RESETZ);
-	/* assert SHUTDOWNZ signal*/
+	/* assert SHUTDOWNZ signal */
 	CLR_DPHY_INIT_CTRL0(dev_p, dphy_no, SHUTDOWNZ);
+	val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL0);
+	DRM_INFO("%s : %d DPHY_INIT_CTRL0 = 0x%x\n", __func__, __LINE__, val);
+
 	/*Init D-PHY_n */
 	/*Pulse testclear signal to make sure the d-phy configuration starts
 	 * from a clean base
 	 */
+	CLR_DPHY_TEST_CTRL0(dev_p, dphy_no);
+	ndelay(15);
 	SET_DPHY_TEST_CTRL0(dev_p, dphy_no);
-	/*TODO may need to add 15ns delay here*/
+	/*TODO may need to add 15ns delay here */
+	ndelay(15);
 	CLR_DPHY_TEST_CTRL0(dev_p, dphy_no);
+	val = kmb_read_mipi(dev_p, DPHY_TEST_CTRL0);
+	DRM_INFO("%s : %d DPHY_TEST_CTRL0 = 0x%x\n", __func__, __LINE__, val);
+	ndelay(15);
 
 	/*Set mastermacro bit - Master or slave mode */
 	test_code = TEST_CODE_MULTIPLE_PHY_CTRL;
@@ -1111,17 +1296,17 @@ static void dphy_init_sequence(struct kmb_drm_private *dev_p,
 
 	/*send the test code and data */
 	test_mode_send(dev_p, dphy_no, test_code, test_data);
-
 	/*Set the lane data rate */
 	for (i = 0; i < MIPI_DPHY_DEFAULT_BIT_RATES; i++) {
 		if (mipi_hs_freq_range[i].default_bit_rate_mbps <
 		    cfg->lane_rate_mbps)
 			continue;
-		/* send the test code and data*/
-		/*bit[6:0] = hsfreqrange_ovr bit[7] = hsfreqrange_ovr_en*/
-		test_mode_send(dev_p, dphy_no, TEST_CODE_HS_FREQ_RANGE_CFG,
-				(mipi_hs_freq_range[i].hsfreqrange_code
-				 & 0x7f) | (1 << 7));
+		/* send the test code and data */
+		/*bit[6:0] = hsfreqrange_ovr bit[7] = hsfreqrange_ovr_en */
+		test_code = TEST_CODE_HS_FREQ_RANGE_CFG;
+		test_data =
+		    (mipi_hs_freq_range[i].hsfreqrange_code & 0x7f) | (1 << 7);
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
 		break;
 	}
 	/*
@@ -1130,78 +1315,136 @@ static void dphy_init_sequence(struct kmb_drm_private *dev_p,
 	 */
 	if (cfg->lane_rate_mbps > 1500) {
 		/*bypass slew rate calibration algorithm */
-		/*bits[1:0} srcal_en_ovr_en, srcal_en_ovr*/
-		test_mode_send(dev_p, dphy_no,
-			TEST_CODE_SLEW_RATE_OVERRIDE_CTRL, 0x02);
+		/*bits[1:0} srcal_en_ovr_en, srcal_en_ovr */
+		test_code = TEST_CODE_SLEW_RATE_OVERRIDE_CTRL;
+		test_data = 0x02;
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
 
-		/* disable slew rate calibration*/
-		test_mode_send(dev_p, dphy_no,
-			TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL, 0x00);
+		/* disable slew rate calibration */
+		test_code = TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL;
+		test_data = 0x00;
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
 	} else if (cfg->lane_rate_mbps > 1000) {
 		/*BitRate: > 1 Gbps && <= 1.5 Gbps: - slew rate control ON
 		 * typical rise/fall times: 166 ps
 		 */
 
 		/*do not bypass slew rate calibration algorithm */
-		set_test_mode_slew_rate_calib_en(dev_p, dphy_no);
+		/*bits[1:0}=srcal_en_ovr_en, srcal_en_ovr, bit[6]=sr_range */
+		test_code = TEST_CODE_SLEW_RATE_OVERRIDE_CTRL;
+		test_data = (0x03 | (1 << 6));
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
+
+//              set_test_mode_slew_rate_calib_en(dev_p, dphy_no);
 
-		/* enable slew rate calibration*/
-		test_mode_send(dev_p, dphy_no,
-			TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL, 0x01);
+		/* enable slew rate calibration */
+		test_code = TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL;
+		test_data = 0x01;
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
 
 		/*set sr_osc_freq_target[6:0] */
-		/*typical rise/fall time=166, refer Table 1207 databook*/
-		set_test_mode_src_osc_freq_target_low_bits(dev_p,
-			dphy_no, 0x72f);
+		/*typical rise/fall time=166, refer Table 1207 databook */
+		/*typical rise/fall time=166, refer Table 1207 databook,
+		 * sr_osc_freq_target[7:0
+		 */
+		test_code = TEST_CODE_SLEW_RATE_DDL_CYCLES;
+		test_data = (0x72f & 0x7f);
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
 		/*set sr_osc_freq_target[11:7] */
-		set_test_mode_src_osc_freq_target_hi_bits(dev_p, dphy_no,
-				0x72f);
+		/*typical rise/fall time=166, refer Table 1207 databook,
+		 * sr_osc_freq_target[11:7
+		 */
+		test_code = TEST_CODE_SLEW_RATE_DDL_CYCLES;
+		/*flag this as high nibble */
+		test_data = ((0x72f >> 6) & 0x1f) | (1 << 7);
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
 	} else {
 		/*lane_rate_mbps <= 1000 Mbps */
 		/*BitRate:  <= 1 Gbps:
 		 * - slew rate control ON
 		 * - typical rise/fall times: 225 ps
 		 */
+
 		/*do not bypass slew rate calibration algorithm */
-		set_test_mode_slew_rate_calib_en(dev_p, dphy_no);
-		/* enable slew rate calibration*/
-		test_mode_send(dev_p, dphy_no,
-			TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL, 0x01);
-
-		/*typical rise/fall time=255, refer Table 1207 databook*/
-		set_test_mode_src_osc_freq_target_low_bits(dev_p,
-			dphy_no, 0x523);
+		test_code = TEST_CODE_SLEW_RATE_OVERRIDE_CTRL;
+		test_data = (0x03 | (1 << 6));
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
+
+		/* enable slew rate calibration */
+		test_code = TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL;
+		test_data = 0x01;
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
+
+		/*typical rise/fall time=255, refer Table 1207 databook */
+		test_code = TEST_CODE_SLEW_RATE_DDL_CYCLES;
+		test_data = (0x523 & 0x7f);
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
+
 		/*set sr_osc_freq_target[11:7] */
-		set_test_mode_src_osc_freq_target_hi_bits(dev_p, dphy_no,
-				0x523);
-	}
+		test_code = TEST_CODE_SLEW_RATE_DDL_CYCLES;
+		/*flag this as high nibble */
+		test_data = ((0x523 >> 6) & 0x1f) | (1 << 7);
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
 
+	}
 	/*Set cfgclkfreqrange */
-	val = (((cfg->cfg_clk_khz/1000) - 17) * 4) & 0x3f;
+	val = (((cfg->cfg_clk_khz / 1000) - 17) * 4) & 0x3f;
 	SET_DPHY_FREQ_CTRL0_3(dev_p, dphy_no, val);
+	val = kmb_read_mipi(dev_p, DPHY_FREQ_CTRL0_3 + 4);
 
 	/*Enable config clk for the corresponding d-phy */
 	kmb_set_bit_mipi(dev_p, DPHY_CFG_CLK_EN, dphy_no);
-
+	val = kmb_read_mipi(dev_p, DPHY_CFG_CLK_EN);
 	/* PLL setup */
 	if (mode == MIPI_DPHY_MASTER) {
 		/*Set PLL regulator in bypass */
-		test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_ANALOG_PROG, 0x01);
+		test_code = TEST_CODE_PLL_ANALOG_PROG;
+		test_data = 0x01;
+		test_mode_send(dev_p, dphy_no, test_code, test_data);
 
 		/* PLL Parameters Setup */
-		mipi_tx_pll_setup(dev_p, dphy_no, cfg->ref_clk_khz/1000,
-				cfg->lane_rate_mbps/2);
+		mipi_tx_pll_setup(dev_p, dphy_no, cfg->ref_clk_khz / 1000,
+				  cfg->lane_rate_mbps / 2);
 
 		/*Set clksel */
-		kmb_write_bits_mipi(dev_p, DPHY_INIT_CTRL1, PLL_CLKSEL_0, 2,
-			0x01);
+		kmb_write_bits_mipi(dev_p, DPHY_INIT_CTRL1, PLL_CLKSEL_0,
+				    2, 0x01);
+		val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL1);
 
 		/*Set pll_shadow_control */
 		kmb_set_bit_mipi(dev_p, DPHY_INIT_CTRL1, PLL_SHADOW_CTRL);
+		val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL1);
 	}
+#define MIPI_TX_FORCE_VOD
+#ifdef MIPI_TX_FORCE_VOD
+#define MIPI_TX_VOD_LVL	450
+#define TEST_CODE_BANDGAP 0x24
+	/* Set bandgap/VOD level */
+	switch (MIPI_TX_VOD_LVL) {
+	case 200:
+		test_data = 0x00;
+		break;
+	case 300:
+		test_data = 0x20;
+		break;
+	case 350:
+		test_data = 0x40;
+		break;
+	case 450:
+		test_data = 0x60;
+		break;
+	case 400:
+	default:
+		test_data = 0x70;
+		break;
+	}
+	test_mode_send(dev_p, dphy_no, TEST_CODE_BANDGAP, test_data);
+#endif
 
 	/*Send NORMAL OPERATION test code */
-	test_mode_send(dev_p, dphy_no, 0x00, 0x00);
+	test_code = 0x0;
+	test_data = 0x0;
+	test_mode_send(dev_p, dphy_no, test_code, test_data);
 
 	/* Configure BASEDIR for data lanes
 	 * NOTE: basedir only applies to LANE_0 of each D-PHY.
@@ -1210,84 +1453,123 @@ static void dphy_init_sequence(struct kmb_drm_private *dev_p,
 	 * bits[5:0]  - BaseDir: 1 = Rx
 	 * bits[9:6] - BaseDir: 0 = Tx
 	 */
-	kmb_clr_bit_mipi(dev_p, DPHY_INIT_CTRL2, dphy_no);
+	kmb_write_bits_mipi(dev_p, DPHY_INIT_CTRL2, 0, 9, 0x03f);
+	val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL2);
+	ndelay(15);
 
 	/* Enable CLOCK LANE - */
 	/*clock lane should be enabled regardless of the direction set for
 	 * the D-PHY (Rx/Tx)
 	 */
-	kmb_clr_bit_mipi(dev_p, DPHY_INIT_CTRL2, 12 + dphy_no);
+	kmb_set_bit_mipi(dev_p, DPHY_INIT_CTRL2, 12 + dphy_no);
+	val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL2);
 
 	/* enable DATA LANES */
 	kmb_write_bits_mipi(dev_p, DPHY_ENABLE, dphy_no * 2, 2,
-			((1 << cfg->active_lanes) - 1));
+			    ((1 << active_lanes) - 1));
 
+	val = kmb_read_mipi(dev_p, DPHY_ENABLE);
+	ndelay(15);
 	/*Take D-PHY out of shutdown mode */
-	/* deassert SHUTDOWNZ signal*/
+	/* deassert SHUTDOWNZ signal */
 	SET_DPHY_INIT_CTRL0(dev_p, dphy_no, SHUTDOWNZ);
+	ndelay(15);
+
 	/*deassert RSTZ signal */
 	SET_DPHY_INIT_CTRL0(dev_p, dphy_no, RESETZ);
+	val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL0);
 }
 
 static void dphy_wait_fsm(struct kmb_drm_private *dev_p, u32 dphy_no,
-		enum dphy_tx_fsm fsm_state)
+			  enum dphy_tx_fsm fsm_state)
 {
 	enum dphy_tx_fsm val = DPHY_TX_POWERDWN;
 	int i = 0;
+	int status = 1;
 
 	do {
 		test_mode_send(dev_p, dphy_no, TEST_CODE_FSM_CONTROL, 0x80);
 		/*TODO-need to add a time out and return failure */
-		val = GET_TEST_DOUT0_3(dev_p, dphy_no);
+		val = GET_TEST_DOUT4_7(dev_p, dphy_no);
 		i++;
-		if (i > 50000) {
-			DRM_INFO("%s: timing out\n", __func__);
+		if (i > TIMEOUT) {
+			status = 0;
+			DRM_INFO("%s: timing out fsm_state = %x GET_TEST_DOUT4_7 = %x",
+			     __func__, fsm_state, kmb_read_mipi(dev_p,
+						      DPHY_TEST_DOUT4_7));
 			break;
 		}
 	} while (val != fsm_state);
+	DRM_INFO("%s: dphy %d val = %x\n", __func__, dphy_no, val);
+
+	DRM_INFO("%s: dphy %d val = %x\n", __func__, dphy_no, val);
+	DRM_INFO("********** DPHY %d WAIT_FSM %s **********\n",
+		 dphy_no, status ? "SUCCESS" : "FAILED");
 }
 
 static u32 wait_init_done(struct kmb_drm_private *dev_p, u32 dphy_no,
-		u32 active_lanes)
+			  u32 active_lanes)
 {
 	u32 stopstatedata = 0;
 	u32 data_lanes = (1 << active_lanes) - 1;
-	int i = 0;
+	int i = 0, val;
+	int status = 1;
+
+	DRM_INFO("%s : %d dphy = %d active_lanes=%d data_lanes=%d\n",
+		 __func__, __LINE__, dphy_no, active_lanes, data_lanes);
 
 	do {
-		stopstatedata = GET_STOPSTATE_DATA(dev_p, dphy_no);
-		/*TODO-need to add a time out and return failure */
+		val = kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7);
+		stopstatedata = GET_STOPSTATE_DATA(dev_p, dphy_no) & data_lanes;
 		i++;
-		if (i > 50000) {
-			DRM_INFO("%s: timing out", __func__);
+		if (i > TIMEOUT) {
+			status = 0;
+			DRM_INFO("!WAIT_INIT_DONE: TIMING OUT! (err_stat=%d)n",
+				 kmb_read_mipi(dev_p, MIPI_DPHY_ERR_STAT6_7));
 			break;
 		}
+		udelay(1);
 	} while (stopstatedata != data_lanes);
 
+	DRM_INFO("********** DPHY %d INIT - %s **********\n",
+		 dphy_no, status ? "SUCCESS" : "FAILED");
+
 	return 0;
 }
 
 static u32 wait_pll_lock(struct kmb_drm_private *dev_p, u32 dphy_no)
 {
 	int i = 0;
+	int status = 1;
+
 	do {
 		;
 		/*TODO-need to add a time out and return failure */
 		i++;
-		if (i > 50000) {
-			DRM_INFO("wait_pll_lock: timing out\n");
+		udelay(1);
+		if (i > TIMEOUT) {
+			status = 0;
+			DRM_INFO("%s: timing out", __func__);
+			DRM_INFO("%s : PLL_LOCK = 0x%x\n", __func__,
+				 kmb_read_mipi(dev_p, DPHY_PLL_LOCK));
 			break;
 		}
+
 	} while (!GET_PLL_LOCK(dev_p, dphy_no));
 
+	DRM_INFO("********** PLL Locked for DPHY %d - %s **********\n",
+		 dphy_no, status ? "SUCCESS" : "FAILED");
 	return 0;
 }
 
 static u32 mipi_tx_init_dphy(struct kmb_drm_private *dev_p,
-		struct mipi_ctrl_cfg *cfg)
+			     struct mipi_ctrl_cfg *cfg)
 {
 	u32 dphy_no = MIPI_DPHY6;
 
+	DRM_INFO("%s : %d active_lanes=%d lane_rate=%d\n",
+		 __func__, __LINE__, cfg->active_lanes,
+		 MIPI_TX_LANE_DATA_RATE_MBPS);
 	/*multiple D-PHYs needed */
 	if (cfg->active_lanes > MIPI_DPHY_D_LANES) {
 		/*
@@ -1306,62 +1588,32 @@ static u32 mipi_tx_init_dphy(struct kmb_drm_private *dev_p,
 		 *f. poll for PHY1 stopstate
 		 */
 		/*PHY #N+1 ('slave') */
-		dphy_init_sequence(dev_p, cfg, dphy_no + 1, MIPI_DPHY_SLAVE);
 
+		dphy_init_sequence(dev_p, cfg, dphy_no + 1,
+				   (cfg->active_lanes - MIPI_DPHY_D_LANES),
+				   MIPI_DPHY_SLAVE);
 		dphy_wait_fsm(dev_p, dphy_no + 1, DPHY_TX_LOCK);
 
-		/*PHY #N master*/
-		dphy_init_sequence(dev_p, cfg, dphy_no, MIPI_DPHY_MASTER);
+		/*PHY #N master */
+		dphy_init_sequence(dev_p, cfg, dphy_no, MIPI_DPHY_D_LANES,
+				   MIPI_DPHY_MASTER);
 		/* wait for DPHY init to complete */
 		wait_init_done(dev_p, dphy_no, MIPI_DPHY_D_LANES);
 		wait_init_done(dev_p, dphy_no + 1,
-				cfg->active_lanes - MIPI_DPHY_D_LANES);
+			       cfg->active_lanes - MIPI_DPHY_D_LANES);
 		wait_pll_lock(dev_p, dphy_no);
 		wait_pll_lock(dev_p, dphy_no + 1);
-	} else {	/* Single DPHY */
-		dphy_init_sequence(dev_p, cfg, dphy_no, MIPI_DPHY_MASTER);
+		udelay(1000);
+		dphy_wait_fsm(dev_p, dphy_no, DPHY_TX_IDLE);
+	} else {		/* Single DPHY */
+		dphy_init_sequence(dev_p, cfg, dphy_no, cfg->active_lanes,
+				   MIPI_DPHY_MASTER);
+		dphy_wait_fsm(dev_p, dphy_no, DPHY_TX_IDLE);
 		wait_init_done(dev_p, dphy_no, cfg->active_lanes);
 		wait_pll_lock(dev_p, dphy_no);
 	}
-	return 0;
-}
-
-static void mipi_tx_init_irqs(struct kmb_drm_private *dev_p,
-	union mipi_irq_cfg *cfg,
-	struct	mipi_tx_ctrl_cfg *tx_ctrl_cfg)
-{
-	unsigned long irqflags;
-	uint8_t vc;
-
-	/* clear all interrupts first */
-	/*local interrupts */
-	SET_MIPI_TX_HS_IRQ_CLEAR(dev_p, MIPI_CTRL6, MIPI_TX_HS_IRQ_ALL);
-	/*global interrupts */
-	SET_MIPI_CTRL_IRQ_CLEAR0(dev_p, MIPI_CTRL6, MIPI_HS_IRQ);
-	SET_MIPI_CTRL_IRQ_CLEAR0(dev_p, MIPI_CTRL6, MIPI_DPHY_ERR_IRQ);
-	SET_MIPI_CTRL_IRQ_CLEAR1(dev_p, MIPI_CTRL6, MIPI_HS_RX_EVENT_IRQ);
-
-	/*enable interrupts */
-	spin_lock_irqsave(&dev_p->irq_lock, irqflags);
-	for (vc = 0; vc < MIPI_CTRL_VIRTUAL_CHANNELS; vc++) {
-		if (tx_ctrl_cfg->frames[vc] == NULL)
-			continue;
-		/*enable FRAME_DONE interrupt if VC is configured */
-		SET_HS_IRQ_ENABLE(dev_p, MIPI_CTRL6,
-				MIPI_TX_HS_IRQ_FRAME_DONE_0 << vc);
-		break; /*only one vc for LCD interface */
-	}
 
-	/*enable user enabled interrupts */
-	if (cfg->irq_cfg.dphy_error)
-		SET_MIPI_CTRL_IRQ_ENABLE0(dev_p, MIPI_CTRL6, MIPI_DPHY_ERR_IRQ);
-	if (cfg->irq_cfg.line_compare)
-		SET_HS_IRQ_ENABLE(dev_p, MIPI_CTRL6,
-				MIPI_TX_HS_IRQ_LINE_COMPARE);
-	if (cfg->irq_cfg.ctrl_error)
-		SET_HS_IRQ_ENABLE(dev_p, MIPI_CTRL6, MIPI_TX_HS_IRQ_ERROR);
-
-	spin_unlock_irqrestore(&dev_p->irq_lock, irqflags);
+	return 0;
 }
 
 void mipi_tx_handle_irqs(struct kmb_drm_private *dev_p)
@@ -1377,7 +1629,7 @@ void mipi_tx_handle_irqs(struct kmb_drm_private *dev_p)
 	if (irq_ctrl_stat_0 & MIPI_DPHY_ERR_MASK) {
 		if (irq_ctrl_stat_0 & ((1 << (MIPI_DPHY6 + 1))))
 			SET_MIPI_CTRL_IRQ_CLEAR0(dev_p, MIPI_CTRL6,
-					MIPI_DPHY_ERR_IRQ);
+						 MIPI_DPHY_ERR_IRQ);
 	} else if (irq_ctrl_stat_0 & MIPI_HS_IRQ_MASK) {
 		hs_stat = GET_MIPI_TX_HS_IRQ_STATUS(dev_p, MIPI_CTRL6);
 		hs_enable = GET_HS_IRQ_ENABLE(dev_p, MIPI_CTRL6);
@@ -1385,9 +1637,9 @@ void mipi_tx_handle_irqs(struct kmb_drm_private *dev_p)
 		/*look for errors */
 		if (hs_stat & MIPI_TX_HS_IRQ_ERROR) {
 			CLR_HS_IRQ_ENABLE(dev_p, MIPI_CTRL6,
-				(hs_stat & MIPI_TX_HS_IRQ_ERROR) |
-				MIPI_TX_HS_IRQ_DMA_DONE |
-				MIPI_TX_HS_IRQ_DMA_IDLE);
+					  (hs_stat & MIPI_TX_HS_IRQ_ERROR) |
+					  MIPI_TX_HS_IRQ_DMA_DONE |
+					  MIPI_TX_HS_IRQ_DMA_IDLE);
 		}
 		/* clear local, then global */
 		SET_MIPI_TX_HS_IRQ_CLEAR(dev_p, MIPI_CTRL6, hs_stat);
@@ -1396,6 +1648,152 @@ void mipi_tx_handle_irqs(struct kmb_drm_private *dev_p)
 
 }
 
+void dma_transfer(struct kmb_drm_private *dev_p, int mipi_number,
+		  u64 dma_start_address, int data_length)
+{
+	u64 dma_cfg_adr_offset;
+	u64 dma_start_adr_offset;
+	u64 dma_length_adr_offset;
+	u32 reg_wr_data;
+	int axi_burst_length;
+	int mipi_fifo_flush;
+	int dma_pipelined_axi_en;
+	int dma_en;
+	int dma_autorestart_mode_0;
+	int tx_rx;
+
+	DRM_INFO("%s: starting a new DMA transfer for mipi %d ", __func__,
+		 mipi_number);
+
+	if (mipi_number < 6)
+		tx_rx = 0;
+	else
+		tx_rx = 1;
+
+	dma_cfg_adr_offset =
+		MIPI_TX_HS_DMA_CFG + HS_OFFSET(mipi_number);
+	dma_start_adr_offset =
+		MIPI_TX_HS_DMA_START_ADR_CHAN0 + HS_OFFSET(mipi_number);
+	dma_length_adr_offset =
+		MIPI_TX_HS_DMA_LEN_CHAN0 + HS_OFFSET(mipi_number);
+
+	reg_wr_data = 0;
+	reg_wr_data = dma_start_address;
+	kmb_write_mipi(dev_p, dma_start_adr_offset, reg_wr_data);
+
+	reg_wr_data = 0;
+	reg_wr_data = data_length;
+	kmb_write_mipi(dev_p, dma_length_adr_offset, reg_wr_data);
+
+	axi_burst_length = 16;
+	mipi_fifo_flush = 0;
+	dma_pipelined_axi_en = 1;
+	dma_en = 1;
+	dma_autorestart_mode_0 = 0;
+
+	reg_wr_data = 0;
+	reg_wr_data =
+	    ((axi_burst_length & 0x1ffff) << 0 | (mipi_fifo_flush & 0xf) << 9 |
+	     (dma_pipelined_axi_en & 0x1) << 13 | (dma_en & 0xf) << 16 |
+	     (dma_autorestart_mode_0 & 0x3) << 24);
+
+	kmb_write_mipi(dev_p, dma_cfg_adr_offset, reg_wr_data);
+}
+
+/**
+ * Reads specified number of bytes from the file.
+ *
+ * @param file         - file structure.
+ * @param offset       - offset in the file.
+ * @param addr         - address of the buffer.
+ * @param count        - size of the buffer .
+ *
+ * @return 0 if success or error code.
+ */
+int kmb_kernel_read(struct file *file, loff_t offset,
+		    char *addr, unsigned long count)
+{
+	char __user *buf = (char __user *)addr;
+	ssize_t ret;
+
+	if (!(file->f_mode & FMODE_READ))
+		return -EBADF;
+
+	ret = kernel_read(file, buf, count, &offset);
+
+	return ret;
+}
+
+int kmb_dsi_hw_init(struct drm_device *dev)
+{
+	struct kmb_drm_private *dev_p = dev->dev_private;
+	int i;
+
+	if (hw_initialized)
+		return 0;
+	udelay(1000);
+	kmb_write_mipi(dev_p, DPHY_ENABLE, 0);
+	kmb_write_mipi(dev_p, DPHY_INIT_CTRL0, 0);
+	kmb_write_mipi(dev_p, DPHY_INIT_CTRL1, 0);
+	kmb_write_mipi(dev_p, DPHY_INIT_CTRL2, 0);
+
+	/* initialize mipi controller */
+	mipi_tx_init_cntrl(dev_p, &mipi_tx_init_cfg);
+	/* irq initialization */
+	//mipi_tx_init_irqs(dev_p, &int_cfg, &mipi_tx_init_cfg.tx_ctrl_cfg);
+	/*d-phy initialization */
+	mipi_tx_init_dphy(dev_p, &mipi_tx_init_cfg);
+#ifdef MIPI_TX_TEST_PATTERN_GENERATION
+	for (i = MIPI_CTRL6; i < MIPI_CTRL6 + 1; i++) {
+		mipi_tx_hs_tp_gen(dev_p, 0, MIPI_TX_HS_TP_V_STRIPES,
+				  0x05, 0xffffff, 0xff00, i);
+	}
+	DRM_INFO("%s : %d MIPI_TXm_HS_CTRL = 0x%x\n", __func__,
+		 __LINE__, kmb_read_mipi(dev_p, MIPI_TXm_HS_CTRL(6)));
+#else
+	dma_data_length = image_height * image_width * unpacked_bytes;
+	file = filp_open(IMAGE_PATH, O_RDWR, 0);
+	if (IS_ERR(file)) {
+		DRM_ERROR("filp_open failed\n");
+		return -EBADF;
+	}
+
+	file_buf = kzalloc(PAGE_SIZE, GFP_KERNEL);
+	if (!file_buf) {
+		DRM_ERROR("file_buf alloc failed\n");
+		return -ENOMEM;
+	}
+
+	i_size = i_size_read(file_inode(file));
+	while (offset < i_size) {
+
+		file_buf_len = kmb_kernel_read(file, offset,
+					       file_buf, PAGE_SIZE);
+		if (file_buf_len < 0) {
+			rc = file_buf_len;
+			break;
+		}
+		if (file_buf_len == 0)
+			break;
+		offset += file_buf_len;
+		count++;
+		dma_tx_start_address = file_buf;
+		dma_transfer(dev_p, MIPI_CTRL6, dma_tx_start_address,
+			     PAGE_SIZE);
+
+	}
+	DRM_INFO("count = %d\n", count);
+	kfree(file_buf);
+	filp_close(file, NULL);
+
+#endif //MIPI_TX_TEST_PATTERN_GENERATION
+
+	hw_initialized = true;
+	DRM_INFO("%s : %d mipi hw_initialized = %d\n", __func__, __LINE__,
+		 hw_initialized);
+	return 0;
+}
+
 int kmb_dsi_init(struct drm_device *dev, struct drm_bridge *bridge)
 {
 	struct kmb_dsi *kmb_dsi;
@@ -1403,7 +1801,6 @@ int kmb_dsi_init(struct drm_device *dev, struct drm_bridge *bridge)
 	struct kmb_connector *kmb_connector;
 	struct drm_connector *connector;
 	struct kmb_dsi_host *host;
-	struct kmb_drm_private *dev_p = dev->dev_private;
 	int ret = 0;
 
 	kmb_dsi = kzalloc(sizeof(*kmb_dsi), GFP_KERNEL);
@@ -1412,6 +1809,7 @@ int kmb_dsi_init(struct drm_device *dev, struct drm_bridge *bridge)
 		return -ENOMEM;
 	}
 
+	DRM_INFO("%s : %d\n", __func__, __LINE__);
 	kmb_connector = kzalloc(sizeof(*kmb_connector), GFP_KERNEL);
 	if (!kmb_connector) {
 		kfree(kmb_dsi);
@@ -1424,7 +1822,7 @@ int kmb_dsi_init(struct drm_device *dev, struct drm_bridge *bridge)
 	host = kmb_dsi_host_init(dev, kmb_dsi);
 	if (!host) {
 		DRM_ERROR("Faile to allocate host\n");
-//		drm_encoder_cleanup(encoder);
+//              drm_encoder_cleanup(encoder);
 		kfree(kmb_dsi);
 		kfree(kmb_connector);
 		return -ENOMEM;
@@ -1435,34 +1833,34 @@ int kmb_dsi_init(struct drm_device *dev, struct drm_bridge *bridge)
 	encoder->possible_crtcs = 1;
 	encoder->possible_clones = 0;
 	drm_encoder_init(dev, encoder, &kmb_dsi_funcs, DRM_MODE_ENCODER_DSI,
-			"MIPI-DSI");
+			 "MIPI-DSI");
 
 	drm_connector_init(dev, connector, &kmb_dsi_connector_funcs,
-						   DRM_MODE_CONNECTOR_DSI);
+			   DRM_MODE_CONNECTOR_DSI);
 	drm_connector_helper_add(connector, &kmb_dsi_connector_helper_funcs);
 
 	DRM_INFO("%s : %d connector = %s encoder = %s\n", __func__,
-			__LINE__, connector->name, encoder->name);
+		 __LINE__, connector->name, encoder->name);
 
+	DRM_INFO("%s : %d\n", __func__, __LINE__);
 	ret = drm_connector_attach_encoder(connector, encoder);
 
 	/* Link drm_bridge to encoder */
+#ifndef FCCTEST
 	ret = drm_bridge_attach(encoder, bridge, NULL, 0);
 	if (ret) {
 		DRM_ERROR("failed to attach bridge to MIPI\n");
 		drm_encoder_cleanup(encoder);
 		return ret;
 	}
-
+#endif
+#ifndef FCCTEST
 	DRM_INFO("%s : %d Bridge attached : SUCCESS\n", __func__, __LINE__);
-	/* initialize mipi controller */
-	mipi_tx_init_cntrl(dev_p, &mipi_tx_init_cfg);
-
-	/*d-phy initialization */
-	mipi_tx_init_dphy(dev_p, &mipi_tx_init_cfg);
+#endif
 
-	/* irq initialization */
-	mipi_tx_init_irqs(dev_p, &int_cfg, &mipi_tx_init_cfg.tx_ctrl_cfg);
+#ifdef FCCTEST
+	kmb_dsi_hw_init(dev);
+#endif
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.h b/drivers/gpu/drm/kmb/kmb_dsi.h
index ef526b4..d0196a4 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.h
+++ b/drivers/gpu/drm/kmb/kmb_dsi.h
@@ -63,7 +63,6 @@ struct kmb_connector {
 #define MIPI_DPHY_DEFAULT_BIT_RATES 63
 
 /*DPHY Tx test codes */
-#define TEST_CODE_MULTIPLE_PHY_CTRL	0x03
 
 enum mipi_ctrl_num {
 	MIPI_CTRL0 = 0,
@@ -341,6 +340,7 @@ int kmb_dsi_init(struct drm_device *dev, struct drm_bridge *bridge);
 void kmb_plane_destroy(struct drm_plane *plane);
 void mipi_tx_handle_irqs(struct kmb_drm_private *dev_p);
 void dsi_host_unregister(void);
+int kmb_dsi_hw_init(struct drm_device *dev);
 
 #define to_kmb_connector(x) container_of(x, struct kmb_connector, base)
 #define to_kmb_host(x) container_of(x, struct kmb_dsi_host, base)
diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index de5ca88..2815ab3 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -133,8 +133,12 @@ static int kmb_plane_atomic_check(struct drm_plane *plane,
 	struct drm_framebuffer *fb;
 	int ret;
 
+
 	fb = state->fb;
 
+	if (!fb || !state->crtc)
+		return 0;
+
 	ret = check_pixel_format(plane, fb->format->format);
 	if (ret)
 		return ret;
@@ -144,6 +148,38 @@ static int kmb_plane_atomic_check(struct drm_plane *plane,
 	return 0;
 }
 
+static void kmb_plane_atomic_disable(struct drm_plane *plane,
+				struct drm_plane_state *state)
+{
+	struct kmb_plane *kmb_plane = to_kmb_plane(plane);
+	int ctrl = 0;
+	struct kmb_drm_private *dev_p;
+	int plane_id;
+
+	dev_p = plane->dev->dev_private;
+	plane_id = kmb_plane->id;
+
+	switch (plane_id) {
+	case LAYER_0:
+		ctrl = LCD_CTRL_VL1_ENABLE;
+		break;
+	case LAYER_1:
+		ctrl = LCD_CTRL_VL2_ENABLE;
+		break;
+	case LAYER_2:
+		ctrl = LCD_CTRL_GL1_ENABLE;
+		break;
+	case LAYER_3:
+		ctrl = LCD_CTRL_GL2_ENABLE;
+		break;
+	}
+
+	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
+			~LCD_DMA_LAYER_ENABLE);
+	kmb_write_lcd(dev_p, LCD_CONTROL, ~ctrl);
+}
+
+
 unsigned int set_pixel_format(u32 format)
 {
 	unsigned int val = 0;
@@ -257,6 +293,7 @@ unsigned int set_bits_per_pixel(const struct drm_format_info *format)
 	return val;
 }
 
+#ifdef LCD_TEST
 static void config_csc(struct kmb_drm_private *dev_p, int plane_id)
 {
 	/*YUV to RGB conversion using the fixed matrix csc_coef_lcd */
@@ -274,26 +311,38 @@ static void config_csc(struct kmb_drm_private *dev_p, int plane_id)
 	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_OFF3(plane_id), csc_coef_lcd[11]);
 	kmb_set_bitmask_lcd(dev_p, LCD_LAYERn_CFG(plane_id), LCD_LAYER_CSC_EN);
 }
+#endif
 
 static void kmb_plane_atomic_update(struct drm_plane *plane,
 				    struct drm_plane_state *state)
 {
-	struct drm_framebuffer *fb = plane->state->fb;
+#ifdef LCD_TEST
+	struct drm_framebuffer *fb;
 	struct kmb_drm_private *dev_p;
 	dma_addr_t addr;
 	unsigned int width;
 	unsigned int height;
 	unsigned int dma_len;
-	struct kmb_plane *kmb_plane = to_kmb_plane(plane);
+	struct kmb_plane *kmb_plane;
 	unsigned int dma_cfg;
 	unsigned int ctrl = 0, val = 0, out_format = 0;
 	unsigned int src_w, src_h, crtc_x, crtc_y;
-	unsigned char plane_id = kmb_plane->id;
-	int num_planes = fb->format->num_planes;
+	unsigned char plane_id;
+	int num_planes;
+
+	if (!plane || !plane->state || !state)
+		return;
 
+	fb = plane->state->fb;
 	if (!fb)
 		return;
 
+	num_planes = fb->format->num_planes;
+	kmb_plane = to_kmb_plane(plane);
+	plane_id = kmb_plane->id;
+
+
+
 	dev_p = plane->dev->dev_private;
 
 	src_w = plane->state->src_w >> 16;
@@ -425,11 +474,13 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	/* do not interleave RGB channels for mipi Tx compatibility */
 	out_format |= LCD_OUTF_MIPI_RGB_MODE;
 	kmb_write_lcd(dev_p, LCD_OUT_FORMAT_CFG, out_format);
+#endif
 }
 
 static const struct drm_plane_helper_funcs kmb_plane_helper_funcs = {
 	.atomic_check = kmb_plane_atomic_check,
 	.atomic_update = kmb_plane_atomic_update,
+	.atomic_disable = kmb_plane_atomic_disable
 };
 
 void kmb_plane_destroy(struct drm_plane *plane)
diff --git a/drivers/gpu/drm/kmb/kmb_regs.h b/drivers/gpu/drm/kmb/kmb_regs.h
index 9ca7851..eb84320 100644
--- a/drivers/gpu/drm/kmb/kmb_regs.h
+++ b/drivers/gpu/drm/kmb/kmb_regs.h
@@ -29,6 +29,7 @@
 #define ENABLE					 1
 #define DISABLE					 0
 /*from Data Book section 12.5.8.1 page 4322 */
+#define CPR_BASE_ADDR                           (0x20810000)
 #define MIPI_BASE_ADDR                          (0x20900000)
 /*from Data Book section 12.11.6.1 page 4972 */
 #define LCD_BASE_ADDR                           (0x20930000)
@@ -544,6 +545,9 @@
 #define   SET_MC_FIFO_RTHRESHOLD(dev, ctrl, vc, th)	\
 	kmb_write_bits_mipi(dev, MIPI_TXm_HS_MC_FIFO_RTHRESHOLDn(ctrl, vc/2), \
 			(vc % 2)*16, 16, th)
+#define MIPI_TX_HS_DMA_CFG			(0x1a8)
+#define MIPI_TX_HS_DMA_START_ADR_CHAN0		(0x1ac)
+#define MIPI_TX_HS_DMA_LEN_CHAN0		(0x1b4)
 
 /* MIPI IRQ */
 #define MIPI_CTRL_IRQ_STATUS0				(0x00)
@@ -572,6 +576,7 @@
 #define MIPI_CTRL_IRQ_CLEAR1				(0x014)
 #define   SET_MIPI_CTRL_IRQ_CLEAR1(dev, M, N)		\
 		kmb_set_bit_mipi(dev, MIPI_CTRL_IRQ_CLEAR1, M+N)
+#define MIPI_CTRL_DIG_LOOPBACK				(0x018)
 #define MIPI_TX_HS_IRQ_STATUS				(0x01c)
 #define   MIPI_TX_HS_IRQ_STATUSm(M)		(MIPI_TX_HS_IRQ_STATUS + \
 						HS_OFFSET(M))
@@ -649,12 +654,16 @@
 #define MIPI_TX_HS_TEST_PAT_CTRL			(0x230)
 #define   MIPI_TXm_HS_TEST_PAT_CTRL(M)			\
 				(MIPI_TX_HS_TEST_PAT_CTRL + HS_OFFSET(M))
-#define   TP_EN_VCm(M)					((M) * 0x04)
+#define   TP_EN_VCm(M)					(1 << ((M) * 0x04))
 #define   TP_SEL_VCm(M, N)				\
 				(N << (((M) * 0x04) + 1))
 #define   TP_STRIPE_WIDTH(M)				((M) << 16)
 #define MIPI_TX_HS_TEST_PAT_COLOR0			(0x234)
+#define   MIPI_TXm_HS_TEST_PAT_COLOR0(M)		\
+				(MIPI_TX_HS_TEST_PAT_COLOR0 + HS_OFFSET(M))
 #define MIPI_TX_HS_TEST_PAT_COLOR1			(0x238)
+#define   MIPI_TXm_HS_TEST_PAT_COLOR1(M)		\
+				(MIPI_TX_HS_TEST_PAT_COLOR1 + HS_OFFSET(M))
 
 /* D-PHY regs */
 #define DPHY_ENABLE				(0x100)
@@ -670,15 +679,25 @@
 #define   CLR_DPHY_INIT_CTRL0(dev, dphy, offset)	\
 			kmb_clr_bit_mipi(dev, DPHY_INIT_CTRL0, (dphy+offset))
 #define DPHY_INIT_CTRL2				(0x10c)
+#define DPHY_PLL_OBS0				(0x110)
+#define DPHY_PLL_OBS1				(0x114)
+#define DPHY_PLL_OBS2				(0x118)
 #define DPHY_FREQ_CTRL0_3			(0x11c)
+#define DPHY_FREQ_CTRL4_7			(0x120)
 #define   SET_DPHY_FREQ_CTRL0_3(dev, dphy, val)	\
 			kmb_write_bits_mipi(dev, DPHY_FREQ_CTRL0_3 \
 			+ ((dphy/4)*4), (dphy % 4) * 8, 6, val)
 
+#define DPHY_FORCE_CTRL0			(0x128)
+#define DPHY_FORCE_CTRL1			(0x12C)
 #define MIPI_DPHY_STAT0_3			(0x134)
+#define MIPI_DPHY_STAT4_7			(0x138)
 #define	  GET_STOPSTATE_DATA(dev, dphy)		\
 			(((kmb_read_mipi(dev, MIPI_DPHY_STAT0_3 + (dphy/4)*4)) \
 					>> (((dphy % 4)*8)+4)) & 0x03)
+
+#define MIPI_DPHY_ERR_STAT6_7			(0x14C)
+
 #define DPHY_TEST_CTRL0				(0x154)
 #define   SET_DPHY_TEST_CTRL0(dev, dphy)		\
 			kmb_set_bit_mipi(dev, DPHY_TEST_CTRL0, (dphy))
@@ -700,8 +719,15 @@
 			4, ((val) << (((dphy)%4)*8)))
 #define DPHY_TEST_DOUT0_3			(0x168)
 #define   GET_TEST_DOUT0_3(dev, dphy)		\
-			(kmb_read_mipi(dev, DPHY_TEST_DOUT0_3 + 4) \
+			(kmb_read_mipi(dev, DPHY_TEST_DOUT0_3) \
+			>> (((dphy)%4)*8) & 0xff)
+#define DPHY_TEST_DOUT4_7			(0x16C)
+#define   GET_TEST_DOUT4_7(dev, dphy)		\
+			(kmb_read_mipi(dev, DPHY_TEST_DOUT4_7) \
 			>> (((dphy)%4)*8) & 0xff)
+#define DPHY_TEST_DOUT8_9			(0x170)
+#define DPHY_TEST_DIN4_7			(0x160)
+#define DPHY_TEST_DIN8_9			(0x164)
 #define DPHY_PLL_LOCK				(0x188)
 #define   GET_PLL_LOCK(dev, dphy)		\
 			(kmb_read_mipi(dev, DPHY_PLL_LOCK) \
@@ -714,6 +740,10 @@
 #define   MIPI_COMMON			(1<<2)
 #define   MIPI_TX0			(1<<9)
 #define MSS_CAM_RSTN_CTRL		(0x14)
+#define MSS_CAM_RSTN_SET		(0x20)
+#define MSS_CAM_RSTN_CLR		(0x24)
 
+#define MSSCPU_CPR_CLK_EN		(0x0)
+#define MSSCPU_CPR_RST_EN		(0x10)
 #define BIT_MASK_16				(0xffff)
 #endif /* __KMB_REGS_H__ */
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
