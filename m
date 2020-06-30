Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E59A20FF1D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3868B6E4A5;
	Tue, 30 Jun 2020 21:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D5D26E32A;
 Tue, 30 Jun 2020 21:28:56 +0000 (UTC)
IronPort-SDR: JPa4odwsJqfCGGONuwpD2wxLSHfZ3WUmpdHUHU7XfVonFtReGNSuEwMUBfco0GJZ54Wn0IBWC+
 Q85pqondBt9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="133846951"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="133846951"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:55 -0700
IronPort-SDR: DuNMrXAXrrH1pz985zRH6aZWv3jCZZ9rpH8KYqjRwd1s9FMBKwn4/9cLhJSXvp1gKsNN9jxkC4
 DcmGV5iQnHtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066848"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:55 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:28:04 -0700
Message-Id: <1593552491-23698-53-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 52/59] drm/kmb: Cleaned up code
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

From: Edmund Dea <edmund.j.dea@intel.com>

to remove compiler warnings and general clean up

Signed-off-by: Edmund Dea <edmund.j.dea@intel.com>
---
 drivers/gpu/drm/kmb/kmb_crtc.c  |   48 +-
 drivers/gpu/drm/kmb/kmb_crtc.h  |    6 +-
 drivers/gpu/drm/kmb/kmb_drv.c   |  115 +++--
 drivers/gpu/drm/kmb/kmb_drv.h   |  107 ++--
 drivers/gpu/drm/kmb/kmb_dsi.c   | 1073 +++++++++++++++++++++------------------
 drivers/gpu/drm/kmb/kmb_dsi.h   |   84 ++-
 drivers/gpu/drm/kmb/kmb_plane.c |  155 ++----
 drivers/gpu/drm/kmb/kmb_plane.h |   74 ++-
 drivers/gpu/drm/kmb/kmb_regs.h  |   29 +-
 9 files changed, 898 insertions(+), 793 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_crtc.c b/drivers/gpu/drm/kmb/kmb_crtc.c
index 16f6c7f..c01977b 100644
--- a/drivers/gpu/drm/kmb/kmb_crtc.c
+++ b/drivers/gpu/drm/kmb/kmb_crtc.c
@@ -59,10 +59,10 @@ static int kmb_crtc_enable_vblank(struct drm_crtc *crtc)
 	kmb_write_lcd(dev->dev_private, LCD_INT_CLEAR, LCD_INT_VERT_COMP);
 	/*set which interval to generate vertical interrupt */
 	kmb_write_lcd(dev->dev_private, LCD_VSTATUS_COMPARE,
-			LCD_VSTATUS_COMPARE_VSYNC);
+		      LCD_VSTATUS_COMPARE_VSYNC);
 	/* enable vertical interrupt */
 	kmb_set_bitmask_lcd(dev->dev_private, LCD_INT_ENABLE,
-			LCD_INT_VERT_COMP);
+			    LCD_INT_VERT_COMP);
 	return 0;
 }
 
@@ -74,7 +74,7 @@ static void kmb_crtc_disable_vblank(struct drm_crtc *crtc)
 	kmb_write_lcd(dev->dev_private, LCD_INT_CLEAR, LCD_INT_VERT_COMP);
 	/* disable vertical interrupt */
 	kmb_clr_bitmask_lcd(dev->dev_private, LCD_INT_ENABLE,
-			LCD_INT_VERT_COMP);
+			    LCD_INT_VERT_COMP);
 
 }
 
@@ -102,38 +102,38 @@ static void kmb_crtc_mode_set_nofb(struct drm_crtc *crtc)
 	/* initialize mipi */
 	kmb_dsi_hw_init(dev, m);
 	DRM_INFO("vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d\n",
-			m->crtc_vsync_start - m->crtc_vdisplay,
-			m->crtc_vtotal - m->crtc_vsync_end,
-			m->crtc_vsync_end - m->crtc_vsync_start,
-			m->crtc_hsync_start - m->crtc_hdisplay,
-			m->crtc_htotal - m->crtc_hsync_end,
-			m->crtc_hsync_end - m->crtc_hsync_start);
+		 m->crtc_vsync_start - m->crtc_vdisplay,
+		 m->crtc_vtotal - m->crtc_vsync_end,
+		 m->crtc_vsync_end - m->crtc_vsync_start,
+		 m->crtc_hsync_start - m->crtc_hdisplay,
+		 m->crtc_htotal - m->crtc_hsync_end,
+		 m->crtc_hsync_end - m->crtc_hsync_start);
 	val = kmb_read_lcd(dev->dev_private, LCD_INT_ENABLE);
 	kmb_clr_bitmask_lcd(dev->dev_private, LCD_INT_ENABLE, val);
 	kmb_set_bitmask_lcd(dev->dev_private, LCD_INT_CLEAR, ~0x0);
-//	vm.vfront_porch = m->crtc_vsync_start - m->crtc_vdisplay;
+//      vm.vfront_porch = m->crtc_vsync_start - m->crtc_vdisplay;
 	vm.vfront_porch = 2;
-//	vm.vback_porch = m->crtc_vtotal - m->crtc_vsync_end;
+//      vm.vback_porch = m->crtc_vtotal - m->crtc_vsync_end;
 	vm.vback_porch = 2;
-//	vm.vsync_len = m->crtc_vsync_end - m->crtc_vsync_start;
+//      vm.vsync_len = m->crtc_vsync_end - m->crtc_vsync_start;
 	vm.vsync_len = 1;
 	//vm.hfront_porch = m->crtc_hsync_start - m->crtc_hdisplay;
 	vm.hfront_porch = 0;
 	vm.hback_porch = 0;
 	//vm.hback_porch = m->crtc_htotal - m->crtc_hsync_end;
 	vm.hsync_len = 7;
-//	vm.hsync_len = m->crtc_hsync_end - m->crtc_hsync_start;
+//      vm.hsync_len = m->crtc_hsync_end - m->crtc_hsync_start;
 
 	vsync_start_offset = m->crtc_vsync_start - m->crtc_hsync_start;
 	vsync_end_offset = m->crtc_vsync_end - m->crtc_hsync_end;
 
-	DRM_INFO("%s : %dactive height= %d vbp=%d vfp=%d vsync-w=%d h-active=%d h-bp=%d h-fp=%d hysnc-l=%d\n",
-			__func__, __LINE__, m->crtc_vdisplay,
-			vm.vback_porch, vm.vfront_porch,
-			vm.vsync_len, m->crtc_hdisplay,
-			vm.hback_porch, vm.hfront_porch, vm.hsync_len);
+	DRM_DEBUG
+	    ("%s : %dactive height= %d vbp=%d vfp=%d vsync-w=%d h-active=%d h-bp=%d h-fp=%d hysnc-l=%d",
+	     __func__, __LINE__, m->crtc_vdisplay, vm.vback_porch,
+	     vm.vfront_porch, vm.vsync_len, m->crtc_hdisplay, vm.hback_porch,
+	     vm.hfront_porch, vm.hsync_len);
 	kmb_write_lcd(dev->dev_private, LCD_V_ACTIVEHEIGHT,
-			m->crtc_vdisplay - 1);
+		      m->crtc_vdisplay - 1);
 	kmb_write_lcd(dev->dev_private, LCD_V_BACKPORCH, vm.vback_porch);
 	kmb_write_lcd(dev->dev_private, LCD_V_FRONTPORCH, vm.vfront_porch);
 	kmb_write_lcd(dev->dev_private, LCD_VSYNC_WIDTH, vm.vsync_len - 1);
@@ -148,14 +148,14 @@ static void kmb_crtc_mode_set_nofb(struct drm_crtc *crtc)
 
 	if (m->flags == DRM_MODE_FLAG_INTERLACE) {
 		kmb_write_lcd(dev->dev_private,
-				LCD_VSYNC_WIDTH_EVEN, vm.vsync_len - 1);
+			      LCD_VSYNC_WIDTH_EVEN, vm.vsync_len - 1);
 		kmb_write_lcd(dev->dev_private,
 				LCD_V_BACKPORCH_EVEN, vm.vback_porch);
 		kmb_write_lcd(dev->dev_private,
 				LCD_V_FRONTPORCH_EVEN, vm.vfront_porch);
 		kmb_write_lcd(dev->dev_private, LCD_V_ACTIVEHEIGHT_EVEN,
-			m->crtc_vdisplay - 1);
-		/*this is hardcoded as 10 in the Myriadx code*/
+			      m->crtc_vdisplay - 1);
+		/*this is hardcoded as 10 in the Myriadx code */
 		kmb_write_lcd(dev->dev_private, LCD_VSYNC_START_EVEN, 10);
 		kmb_write_lcd(dev->dev_private, LCD_VSYNC_END_EVEN, 10);
 	}
@@ -195,7 +195,7 @@ static void kmb_crtc_atomic_begin(struct drm_crtc *crtc,
 	struct drm_device *dev = crtc->dev;
 
 	kmb_clr_bitmask_lcd(dev->dev_private, LCD_INT_ENABLE,
-			LCD_INT_VERT_COMP);
+			    LCD_INT_VERT_COMP);
 }
 
 static void kmb_crtc_atomic_flush(struct drm_crtc *crtc,
@@ -204,7 +204,7 @@ static void kmb_crtc_atomic_flush(struct drm_crtc *crtc,
 	struct drm_device *dev = crtc->dev;
 
 	kmb_set_bitmask_lcd(dev->dev_private, LCD_INT_ENABLE,
-			LCD_INT_VERT_COMP);
+			    LCD_INT_VERT_COMP);
 
 	spin_lock_irq(&crtc->dev->event_lock);
 	if (crtc->state->event)
diff --git a/drivers/gpu/drm/kmb/kmb_crtc.h b/drivers/gpu/drm/kmb/kmb_crtc.h
index 5fe8890..2c05240 100644
--- a/drivers/gpu/drm/kmb/kmb_crtc.h
+++ b/drivers/gpu/drm/kmb/kmb_crtc.h
@@ -44,6 +44,9 @@
 #include <linux/platform_device.h>
 #include "kmb_drv.h"
 
+#define to_kmb_crtc_state(x) container_of(x, struct kmb_crtc_state, crtc_base)
+#define to_kmb_crtc(x) container_of(x, struct kmb_crtc, crtc_base)
+
 struct kmb_crtc {
 	struct drm_crtc crtc_base;
 	struct kmb_drm_private kmb_dev;
@@ -52,8 +55,7 @@ struct kmb_crtc {
 struct kmb_crtc_state {
 	struct drm_crtc_state crtc_base;
 };
-#define to_kmb_crtc_state(x) container_of(x, struct kmb_crtc_state, crtc_base)
-#define to_kmb_crtc(x) container_of(x, struct kmb_crtc, crtc_base)
+
 extern void kmb_plane_destroy(struct drm_plane *plane);
 extern struct kmb_plane *kmb_plane_init(struct drm_device *drm);
 #endif /* __KMB_CRTC_H__ */
diff --git a/drivers/gpu/drm/kmb/kmb_drv.c b/drivers/gpu/drm/kmb/kmb_drv.c
index 26d004c..c699f01 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.c
+++ b/drivers/gpu/drm/kmb/kmb_drv.c
@@ -26,7 +26,7 @@
 #include <linux/module.h>
 #include <linux/spinlock.h>
 #include <linux/clk.h>
-#include <linux/component.h>
+//#include <linux/component.h>
 #include <linux/console.h>
 #include <linux/list.h>
 #include <linux/of_graph.h>
@@ -50,9 +50,9 @@
 #include "kmb_plane.h"
 #include "kmb_dsi.h"
 
-#define DEBUG
+//#define DEBUG
 
-/*IRQ handler*/
+/* IRQ handler */
 static irqreturn_t kmb_isr(int irq, void *arg);
 
 static struct clk *clk_lcd;
@@ -128,8 +128,6 @@ static void __iomem *kmb_map_mmio(struct platform_device *pdev, char *name)
 		release_mem_region(res->start, size);
 		return ERR_PTR(-ENOMEM);
 	}
-	DRM_INFO("%s : %d mapped %s mmio size = %d\n", __func__, __LINE__,
-			name, size);
 	return mem;
 }
 
@@ -137,8 +135,7 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 {
 	struct kmb_drm_private *dev_p = drm->dev_private;
 	struct platform_device *pdev = to_platform_device(drm->dev);
-	/*u32 version;*/
-	int irq_lcd;// irq_mipi;
+	int irq_lcd;
 	int ret = 0;
 	unsigned long clk;
 
@@ -157,8 +154,8 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 		return -ENOMEM;
 	}
 
-	/* This is only for MIPI_TX_MSS_LCD_MIPI_CFG and MSS_CAM_CLK_CTRL
-	 * register
+	/* This is only for MIPI_TX_MSS_LCD_MIPI_CFG and
+	 * MSS_CAM_CLK_CTRL register
 	 */
 	dev_p->msscam_mmio = kmb_map_mmio(pdev, "msscam_regs");
 	if (IS_ERR(dev_p->msscam_mmio)) {
@@ -174,22 +171,21 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 		iounmap(dev_p->mipi_mmio);
 		return -ENOMEM;
 	}
-
-
-
 #define KMB_CLOCKS
 #ifdef KMB_CLOCKS
-	/* Enable display clocks*/
+	/* Enable display clocks */
 	clk_lcd = clk_get(&pdev->dev, "clk_lcd");
 	if (IS_ERR(clk_lcd)) {
 		DRM_ERROR("clk_get() failed clk_lcd\n");
 		goto setup_fail;
 	}
+
 	clk_mipi = clk_get(&pdev->dev, "clk_mipi");
 	if (IS_ERR(clk_mipi)) {
 		DRM_ERROR("clk_get() failed clk_mipi\n");
 		goto setup_fail;
 	}
+
 	clk_mipi_ecfg = clk_get(&pdev->dev, "clk_mipi_ecfg");
 	if (IS_ERR(clk_mipi_ecfg)) {
 		DRM_ERROR("clk_get() failed clk_mipi_ecfg\n");
@@ -201,59 +197,63 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 		DRM_ERROR("clk_get() failed clk_mipi_cfg\n");
 		goto setup_fail;
 	}
-
 #ifdef LCD_TEST
-	/* Set LCD clock to 200 Mhz*/
-	DRM_INFO("Get clk_lcd before set = %ld\n", clk_get_rate(clk_lcd));
+	/* Set LCD clock to 200 Mhz */
+	DRM_DEBUG("Get clk_lcd before set = %ld\n", clk_get_rate(clk_lcd));
 	ret = clk_set_rate(clk_lcd, KMB_LCD_DEFAULT_CLK);
 	if (clk_get_rate(clk_lcd) != KMB_LCD_DEFAULT_CLK) {
 		DRM_ERROR("failed to set to clk_lcd to %d\n",
-				KMB_LCD_DEFAULT_CLK);
+			  KMB_LCD_DEFAULT_CLK);
 	}
-	DRM_INFO("Setting LCD clock to %d Mhz ret = %d\n",
-			KMB_LCD_DEFAULT_CLK/1000000, ret);
+	DRM_INFO("Setting LCD clock tp %d Mhz ret = %d\n",
+		 KMB_LCD_DEFAULT_CLK / 1000000, ret);
 	DRM_INFO("Get clk_lcd after set = %ld\n", clk_get_rate(clk_lcd));
 #endif
-	/* Set MIPI clock to 24 Mhz*/
-	DRM_INFO("Get clk_mipi before set = %ld\n", clk_get_rate(clk_mipi));
+
 #define MIPI_CLK
 #ifdef MIPI_CLK
+	/* Set MIPI clock to 24 Mhz */
+	DRM_DEBUG("Get clk_mipi before set = %ld\n", clk_get_rate(clk_mipi));
 	ret = clk_set_rate(clk_mipi, KMB_MIPI_DEFAULT_CLK);
 	DRM_INFO("Get clk_mipi after set = %ld\n", clk_get_rate(clk_mipi));
 	if (clk_get_rate(clk_mipi) != KMB_MIPI_DEFAULT_CLK) {
 		DRM_ERROR("failed to set to clk_mipi to %d\n",
-				KMB_MIPI_DEFAULT_CLK);
+			  KMB_MIPI_DEFAULT_CLK);
 		goto setup_fail;
 	}
 #endif
 	DRM_INFO("Setting MIPI clock to %d Mhz ret = %d\n",
-			KMB_MIPI_DEFAULT_CLK/1000000, ret);
+		 KMB_MIPI_DEFAULT_CLK / 1000000, ret);
 	DRM_INFO("Get clk_mipi after set = %ld\n", clk_get_rate(clk_mipi));
 
 	clk = clk_get_rate(clk_mipi_ecfg);
 	if (clk != KMB_MIPI_DEFAULT_CFG_CLK) {
-		/* Set MIPI_ECFG clock to 24 Mhz*/
+		/* Set MIPI_ECFG clock to 24 Mhz */
 		DRM_INFO("Get clk_mipi_ecfg before set = %ld\n", clk);
+
 		ret = clk_set_rate(clk_mipi_ecfg, KMB_MIPI_DEFAULT_CFG_CLK);
 		clk = clk_get_rate(clk_mipi_ecfg);
-		if (clk != KMB_MIPI_DEFAULT_CLK) {
+		if (clk != KMB_MIPI_DEFAULT_CFG_CLK) {
 			DRM_ERROR("failed to set to clk_mipi_ecfg to %d\n",
-					KMB_MIPI_DEFAULT_CLK);
+				  KMB_MIPI_DEFAULT_CFG_CLK);
 			goto setup_fail;
 		}
+
 		DRM_INFO("Setting MIPI_ECFG clock tp %d Mhz ret = %d\n",
-				KMB_MIPI_DEFAULT_CLK/1000000, ret);
+			 KMB_MIPI_DEFAULT_CFG_CLK / 1000000, ret);
+		DRM_INFO("Get clk_mipi_ecfg after set = %ld\n", clk);
 	}
 
 	clk = clk_get_rate(clk_mipi_cfg);
 	if (clk != KMB_MIPI_DEFAULT_CFG_CLK) {
-		/* Set MIPI_CFG clock to 24 Mhz*/
+		/* Set MIPI_CFG clock to 24 Mhz */
 		DRM_INFO("Get clk_mipi_cfg before set = %ld\n", clk);
+
 		ret = clk_set_rate(clk_mipi_cfg, 24000000);
 		clk = clk_get_rate(clk_mipi_cfg);
 		if (clk != KMB_MIPI_DEFAULT_CFG_CLK) {
 			DRM_ERROR("failed to set to clk_mipi_cfg to %d\n",
-					KMB_MIPI_DEFAULT_CFG_CLK);
+				  KMB_MIPI_DEFAULT_CFG_CLK);
 			goto setup_fail;
 		}
 		DRM_INFO("Setting MIPI_CFG clock tp 24Mhz ret = %d\n", ret);
@@ -262,10 +262,12 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 
 	ret = kmb_display_clk_enable();
 
-	/* enable MSS_CAM_CLK_CTRL for MIPI TX and LCD */
+	/* Enable MSS_CAM_CLK_CTRL for MIPI TX and LCD */
 	kmb_set_bitmask_msscam(dev_p, MSS_CAM_CLK_CTRL, 0x1fff);
 	kmb_set_bitmask_msscam(dev_p, MSS_CAM_RSTN_CTRL, 0xffffffff);
+
 #endif //KMB_CLOCKS
+
 	/* Register irqs here - section 17.3 in databook
 	 * lists LCD at 79 and 82 for MIPI under MSS CPU -
 	 * firmware has redirected  79 to A53 IRQ 33
@@ -312,19 +314,21 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 		goto setup_fail;
 	}
 
-
 	/* Initialize MIPI DSI */
 	ret = kmb_dsi_init(drm, adv_bridge);
 	if (ret) {
 		DRM_ERROR("failed to initialize DSI\n");
 		goto setup_fail;
 	}
+
 	ret = drm_irq_install(drm, irq_lcd);
 	if (ret < 0) {
 		DRM_ERROR("failed to install IRQ handler\n");
 		goto irq_fail;
 	}
+
 	dev_p->irq_lcd = irq_lcd;
+
 	return 0;
 
 irq_fail:
@@ -336,10 +340,11 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 }
 
 int kmb_atomic_helper_check(struct drm_device *dev,
-		struct drm_atomic_state *state)
+			    struct drm_atomic_state *state)
 {
 	if (!state)
 		return 0;
+
 	return drm_atomic_helper_check(dev, state);
 }
 
@@ -359,28 +364,27 @@ static void kmb_setup_mode_config(struct drm_device *drm)
 	drm->mode_config.funcs = &kmb_mode_config_funcs;
 }
 
-
 static irqreturn_t handle_lcd_irq(struct drm_device *dev)
 {
 	unsigned long status, val;
 
 	status = kmb_read_lcd(dev->dev_private, LCD_INT_STATUS);
 	if (status & LCD_INT_EOF) {
-		/*To DO - handle EOF interrupt? */
+		/* TODO - handle EOF interrupt? */
 		kmb_write_lcd(dev->dev_private, LCD_INT_CLEAR, LCD_INT_EOF);
 	}
 	if (status & LCD_INT_LINE_CMP) {
 		/* clear line compare interrupt */
 		kmb_write_lcd(dev->dev_private, LCD_INT_CLEAR,
-				LCD_INT_LINE_CMP);
+			      LCD_INT_LINE_CMP);
 	}
 	if (status & LCD_INT_LAYER) {
-		/* clear layer interrupts */
+		/* Clear layer interrupts */
 		kmb_write_lcd(dev->dev_private, LCD_INT_CLEAR, LCD_INT_LAYER);
 	}
 
 	if (status & LCD_INT_VERT_COMP) {
-		/* read VSTATUS */
+		/* Read VSTATUS */
 		val = kmb_read_lcd(dev->dev_private, LCD_VSTATUS);
 		val = (val & LCD_VSTATUS_VERTICAL_STATUS_MASK);
 		switch (val) {
@@ -390,19 +394,19 @@ static irqreturn_t handle_lcd_irq(struct drm_device *dev)
 		case LCD_VSTATUS_COMPARE_FRONT_PORCH:
 			/* clear vertical compare interrupt */
 			kmb_write_lcd(dev->dev_private, LCD_INT_CLEAR,
-					LCD_INT_VERT_COMP);
+				      LCD_INT_VERT_COMP);
 			drm_handle_vblank(dev, 0);
 			break;
 		}
 	}
 
-	/* clear all interrupts */
+	/* Clear all interrupts */
 	kmb_set_bitmask_lcd(dev->dev_private, LCD_INT_CLEAR, ~0x0);
 	return IRQ_HANDLED;
 }
 
 #ifdef MIPI_IRQ
-static irqreturn_t  handle_mipi_irq(struct drm_device *dev)
+static irqreturn_t handle_mipi_irq(struct drm_device *dev)
 {
 	mipi_tx_handle_irqs(dev->dev_private);
 	return IRQ_HANDLED;
@@ -428,7 +432,7 @@ DEFINE_DRM_GEM_CMA_FOPS(fops);
 
 static struct drm_driver kmb_driver = {
 	.driver_features = DRIVER_HAVE_IRQ | DRIVER_GEM |
-			DRIVER_MODESET | DRIVER_ATOMIC,
+	    DRIVER_MODESET | DRIVER_ATOMIC,
 	.irq_handler = kmb_isr,
 	.irq_preinstall = kmb_irq_reset,
 	.irq_uninstall = kmb_irq_reset,
@@ -457,7 +461,9 @@ static void kmb_drm_unload(struct device *dev)
 	struct drm_device *drm = dev_get_drvdata(dev);
 	struct kmb_drm_private *dev_p = drm->dev_private;
 
+#ifdef DEBUG
 	dump_stack();
+#endif
 	drm_dev_unregister(drm);
 	drm_kms_helper_poll_fini(drm);
 	of_node_put(dev_p->crtc.port);
@@ -485,7 +491,7 @@ static void kmb_drm_unload(struct device *dev)
 	of_reserved_mem_device_release(drm->dev);
 	drm_mode_config_cleanup(drm);
 
-	/*release clks */
+	/* Release clks */
 	kmb_display_clk_disable();
 	clk_put(clk_lcd);
 	clk_put(clk_mipi);
@@ -512,7 +518,8 @@ static int kmb_probe(struct platform_device *pdev)
 	 *  and then the rest of the driver initialization can procees
 	 *  afterwards and the bridge can be successfully attached.
 	 */
-	adv_bridge =  kmb_dsi_host_bridge_init(dev);
+	adv_bridge = kmb_dsi_host_bridge_init(dev);
+
 #ifndef FCCTEST
 	if (adv_bridge == ERR_PTR(-EPROBE_DEFER))
 		return -EPROBE_DEFER;
@@ -521,6 +528,7 @@ static int kmb_probe(struct platform_device *pdev)
 		return PTR_ERR(adv_bridge);
 	}
 #endif
+
 	/* Create DRM device */
 	drm = drm_dev_alloc(&kmb_driver, dev);
 	if (IS_ERR(drm))
@@ -532,7 +540,7 @@ static int kmb_probe(struct platform_device *pdev)
 
 	drm->dev_private = lcd;
 	kmb_setup_mode_config(drm);
-		dev_set_drvdata(dev, drm);
+	dev_set_drvdata(dev, drm);
 
 	/* Load driver */
 	lcd->n_layers = KMB_MAX_PLANES;
@@ -551,6 +559,7 @@ static int kmb_probe(struct platform_device *pdev)
 		DRM_ERROR("failed to initialize vblank\n");
 		goto err_vblank;
 	}
+
 	drm_mode_config_reset(drm);
 	drm_kms_helper_poll_init(drm);
 
@@ -561,7 +570,7 @@ static int kmb_probe(struct platform_device *pdev)
 		goto err_register;
 
 #ifndef FCCTEST
-//	drm_fbdev_generic_setup(drm, 32);
+	//drm_fbdev_generic_setup(drm, 32);
 #endif
 	return 0;
 
@@ -584,7 +593,7 @@ static int kmb_remove(struct platform_device *pdev)
 	return 0;
 }
 
-static const struct of_device_id  kmb_of_match[] = {
+static const struct of_device_id kmb_of_match[] = {
 	{.compatible = "intel,kmb_display"},
 	{},
 };
@@ -627,13 +636,13 @@ static int __maybe_unused kmb_pm_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(kmb_pm_ops, kmb_pm_suspend, kmb_pm_resume);
 
 static struct platform_driver kmb_platform_driver = {
-	.probe		= kmb_probe,
-	.remove		= kmb_remove,
-	.driver	= {
-		.name = "kmb-drm",
-		.pm = &kmb_pm_ops,
-		.of_match_table	= kmb_of_match,
-	},
+	.probe = kmb_probe,
+	.remove = kmb_remove,
+	.driver = {
+		   .name = "kmb-drm",
+		   .pm = &kmb_pm_ops,
+		   .of_match_table = kmb_of_match,
+		   },
 };
 
 module_platform_driver(kmb_platform_driver);
diff --git a/drivers/gpu/drm/kmb/kmb_drv.h b/drivers/gpu/drm/kmb/kmb_drv.h
index b194139..4916b217 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.h
+++ b/drivers/gpu/drm/kmb/kmb_drv.h
@@ -30,27 +30,29 @@
 
 #define FCCTEST
 #define LCD_TEST
-#define KMB_MAX_WIDTH			1920 /*max width in pixels */
-#define KMB_MAX_HEIGHT			1080 /*max height in pixels */
+#define KMB_MAX_WIDTH			1920	/*max width in pixels */
+#define KMB_MAX_HEIGHT			1080	/*max height in pixels */
 #define KMB_LCD_DEFAULT_CLK		250000000
 #define KMB_MIPI_DEFAULT_CLK		24000000
 #define KMB_MIPI_DEFAULT_CFG_CLK	24000000
 #define KMB_SYS_CLK_MHZ			500
 
+#define crtc_to_kmb_priv(x)	container_of(x, struct kmb_drm_private, crtc)
+
 struct kmb_drm_private {
-	struct drm_device		drm;
-	void __iomem			*lcd_mmio;
-	void __iomem			*mipi_mmio;
-	void __iomem			*msscam_mmio;
-	unsigned char			n_layers;
-	struct clk			*clk;
-	struct drm_crtc			crtc;
-	struct kmb_plane		*plane;
-	struct drm_atomic_state		*state;
-	spinlock_t			irq_lock;
-	int				irq_lcd;
-	int				irq_mipi;
-	dma_addr_t			fb_addr;
+	struct drm_device drm;
+	void __iomem *lcd_mmio;
+	void __iomem *mipi_mmio;
+	void __iomem *msscam_mmio;
+	unsigned char n_layers;
+	struct clk *clk;
+	struct drm_crtc crtc;
+	struct kmb_plane *plane;
+	struct drm_atomic_state *state;
+	spinlock_t irq_lock;
+	int irq_lcd;
+	int irq_mipi;
+	dma_addr_t fb_addr;
 };
 
 static inline struct kmb_drm_private *to_kmb(const struct drm_device *dev)
@@ -58,54 +60,12 @@ static inline struct kmb_drm_private *to_kmb(const struct drm_device *dev)
 	return container_of(dev, struct kmb_drm_private, drm);
 }
 
-#define crtc_to_kmb_priv(x)	container_of(x, struct kmb_drm_private, crtc)
-
 struct blt_layer_config {
 	unsigned char layer_format;
 };
-/*
- * commenting this out to use hardcoded address for registers
- * TODO we may need this later if we decide to get the address from
- * the device tree
- */
-#ifdef KMB_WRITE
-static inline void kmb_write(struct kmb_drm_private *lcd,
-			     unsigned int reg, u32 value)
-{
-	writel(value, lcd->mmio + reg);
-}
-
-static inline u32 kmb_read(struct kmb_drm_private *lcd, unsigned int reg)
-{
-	return readl(lcd->mmio + reg);
-}
-
-static inline void kmb_write_bits(struct kmb_drm_private *lcd,
-				  unsigned int reg, u32 offset, u32 num_bits,
-				  u32 value)
-{
-	u32 reg_val = kmb_read(lcd, reg);
-	u32 mask = (1 << num_bits) - 1;
-
-	value &= mask;
-	mask <<= offset;
-	reg_val &= (~mask);
-	reg_val |= (value << offset);
-	writel(reg_val, lcd->mmio + reg);
-}
-static inline void kmb_write(unsigned int reg, u32 value)
-{
-	writel(value, reg);
-}
-
-static inline u32 kmb_read(unsigned int reg)
-{
-	return readl(reg);
-}
-#endif
 
 static inline void kmb_write_lcd(struct kmb_drm_private *dev_p,
-		unsigned int reg, u32 value)
+				 unsigned int reg, u32 value)
 {
 #ifdef LCD_TEST
 	writel(value, (dev_p->lcd_mmio + reg));
@@ -113,25 +73,25 @@ static inline void kmb_write_lcd(struct kmb_drm_private *dev_p,
 }
 
 static inline void kmb_write_mipi(struct kmb_drm_private *dev_p,
-		unsigned int reg, u32 value)
+				  unsigned int reg, u32 value)
 {
 	writel(value, (dev_p->mipi_mmio + reg));
 }
 
 static inline void kmb_write_msscam(struct kmb_drm_private *dev_p,
-		unsigned int reg, u32 value)
+				    unsigned int reg, u32 value)
 {
 	writel(value, (dev_p->msscam_mmio + reg));
 }
 
 static inline u32 kmb_read_msscam(struct kmb_drm_private *dev_p,
-		unsigned int reg)
+				  unsigned int reg)
 {
 	return readl(dev_p->msscam_mmio + reg);
 }
 
 static inline void kmb_set_bitmask_msscam(struct kmb_drm_private *dev_p,
-		unsigned int reg, u32 mask)
+					  unsigned int reg, u32 mask)
 {
 	u32 reg_val = kmb_read_msscam(dev_p, reg);
 
@@ -147,7 +107,7 @@ static inline u32 kmb_read_lcd(struct kmb_drm_private *dev_p, unsigned int reg)
 }
 
 static inline void kmb_set_bitmask_lcd(struct kmb_drm_private *dev_p,
-		unsigned int reg, u32 mask)
+				       unsigned int reg, u32 mask)
 {
 #ifdef LCD_TEST
 	u32 reg_val = kmb_read_lcd(dev_p, reg);
@@ -157,7 +117,7 @@ static inline void kmb_set_bitmask_lcd(struct kmb_drm_private *dev_p,
 }
 
 static inline void kmb_clr_bitmask_lcd(struct kmb_drm_private *dev_p,
-		unsigned int reg, u32 mask)
+				       unsigned int reg, u32 mask)
 {
 #ifdef LCD_TEST
 	u32 reg_val = kmb_read_lcd(dev_p, reg);
@@ -172,7 +132,8 @@ static inline u32 kmb_read_mipi(struct kmb_drm_private *dev_p, unsigned int reg)
 }
 
 static inline void kmb_write_bits_mipi(struct kmb_drm_private *dev_p,
-		unsigned int reg, u32 offset, u32 num_bits, u32 value)
+				       unsigned int reg, u32 offset,
+				       u32 num_bits, u32 value)
 {
 	u32 reg_val = kmb_read_mipi(dev_p, reg);
 	u32 mask = (1 << num_bits) - 1;
@@ -181,11 +142,18 @@ static inline void kmb_write_bits_mipi(struct kmb_drm_private *dev_p,
 	mask <<= offset;
 	reg_val &= (~mask);
 	reg_val |= (value << offset);
+#ifdef DEBUG
+	if (reg == DPHY_FREQ_CTRL0_3 + 4) {
+		DRM_INFO("%s : %d  reg=0x%x offset=%d num_bits=%d val=0x%x\n",
+			 __func__, __LINE__, reg, offset, num_bits,
+			 reg_val);
+	}
+#endif
 	kmb_write_mipi(dev_p, reg, reg_val);
 }
 
 static inline void kmb_set_bit_mipi(struct kmb_drm_private *dev_p,
-		unsigned int reg, u32 offset)
+				    unsigned int reg, u32 offset)
 {
 	u32 reg_val = kmb_read_mipi(dev_p, reg);
 
@@ -193,7 +161,7 @@ static inline void kmb_set_bit_mipi(struct kmb_drm_private *dev_p,
 }
 
 static inline void kmb_clr_bit_mipi(struct kmb_drm_private *dev_p,
-		unsigned int reg, u32 offset)
+				    unsigned int reg, u32 offset)
 {
 	u32 reg_val = kmb_read_mipi(dev_p, reg);
 
@@ -201,7 +169,7 @@ static inline void kmb_clr_bit_mipi(struct kmb_drm_private *dev_p,
 }
 
 static inline void kmb_set_bitmask_mipi(struct kmb_drm_private *dev_p,
-		unsigned int reg, u32 mask)
+					unsigned int reg, u32 mask)
 {
 	u32 reg_val = kmb_read_mipi(dev_p, reg);
 
@@ -209,12 +177,13 @@ static inline void kmb_set_bitmask_mipi(struct kmb_drm_private *dev_p,
 }
 
 static inline void kmb_clr_bitmask_mipi(struct kmb_drm_private *dev_p,
-		unsigned int reg, u32 mask)
+					unsigned int reg, u32 mask)
 {
 	u32 reg_val = kmb_read_mipi(dev_p, reg);
 
 	kmb_write_mipi(dev_p, reg, (reg_val & (~mask)));
 }
+
 int kmb_setup_crtc(struct drm_device *dev);
 void kmb_set_scanout(struct kmb_drm_private *lcd);
 #endif /* __KMB_DRV_H__ */
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.c b/drivers/gpu/drm/kmb/kmb_dsi.c
index 3368e97..977fcb8 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.c
+++ b/drivers/gpu/drm/kmb/kmb_dsi.c
@@ -32,6 +32,7 @@
 #include <drm/drm_mipi_dsi.h>
 #include <drm/drm_print.h>
 #include <drm/drm_bridge.h>
+#include <drm/drm_print.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
 #include <linux/gpio/consumer.h>
@@ -43,56 +44,19 @@
 #include <linux/buffer_head.h>
 
 static int hw_initialized;
-#define IMAGE_PATH "/home/root/1280x720.pnm"
 //#define MIPI_TX_TEST_PATTERN_GENERATION
 //#define MIPI_DMA
 //#define RTL_TEST
+//#define DPHY_GET_FSM
+//#define MIPI_TX_INIT_IRQS
+//#define GET_SYS_CLK
+//#define DPHY_READ_TESTCODE
+//#define MIPI_TX_HANDLE_IRQS
 
-/*MIPI TX CFG*/
-#define MIPI_TX_LANE_DATA_RATE_MBPS 891
-#define MIPI_TX_REF_CLK_KHZ         24000
-#define MIPI_TX_CFG_CLK_KHZ         24000
-#define MIPI_TX_BPP		    24
-
-/*DPHY Tx test codes*/
-#define TEST_CODE_FSM_CONTROL				0x03
-#define TEST_CODE_MULTIPLE_PHY_CTRL			0x0C
-#define TEST_CODE_PLL_PROPORTIONAL_CHARGE_PUMP_CTRL	0x0E
-#define TEST_CODE_PLL_INTEGRAL_CHARGE_PUMP_CTRL		0x0F
-#define TEST_CODE_PLL_VCO_CTRL				0x12
-#define TEST_CODE_PLL_GMP_CTRL				0x13
-#define TEST_CODE_PLL_PHASE_ERR_CTRL			0x14
-#define TEST_CODE_PLL_LOCK_FILTER			0x15
-#define TEST_CODE_PLL_UNLOCK_FILTER			0x16
-#define TEST_CODE_PLL_INPUT_DIVIDER			0x17
-#define TEST_CODE_PLL_FEEDBACK_DIVIDER			0x18
-#define   PLL_FEEDBACK_DIVIDER_HIGH			(1 << 7)
-#define TEST_CODE_PLL_OUTPUT_CLK_SEL			0x19
-#define   PLL_N_OVR_EN					(1 << 4)
-#define   PLL_M_OVR_EN					(1 << 5)
-#define TEST_CODE_VOD_LEVEL				0x24
-#define TEST_CODE_PLL_CHARGE_PUMP_BIAS			0x1C
-#define TEST_CODE_PLL_LOCK_DETECTOR			0x1D
-#define TEST_CODE_HS_FREQ_RANGE_CFG			0x44
-#define TEST_CODE_PLL_ANALOG_PROG			0x1F
-#define TEST_CODE_SLEW_RATE_OVERRIDE_CTRL		0xA0
-#define TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL		0xA3
-#define TEST_CODE_SLEW_RATE_DDL_CYCLES			0xA4
-
-/* D-Phy params  */
-#define PLL_N_MIN	0
-#define PLL_N_MAX	15
-#define PLL_M_MIN	62
-#define PLL_M_MAX	623
-#define PLL_FVCO_MAX	1250
-
-#define TIMEOUT		600
 static struct mipi_dsi_host *dsi_host;
 static struct mipi_dsi_device *dsi_device;
 
-/*
- * Default setting is 1080p, 4 lanes.
- */
+/* Default setting is 1080p, 4 lanes */
 #define IMG_HEIGHT_LINES  1080
 #define IMG_WIDTH_PX      1920
 #define MIPI_TX_ACTIVE_LANES 4
@@ -102,7 +66,6 @@ struct mipi_tx_frame_section_cfg mipi_tx_frame0_sect_cfg = {
 	.height_lines = IMG_HEIGHT_LINES,
 	.data_type = DSI_LP_DT_PPS_RGB888_24B,
 	.data_mode = MIPI_DATA_MODE1,
-//	.data_mode = MIPI_DATA_MODE0,
 	.dma_packed = 0
 };
 
@@ -152,18 +115,34 @@ struct mipi_ctrl_cfg mipi_tx_init_cfg = {
 			.tx_always_use_hact = 1,
 			.tx_hact_wait_stop = 1,
 			}
-
 };
 
-u8 *iBuf;
-
-struct mipi_hs_freq_range_cfg {
+struct  mipi_hs_freq_range_cfg {
 	uint16_t default_bit_rate_mbps;
 	uint8_t hsfreqrange_code;
 };
 
+struct vco_params {
+	u32 freq;
+	u32 range;
+	u32 divider;
+};
+
+static struct vco_params vco_table[] = {
+	{52, 0x3f, 8},
+	{80, 0x39, 8},
+	{105, 0x2f, 4},
+	{160, 0x29, 4},
+	{210, 0x1f, 2},
+	{320, 0x19, 2},
+	{420, 0x0f, 1},
+	{630, 0x09, 1},
+	{1100, 0x03, 1},
+	{0xffff, 0x01, 1},
+};
+
 static struct mipi_hs_freq_range_cfg
-	mipi_hs_freq_range[MIPI_DPHY_DEFAULT_BIT_RATES] = {
+mipi_hs_freq_range[MIPI_DPHY_DEFAULT_BIT_RATES] = {
 	{.default_bit_rate_mbps = 80, .hsfreqrange_code = 0x00},
 	{.default_bit_rate_mbps = 90, .hsfreqrange_code = 0x10},
 	{.default_bit_rate_mbps = 100, .hsfreqrange_code = 0x20},
@@ -245,14 +224,19 @@ static int kmb_dsi_get_modes(struct drm_connector *connector)
 	int num_modes = 0;
 
 	num_modes = drm_add_modes_noedid(connector,
-				 connector->dev->mode_config.max_width,
-				 connector->dev->mode_config.max_height);
+			 connector->dev->mode_config.max_width,
+			 connector->dev->mode_config.max_height);
+
+	DRM_INFO("width=%d height=%d\n",
+		 connector->dev->mode_config.max_width,
+		 connector->dev->mode_config.max_height);
+	DRM_INFO("num modes=%d\n", num_modes);
+
 	return num_modes;
 }
 
 void kmb_dsi_host_unregister(void)
 {
-	DRM_INFO("%s : %d\n", __func__, __LINE__);
 	mipi_dsi_host_unregister(dsi_host);
 	kfree(dsi_host);
 }
@@ -260,8 +244,6 @@ void kmb_dsi_host_unregister(void)
 static void kmb_dsi_connector_destroy(struct drm_connector *connector)
 {
 	struct kmb_connector *kmb_connector = to_kmb_connector(connector);
-
-	DRM_INFO("%s : %d\n", __func__, __LINE__);
 	drm_connector_cleanup(connector);
 	kfree(kmb_connector);
 }
@@ -270,7 +252,6 @@ static void kmb_dsi_encoder_destroy(struct drm_encoder *encoder)
 {
 	struct kmb_dsi *kmb_dsi = to_kmb_dsi(encoder);
 
-	DRM_INFO("%s : %d\n", __func__, __LINE__);
 	if (!kmb_dsi)
 		return;
 
@@ -332,7 +313,6 @@ static struct kmb_dsi_host *kmb_dsi_host_init(struct drm_device *drm,
 {
 	struct kmb_dsi_host *host;
 
-	DRM_INFO("%s : %d\n", __func__, __LINE__);
 	host = kzalloc(sizeof(*host), GFP_KERNEL);
 	if (!host)
 		return NULL;
@@ -351,6 +331,9 @@ static struct kmb_dsi_host *kmb_dsi_host_init(struct drm_device *drm,
 struct drm_bridge *kmb_dsi_host_bridge_init(struct device *dev)
 {
 	struct drm_bridge *bridge;
+#ifndef FCCTEST
+	struct device_node *encoder_node;
+#endif
 
 	/* Create and register MIPI DSI host */
 	if (!dsi_host) {
@@ -372,12 +355,11 @@ struct drm_bridge *kmb_dsi_host_bridge_init(struct device *dev)
 		mipi_dsi_host_register(dsi_host);
 	}
 #ifndef FCCTEST
-	/* find ADV7535 node and initialize it */
-	DRM_INFO("trying to get bridge info %pOF\n", dev->of_node);
+	/* Find ADV7535 node and initialize it */
 	encoder_node = of_parse_phandle(dev->of_node, "encoder-slave", 0);
-	DRM_INFO("encoder node =  %pOF\n", encoder_node);
+
 	if (!encoder_node) {
-		DRM_ERROR("failed to get bridge info from DT\n");
+		DRM_ERROR("Failed to get bridge info from DT\n");
 		return ERR_PTR(-EINVAL);
 	}
 
@@ -385,7 +367,7 @@ struct drm_bridge *kmb_dsi_host_bridge_init(struct device *dev)
 	bridge = of_drm_find_bridge(encoder_node);
 	of_node_put(encoder_node);
 	if (!bridge) {
-		DRM_INFO("wait for external bridge driver DT\n");
+		DRM_INFO("Wait for external bridge driver DT\n");
 		return ERR_PTR(-EPROBE_DEFER);
 	}
 #endif
@@ -393,21 +375,21 @@ struct drm_bridge *kmb_dsi_host_bridge_init(struct device *dev)
 }
 
 u32 mipi_get_datatype_params(u32 data_type, u32 data_mode,
-		struct mipi_data_type_params *params)
+			     struct mipi_data_type_params *params)
 {
-	struct mipi_data_type_params data_type_parameters;
+	struct mipi_data_type_params data_type_param;
 
 	switch (data_type) {
 	case DSI_LP_DT_PPS_YCBCR420_12B:
-		data_type_parameters.size_constraint_pixels = 2;
-		data_type_parameters.size_constraint_bytes = 3;
+		data_type_param.size_constraint_pixels = 2;
+		data_type_param.size_constraint_bytes = 3;
 		switch (data_mode) {
-			/* case 0 not supported according to MDK */
+			/* Case 0 not supported according to MDK */
 		case 1:
 		case 2:
 		case 3:
-			data_type_parameters.pixels_per_pclk = 2;
-			data_type_parameters.bits_per_pclk = 24;
+			data_type_param.pixels_per_pclk = 2;
+			data_type_param.bits_per_pclk = 24;
 			break;
 		default:
 			DRM_ERROR("DSI: Invalid data_mode %d\n", data_mode);
@@ -415,17 +397,19 @@ u32 mipi_get_datatype_params(u32 data_type, u32 data_mode,
 		};
 		break;
 	case DSI_LP_DT_PPS_YCBCR422_16B:
-		data_type_parameters.size_constraint_pixels = 2;
-		data_type_parameters.size_constraint_bytes = 4;
+		data_type_param.size_constraint_pixels = 2;
+		data_type_param.size_constraint_bytes = 4;
 		switch (data_mode) {
-			/* case 0 and 1 not supported according to MDK */
+			/* Case 0 and 1 not supported according
+			 * to MDK
+			 */
 		case 2:
-			data_type_parameters.pixels_per_pclk = 1;
-			data_type_parameters.bits_per_pclk = 16;
+			data_type_param.pixels_per_pclk = 1;
+			data_type_param.bits_per_pclk = 16;
 			break;
 		case 3:
-			data_type_parameters.pixels_per_pclk = 2;
-			data_type_parameters.bits_per_pclk = 32;
+			data_type_param.pixels_per_pclk = 2;
+			data_type_param.bits_per_pclk = 32;
 			break;
 		default:
 			DRM_ERROR("DSI: Invalid data_mode %d\n", data_mode);
@@ -434,15 +418,15 @@ u32 mipi_get_datatype_params(u32 data_type, u32 data_mode,
 		break;
 	case DSI_LP_DT_LPPS_YCBCR422_20B:
 	case DSI_LP_DT_PPS_YCBCR422_24B:
-		data_type_parameters.size_constraint_pixels = 2;
-		data_type_parameters.size_constraint_bytes = 6;
+		data_type_param.size_constraint_pixels = 2;
+		data_type_param.size_constraint_bytes = 6;
 		switch (data_mode) {
-			/* case 0 not supported according to MDK */
+			/* Case 0 not supported according to MDK */
 		case 1:
 		case 2:
 		case 3:
-			data_type_parameters.pixels_per_pclk = 1;
-			data_type_parameters.bits_per_pclk = 24;
+			data_type_param.pixels_per_pclk = 1;
+			data_type_param.bits_per_pclk = 24;
 			break;
 		default:
 			DRM_ERROR("DSI: Invalid data_mode %d\n", data_mode);
@@ -450,18 +434,18 @@ u32 mipi_get_datatype_params(u32 data_type, u32 data_mode,
 		};
 		break;
 	case DSI_LP_DT_PPS_RGB565_16B:
-		data_type_parameters.size_constraint_pixels = 1;
-		data_type_parameters.size_constraint_bytes = 2;
+		data_type_param.size_constraint_pixels = 1;
+		data_type_param.size_constraint_bytes = 2;
 		switch (data_mode) {
 		case 0:
 		case 1:
-			data_type_parameters.pixels_per_pclk = 1;
-			data_type_parameters.bits_per_pclk = 16;
+			data_type_param.pixels_per_pclk = 1;
+			data_type_param.bits_per_pclk = 16;
 			break;
 		case 2:
 		case 3:
-			data_type_parameters.pixels_per_pclk = 2;
-			data_type_parameters.bits_per_pclk = 32;
+			data_type_param.pixels_per_pclk = 2;
+			data_type_param.bits_per_pclk = 32;
 			break;
 		default:
 			DRM_ERROR("DSI: Invalid data_mode %d\n", data_mode);
@@ -469,97 +453,104 @@ u32 mipi_get_datatype_params(u32 data_type, u32 data_mode,
 		};
 		break;
 	case DSI_LP_DT_PPS_RGB666_18B:
-		data_type_parameters.size_constraint_pixels = 4;
-		data_type_parameters.size_constraint_bytes = 9;
-		data_type_parameters.bits_per_pclk = 18;
-		data_type_parameters.pixels_per_pclk = 1;
+		data_type_param.size_constraint_pixels = 4;
+		data_type_param.size_constraint_bytes = 9;
+		data_type_param.bits_per_pclk = 18;
+		data_type_param.pixels_per_pclk = 1;
 		break;
 	case DSI_LP_DT_LPPS_RGB666_18B:
 	case DSI_LP_DT_PPS_RGB888_24B:
-		data_type_parameters.size_constraint_pixels = 1;
-		data_type_parameters.size_constraint_bytes = 3;
-		data_type_parameters.bits_per_pclk = 24;
-		data_type_parameters.pixels_per_pclk = 1;
+		data_type_param.size_constraint_pixels = 1;
+		data_type_param.size_constraint_bytes = 3;
+		data_type_param.bits_per_pclk = 24;
+		data_type_param.pixels_per_pclk = 1;
 		break;
 	case DSI_LP_DT_PPS_RGB101010_30B:
-		data_type_parameters.size_constraint_pixels = 4;
-		data_type_parameters.size_constraint_bytes = 15;
-		data_type_parameters.bits_per_pclk = 30;
-		data_type_parameters.pixels_per_pclk = 1;
+		data_type_param.size_constraint_pixels = 4;
+		data_type_param.size_constraint_bytes = 15;
+		data_type_param.bits_per_pclk = 30;
+		data_type_param.pixels_per_pclk = 1;
 		break;
-
 	default:
 		DRM_ERROR("DSI: Invalid data_type %d\n", data_type);
 		return -EINVAL;
-	}
+	};
 
-	*params = data_type_parameters;
+	*params = data_type_param;
 	return 0;
 }
 
 static u32 compute_wc(u32 width_px, u8 size_constr_p, u8 size_constr_b)
 {
-	/* calculate the word count for each long packet */
+	/* Calculate the word count for each long packet */
 	return (((width_px / size_constr_p) * size_constr_b) & 0xffff);
 }
 
 static u32 compute_unpacked_bytes(u32 wc, u8 bits_per_pclk)
 {
-	/*number of PCLK cycles needed to transfer a line */
-	/* with each PCLK cycle, 4 Bytes are sent through the PPL module */
+	/* Number of PCLK cycles needed to transfer a line
+	 * with each PCLK cycle, 4 Bytes are sent through the PPL module
+	 */
 	return ((wc * 8) / bits_per_pclk) * 4;
 }
 
 static u32 mipi_tx_fg_section_cfg_regs(struct kmb_drm_private *dev_p,
-				       u8 frame_id,
-				       u8 section, u32 height_lines,
-				       u32 unpacked_bytes,
+				       u8 frame_id, u8 section,
+				       u32 height_lines, u32 unpacked_bytes,
 				       struct mipi_tx_frame_sect_phcfg *ph_cfg)
 {
 	u32 cfg = 0;
 	u32 ctrl_no = MIPI_CTRL6;
 	u32 reg_adr;
 
-	/*frame section packet header */
-	/*word count */
-	cfg = (ph_cfg->wc & MIPI_TX_SECT_WC_MASK) << 0;	/* bits [15:0] */
-	/*data type */
+	/* Frame section packet header */
+	/* Word count bits [15:0] */
+	cfg = (ph_cfg->wc & MIPI_TX_SECT_WC_MASK) << 0;
+
+	/* Data type (bits [21:16]) */
 	cfg |= ((ph_cfg->data_type & MIPI_TX_SECT_DT_MASK)
-		<< MIPI_TX_SECT_DT_SHIFT);	/* bits [21:16] */
-	/* virtual channel */
+		<< MIPI_TX_SECT_DT_SHIFT);
+
+	/* Virtual channel (bits [23:22]) */
 	cfg |= ((ph_cfg->vchannel & MIPI_TX_SECT_VC_MASK)
-		<< MIPI_TX_SECT_VC_SHIFT);	/* bits [23:22] */
-	/* data mode */
+		<< MIPI_TX_SECT_VC_SHIFT);
+
+	/* Data mode (bits [24:25]) */
 	cfg |= ((ph_cfg->data_mode & MIPI_TX_SECT_DM_MASK)
-			<< MIPI_TX_SECT_DM_SHIFT); /* bits [24:25]*/
+		<< MIPI_TX_SECT_DM_SHIFT);
 	if (ph_cfg->dma_packed)
 		cfg |= MIPI_TX_SECT_DMA_PACKED;
-	DRM_INFO("%s : %d ctrl=%d frame_id=%d section=%d cfg=%x packed=%d\n",
-			__func__, __LINE__, ctrl_no, frame_id, section, cfg,
-			ph_cfg->dma_packed);
-	kmb_write_mipi(dev_p, (MIPI_TXm_HS_FGn_SECTo_PH(ctrl_no, frame_id,
-					section)), cfg);
-
-	/*unpacked bytes */
-	/*there are 4 frame generators and each fg has 4 sections
-	 *there are 2 registers for unpacked bytes -
-	 *# bytes each section occupies in memory
-	 *REG_UNPACKED_BYTES0: [15:0]-BYTES0, [31:16]-BYTES1
-	 *REG_UNPACKED_BYTES1: [15:0]-BYTES2, [31:16]-BYTES3
+
+	DRM_DEBUG("ctrl=%d frame_id=%d section=%d cfg=%x packed=%d\n",
+		  ctrl_no, frame_id, section, cfg, ph_cfg->dma_packed);
+	kmb_write_mipi(dev_p,
+		       (MIPI_TXm_HS_FGn_SECTo_PH(ctrl_no, frame_id, section)),
+		       cfg);
+
+	/* Unpacked bytes */
+
+	/* There are 4 frame generators and each fg has 4 sections
+	 * There are 2 registers for unpacked bytes (# bytes each
+	 * section occupies in memory)
+	 * REG_UNPACKED_BYTES0: [15:0]-BYTES0, [31:16]-BYTES1
+	 * REG_UNPACKED_BYTES1: [15:0]-BYTES2, [31:16]-BYTES3
 	 */
-	reg_adr = MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(ctrl_no, frame_id)
-	    + (section / 2) * 4;
+	reg_adr =
+	    MIPI_TXm_HS_FGn_SECT_UNPACKED_BYTES0(ctrl_no,
+						 frame_id) + (section / 2) * 4;
 	kmb_write_bits_mipi(dev_p, reg_adr, (section % 2) * 16, 16,
 			    unpacked_bytes);
+	DRM_DEBUG("unpacked_bytes = %d, wordcount = %d\n", unpacked_bytes,
+		  ph_cfg->wc);
 
-	/* line config */
+	/* Line config */
 	reg_adr = MIPI_TXm_HS_FGn_SECTo_LINE_CFG(ctrl_no, frame_id, section);
 	kmb_write_mipi(dev_p, reg_adr, height_lines);
 	return 0;
 }
 
-static u32 mipi_tx_fg_section_cfg(struct kmb_drm_private *dev_p, u8 frame_id,
-				  u8 section,
+static u32 mipi_tx_fg_section_cfg(struct kmb_drm_private *dev_p,
+				  u8 frame_id, u8 section,
 				  struct mipi_tx_frame_section_cfg *frame_scfg,
 				  u32 *bits_per_pclk, u32 *wc)
 {
@@ -573,8 +564,8 @@ static u32 mipi_tx_fg_section_cfg(struct kmb_drm_private *dev_p, u8 frame_id,
 				       &data_type_parameters);
 	if (ret)
 		return ret;
-	/*
-	 * packet width has to be a multiple of the minimum packet width
+
+	/* Packet width has to be a multiple of the minimum packet width
 	 * (in pixels) set for each data type
 	 */
 	if (frame_scfg->width_pixels %
@@ -584,10 +575,8 @@ static u32 mipi_tx_fg_section_cfg(struct kmb_drm_private *dev_p, u8 frame_id,
 	*wc = compute_wc(frame_scfg->width_pixels,
 			 data_type_parameters.size_constraint_pixels,
 			 data_type_parameters.size_constraint_bytes);
-
-	unpacked_bytes =
-	    compute_unpacked_bytes(*wc, data_type_parameters.bits_per_pclk);
-
+	unpacked_bytes = compute_unpacked_bytes(*wc,
+					data_type_parameters.bits_per_pclk);
 	ph_cfg.wc = *wc;
 	ph_cfg.data_mode = frame_scfg->data_mode;
 	ph_cfg.data_type = frame_scfg->data_type;
@@ -598,88 +587,94 @@ static u32 mipi_tx_fg_section_cfg(struct kmb_drm_private *dev_p, u8 frame_id,
 				    frame_scfg->height_lines,
 				    unpacked_bytes, &ph_cfg);
 
-	/*caller needs bits_per_clk for additional caluclations */
+	/* Caller needs bits_per_clk for additional caluclations */
 	*bits_per_pclk = data_type_parameters.bits_per_pclk;
+
 	return 0;
 }
 
-static void mipi_tx_fg_cfg_regs(struct kmb_drm_private *dev_p,
-				u8 frame_gen,
+static void mipi_tx_fg_cfg_regs(struct kmb_drm_private *dev_p, u8 frame_gen,
 				struct mipi_tx_frame_timing_cfg *fg_cfg)
 {
 	u32 sysclk;
-	/*float ppl_llp_ratio; */
 	u32 ppl_llp_ratio;
 	u32 ctrl_no = MIPI_CTRL6, reg_adr, val, offset;
 
-	/*Get system clock for blanking period cnfigurations */
-	/*TODO need to get system clock from clock driver */
-	/* 500 Mhz system clock minus 50 - to account for the difference in
-	 * mipi clock speed in RTL tests
+#ifdef GET_SYS_CLK
+	/* Get system clock for blanking period cnfigurations */
+	sc = get_clock_frequency(CPR_CLK_SYSTEM, &sysclk);
+	if (sc)
+		return sc;
+
+	/* Convert to MHZ */
+	sysclk /= 1000;
+#else
+	/* 500 Mhz system clock minus 50 to account for the difference in
+	 * MIPI clock speed in RTL tests
 	 */
 	sysclk = KMB_SYS_CLK_MHZ - 50;
-//	sysclk = KMB_SYS_CLK_MHZ;
+#endif
 
-	/*ppl-pixel packing layer, llp-low level protocol
-	 * frame genartor timing parameters are clocked on the system clock
+	/* PPL-Pixel Packing Layer, LLP-Low Level Protocol
+	 * Frame genartor timing parameters are clocked on the system clock,
 	 * whereas as the equivalent parameters in the LLP blocks are clocked
 	 * on LLP Tx clock from the D-PHY - BYTE clock
 	 */
 
-	/*multiply by 1000 to keep the precision */
+	/* Multiply by 1000 to maintain precision */
 	ppl_llp_ratio = ((fg_cfg->bpp / 8) * sysclk * 1000) /
 	    ((fg_cfg->lane_rate_mbps / 8) * fg_cfg->active_lanes);
 
-	DRM_INFO("%s : %d bpp=%d sysclk=%d lane-rate=%d activ-lanes=%d\n",
-			__func__, __LINE__, fg_cfg->bpp, sysclk,
-			fg_cfg->lane_rate_mbps, fg_cfg->active_lanes);
+	DRM_INFO("ppl_llp_ratio=%d\n", ppl_llp_ratio);
+	DRM_INFO("bpp=%d sysclk=%d lane-rate=%d activ-lanes=%d\n",
+		 fg_cfg->bpp, sysclk, fg_cfg->lane_rate_mbps,
+		 fg_cfg->active_lanes);
 
-	DRM_INFO("%s : %d ppl_llp_ratio=%d\n", __func__, __LINE__,
-			ppl_llp_ratio);
-	/*frame generator number of lines*/
+	/* Frame generator number of lines */
 	reg_adr = MIPI_TXm_HS_FGn_NUM_LINES(ctrl_no, frame_gen);
 	kmb_write_mipi(dev_p, reg_adr, fg_cfg->v_active);
 
-	/*vsync width */
-	/*
-	 *there are 2 registers for vsync width -VSA in lines for channels 0-3
-	 *REG_VSYNC_WIDTH0: [15:0]-VSA for channel0, [31:16]-VSA for channel1
-	 *REG_VSYNC_WIDTH1: [15:0]-VSA for channel2, [31:16]-VSA for channel3
+	/* vsync width
+	 * There are 2 registers for vsync width (VSA in lines for
+	 * channels 0-3)
+	 * REG_VSYNC_WIDTH0: [15:0]-VSA for channel0, [31:16]-VSA for channel1
+	 * REG_VSYNC_WIDTH1: [15:0]-VSA for channel2, [31:16]-VSA for channel3
 	 */
 	offset = (frame_gen % 2) * 16;
 	reg_adr = MIPI_TXm_HS_VSYNC_WIDTHn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(dev_p, reg_adr, offset, 16, fg_cfg->vsync_width);
 
-	/*v backporch - same register config like vsync width */
+	/* vertical backporch (vbp) */
 	reg_adr = MIPI_TXm_HS_V_BACKPORCHESn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(dev_p, reg_adr, offset, 16, fg_cfg->v_backporch);
 
-	/*v frontporch - same register config like vsync width */
+	/* vertical frontporch (vfp) */
 	reg_adr = MIPI_TXm_HS_V_FRONTPORCHESn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(dev_p, reg_adr, offset, 16, fg_cfg->v_frontporch);
 
-	/*v active - same register config like vsync width */
+	/* vertical active (vactive) */
 	reg_adr = MIPI_TXm_HS_V_ACTIVEn(ctrl_no, frame_gen / 2);
 	kmb_write_bits_mipi(dev_p, reg_adr, offset, 16, fg_cfg->v_active);
 
-	/*hsyc width */
+	/* hsync width */
 	reg_adr = MIPI_TXm_HS_HSYNC_WIDTHn(ctrl_no, frame_gen);
 	kmb_write_mipi(dev_p, reg_adr,
 		       (fg_cfg->hsync_width * ppl_llp_ratio) / 1000);
 
-	/*h backporch */
+	/* horizontal backporch (hbp) */
 	reg_adr = MIPI_TXm_HS_H_BACKPORCHn(ctrl_no, frame_gen);
 	kmb_write_mipi(dev_p, reg_adr,
 		       (fg_cfg->h_backporch * ppl_llp_ratio) / 1000);
 
-	/*h frontporch */
+	/* horizontal frontporch (hfp) */
 	reg_adr = MIPI_TXm_HS_H_FRONTPORCHn(ctrl_no, frame_gen);
 	kmb_write_mipi(dev_p, reg_adr,
 		       (fg_cfg->h_frontporch * ppl_llp_ratio) / 1000);
 
-	/*h active */
+	/* horizontal active (ha) */
 	reg_adr = MIPI_TXm_HS_H_ACTIVEn(ctrl_no, frame_gen);
-	/*convert h_active which is wc in bytes to cycles */
+
+	/* convert h_active which is wc in bytes to cycles */
 	val = (fg_cfg->h_active * sysclk * 1000) /
 	    ((fg_cfg->lane_rate_mbps / 8) * fg_cfg->active_lanes);
 	val /= 1000;
@@ -706,8 +701,8 @@ static void mipi_tx_fg_cfg(struct kmb_drm_private *dev_p, u8 frame_gen,
 	u32 i, fg_num_lines = 0;
 	struct mipi_tx_frame_timing_cfg fg_t_cfg;
 
-	/*calculate the total frame generator number of lines based on it's
-	 * active sections
+	/* Calculate the total frame generator number of
+	 * lines based on it's active sections
 	 */
 	for (i = 0; i < MIPI_TX_FRAME_GEN_SECTIONS; i++) {
 		if (fg_cfg->sections[i] != NULL)
@@ -726,7 +721,7 @@ static void mipi_tx_fg_cfg(struct kmb_drm_private *dev_p, u8 frame_gen,
 	fg_t_cfg.v_active = fg_num_lines;
 	fg_t_cfg.active_lanes = active_lanes;
 
-	/*apply frame generator timing setting */
+	/* Apply frame generator timing setting */
 	mipi_tx_fg_cfg_regs(dev_p, frame_gen, &fg_t_cfg);
 }
 
@@ -736,7 +731,7 @@ static void mipi_tx_multichannel_fifo_cfg(struct kmb_drm_private *dev_p,
 	u32 fifo_size, fifo_rthreshold;
 	u32 ctrl_no = MIPI_CTRL6;
 
-	/*clear all mc fifo channel sizes and thresholds */
+	/* Clear all mc fifo channel sizes and thresholds */
 	kmb_write_mipi(dev_p, MIPI_TX_HS_MC_FIFO_CTRL_EN, 0);
 	kmb_write_mipi(dev_p, MIPI_TX_HS_MC_FIFO_CHAN_ALLOC0, 0);
 	kmb_write_mipi(dev_p, MIPI_TX_HS_MC_FIFO_CHAN_ALLOC1, 0);
@@ -746,18 +741,18 @@ static void mipi_tx_multichannel_fifo_cfg(struct kmb_drm_private *dev_p,
 	fifo_size = ((active_lanes > MIPI_D_LANES_PER_DPHY) ?
 		     MIPI_CTRL_4LANE_MAX_MC_FIFO_LOC :
 		     MIPI_CTRL_2LANE_MAX_MC_FIFO_LOC) - 1;
-	/*MC fifo size for virtual channels 0-3 */
-	/*
-	 *REG_MC_FIFO_CHAN_ALLOC0: [8:0]-channel0, [24:16]-channel1
-	 *REG_MC_FIFO_CHAN_ALLOC1: [8:0]-2, [24:16]-channel3
+
+	/* MC fifo size for virtual channels 0-3
+	 * REG_MC_FIFO_CHAN_ALLOC0: [8:0]-channel0, [24:16]-channel1
+	 * REG_MC_FIFO_CHAN_ALLOC1: [8:0]-2, [24:16]-channel3
 	 */
 	SET_MC_FIFO_CHAN_ALLOC(dev_p, ctrl_no, vchannel_id, fifo_size);
 
-	/*set threshold to half the fifo size, actual size=size*16 */
+	/* Set threshold to half the fifo size, actual size=size*16 */
 	fifo_rthreshold = ((fifo_size) * 8) & BIT_MASK_16;
 	SET_MC_FIFO_RTHRESHOLD(dev_p, ctrl_no, vchannel_id, fifo_rthreshold);
 
-	/*enable the MC FIFO channel corresponding to the Virtual Channel */
+	/* Enable the MC FIFO channel corresponding to the Virtual Channel */
 	kmb_set_bit_mipi(dev_p, MIPI_TXm_HS_MC_FIFO_CTRL_EN(ctrl_no),
 			 vchannel_id);
 }
@@ -768,7 +763,7 @@ static void mipi_tx_ctrl_cfg(struct kmb_drm_private *dev_p, u8 fg_id,
 	u32 sync_cfg = 0, ctrl = 0, fg_en;
 	u32 ctrl_no = MIPI_CTRL6;
 
-	/*MIPI_TX_HS_SYNC_CFG */
+	/* MIPI_TX_HS_SYNC_CFG */
 	if (ctrl_cfg->tx_ctrl_cfg.line_sync_pkt_en)
 		sync_cfg |= LINE_SYNC_PKT_ENABLE;
 	if (ctrl_cfg->tx_ctrl_cfg.frame_counter_active)
@@ -789,22 +784,29 @@ static void mipi_tx_ctrl_cfg(struct kmb_drm_private *dev_p, u8 fg_id,
 		sync_cfg |= DSI_LPM_FIRST_VSA_LINE;
 	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->lpm_last_vfp_line)
 		sync_cfg |= DSI_LPM_LAST_VFP_LINE;
-	/* enable frame generator */
+
+	/* Enable frame generator */
 	fg_en = 1 << fg_id;
 	sync_cfg |= FRAME_GEN_EN(fg_en);
+
 	if (ctrl_cfg->tx_ctrl_cfg.tx_always_use_hact)
 		sync_cfg |= ALWAYS_USE_HACT(fg_en);
 	if (ctrl_cfg->tx_ctrl_cfg.tx_hact_wait_stop)
 		sync_cfg |= HACT_WAIT_STOP(fg_en);
 
-	/* MIPI_TX_HS_CTRL*/
-	ctrl = HS_CTRL_EN | TX_SOURCE; /* type:DSI,source:LCD */
+	DRM_DEBUG("sync_cfg=%d fg_en=%d\n", sync_cfg, fg_en);
+
+	/* MIPI_TX_HS_CTRL */
+
+	/* type:DSI, source:LCD */
+	ctrl = HS_CTRL_EN | TX_SOURCE;
+	ctrl |= LCD_VC(fg_id);
+	ctrl |= ACTIVE_LANES(ctrl_cfg->active_lanes - 1);
 	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->eotp_en)
 		ctrl |= DSI_EOTP_EN;
 	if (ctrl_cfg->tx_ctrl_cfg.tx_dsi_cfg->hfp_blank_en)
 		ctrl |= DSI_CMD_HFP_EN;
-	ctrl |= LCD_VC(fg_id);
-	ctrl |= ACTIVE_LANES(ctrl_cfg->active_lanes - 1);
+
 	/*67 ns stop time */
 	ctrl |= HSEXIT_CNT(0x43);
 
@@ -818,14 +820,10 @@ static void mipi_tx_hs_tp_gen(struct kmb_drm_private *dev_p, int vc,
 			      u32 color1, u32 ctrl_no)
 {
 	int val = 0;
+
 	/* Select test pattern mode on the virtual channel */
 	val = TP_SEL_VCm(vc, tp_sel);
 
-	if (tp_sel == MIPI_TX_HS_TP_V_STRIPES ||
-	    tp_sel == MIPI_TX_HS_TP_H_STRIPES) {
-		val |= TP_STRIPE_WIDTH(stripe_width);
-	}
-
 	/* Configure test pattern colors */
 	kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_COLOR0(ctrl_no), color0);
 	kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_COLOR1(ctrl_no), color1);
@@ -833,6 +831,7 @@ static void mipi_tx_hs_tp_gen(struct kmb_drm_private *dev_p, int vc,
 	/* Enable test pattern generation on the virtual channel */
 	val |= TP_EN_VCm(vc);
 	kmb_write_mipi(dev_p, MIPI_TXm_HS_TEST_PAT_CTRL(ctrl_no), val);
+
 }
 #endif
 
@@ -844,31 +843,33 @@ static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_p,
 	u8 frame_id, sect;
 	u32 bits_per_pclk = 0;
 	u32 word_count = 0;
-
-	/*This is the order in which mipi tx needs to be initialized
-	 * set frame section parameters
-	 * set frame specific parameters
-	 * connect lcd to mipi
-	 * multi channel fifo cfg
-	 * set mipitxcctrlcfg
+	struct mipi_tx_frame_cfg *frame;
+
+	/* This is the order to initialize MIPI TX:
+	 * 1. set frame section parameters
+	 * 2. set frame specific parameters
+	 * 3. connect lcd to mipi
+	 * 4. multi channel fifo cfg
+	 * 5. set mipitxcctrlcfg
 	 */
 
 	for (frame_id = 0; frame_id < 4; frame_id++) {
-		/* find valid frame, assume only one valid frame */
-		if (ctrl_cfg->tx_ctrl_cfg.frames[frame_id] == NULL)
+		frame = ctrl_cfg->tx_ctrl_cfg.frames[frame_id];
+
+		/* Find valid frame, assume only one valid frame */
+		if (frame == NULL)
 			continue;
 
 		/* Frame Section configuration */
-		/*TODO - assume there is only one valid section in a frame, so
-		 * bits_per_pclk and word_count are only set once
+		/* TODO - assume there is only one valid section in a frame,
+		 * so bits_per_pclk and word_count are only set once
 		 */
 		for (sect = 0; sect < MIPI_CTRL_VIRTUAL_CHANNELS; sect++) {
-			if (ctrl_cfg->tx_ctrl_cfg.frames[frame_id]->sections[sect]
-			    == NULL)
+			if (frame->sections[sect] == NULL)
 				continue;
 
 			ret = mipi_tx_fg_section_cfg(dev_p, frame_id, sect,
-						     ctrl_cfg->tx_ctrl_cfg.frames[frame_id]->sections[sect],
+						     frame->sections[sect],
 						     &bits_per_pclk,
 						     &word_count);
 			if (ret)
@@ -876,30 +877,39 @@ static u32 mipi_tx_init_cntrl(struct kmb_drm_private *dev_p,
 
 		}
 
-		/* set frame specific parameters */
+		/* Set frame specific parameters */
 		mipi_tx_fg_cfg(dev_p, frame_id, ctrl_cfg->active_lanes,
-			       bits_per_pclk,
-			       word_count, ctrl_cfg->lane_rate_mbps,
-			       ctrl_cfg->tx_ctrl_cfg.frames[frame_id]);
+			       bits_per_pclk, word_count,
+			       ctrl_cfg->lane_rate_mbps, frame);
 
 		active_vchannels++;
 
-		/*stop iterating as only one virtual channel shall be used for
-		 * LCD connection
+		/* Stop iterating as only one virtual channel
+		 * shall be used for LCD connection
 		 */
 		break;
 	}
 
 	if (active_vchannels == 0)
 		return -EINVAL;
-	/*Multi-Channel FIFO Configuration */
+	/* Multi-Channel FIFO Configuration */
 	mipi_tx_multichannel_fifo_cfg(dev_p, ctrl_cfg->active_lanes, frame_id);
 
-	/*Frame Generator Enable */
+	/* Frame Generator Enable */
 	mipi_tx_ctrl_cfg(dev_p, frame_id, ctrl_cfg);
+
+#ifdef MIPI_TX_TEST_PATTERN_GENERATION
+	mipi_tx_hs_tp_gen(dev_p, 0, MIPI_TX_HS_TP_V_STRIPES,
+			  0x8, 0xff, 0xff00, MIPI_CTRL6);
+#endif
+
+	DRM_DEBUG("IRQ_STATUS = 0x%x\n",
+		  GET_MIPI_TX_HS_IRQ_STATUS(dev_p, MIPI_CTRL6));
+
 	return ret;
 }
 
+#ifdef DPHY_READ_TESTCODE
 int dphy_read_testcode(struct kmb_drm_private *dev_p, int dphy_sel,
 		       int test_code)
 {
@@ -914,17 +924,17 @@ int dphy_read_testcode(struct kmb_drm_private *dev_p, int dphy_sel,
 	reg_wr_data = 0;
 	reg_rd_data = 0;
 
-	if (((dphy_sel >> 0 & 0x1) == 1) | ((dphy_sel >> 4 & 0x1) ==
-					    1) | ((dphy_sel >> 8 & 0x1) == 1))
+	if (((dphy_sel >> 0 & 0x1) == 1) | ((dphy_sel >> 4 & 0x1) == 1) |
+	    ((dphy_sel >> 8 & 0x1) == 1))
 		reg_wr_data |= data << 0;
-	if (((dphy_sel >> 1 & 0x1) == 1) | ((dphy_sel >> 5 & 0x1) ==
-					    1) | ((dphy_sel >> 9 & 0x1) == 1))
+	if (((dphy_sel >> 1 & 0x1) == 1) | ((dphy_sel >> 5 & 0x1) == 1) |
+	    ((dphy_sel >> 9 & 0x1) == 1))
 		reg_wr_data |= data << 8;
-	if (((dphy_sel >> 2 & 0x1) == 1) | ((dphy_sel >> 6 & 0x1) ==
-					    1) | ((dphy_sel >> 10 & 0x1) == 1))
+	if (((dphy_sel >> 2 & 0x1) == 1) | ((dphy_sel >> 6 & 0x1) == 1) |
+	    ((dphy_sel >> 10 & 0x1) == 1))
 		reg_wr_data |= data << 16;
-	if (((dphy_sel >> 3 & 0x1) == 1) | ((dphy_sel >> 7 & 0x1) ==
-					    1) | ((dphy_sel >> 11 & 0x1) == 1))
+	if (((dphy_sel >> 3 & 0x1) == 1) | ((dphy_sel >> 7 & 0x1) == 1) |
+	    ((dphy_sel >> 11 & 0x1) == 1))
 		reg_wr_data |= data << 24;
 
 	if ((dphy_sel >> 0 & 0xf) > 0)
@@ -947,17 +957,18 @@ int dphy_read_testcode(struct kmb_drm_private *dev_p, int dphy_sel,
 
 	data = test_code >> 8 & 0xf;
 	reg_wr_data = 0;
-	if (((dphy_sel >> 0 & 0x1) == 1) | ((dphy_sel >> 4 & 0x1) ==
-					    1) | ((dphy_sel >> 8 & 0x1) == 1))
+
+	if (((dphy_sel >> 0 & 0x1) == 1) | ((dphy_sel >> 4 & 0x1) == 1) |
+	    ((dphy_sel >> 8 & 0x1) == 1))
 		reg_wr_data |= data << 0;
-	if (((dphy_sel >> 1 & 0x1) == 1) | ((dphy_sel >> 5 & 0x1) ==
-					    1) | ((dphy_sel >> 9 & 0x1) == 1))
+	if (((dphy_sel >> 1 & 0x1) == 1) | ((dphy_sel >> 5 & 0x1) == 1) |
+	    ((dphy_sel >> 9 & 0x1) == 1))
 		reg_wr_data |= data << 8;
-	if (((dphy_sel >> 2 & 0x1) == 1) | ((dphy_sel >> 6 & 0x1) ==
-					    1) | ((dphy_sel >> 10 & 0x1) == 1))
+	if (((dphy_sel >> 2 & 0x1) == 1) | ((dphy_sel >> 6 & 0x1) == 1) |
+	    ((dphy_sel >> 10 & 0x1) == 1))
 		reg_wr_data |= data << 16;
-	if (((dphy_sel >> 3 & 0x1) == 1) | ((dphy_sel >> 7 & 0x1) ==
-					    1) | ((dphy_sel >> 11 & 0x1) == 1))
+	if (((dphy_sel >> 3 & 0x1) == 1) | ((dphy_sel >> 7 & 0x1) == 1) |
+	    ((dphy_sel >> 11 & 0x1) == 1))
 		reg_wr_data |= data << 24;
 
 	if ((dphy_sel >> 0 & 0xf) > 0)
@@ -973,17 +984,18 @@ int dphy_read_testcode(struct kmb_drm_private *dev_p, int dphy_sel,
 
 	data = test_code & 0xff;
 	reg_wr_data = 0;
-	if (((dphy_sel >> 0 & 0x1) == 1) | ((dphy_sel >> 4 & 0x1) ==
-					    1) | ((dphy_sel >> 8 & 0x1) == 1))
+
+	if (((dphy_sel >> 0 & 0x1) == 1) | ((dphy_sel >> 4 & 0x1) == 1) |
+	    ((dphy_sel >> 8 & 0x1) == 1))
 		reg_wr_data |= data << 0;
-	if (((dphy_sel >> 1 & 0x1) == 1) | ((dphy_sel >> 5 & 0x1) ==
-					    1) | ((dphy_sel >> 9 & 0x1) == 1))
+	if (((dphy_sel >> 1 & 0x1) == 1) | ((dphy_sel >> 5 & 0x1) == 1) |
+	    ((dphy_sel >> 9 & 0x1) == 1))
 		reg_wr_data |= data << 8;
-	if (((dphy_sel >> 2 & 0x1) == 1) | ((dphy_sel >> 6 & 0x1) ==
-					    1) | ((dphy_sel >> 10 & 0x1) == 1))
+	if (((dphy_sel >> 2 & 0x1) == 1) | ((dphy_sel >> 6 & 0x1) == 1) |
+	    ((dphy_sel >> 10 & 0x1) == 1))
 		reg_wr_data |= data << 16;
-	if (((dphy_sel >> 3 & 0x1) == 1) | ((dphy_sel >> 7 & 0x1) ==
-					    1) | ((dphy_sel >> 11 & 0x1) == 1))
+	if (((dphy_sel >> 3 & 0x1) == 1) | ((dphy_sel >> 7 & 0x1) == 1) |
+	    ((dphy_sel >> 11 & 0x1) == 1))
 		reg_wr_data |= data << 24;
 
 	if ((dphy_sel >> 0 & 0xf) > 0)
@@ -1025,20 +1037,16 @@ int dphy_read_testcode(struct kmb_drm_private *dev_p, int dphy_sel,
 		data = reg_rd_data >> 24;
 
 	return data;
-
 }
+#endif
 
 static void test_mode_send(struct kmb_drm_private *dev_p, u32 dphy_no,
 			   u32 test_code, u32 test_data)
 {
-#ifdef DEBUG
 	if (test_code != TEST_CODE_FSM_CONTROL)
-		DRM_INFO("test_code = %02x, test_data = %08x\n", test_code,
+		DRM_DEBUG("test_code = %02x, test_data = %08x\n", test_code,
 			 test_data);
-#endif
-
-	/* send the test code first */
-	/*  Steps for code:
+	/* Steps to send test code:
 	 * - set testclk HIGH
 	 * - set testdin with test code
 	 * - set testen HIGH
@@ -1061,14 +1069,14 @@ static void test_mode_send(struct kmb_drm_private *dev_p, u32 dphy_no,
 	/* Set testen low */
 	CLR_DPHY_TEST_CTRL1_EN(dev_p, dphy_no);
 
-	/* Send the test data next */
-	/*  Steps for data:
-	 * - set testen LOW
-	 * - set testclk LOW
-	 * - set testdin with data
-	 * - set testclk HIGH
-	 */
 	if (test_code) {
+		/*  Steps to send test data:
+		 * - set testen LOW
+		 * - set testclk LOW
+		 * - set testdin with data
+		 * - set testclk HIGH
+		 */
+
 		/* Set testen low */
 		CLR_DPHY_TEST_CTRL1_EN(dev_p, dphy_no);
 
@@ -1085,59 +1093,36 @@ static void test_mode_send(struct kmb_drm_private *dev_p, u32 dphy_no,
 	}
 }
 
-static inline void
-	set_test_mode_src_osc_freq_target_low_bits(struct kmb_drm_private
+static inline void set_test_mode_src_osc_freq_target_low_bits(struct
+							      kmb_drm_private
 							      *dev_p,
 							      u32 dphy_no,
 							      u32 freq)
 {
-	/*typical rise/fall time=166,
-	 * refer Table 1207 databook,sr_osc_freq_target[7:0
+	/* Typical rise/fall time=166, refer Table 1207 databook,
+	 * sr_osc_freq_target[7:0]
 	 */
-	test_mode_send(dev_p, dphy_no,
-		       TEST_CODE_SLEW_RATE_DDL_CYCLES, (freq & 0x7f));
-}
-
-static inline void
-set_test_mode_slew_rate_calib_en(struct kmb_drm_private *dev_p, u32 dphy_no)
-{
-	/*do not bypass slew rate calibration algorithm */
-	/*bits[1:0}=srcal_en_ovr_en, srcal_en_ovr, bit[6]=sr_range */
-	test_mode_send(dev_p, dphy_no, TEST_CODE_SLEW_RATE_OVERRIDE_CTRL,
-		       (0x03 | (1 << 6)));
+	test_mode_send(dev_p, dphy_no, TEST_CODE_SLEW_RATE_DDL_CYCLES,
+		       (freq & 0x7f));
 }
 
-static inline void
-set_test_mode_src_osc_freq_target_hi_bits(struct kmb_drm_private *dev_p,
-					  u32 dphy_no, u32 freq)
+static inline void set_test_mode_src_osc_freq_target_hi_bits(struct
+							     kmb_drm_private
+							     *dev_p,
+							     u32 dphy_no,
+							     u32 freq)
 {
 	u32 data;
-	/*typical rise/fall time=166, refer Table 1207 databook,
-	 * sr_osc_freq_target[11:7
+
+	/* Flag this as high nibble */
+	data = ((freq >> 6) & 0x1f) | (1 << 7);
+
+	/* Typical rise/fall time=166, refer Table 1207 databook,
+	 * sr_osc_freq_target[11:7]
 	 */
-	data = ((freq >> 6) & 0x1f) | (1 << 7);	/*flag this as high nibble */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_SLEW_RATE_DDL_CYCLES, data);
 }
 
-struct vco_params {
-	u32 freq;
-	u32 range;
-	u32 divider;
-};
-
-static struct vco_params vco_table[] = {
-	{52, 0x3f, 8},
-	{80, 0x39, 8},
-	{105, 0x2f, 4},
-	{160, 0x29, 4},
-	{210, 0x1f, 2},
-	{320, 0x19, 2},
-	{420, 0x0f, 1},
-	{630, 0x09, 1},
-	{1100, 0x03, 1},
-	{0xffff, 0x01, 1},
-};
-
 static void mipi_tx_get_vco_params(struct vco_params *vco)
 {
 	int i;
@@ -1148,12 +1133,17 @@ static void mipi_tx_get_vco_params(struct vco_params *vco)
 			return;
 		}
 	}
+
 	WARN_ONCE(1, "Invalid vco freq = %u for PLL setup\n", vco->freq);
 }
 
 static void mipi_tx_pll_setup(struct kmb_drm_private *dev_p, u32 dphy_no,
 			      u32 ref_clk_mhz, u32 target_freq_mhz)
 {
+	u32 best_n = 0, best_m = 0;
+	u32 n = 0, m = 0, div = 0, delta, freq = 0, t_freq;
+	u32 best_freq_delta = 3000;
+
 	/* pll_ref_clk: - valid range: 2~64 MHz; Typically 24 MHz
 	 * Fvco: - valid range: 320~1250 MHz (Gen3 D-PHY)
 	 * Fout: - valid range: 40~1250 MHz (Gen3 D-PHY)
@@ -1171,35 +1161,37 @@ static void mipi_tx_pll_setup(struct kmb_drm_private *dev_p, u32 dphy_no,
 		.range = 0,
 		.divider = 1,
 	};
-	u32 best_n = 0, best_m = 0;
-	u32 n = 0, m = 0, div = 0, delta, freq = 0, t_freq;
-	u32 best_freq_delta = 3000;
 
 	vco_p.freq = target_freq_mhz;
 	mipi_tx_get_vco_params(&vco_p);
-	/*search pll n parameter */
+
+	/* Search pll n parameter */
 	for (n = PLL_N_MIN; n <= PLL_N_MAX; n++) {
-		/*calculate the pll input frequency division ratio
+		/* Calculate the pll input frequency division ratio
 		 * multiply by 1000 for precision -
 		 * no floating point, add n for rounding
 		 */
 		div = ((ref_clk_mhz * 1000) + n) / (n + 1);
-		/*found a valid n parameter */
+
+		/* Found a valid n parameter */
 		if ((div < 2000 || div > 8000))
 			continue;
-		/*search pll m parameter */
+
+		/* Search pll m parameter */
 		for (m = PLL_M_MIN; m <= PLL_M_MAX; m++) {
-			/*calculate the Fvco(DPHY PLL output frequency)
+			/* Calculate the Fvco(DPHY PLL output frequency)
 			 * using the current n,m params
 			 */
 			freq = div * (m + 2);
 			freq /= 1000;
-			/* trim the potential pll freq to max supported */
+
+			/* Trim the potential pll freq to max supported */
 			if (freq > PLL_FVCO_MAX)
 				continue;
 
 			delta = abs(freq - target_freq_mhz);
-			/*select the best (closest to target pll freq)
+
+			/* Select the best (closest to target pll freq)
 			 * n,m parameters so far
 			 */
 			if (delta < best_freq_delta) {
@@ -1210,212 +1202,235 @@ static void mipi_tx_pll_setup(struct kmb_drm_private *dev_p, u32 dphy_no,
 		}
 	}
 
-	/*Program vco_cntrl parameter
-	 *PLL_VCO_Control[5:0] = pll_vco_cntrl_ovr,
+	/* Program vco_cntrl parameter
+	 * PLL_VCO_Control[5:0] = pll_vco_cntrl_ovr,
 	 * PLL_VCO_Control[6]   = pll_vco_cntrl_ovr_en
 	 */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_VCO_CTRL, (vco_p.range
 								| (1 << 6)));
 
-	/*Program m, n pll parameters */
+	/* Program m, n pll parameters */
+	DRM_INFO("m = %d n = %d\n", best_m, best_n);
 
-	DRM_INFO("%s : %d m = %d n = %d\n", __func__, __LINE__, best_m, best_n);
-
-	/*PLL_Input_Divider_Ratio[3:0] = pll_n_ovr */
+	/* PLL_Input_Divider_Ratio[3:0] = pll_n_ovr */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_INPUT_DIVIDER,
 		       (best_n & 0x0f));
 
-	/* m - low nibble PLL_Loop_Divider_Ratio[4:0] = pll_m_ovr[4:0] */
+	/* m - low nibble PLL_Loop_Divider_Ratio[4:0]
+	 * pll_m_ovr[4:0]
+	 */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_FEEDBACK_DIVIDER,
 		       (best_m & 0x1f));
 
-	/*m -high nibble PLL_Loop_Divider_Ratio[4:0] = pll_m_ovr[9:5] */
+	/* m - high nibble PLL_Loop_Divider_Ratio[4:0]
+	 * pll_m_ovr[9:5]
+	 */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_FEEDBACK_DIVIDER,
 		       ((best_m >> 5) & 0x1f) | PLL_FEEDBACK_DIVIDER_HIGH);
 
-	/*enable overwrite of n,m parameters :pll_n_ovr_en, pll_m_ovr_en */
+	/* Enable overwrite of n,m parameters :pll_n_ovr_en, pll_m_ovr_en */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_OUTPUT_CLK_SEL,
 		       (PLL_N_OVR_EN | PLL_M_OVR_EN));
 
-	/*Program Charge-Pump parameters */
+	/* Program Charge-Pump parameters */
 
-	/*pll_prop_cntrl-fixed values for prop_cntrl from DPHY doc */
+	/* pll_prop_cntrl-fixed values for prop_cntrl from DPHY doc */
 	t_freq = target_freq_mhz * vco_p.divider;
 	test_mode_send(dev_p, dphy_no,
 		       TEST_CODE_PLL_PROPORTIONAL_CHARGE_PUMP_CTRL,
 		       ((t_freq > 1150) ? 0x0C : 0x0B));
 
-	/*pll_int_cntrl-fixed value for int_cntrl from DPHY doc */
+	/* pll_int_cntrl-fixed value for int_cntrl from DPHY doc */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_INTEGRAL_CHARGE_PUMP_CTRL,
 		       0x00);
 
-	/*pll_gmp_cntrl-fixed value for gmp_cntrl from DPHY doci */
+	/* pll_gmp_cntrl-fixed value for gmp_cntrl from DPHY doci */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_GMP_CTRL, 0x10);
 
-	/*pll_cpbias_cntrl-fixed value for cpbias_cntrl from DPHY doc */
+	/* pll_cpbias_cntrl-fixed value for cpbias_cntrl from DPHY doc */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_CHARGE_PUMP_BIAS, 0x10);
 
-	/*pll_th1 -Lock Detector Phase error threshold, document gives fixed
-	 * value
+	/* pll_th1 -Lock Detector Phase error threshold,
+	 * document gives fixed value
 	 */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_PHASE_ERR_CTRL, 0x02);
 
-	/*PLL Lock Configuration */
+	/* PLL Lock Configuration */
 
-	/*pll_th2 - Lock Filter length, document gives fixed value */
+	/* pll_th2 - Lock Filter length, document gives fixed value */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_LOCK_FILTER, 0x60);
 
-	/*pll_th3- PLL Unlocking filter, document gives fixed value */
+	/* pll_th3- PLL Unlocking filter, document gives fixed value */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_UNLOCK_FILTER, 0x03);
 
-	/*pll_lock_sel-PLL Lock Detector Selection, document gives
-	 * fixed value
+	/* pll_lock_sel-PLL Lock Detector Selection,
+	 * document gives fixed value
 	 */
 	test_mode_send(dev_p, dphy_no, TEST_CODE_PLL_LOCK_DETECTOR, 0x02);
 }
 
+#ifdef DPHY_GET_FSM
+static void dphy_get_fsm(struct kmb_drm_private *dev_p, u32 dphy_no)
+{
+	test_mode_send(dev_p, dphy_no, TEST_CODE_FSM_CONTROL, 0x80);
+
+	DRM_INFO("dphy %d fsm_state = 0%x\n", dphy_no,
+		 kmb_read_mipi(dev_p, DPHY_TEST_DOUT4_7));
+}
+#endif
+
 static void dphy_init_sequence(struct kmb_drm_private *dev_p,
 			       struct mipi_ctrl_cfg *cfg, u32 dphy_no,
 			       int active_lanes, enum dphy_mode mode)
 {
-	u32 test_code = 0;
-	u32 test_data = 0, val;
+	u32 test_code = 0, test_data = 0, val;
 	int i = 0;
 
-	/* deassert SHUTDOWNZ signal */
-	DRM_INFO("%s : %d  MIPI_DPHY_STAT0_4_7 = 0x%x)\n", __func__, __LINE__,
-		 kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));
-	/*Set D-PHY in shutdown mode */
-	/*assert RSTZ signal */
+	DRM_INFO("dphy=%d mode=%d active_lanes=%d\n", dphy_no, mode,
+		 active_lanes);
+	DRM_DEBUG("MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));
+
+	/* Set D-PHY in shutdown mode */
+	/* Assert RSTZ signal */
 	CLR_DPHY_INIT_CTRL0(dev_p, dphy_no, RESETZ);
-	/* assert SHUTDOWNZ signal */
+
+	/* Assert SHUTDOWNZ signal */
 	CLR_DPHY_INIT_CTRL0(dev_p, dphy_no, SHUTDOWNZ);
 	val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL0);
-	DRM_INFO("%s : %d DPHY_INIT_CTRL0 = 0x%x\n", __func__, __LINE__, val);
 
-	/*Init D-PHY_n */
-	/*Pulse testclear signal to make sure the d-phy configuration starts
-	 * from a clean base
+	DRM_INFO("DPHY_INIT_CTRL0 = 0x%x\n", val);
+
+	/* Init D-PHY_n
+	 * Pulse testclear signal to make sure the d-phy configuration
+	 * starts from a clean base
 	 */
 	CLR_DPHY_TEST_CTRL0(dev_p, dphy_no);
 	ndelay(15);
 	SET_DPHY_TEST_CTRL0(dev_p, dphy_no);
-	/*TODO may need to add 15ns delay here */
 	ndelay(15);
 	CLR_DPHY_TEST_CTRL0(dev_p, dphy_no);
-	val = kmb_read_mipi(dev_p, DPHY_TEST_CTRL0);
-	DRM_INFO("%s : %d DPHY_TEST_CTRL0 = 0x%x\n", __func__, __LINE__, val);
 	ndelay(15);
 
-	/*Set mastermacro bit - Master or slave mode */
+	DRM_DEBUG("DPHY_TEST_CTRL0=0x%x\n",
+		  kmb_read_mipi(dev_p, DPHY_TEST_CTRL0));
+
+	/* Set mastermacro bit - Master or slave mode */
 	test_code = TEST_CODE_MULTIPLE_PHY_CTRL;
-	/*DPHY has its own clock lane enabled (master) */
+
+	/* DPHY has its own clock lane enabled (master) */
 	if (mode == MIPI_DPHY_MASTER)
 		test_data = 0x01;
 	else
 		test_data = 0x00;
 
-	/*send the test code and data */
+	/* Send the test code and data */
 	test_mode_send(dev_p, dphy_no, test_code, test_data);
-	/*Set the lane data rate */
+
+	/* Set the lane data rate */
 	for (i = 0; i < MIPI_DPHY_DEFAULT_BIT_RATES; i++) {
 		if (mipi_hs_freq_range[i].default_bit_rate_mbps <
 		    cfg->lane_rate_mbps)
 			continue;
-		/* send the test code and data */
-		/*bit[6:0] = hsfreqrange_ovr bit[7] = hsfreqrange_ovr_en */
+
+		/* Send the test code and data */
+		/* bit[6:0] = hsfreqrange_ovr bit[7] = hsfreqrange_ovr_en */
 		test_code = TEST_CODE_HS_FREQ_RANGE_CFG;
-		test_data =
-		    (mipi_hs_freq_range[i].hsfreqrange_code & 0x7f) | (1 << 7);
+		test_data = (mipi_hs_freq_range[i].hsfreqrange_code & 0x7f) |
+		    (1 << 7);
 		test_mode_send(dev_p, dphy_no, test_code, test_data);
 		break;
 	}
-	/*
-	 * High-Speed Tx Slew Rate Calibration
+
+	/* High-Speed Tx Slew Rate Calibration
 	 * BitRate: > 1.5 Gbps && <= 2.5 Gbps: slew rate control OFF
 	 */
 	if (cfg->lane_rate_mbps > 1500) {
-		/*bypass slew rate calibration algorithm */
-		/*bits[1:0} srcal_en_ovr_en, srcal_en_ovr */
+		/* Bypass slew rate calibration algorithm
+		 * bits[1:0} srcal_en_ovr_en, srcal_en_ovr
+		 */
 		test_code = TEST_CODE_SLEW_RATE_OVERRIDE_CTRL;
 		test_data = 0x02;
 		test_mode_send(dev_p, dphy_no, test_code, test_data);
 
-		/* disable slew rate calibration */
+		/* Disable slew rate calibration */
 		test_code = TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL;
 		test_data = 0x00;
 		test_mode_send(dev_p, dphy_no, test_code, test_data);
 	} else if (cfg->lane_rate_mbps > 1000) {
-		/*BitRate: > 1 Gbps && <= 1.5 Gbps: - slew rate control ON
+		/* BitRate: > 1 Gbps && <= 1.5 Gbps: - slew rate control ON
 		 * typical rise/fall times: 166 ps
 		 */
 
-		/*do not bypass slew rate calibration algorithm */
-		/*bits[1:0}=srcal_en_ovr_en, srcal_en_ovr, bit[6]=sr_range */
+		/* Do not bypass slew rate calibration algorithm
+		 * bits[1:0}=srcal_en_ovr_en, srcal_en_ovr, bit[6]=sr_range
+		 */
 		test_code = TEST_CODE_SLEW_RATE_OVERRIDE_CTRL;
 		test_data = (0x03 | (1 << 6));
 		test_mode_send(dev_p, dphy_no, test_code, test_data);
 
-//              set_test_mode_slew_rate_calib_en(dev_p, dphy_no);
-
-		/* enable slew rate calibration */
+		/* Enable slew rate calibration */
 		test_code = TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL;
 		test_data = 0x01;
 		test_mode_send(dev_p, dphy_no, test_code, test_data);
 
-		/*set sr_osc_freq_target[6:0] */
-		/*typical rise/fall time=166, refer Table 1207 databook */
-		/*typical rise/fall time=166, refer Table 1207 databook,
-		 * sr_osc_freq_target[7:0
+		/* Set sr_osc_freq_target[6:0] low nibble
+		 * typical rise/fall time=166, refer Table 1207 databook
 		 */
 		test_code = TEST_CODE_SLEW_RATE_DDL_CYCLES;
 		test_data = (0x72f & 0x7f);
 		test_mode_send(dev_p, dphy_no, test_code, test_data);
-		/*set sr_osc_freq_target[11:7] */
-		/*typical rise/fall time=166, refer Table 1207 databook,
-		 * sr_osc_freq_target[11:7
+
+		/* Set sr_osc_freq_target[11:7] high nibble
+		 * Typical rise/fall time=166, refer Table 1207 databook
 		 */
 		test_code = TEST_CODE_SLEW_RATE_DDL_CYCLES;
-		/*flag this as high nibble */
 		test_data = ((0x72f >> 6) & 0x1f) | (1 << 7);
 		test_mode_send(dev_p, dphy_no, test_code, test_data);
 	} else {
-		/*lane_rate_mbps <= 1000 Mbps */
-		/*BitRate:  <= 1 Gbps:
+		/* lane_rate_mbps <= 1000 Mbps
+		 * BitRate:  <= 1 Gbps:
 		 * - slew rate control ON
 		 * - typical rise/fall times: 225 ps
 		 */
 
-		/*do not bypass slew rate calibration algorithm */
+		/* Do not bypass slew rate calibration algorithm */
 		test_code = TEST_CODE_SLEW_RATE_OVERRIDE_CTRL;
 		test_data = (0x03 | (1 << 6));
 		test_mode_send(dev_p, dphy_no, test_code, test_data);
 
-		/* enable slew rate calibration */
+		/* Enable slew rate calibration */
 		test_code = TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL;
 		test_data = 0x01;
 		test_mode_send(dev_p, dphy_no, test_code, test_data);
 
-		/*typical rise/fall time=255, refer Table 1207 databook */
+		/* Typical rise/fall time=255, refer Table 1207 databook */
 		test_code = TEST_CODE_SLEW_RATE_DDL_CYCLES;
 		test_data = (0x523 & 0x7f);
 		test_mode_send(dev_p, dphy_no, test_code, test_data);
 
-		/*set sr_osc_freq_target[11:7] */
+		/* Set sr_osc_freq_target[11:7] high nibble */
 		test_code = TEST_CODE_SLEW_RATE_DDL_CYCLES;
-		/*flag this as high nibble */
 		test_data = ((0x523 >> 6) & 0x1f) | (1 << 7);
 		test_mode_send(dev_p, dphy_no, test_code, test_data);
 
 	}
-	/*Set cfgclkfreqrange */
+
+	/* Set cfgclkfreqrange */
 	val = (((cfg->cfg_clk_khz / 1000) - 17) * 4) & 0x3f;
 	SET_DPHY_FREQ_CTRL0_3(dev_p, dphy_no, val);
-	val = kmb_read_mipi(dev_p, DPHY_FREQ_CTRL0_3 + 4);
 
-	/*Enable config clk for the corresponding d-phy */
+	DRM_INFO("DPHY_FREQ = 0x%x\n",
+		 kmb_read_mipi(dev_p, DPHY_FREQ_CTRL0_3 + 4));
+	DRM_DEBUG("MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));
+
+	/* Enable config clk for the corresponding d-phy */
 	kmb_set_bit_mipi(dev_p, DPHY_CFG_CLK_EN, dphy_no);
-	val = kmb_read_mipi(dev_p, DPHY_CFG_CLK_EN);
+
+	DRM_INFO("DPHY_CFG_CLK_EN = 0x%x\n",
+		 kmb_read_mipi(dev_p, DPHY_CFG_CLK_EN));
+
 	/* PLL setup */
 	if (mode == MIPI_DPHY_MASTER) {
 		/*Set PLL regulator in bypass */
@@ -1427,16 +1442,21 @@ static void dphy_init_sequence(struct kmb_drm_private *dev_p,
 		mipi_tx_pll_setup(dev_p, dphy_no, cfg->ref_clk_khz / 1000,
 				  cfg->lane_rate_mbps / 2);
 
-		/*Set clksel */
-		kmb_write_bits_mipi(dev_p, DPHY_INIT_CTRL1, PLL_CLKSEL_0,
-				    2, 0x01);
-		val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL1);
+		/* Set clksel */
+		kmb_write_bits_mipi(dev_p, DPHY_INIT_CTRL1,
+				    PLL_CLKSEL_0, 2, 0x01);
 
-		/*Set pll_shadow_control */
+		/* Set pll_shadow_control */
 		kmb_set_bit_mipi(dev_p, DPHY_INIT_CTRL1, PLL_SHADOW_CTRL);
-		val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL1);
+
+		DRM_INFO("DPHY_INIT_CTRL1 = 0x%x\n",
+			 kmb_read_mipi(dev_p, DPHY_INIT_CTRL1));
 	}
-#define MIPI_TX_FORCE_VOD
+
+	DRM_DEBUG("MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));
+
+//#define MIPI_TX_FORCE_VOD
 #ifdef MIPI_TX_FORCE_VOD
 #define MIPI_TX_VOD_LVL	450
 #define TEST_CODE_BANDGAP 0x24
@@ -1474,31 +1494,39 @@ static void dphy_init_sequence(struct kmb_drm_private *dev_p,
 	 * bits[5:0]  - BaseDir: 1 = Rx
 	 * bits[9:6] - BaseDir: 0 = Tx
 	 */
+	DRM_DEBUG("MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		  kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));
+
 	kmb_write_bits_mipi(dev_p, DPHY_INIT_CTRL2, 0, 9, 0x03f);
-	val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL2);
 	ndelay(15);
 
-	/* Enable CLOCK LANE - */
-	/*clock lane should be enabled regardless of the direction set for
-	 * the D-PHY (Rx/Tx)
+	/* Enable CLOCK LANE
+	 * Clock lane should be enabled regardless of the direction
+	 * set for the D-PHY (Rx/Tx)
 	 */
 	kmb_set_bit_mipi(dev_p, DPHY_INIT_CTRL2, 12 + dphy_no);
-	val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL2);
 
-	/* enable DATA LANES */
+	DRM_INFO("DPHY_INIT_CTRL2 = 0x%x\n",
+		 kmb_read_mipi(dev_p, DPHY_INIT_CTRL2));
+
+	/* Enable DATA LANES */
 	kmb_write_bits_mipi(dev_p, DPHY_ENABLE, dphy_no * 2, 2,
 			    ((1 << active_lanes) - 1));
 
-	val = kmb_read_mipi(dev_p, DPHY_ENABLE);
+	DRM_INFO("DPHY_ENABLE = 0x%x\n", kmb_read_mipi(dev_p, DPHY_ENABLE));
 	ndelay(15);
-	/*Take D-PHY out of shutdown mode */
-	/* deassert SHUTDOWNZ signal */
+
+	/* Take D-PHY out of shutdown mode */
+	/* Deassert SHUTDOWNZ signal */
+	DRM_INFO("MIPI_DPHY_STAT0_4_7 = 0x%x)\n",
+		 kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7));
 	SET_DPHY_INIT_CTRL0(dev_p, dphy_no, SHUTDOWNZ);
 	ndelay(15);
 
-	/*deassert RSTZ signal */
+	/* Deassert RSTZ signal */
 	SET_DPHY_INIT_CTRL0(dev_p, dphy_no, RESETZ);
-	val = kmb_read_mipi(dev_p, DPHY_INIT_CTRL0);
+	DRM_INFO("DPHY_INIT_CTRL0 = 0x%x\n",
+		 kmb_read_mipi(dev_p, DPHY_INIT_CTRL0));
 }
 
 static void dphy_wait_fsm(struct kmb_drm_private *dev_p, u32 dphy_no,
@@ -1510,76 +1538,87 @@ static void dphy_wait_fsm(struct kmb_drm_private *dev_p, u32 dphy_no,
 
 	do {
 		test_mode_send(dev_p, dphy_no, TEST_CODE_FSM_CONTROL, 0x80);
-		/*TODO-need to add a time out and return failure */
+
+		/* TODO - need to add a time out and return failure */
 		val = GET_TEST_DOUT4_7(dev_p, dphy_no);
 		i++;
 		if (i > TIMEOUT) {
 			status = 0;
-			DRM_INFO("%s: timing out fsm_state = %x GET_TEST_DOUT4_7 = %x",
-			     __func__, fsm_state, kmb_read_mipi(dev_p,
-						      DPHY_TEST_DOUT4_7));
 			break;
 		}
 	} while (val != fsm_state);
-	DRM_INFO("%s: dphy %d val = %x\n", __func__, dphy_no, val);
 
 	DRM_INFO("%s: dphy %d val = %x\n", __func__, dphy_no, val);
 	DRM_INFO("********** DPHY %d WAIT_FSM %s **********\n",
 		 dphy_no, status ? "SUCCESS" : "FAILED");
 }
 
-static u32 wait_init_done(struct kmb_drm_private *dev_p, u32 dphy_no,
-			  u32 active_lanes)
+static void wait_init_done(struct kmb_drm_private *dev_p, u32 dphy_no,
+			   u32 active_lanes)
 {
 	u32 stopstatedata = 0;
 	u32 data_lanes = (1 << active_lanes) - 1;
 	int i = 0, val;
 	int status = 1;
 
-	DRM_INFO("%s : %d dphy = %d active_lanes=%d data_lanes=%d\n",
-		 __func__, __LINE__, dphy_no, active_lanes, data_lanes);
+	DRM_INFO("dphy=%d active_lanes=%d data_lanes=%d\n", dphy_no,
+		 active_lanes, data_lanes);
 
 	do {
 		val = kmb_read_mipi(dev_p, MIPI_DPHY_STAT4_7);
 		stopstatedata = GET_STOPSTATE_DATA(dev_p, dphy_no) & data_lanes;
+
+		/* TODO-need to add a time out and return failure */
 		i++;
+
 		if (i > TIMEOUT) {
 			status = 0;
-			DRM_INFO("!WAIT_INIT_DONE: TIMING OUT! (err_stat=%d)n",
+
+			DRM_INFO("! WAIT_INIT_DONE: TIMING OUT!(err_stat=%d)",
 				 kmb_read_mipi(dev_p, MIPI_DPHY_ERR_STAT6_7));
+			DRM_INFO("MIPI_DPHY_STAT0_4_7 = 0x%x)\n", val);
+			DRM_INFO("stopdata = 0x%x data_lanes=0x%x\n",
+				 stopstatedata, data_lanes);
+
 			break;
 		}
-//		udelay(1);
+
+		if (i < 3) {
+			DRM_INFO("stopdata = 0x%x data_lanes=0x%x\n",
+				 stopstatedata, data_lanes);
+			DRM_INFO("MIPI_DPHY_STAT0_4_7 = 0x%x)\n", val);
+		}
 	} while (stopstatedata != data_lanes);
 
 	DRM_INFO("********** DPHY %d INIT - %s **********\n",
 		 dphy_no, status ? "SUCCESS" : "FAILED");
-
-	return 0;
 }
 
-static u32 wait_pll_lock(struct kmb_drm_private *dev_p, u32 dphy_no)
+static void wait_pll_lock(struct kmb_drm_private *dev_p, u32 dphy_no)
 {
 	int i = 0;
 	int status = 1;
 
 	do {
-		/*TODO-need to add a time out and return failure */
+		/* TODO-need to add a time out and return failure */
 		i++;
-	//	udelay(1);
 		if (i > TIMEOUT) {
 			status = 0;
+
 			DRM_INFO("%s: timing out", __func__);
-			DRM_INFO("%s : PLL_LOCK = 0x%x\n", __func__,
+			DRM_INFO("%s : PLL_LOCK = 0x%x ", __func__,
 				 kmb_read_mipi(dev_p, DPHY_PLL_LOCK));
+
 			break;
 		}
 
+		if ((i % 100) == 0)
+			DRM_INFO("%s : PLL_LOCK = 0x%x\n", __func__,
+				 kmb_read_mipi(dev_p, DPHY_PLL_LOCK));
 	} while (!GET_PLL_LOCK(dev_p, dphy_no));
 
 	DRM_INFO("********** PLL Locked for DPHY %d - %s **********\n",
 		 dphy_no, status ? "SUCCESS" : "FAILED");
-	return 0;
 }
 
 static u32 mipi_tx_init_dphy(struct kmb_drm_private *dev_p,
@@ -1587,10 +1626,10 @@ static u32 mipi_tx_init_dphy(struct kmb_drm_private *dev_p,
 {
 	u32 dphy_no = MIPI_DPHY6;
 
-	DRM_INFO("%s : %d active_lanes=%d lane_rate=%d\n",
-		 __func__, __LINE__, cfg->active_lanes,
+	DRM_INFO("active_lanes=%d lane_rate=%d\n", cfg->active_lanes,
 		 MIPI_TX_LANE_DATA_RATE_MBPS);
-	/*multiple D-PHYs needed */
+
+	/* Multiple D-PHYs needed */
 	if (cfg->active_lanes > MIPI_DPHY_D_LANES) {
 		/*
 		 *Initialization for Tx aggregation mode is done according to
@@ -1614,16 +1653,16 @@ static u32 mipi_tx_init_dphy(struct kmb_drm_private *dev_p,
 				   MIPI_DPHY_SLAVE);
 		dphy_wait_fsm(dev_p, dphy_no + 1, DPHY_TX_LOCK);
 
-		/*PHY #N master */
+		/* PHY #N master */
 		dphy_init_sequence(dev_p, cfg, dphy_no, MIPI_DPHY_D_LANES,
 				   MIPI_DPHY_MASTER);
-		/* wait for DPHY init to complete */
+
+		/* Wait for DPHY init to complete */
 		wait_init_done(dev_p, dphy_no, MIPI_DPHY_D_LANES);
 		wait_init_done(dev_p, dphy_no + 1,
 			       cfg->active_lanes - MIPI_DPHY_D_LANES);
 		wait_pll_lock(dev_p, dphy_no);
 		wait_pll_lock(dev_p, dphy_no + 1);
-//		udelay(1000);
 		dphy_wait_fsm(dev_p, dphy_no, DPHY_TX_IDLE);
 	} else {		/* Single DPHY */
 		dphy_init_sequence(dev_p, cfg, dphy_no, cfg->active_lanes,
@@ -1636,6 +1675,51 @@ static u32 mipi_tx_init_dphy(struct kmb_drm_private *dev_p,
 	return 0;
 }
 
+#ifdef MIPI_TX_INIT_IRQS
+static void mipi_tx_init_irqs(struct kmb_drm_private *dev_p,
+			      union mipi_irq_cfg *cfg,
+			      struct mipi_tx_ctrl_cfg *tx_ctrl_cfg)
+{
+	unsigned long irqflags;
+	uint8_t vc;
+
+	/* Clear all interrupts first */
+	/* Local interrupts */
+	SET_MIPI_TX_HS_IRQ_CLEAR(dev_p, MIPI_CTRL6, MIPI_TX_HS_IRQ_ALL);
+
+	/* Global interrupts */
+	SET_MIPI_CTRL_IRQ_CLEAR0(dev_p, MIPI_CTRL6, MIPI_HS_IRQ);
+	SET_MIPI_CTRL_IRQ_CLEAR0(dev_p, MIPI_CTRL6, MIPI_DPHY_ERR_IRQ);
+	SET_MIPI_CTRL_IRQ_CLEAR1(dev_p, MIPI_CTRL6, MIPI_HS_RX_EVENT_IRQ);
+
+	/* Enable interrupts */
+	spin_lock_irqsave(&dev_p->irq_lock, irqflags);
+	for (vc = 0; vc < MIPI_CTRL_VIRTUAL_CHANNELS; vc++) {
+		if (tx_ctrl_cfg->frames[vc] == NULL)
+			continue;
+
+		/*enable FRAME_DONE interrupt if VC is configured */
+		SET_HS_IRQ_ENABLE(dev_p, MIPI_CTRL6,
+				  MIPI_TX_HS_IRQ_FRAME_DONE_0 << vc);
+
+		/* Only one vc for LCD interface */
+		break;
+	}
+
+	/* Eenable user enabled interrupts */
+	if (cfg->irq_cfg.dphy_error)
+		SET_MIPI_CTRL_IRQ_ENABLE0(dev_p, MIPI_CTRL6, MIPI_DPHY_ERR_IRQ);
+	if (cfg->irq_cfg.line_compare)
+		SET_HS_IRQ_ENABLE(dev_p, MIPI_CTRL6,
+				  MIPI_TX_HS_IRQ_LINE_COMPARE);
+	if (cfg->irq_cfg.ctrl_error)
+		SET_HS_IRQ_ENABLE(dev_p, MIPI_CTRL6, MIPI_TX_HS_IRQ_ERROR);
+
+	spin_unlock_irqrestore(&dev_p->irq_lock, irqflags);
+}
+#endif
+
+#ifdef MIPI_TX_HANDLE_IRQS
 void mipi_tx_handle_irqs(struct kmb_drm_private *dev_p)
 {
 	uint32_t irq_ctrl_stat_0, hs_stat, hs_enable;
@@ -1643,7 +1727,8 @@ void mipi_tx_handle_irqs(struct kmb_drm_private *dev_p)
 
 	irq_ctrl_stat_0 = MIPI_GET_IRQ_STAT0(dev_p);
 	irq_ctrl_enabled_0 = MIPI_GET_IRQ_ENABLED0(dev_p);
-	/*only service enabled interrupts */
+
+	/* Only service enabled interrupts */
 	irq_ctrl_stat_0 &= irq_ctrl_enabled_0;
 
 	if (irq_ctrl_stat_0 & MIPI_DPHY_ERR_MASK) {
@@ -1654,7 +1739,8 @@ void mipi_tx_handle_irqs(struct kmb_drm_private *dev_p)
 		hs_stat = GET_MIPI_TX_HS_IRQ_STATUS(dev_p, MIPI_CTRL6);
 		hs_enable = GET_HS_IRQ_ENABLE(dev_p, MIPI_CTRL6);
 		hs_stat &= hs_enable;
-		/*look for errors */
+
+		/* Check for errors */
 		if (hs_stat & MIPI_TX_HS_IRQ_ERROR) {
 			CLR_HS_IRQ_ENABLE(dev_p, MIPI_CTRL6,
 					  (hs_stat & MIPI_TX_HS_IRQ_ERROR) |
@@ -1667,43 +1753,21 @@ void mipi_tx_handle_irqs(struct kmb_drm_private *dev_p)
 	}
 
 }
+#endif
 
+#ifdef LCD_TEST
 void connect_lcd_to_mipi(struct kmb_drm_private *dev_p)
 {
-#ifdef LCD_TEST
-	/*connect lcd to mipi */
-	/*DISABLE MIPI->CIF CONNECTION*/
+	/* DISABLE MIPI->CIF CONNECTION */
 	kmb_write_msscam(dev_p, MSS_MIPI_CIF_CFG, 0);
-	/*ENABLE LCD->MIPI CONNECTION */
-	kmb_write_msscam(dev_p, MSS_LCD_MIPI_CFG, 1);
-	/*DISABLE LCD->CIF LOOPBACK */
-	kmb_write_msscam(dev_p, MSS_LOOPBACK_CFG, 0);
-#endif
-}
 
-/**
- * Reads specified number of bytes from the file.
- *
- * @param file         - file structure.
- * @param offset       - offset in the file.
- * @param addr         - address of the buffer.
- * @param count        - size of the buffer .
- *
- * @return 0 if success or error code.
- */
-int kmb_kernel_read(struct file *file, loff_t offset,
-		    char *addr, unsigned long count)
-{
-	char __user *buf = (char __user *)addr;
-	ssize_t ret;
-
-	if (!(file->f_mode & FMODE_READ))
-		return -EBADF;
-
-	ret = kernel_read(file, buf, count, &offset);
+	/* ENABLE LCD->MIPI CONNECTION */
+	kmb_write_msscam(dev_p, MSS_LCD_MIPI_CFG, 1);
 
-	return ret;
+	/* DISABLE LCD->CIF LOOPBACK */
+	kmb_write_msscam(dev_p, MSS_LOOPBACK_CFG, 0);
 }
+#endif
 
 int kmb_dsi_hw_init(struct drm_device *dev, struct drm_display_mode *mode)
 {
@@ -1711,35 +1775,39 @@ int kmb_dsi_hw_init(struct drm_device *dev, struct drm_display_mode *mode)
 	u64 data_rate;
 
 	mipi_tx_init_cfg.active_lanes = MIPI_TX_ACTIVE_LANES;
+
 	if (mode != NULL) {
 		mipi_tx_frame0_sect_cfg.width_pixels = mode->crtc_hdisplay;
 		mipi_tx_frame0_sect_cfg.height_lines = mode->crtc_vdisplay;
 		mipitx_frame0_cfg.vsync_width =
-			mode->crtc_vsync_end - mode->crtc_vsync_start;
+		    mode->crtc_vsync_end - mode->crtc_vsync_start;
 		mipitx_frame0_cfg.v_backporch =
-			mode->crtc_vtotal - mode->crtc_vsync_end;
+		    mode->crtc_vtotal - mode->crtc_vsync_end;
 		mipitx_frame0_cfg.v_frontporch =
-			mode->crtc_vsync_start - mode->crtc_vdisplay;
+		    mode->crtc_vsync_start - mode->crtc_vdisplay;
 		mipitx_frame0_cfg.hsync_width =
-			mode->crtc_hsync_end - mode->crtc_hsync_start;
+		    mode->crtc_hsync_end - mode->crtc_hsync_start;
 		mipitx_frame0_cfg.h_backporch =
-			mode->crtc_htotal - mode->crtc_hsync_end;
+		    mode->crtc_htotal - mode->crtc_hsync_end;
 		mipitx_frame0_cfg.h_frontporch =
-			mode->crtc_hsync_start - mode->crtc_hdisplay;
-		/*lane rate = (vtotal*htotal*fps*bpp)/4 / 1000000
+		    mode->crtc_hsync_start - mode->crtc_hdisplay;
+
+		/* Lane rate = (vtotal*htotal*fps*bpp)/4 / 1000000
 		 * to convert to Mbps
 		 */
-		DRM_INFO("htotal = %d vtotal=%d refresh=%d\n",
-				mode->crtc_htotal, mode->crtc_vtotal,
-				drm_mode_vrefresh(mode));
-		data_rate =
-			((((u32)mode->crtc_vtotal * (u32)mode->crtc_htotal)
-			* (u32)(drm_mode_vrefresh(mode))
-			* MIPI_TX_BPP)/mipi_tx_init_cfg.active_lanes) / 1000000;
-		DRM_INFO("data_rate = %llu active_lanes=%d\n",
-				data_rate, mipi_tx_init_cfg.active_lanes);
-
-		/*when late rate < 800 - modeset fails with 4 lanes -
+		data_rate = ((((u32) mode->crtc_vtotal *
+				(u32) mode->crtc_htotal) *
+				(u32)(drm_mode_vrefresh(mode)) *
+			      MIPI_TX_BPP) / mipi_tx_init_cfg.active_lanes) /
+		    1000000;
+
+		DRM_INFO("htotal=%d vtotal=%d refresh=%d\n",
+			 mode->crtc_htotal, mode->crtc_vtotal,
+			 drm_mode_vrefresh(mode));
+		DRM_INFO("data_rate=%u active_lanes=%d\n",
+			 (u32) data_rate, mipi_tx_init_cfg.active_lanes);
+
+		/* When late rate < 800, modeset fails with 4 lanes,
 		 * so switch to 2 lanes
 		 */
 		if (data_rate < 800) {
@@ -1749,36 +1817,62 @@ int kmb_dsi_hw_init(struct drm_device *dev, struct drm_display_mode *mode)
 			mipi_tx_init_cfg.lane_rate_mbps = data_rate;
 		}
 		DRM_INFO("lane rate=%d\n", mipi_tx_init_cfg.lane_rate_mbps);
-		DRM_INFO("vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d lane-rate=%d\n",
-		mipitx_frame0_cfg.v_frontporch, mipitx_frame0_cfg.v_backporch,
-		mipitx_frame0_cfg.vsync_width,
-		mipitx_frame0_cfg.h_frontporch, mipitx_frame0_cfg.h_backporch,
-		mipitx_frame0_cfg.hsync_width,
-		mipi_tx_init_cfg.lane_rate_mbps);
+		DRM_INFO
+		    ("vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d lane-rate=%d",
+		     mipitx_frame0_cfg.v_frontporch,
+		     mipitx_frame0_cfg.v_backporch,
+		     mipitx_frame0_cfg.vsync_width,
+		     mipitx_frame0_cfg.h_frontporch,
+		     mipitx_frame0_cfg.h_backporch,
+		     mipitx_frame0_cfg.hsync_width,
+		     mipi_tx_init_cfg.lane_rate_mbps);
 
 	}
+
 	if (hw_initialized)
 		return 0;
+
 	kmb_write_mipi(dev_p, DPHY_ENABLE, 0);
 	kmb_write_mipi(dev_p, DPHY_INIT_CTRL0, 0);
 	kmb_write_mipi(dev_p, DPHY_INIT_CTRL1, 0);
 	kmb_write_mipi(dev_p, DPHY_INIT_CTRL2, 0);
 
-	/* initialize mipi controller */
+	/* Initialize mipi controller */
 	mipi_tx_init_cntrl(dev_p, &mipi_tx_init_cfg);
-	/*d-phy initialization */
+
+	/* Dphy initialization */
 	mipi_tx_init_dphy(dev_p, &mipi_tx_init_cfg);
+	DRM_INFO("IRQ_STATUS = 0x%x\n",
+		 GET_MIPI_TX_HS_IRQ_STATUS(dev_p, MIPI_CTRL6));
+
+#ifdef LCD_TEST
 	connect_lcd_to_mipi(dev_p);
+#endif
+
+#ifdef MIPI_TX_INIT_IRQS
+	/* IRQ initialization */
+	mipi_tx_init_irqs(dev_p, &int_cfg, &mipi_tx_init_cfg.tx_ctrl_cfg);
+
+	DRM_INFO("IRQ_STATUS = 0x%x\n",
+		 GET_MIPI_TX_HS_IRQ_STATUS(dev_p, MIPI_CTRL6));
+#endif
+
 #ifdef MIPI_TX_TEST_PATTERN_GENERATION
-	mipi_tx_hs_tp_gen(dev_p, 0, MIPI_TX_HS_TP_V_STRIPES, 0x15, 0xff,
-			0xff00, MIPI_CTRL6);
-	DRM_INFO("%s : %d IRQ_STATUS = 0x%x\n", __func__, __LINE__,
-			GET_MIPI_TX_HS_IRQ_STATUS(dev_p, MIPI_CTRL6));
+	mipi_tx_hs_tp_gen(dev_p, 0, MIPI_TX_HS_TP_V_STRIPES,
+			  0x15, 0xff, 0xff00, MIPI_CTRL6);
+
+	DRM_INFO("IRQ_STATUS = 0x%x\n",
+		 GET_MIPI_TX_HS_IRQ_STATUS(dev_p, MIPI_CTRL6));
 #endif //MIPI_TX_TEST_PATTERN_GENERATION
 
 	hw_initialized = true;
-	DRM_INFO("%s : %d mipi hw_initialized = %d\n", __func__, __LINE__,
-		 hw_initialized);
+
+	DRM_INFO("MIPI_TXm_HS_CTRL = 0x%x\n",
+		 kmb_read_mipi(dev_p, MIPI_TXm_HS_CTRL(6)));
+	DRM_INFO("MIPI LOOP BACK = %x\n",
+		 kmb_read_mipi(dev_p, MIPI_CTRL_DIG_LOOPBACK));
+	DRM_INFO("mipi hw_initialized = %d\n", hw_initialized);
+
 	return 0;
 }
 
@@ -1797,7 +1891,6 @@ int kmb_dsi_init(struct drm_device *dev, struct drm_bridge *bridge)
 		return -ENOMEM;
 	}
 
-	DRM_INFO("%s : %d\n", __func__, __LINE__);
 	kmb_connector = kzalloc(sizeof(*kmb_connector), GFP_KERNEL);
 	if (!kmb_connector) {
 		kfree(kmb_dsi);
@@ -1809,38 +1902,42 @@ int kmb_dsi_init(struct drm_device *dev, struct drm_bridge *bridge)
 
 	host = kmb_dsi_host_init(dev, kmb_dsi);
 	if (!host) {
-		DRM_ERROR("Faile to allocate host\n");
+		DRM_ERROR("Failed to allocate host\n");
 		kfree(kmb_dsi);
 		kfree(kmb_connector);
 		return -ENOMEM;
 	}
+
 	kmb_dsi->dsi_host = host;
 	connector = &kmb_connector->base;
 	encoder = &kmb_dsi->base;
 	encoder->possible_crtcs = 1;
 	encoder->possible_clones = 0;
+
 	drm_encoder_init(dev, encoder, &kmb_dsi_funcs, DRM_MODE_ENCODER_DSI,
 			 "MIPI-DSI");
 
 	drm_connector_init(dev, connector, &kmb_dsi_connector_funcs,
 			   DRM_MODE_CONNECTOR_DSI);
+
 	drm_connector_helper_add(connector, &kmb_dsi_connector_helper_funcs);
 
-	DRM_INFO("%s : %d connector = %s encoder = %s\n", __func__,
-		 __LINE__, connector->name, encoder->name);
+	DRM_INFO("connector = %s encoder = %s\n", connector->name,
+		 encoder->name);
 
 	ret = drm_connector_attach_encoder(connector, encoder);
+	DRM_INFO("connector->encoder = 0x%p ret = %d\n", connector->encoder,
+		 ret);
 
-	/* Link drm_bridge to encoder */
 #ifndef FCCTEST
+	/* Link drm_bridge to encoder */
 	ret = drm_bridge_attach(encoder, bridge, NULL, 0);
 	if (ret) {
 		DRM_ERROR("failed to attach bridge to MIPI\n");
 		drm_encoder_cleanup(encoder);
 		return ret;
 	}
-
-	DRM_INFO("%s : %d Bridge attached : SUCCESS\n", __func__, __LINE__);
+	DRM_INFO("Bridge attached : SUCCESS\n");
 #endif
 
 #ifdef FCCTEST
diff --git a/drivers/gpu/drm/kmb/kmb_dsi.h b/drivers/gpu/drm/kmb/kmb_dsi.h
index 1d4ca8d..68508e0 100644
--- a/drivers/gpu/drm/kmb/kmb_dsi.h
+++ b/drivers/gpu/drm/kmb/kmb_dsi.h
@@ -31,6 +31,60 @@
 #include <drm/drm_modes.h>
 #include "kmb_drv.h"
 
+/* MIPI TX CFG*/
+#define MIPI_TX_LANE_DATA_RATE_MBPS 891
+#define MIPI_TX_REF_CLK_KHZ         24000
+#define MIPI_TX_CFG_CLK_KHZ         24000
+#define MIPI_TX_BPP		    24
+
+/* DPHY Tx test codes*/
+#define TEST_CODE_FSM_CONTROL				0x03
+#define TEST_CODE_MULTIPLE_PHY_CTRL			0x0C
+#define TEST_CODE_PLL_PROPORTIONAL_CHARGE_PUMP_CTRL	0x0E
+#define TEST_CODE_PLL_INTEGRAL_CHARGE_PUMP_CTRL		0x0F
+#define TEST_CODE_PLL_VCO_CTRL				0x12
+#define TEST_CODE_PLL_GMP_CTRL				0x13
+#define TEST_CODE_PLL_PHASE_ERR_CTRL			0x14
+#define TEST_CODE_PLL_LOCK_FILTER			0x15
+#define TEST_CODE_PLL_UNLOCK_FILTER			0x16
+#define TEST_CODE_PLL_INPUT_DIVIDER			0x17
+#define TEST_CODE_PLL_FEEDBACK_DIVIDER			0x18
+#define   PLL_FEEDBACK_DIVIDER_HIGH			(1 << 7)
+#define TEST_CODE_PLL_OUTPUT_CLK_SEL			0x19
+#define   PLL_N_OVR_EN					(1 << 4)
+#define   PLL_M_OVR_EN					(1 << 5)
+#define TEST_CODE_VOD_LEVEL				0x24
+#define TEST_CODE_PLL_CHARGE_PUMP_BIAS			0x1C
+#define TEST_CODE_PLL_LOCK_DETECTOR			0x1D
+#define TEST_CODE_HS_FREQ_RANGE_CFG			0x44
+#define TEST_CODE_PLL_ANALOG_PROG			0x1F
+#define TEST_CODE_SLEW_RATE_OVERRIDE_CTRL		0xA0
+#define TEST_CODE_SLEW_RATE_DDL_LOOP_CTRL		0xA3
+#define TEST_CODE_SLEW_RATE_DDL_CYCLES			0xA4
+
+/* DPHY params */
+#define PLL_N_MIN	0
+#define PLL_N_MAX	15
+#define PLL_M_MIN	62
+#define PLL_M_MAX	623
+#define PLL_FVCO_MAX	1250
+
+#define TIMEOUT		600
+
+#define MIPI_TX_FRAME_GEN				4
+#define MIPI_TX_FRAME_GEN_SECTIONS			4
+#define MIPI_CTRL_VIRTUAL_CHANNELS			4
+#define MIPI_D_LANES_PER_DPHY				2
+#define MIPI_CTRL_2LANE_MAX_MC_FIFO_LOC			255
+#define MIPI_CTRL_4LANE_MAX_MC_FIFO_LOC			511
+/* 2 Data Lanes per D-PHY */
+#define MIPI_DPHY_D_LANES				2
+#define MIPI_DPHY_DEFAULT_BIT_RATES			63
+
+#define to_kmb_connector(x) container_of(x, struct kmb_connector, base)
+#define to_kmb_host(x) container_of(x, struct kmb_dsi_host, base)
+#define to_kmb_dsi(x) container_of(x, struct kmb_dsi, base)
+
 struct kmb_connector;
 struct kmb_dsi_host;
 
@@ -53,16 +107,7 @@ struct kmb_connector {
 	struct drm_display_mode *fixed_mode;
 };
 
-#define MIPI_TX_FRAME_GEN	4
-#define MIPI_TX_FRAME_GEN_SECTIONS 4
-#define MIPI_CTRL_VIRTUAL_CHANNELS 4
-#define MIPI_D_LANES_PER_DPHY	2
-#define MIPI_CTRL_2LANE_MAX_MC_FIFO_LOC	255
-#define MIPI_CTRL_4LANE_MAX_MC_FIFO_LOC	511
-#define MIPI_DPHY_D_LANES		2  /* 2 Data Lanes per D-PHY*/
-#define MIPI_DPHY_DEFAULT_BIT_RATES 63
-
-/*DPHY Tx test codes */
+/* DPHY Tx test codes */
 
 enum mipi_ctrl_num {
 	MIPI_CTRL0 = 0,
@@ -252,7 +297,7 @@ struct mipi_tx_dsi_cfg {
 struct mipi_tx_frame_section_cfg {
 	uint32_t dma_v_stride;
 	uint16_t dma_v_scale_cfg;
-	uint16_t width_pixels;	/*  Frame width */
+	uint16_t width_pixels;
 	uint16_t height_lines;
 	uint8_t dma_packed;
 	uint8_t bpp;
@@ -324,15 +369,15 @@ struct mipi_ctrl_cfg {
 	struct mipi_tx_ctrl_cfg tx_ctrl_cfg;
 };
 
-/*structure for storing user specified interrupts that are enabled */
+/* Structure for storing user specified interrupts that are enabled */
 union mipi_irq_cfg {
 	uint8_t value;
 	struct {
-		uint8_t line_compare : 1;
-		uint8_t dma_event : 1;
-		uint8_t frame_done : 1;
-		uint8_t ctrl_error : 1;
-		uint8_t dphy_error : 1;
+		uint8_t line_compare:1;
+		uint8_t dma_event:1;
+		uint8_t frame_done:1;
+		uint8_t ctrl_error:1;
+		uint8_t dphy_error:1;
 	} irq_cfg;
 };
 
@@ -342,9 +387,4 @@ void kmb_plane_destroy(struct drm_plane *plane);
 void mipi_tx_handle_irqs(struct kmb_drm_private *dev_p);
 void kmb_dsi_host_unregister(void);
 int kmb_dsi_hw_init(struct drm_device *dev, struct drm_display_mode *mode);
-
-#define to_kmb_connector(x) container_of(x, struct kmb_connector, base)
-#define to_kmb_host(x) container_of(x, struct kmb_dsi_host, base)
-#define to_kmb_dsi(x) container_of(x, struct kmb_dsi, base)
-
 #endif /* __KMB_DSI_H__ */
diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index ebf29b2..8d83238 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -41,67 +41,6 @@
 #include "kmb_regs.h"
 #include "kmb_drv.h"
 
-/* graphics layer ( layers 2 & 3) formats, only packed formats  are supported*/
-static const u32 kmb_formats_g[] = {
-	DRM_FORMAT_RGB332,
-	DRM_FORMAT_XRGB4444, DRM_FORMAT_XBGR4444,
-	DRM_FORMAT_ARGB4444, DRM_FORMAT_ABGR4444,
-	DRM_FORMAT_XRGB1555, DRM_FORMAT_XBGR1555,
-	DRM_FORMAT_ARGB1555, DRM_FORMAT_ABGR1555,
-	DRM_FORMAT_RGB565, DRM_FORMAT_BGR565,
-	DRM_FORMAT_RGB888, DRM_FORMAT_BGR888,
-	DRM_FORMAT_XRGB8888, DRM_FORMAT_XBGR8888,
-	DRM_FORMAT_ARGB8888, DRM_FORMAT_ABGR8888,
-};
-
-#define MAX_FORMAT_G	(ARRAY_SIZE(kmb_formats_g))
-#define MAX_FORMAT_V	(ARRAY_SIZE(kmb_formats_v))
-
-/* video layer ( 0 & 1) formats, packed and planar formats are supported */
-static const u32 kmb_formats_v[] = {
-	/* packed formats */
-	DRM_FORMAT_RGB332,
-	DRM_FORMAT_XRGB4444, DRM_FORMAT_XBGR4444,
-	DRM_FORMAT_ARGB4444, DRM_FORMAT_ABGR4444,
-	DRM_FORMAT_XRGB1555, DRM_FORMAT_XBGR1555,
-	DRM_FORMAT_ARGB1555, DRM_FORMAT_ABGR1555,
-	DRM_FORMAT_RGB565, DRM_FORMAT_BGR565,
-	DRM_FORMAT_RGB888, DRM_FORMAT_BGR888,
-	DRM_FORMAT_XRGB8888, DRM_FORMAT_XBGR8888,
-	DRM_FORMAT_ARGB8888, DRM_FORMAT_ABGR8888,
-	/*planar formats */
-	DRM_FORMAT_YUV420, DRM_FORMAT_YVU420,
-	DRM_FORMAT_YUV422, DRM_FORMAT_YVU422,
-	DRM_FORMAT_YUV444, DRM_FORMAT_YVU444,
-	DRM_FORMAT_NV12, DRM_FORMAT_NV21,
-};
-
-#define LCD_INT_VL0_ERR (LAYER0_DMA_FIFO_UNDEFLOW | \
-			LAYER0_DMA_FIFO_OVERFLOW | \
-			LAYER0_DMA_CB_FIFO_OVERFLOW | \
-			LAYER0_DMA_CB_FIFO_UNDERFLOW | \
-			LAYER0_DMA_CR_FIFO_OVERFLOW | \
-			LAYER0_DMA_CR_FIFO_UNDERFLOW)
-
-#define LCD_INT_VL1_ERR (LAYER1_DMA_FIFO_UNDERFLOW | \
-			LAYER1_DMA_FIFO_OVERFLOW | \
-			LAYER1_DMA_CB_FIFO_OVERFLOW | \
-			LAYER1_DMA_CB_FIFO_UNDERFLOW | \
-			LAYER1_DMA_CR_FIFO_OVERFLOW | \
-			LAYER1_DMA_CR_FIFO_UNDERFLOW)
-
-#define LCD_INT_GL0_ERR (LAYER2_DMA_FIFO_OVERFLOW | LAYER2_DMA_FIFO_UNDERFLOW)
-
-#define LCD_INT_GL1_ERR (LAYER3_DMA_FIFO_OVERFLOW | LAYER3_DMA_FIFO_UNDERFLOW)
-
-#define LCD_INT_VL0 (LAYER0_DMA_DONE | LAYER0_DMA_IDLE | LCD_INT_VL0_ERR)
-
-#define LCD_INT_VL1 (LAYER1_DMA_DONE | LAYER1_DMA_IDLE | LCD_INT_VL1_ERR)
-
-#define LCD_INT_GL0 (LAYER2_DMA_DONE | LAYER2_DMA_IDLE | LCD_INT_GL0_ERR)
-
-#define LCD_INT_GL1 (LAYER3_DMA_DONE | LAYER3_DMA_IDLE | LCD_INT_GL1_ERR)
-
 const uint32_t layer_irqs[] = {
 	LCD_INT_VL0,
 	LCD_INT_VL1,
@@ -109,16 +48,6 @@ const uint32_t layer_irqs[] = {
 	LCD_INT_GL1
 };
 
-/*Conversion (yuv->rgb) matrix from myriadx */
-static const u32 csc_coef_lcd[] = {
-	1024, 0, 1436,
-	1024, -352, -731,
-	1024, 1814, 0,
-	-179, 125, -226
-};
-
-/*plane initialization status */
-
 static unsigned int check_pixel_format(struct drm_plane *plane, u32 format)
 {
 	int i;
@@ -137,7 +66,6 @@ static int kmb_plane_atomic_check(struct drm_plane *plane,
 	int ret;
 
 	fb = state->fb;
-
 	if (!fb || !state->crtc)
 		return 0;
 
@@ -269,7 +197,6 @@ unsigned int set_pixel_format(u32 format)
 		val = LCD_LAYER_FORMAT_RGBA8888;
 		break;
 	}
-	DRM_INFO("%s : %d layer format val=%d\n", __func__, __LINE__, val);
 	return val;
 }
 
@@ -300,14 +227,14 @@ unsigned int set_bits_per_pixel(const struct drm_format_info *format)
 		break;
 	}
 
-	DRM_INFO("%s : %d bpp=%d val=%d\n", __func__, __LINE__, bpp, val);
+	DRM_DEBUG("bpp=%d val=0x%x\n", bpp, val);
 	return val;
 }
 
 #ifdef LCD_TEST
 static void config_csc(struct kmb_drm_private *dev_p, int plane_id)
 {
-	/*YUV to RGB conversion using the fixed matrix csc_coef_lcd */
+	/* YUV to RGB conversion using the fixed matrix csc_coef_lcd */
 	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF11(plane_id), csc_coef_lcd[0]);
 	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF12(plane_id), csc_coef_lcd[1]);
 	kmb_write_lcd(dev_p, LCD_LAYERn_CSC_COEFF13(plane_id), csc_coef_lcd[2]);
@@ -358,9 +285,8 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	crtc_x = plane->state->crtc_x;
 	crtc_y = plane->state->crtc_y;
 
-	DRM_DEBUG
-	    ("%s : %d src_w=%d src_h=%d, fb->format->format=0x%x fb->flags=0x%x",
-	     __func__, __LINE__, src_w, src_h, fb->format->format, fb->flags);
+	DRM_DEBUG("src_w=%d src_h=%d, fb->format->format=0x%x fb->flags=0x%x\n",
+		  src_w, src_h, fb->format->format, fb->flags);
 
 	width = fb->width;
 	height = fb->height;
@@ -368,38 +294,41 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	DRM_DEBUG("%s : %d dma_len=%d ", __func__, __LINE__, dma_len);
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN(plane_id), dma_len);
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LEN_SHADOW(plane_id), dma_len);
-
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_VSTRIDE(plane_id),
 		      fb->pitches[0]);
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_LINE_WIDTH(plane_id),
 		      (width * fb->format->cpp[0]));
 
 	addr[Y_PLANE] = drm_fb_cma_get_gem_addr(fb, plane->state, 0);
-	dev_p->fb_addr = (dma_addr_t) addr;
+	dev_p->fb_addr = addr[Y_PLANE];
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_ADDR(plane_id),
 		      addr[Y_PLANE] + fb->offsets[0]);
-	/*program Cb/Cr for planar formats */
+	/* Program Cb/Cr for planar formats */
 	if (num_planes > 1) {
 		if (fb->format->format == DRM_FORMAT_YUV420 ||
 		    fb->format->format == DRM_FORMAT_YVU420)
 			width /= 2;
-		kmb_write_lcd(dev_p,
-			      LCD_LAYERn_DMA_CB_LINE_VSTRIDE(plane_id),
+
+		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CB_LINE_VSTRIDE(plane_id),
 			      fb->pitches[LAYER_1]);
-		kmb_write_lcd(dev_p,
-			      LCD_LAYERn_DMA_CB_LINE_WIDTH(plane_id),
+
+		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CB_LINE_WIDTH(plane_id),
 			      (width * fb->format->cpp[0]));
+
 		addr[U_PLANE] = drm_fb_cma_get_gem_addr(fb, plane->state,
 							U_PLANE);
 		kmb_write_lcd(dev_p, LCD_LAYERn_DMA_START_CB_ADR(plane_id),
 			      addr[U_PLANE]);
+
 		if (num_planes == 3) {
 			kmb_write_lcd(dev_p,
 				      LCD_LAYERn_DMA_CR_LINE_VSTRIDE(plane_id),
 				      fb->pitches[LAYER_2]);
+
 			kmb_write_lcd(dev_p,
 				      LCD_LAYERn_DMA_CR_LINE_WIDTH(plane_id),
 				      (width * fb->format->cpp[0]));
+
 			addr[V_PLANE] = drm_fb_cma_get_gem_addr(fb,
 								plane->state,
 								V_PLANE);
@@ -409,8 +338,8 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 		}
 	}
 
-	kmb_write_lcd(dev_p, LCD_LAYERn_WIDTH(plane_id), src_w-1);
-	kmb_write_lcd(dev_p, LCD_LAYERn_HEIGHT(plane_id), src_h-1);
+	kmb_write_lcd(dev_p, LCD_LAYERn_WIDTH(plane_id), src_w - 1);
+	kmb_write_lcd(dev_p, LCD_LAYERn_HEIGHT(plane_id), src_h - 1);
 	kmb_write_lcd(dev_p, LCD_LAYERn_COL_START(plane_id), crtc_x);
 	kmb_write_lcd(dev_p, LCD_LAYERn_ROW_START(plane_id), crtc_y);
 
@@ -422,25 +351,25 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	if (val & LCD_LAYER_PLANAR_STORAGE) {
 		val |= LCD_LAYER_CSC_EN;
 
-		/*enable CSC if input is planar and output is RGB */
+		/* Enable CSC if input is planar and output is RGB */
 		config_csc(dev_p, plane_id);
 	}
 
 	kmb_write_lcd(dev_p, LCD_LAYERn_CFG(plane_id), val);
 
 	switch (plane_id) {
-		case LAYER_0:
-			ctrl = LCD_CTRL_VL1_ENABLE;
-			break;
-		case LAYER_1:
-			ctrl = LCD_CTRL_VL2_ENABLE;
-			break;
-		case LAYER_2:
-			ctrl = LCD_CTRL_GL1_ENABLE;
-			break;
-		case LAYER_3:
-			ctrl = LCD_CTRL_GL2_ENABLE;
-			break;
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
 	}
 
 	ctrl |= LCD_CTRL_PROGRESSIVE | LCD_CTRL_TIM_GEN_ENABLE
@@ -461,16 +390,14 @@ static void kmb_plane_atomic_update(struct drm_plane *plane,
 	/* Leave RGB order,conversion mode and clip mode to default */
 	/* do not interleave RGB channels for mipi Tx compatibility */
 	out_format |= LCD_OUTF_MIPI_RGB_MODE;
-	//	out_format |= LCD_OUTF_SYNC_MODE;
 	kmb_write_lcd(dev_p, LCD_OUT_FORMAT_CFG, out_format);
 
 	dma_cfg = LCD_DMA_LAYER_ENABLE | LCD_DMA_LAYER_VSTRIDE_EN |
 	    LCD_DMA_LAYER_CONT_UPDATE | LCD_DMA_LAYER_AXI_BURST_16;
 
-	/* enable DMA */
+	/* Enable DMA */
 	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id), dma_cfg);
-	DRM_DEBUG("%s : %d dma_cfg=0x%x LCD_DMA_CFG=0x%x\n",
-		  __func__, __LINE__, dma_cfg,
+	DRM_DEBUG("dma_cfg=0x%x LCD_DMA_CFG=0x%x\n", dma_cfg,
 		  kmb_read_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id)));
 #endif
 }
@@ -493,7 +420,6 @@ static void kmb_destroy_plane_state(struct drm_plane *plane,
 				    struct drm_plane_state *state)
 {
 	struct kmb_plane_state *kmb_state = to_kmb_plane_state(state);
-
 	__drm_atomic_helper_plane_destroy_state(state);
 	kfree(kmb_state);
 }
@@ -504,7 +430,6 @@ struct drm_plane_state *kmb_plane_duplicate_state(struct drm_plane *plane)
 	struct kmb_plane_state *kmb_state;
 
 	kmb_state = kmemdup(plane->state, sizeof(*kmb_state), GFP_KERNEL);
-
 	if (!kmb_state)
 		return NULL;
 
@@ -554,7 +479,6 @@ struct kmb_plane *kmb_plane_init(struct drm_device *drm)
 	int num_plane_formats;
 
 	for (i = 0; i < lcd->n_layers; i++) {
-
 		plane = devm_kzalloc(drm->dev, sizeof(*plane), GFP_KERNEL);
 
 		if (!plane) {
@@ -573,26 +497,25 @@ struct kmb_plane *kmb_plane_init(struct drm_device *drm)
 		}
 
 		ret = drm_universal_plane_init(drm, &plane->base_plane,
-					       POSSIBLE_CRTCS,
-					       &kmb_plane_funcs, plane_formats,
-					       num_plane_formats,
+					       POSSIBLE_CRTCS, &kmb_plane_funcs,
+					       plane_formats, num_plane_formats,
 					       NULL, plane_type, "plane %d", i);
 		if (ret < 0) {
-			DRM_ERROR
-			    ("drm_universal_plane_init -failed with ret=%d",
-			     ret);
+			DRM_ERROR("drm_universal_plane_init failed (ret=%d)",
+				  ret);
 			goto cleanup;
 		}
 		DRM_DEBUG("%s : %d plane=%px\n i=%d type=%d",
-			  __func__, __LINE__, &plane->base_plane,
-			  i, plane_type);
-
+			  __func__, __LINE__,
+			  &plane->base_plane, i, plane_type);
 		drm_plane_helper_add(&plane->base_plane,
 				     &kmb_plane_helper_funcs);
 		if (plane_type == DRM_PLANE_TYPE_PRIMARY) {
 			primary = plane;
 			lcd->plane = plane;
 		}
+		DRM_DEBUG("%s : %d primary=%px\n", __func__, __LINE__,
+			  &primary->base_plane);
 		plane->id = i;
 	}
 
diff --git a/drivers/gpu/drm/kmb/kmb_plane.h b/drivers/gpu/drm/kmb/kmb_plane.h
index 8411219..1872ed0 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.h
+++ b/drivers/gpu/drm/kmb/kmb_plane.h
@@ -28,6 +28,34 @@
 
 #include "kmb_drv.h"
 
+#define LCD_INT_VL0_ERR (LAYER0_DMA_FIFO_UNDEFLOW | \
+			LAYER0_DMA_FIFO_OVERFLOW | \
+			LAYER0_DMA_CB_FIFO_OVERFLOW | \
+			LAYER0_DMA_CB_FIFO_UNDERFLOW | \
+			LAYER0_DMA_CR_FIFO_OVERFLOW | \
+			LAYER0_DMA_CR_FIFO_UNDERFLOW)
+
+#define LCD_INT_VL1_ERR (LAYER1_DMA_FIFO_UNDERFLOW | \
+			LAYER1_DMA_FIFO_OVERFLOW | \
+			LAYER1_DMA_CB_FIFO_OVERFLOW | \
+			LAYER1_DMA_CB_FIFO_UNDERFLOW | \
+			LAYER1_DMA_CR_FIFO_OVERFLOW | \
+			LAYER1_DMA_CR_FIFO_UNDERFLOW)
+
+#define LCD_INT_GL0_ERR (LAYER2_DMA_FIFO_OVERFLOW | LAYER2_DMA_FIFO_UNDERFLOW)
+#define LCD_INT_GL1_ERR (LAYER3_DMA_FIFO_OVERFLOW | LAYER3_DMA_FIFO_UNDERFLOW)
+#define LCD_INT_VL0 (LAYER0_DMA_DONE | LAYER0_DMA_IDLE | LCD_INT_VL0_ERR)
+#define LCD_INT_VL1 (LAYER1_DMA_DONE | LAYER1_DMA_IDLE | LCD_INT_VL1_ERR)
+#define LCD_INT_GL0 (LAYER2_DMA_DONE | LAYER2_DMA_IDLE | LCD_INT_GL0_ERR)
+#define LCD_INT_GL1 (LAYER3_DMA_DONE | LAYER3_DMA_IDLE | LCD_INT_GL1_ERR)
+
+#define POSSIBLE_CRTCS 1
+#define INITIALIZED 1
+#define to_kmb_plane(x) container_of(x, struct kmb_plane, base_plane)
+
+#define to_kmb_plane_state(x) \
+		container_of(x, struct kmb_plane_state, base_plane_state)
+
 enum layer_id {
 	LAYER_0,
 	LAYER_1,
@@ -54,12 +82,48 @@ struct kmb_plane_state {
 	unsigned char no_planes;
 };
 
-#define POSSIBLE_CRTCS 1
-#define INITIALIZED 1
-#define to_kmb_plane(x) container_of(x, struct kmb_plane, base_plane)
+/* Graphics layer (layers 2 & 3) formats, only packed formats  are supported */
+static const u32 kmb_formats_g[] = {
+	DRM_FORMAT_RGB332,
+	DRM_FORMAT_XRGB4444, DRM_FORMAT_XBGR4444,
+	DRM_FORMAT_ARGB4444, DRM_FORMAT_ABGR4444,
+	DRM_FORMAT_XRGB1555, DRM_FORMAT_XBGR1555,
+	DRM_FORMAT_ARGB1555, DRM_FORMAT_ABGR1555,
+	DRM_FORMAT_RGB565, DRM_FORMAT_BGR565,
+	DRM_FORMAT_RGB888, DRM_FORMAT_BGR888,
+	DRM_FORMAT_XRGB8888, DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_ARGB8888, DRM_FORMAT_ABGR8888,
+};
 
-#define to_kmb_plane_state(x) \
-		container_of(x, struct kmb_plane_state, base_plane_state)
+#define MAX_FORMAT_G	(ARRAY_SIZE(kmb_formats_g))
+#define MAX_FORMAT_V	(ARRAY_SIZE(kmb_formats_v))
+
+/* Video layer ( 0 & 1) formats, packed and planar formats are supported */
+static const u32 kmb_formats_v[] = {
+	/* packed formats */
+	DRM_FORMAT_RGB332,
+	DRM_FORMAT_XRGB4444, DRM_FORMAT_XBGR4444,
+	DRM_FORMAT_ARGB4444, DRM_FORMAT_ABGR4444,
+	DRM_FORMAT_XRGB1555, DRM_FORMAT_XBGR1555,
+	DRM_FORMAT_ARGB1555, DRM_FORMAT_ABGR1555,
+	DRM_FORMAT_RGB565, DRM_FORMAT_BGR565,
+	DRM_FORMAT_RGB888, DRM_FORMAT_BGR888,
+	DRM_FORMAT_XRGB8888, DRM_FORMAT_XBGR8888,
+	DRM_FORMAT_ARGB8888, DRM_FORMAT_ABGR8888,
+	/*planar formats */
+	DRM_FORMAT_YUV420, DRM_FORMAT_YVU420,
+	DRM_FORMAT_YUV422, DRM_FORMAT_YVU422,
+	DRM_FORMAT_YUV444, DRM_FORMAT_YVU444,
+	DRM_FORMAT_NV12, DRM_FORMAT_NV21,
+};
+
+/* Conversion (yuv->rgb) matrix from myriadx */
+static const u32 csc_coef_lcd[] = {
+	1024, 0, 1436,
+	1024, -352, -731,
+	1024, 1814, 0,
+	-179, 125, -226
+};
 
 struct kmb_plane *kmb_plane_init(struct drm_device *drm);
 void kmb_plane_destroy(struct drm_plane *plane);
diff --git a/drivers/gpu/drm/kmb/kmb_regs.h b/drivers/gpu/drm/kmb/kmb_regs.h
index 0249ea5..f904a5c 100644
--- a/drivers/gpu/drm/kmb/kmb_regs.h
+++ b/drivers/gpu/drm/kmb/kmb_regs.h
@@ -553,9 +553,10 @@
 /* MIPI IRQ */
 #define MIPI_CTRL_IRQ_STATUS0				(0x00)
 #define   MIPI_DPHY_ERR_IRQ				1
-#define   MIPI_DPHY_ERR_MASK				0x7FE /*bits 1-10 */
+#define   MIPI_DPHY_ERR_MASK				0x7FE	/*bits 1-10 */
 #define   MIPI_HS_IRQ					13
-#define   MIPI_HS_IRQ_MASK				0x7FE000 /*bits 13-22 */
+/*bits 13-22 */
+#define   MIPI_HS_IRQ_MASK				0x7FE000
 #define   MIPI_LP_EVENT_IRQ				25
 #define   MIPI_GET_IRQ_STAT0(dev)		kmb_read_mipi(dev, \
 						MIPI_CTRL_IRQ_STATUS0)
@@ -735,18 +736,18 @@
 			& (1 << (dphy - MIPI_DPHY6)))
 #define DPHY_CFG_CLK_EN				(0x18c)
 
-#define MSS_MIPI_CIF_CFG		(0x00)
-#define MSS_LCD_MIPI_CFG		(0x04)
-#define MSS_CAM_CLK_CTRL		(0x10)
-#define MSS_LOOPBACK_CFG		(0x0C)
-#define   LCD				(1<<1)
-#define   MIPI_COMMON			(1<<2)
-#define   MIPI_TX0			(1<<9)
-#define MSS_CAM_RSTN_CTRL		(0x14)
-#define MSS_CAM_RSTN_SET		(0x20)
-#define MSS_CAM_RSTN_CLR		(0x24)
+#define MSS_MIPI_CIF_CFG			(0x00)
+#define MSS_LCD_MIPI_CFG			(0x04)
+#define MSS_CAM_CLK_CTRL			(0x10)
+#define MSS_LOOPBACK_CFG			(0x0C)
+#define   LCD					(1<<1)
+#define   MIPI_COMMON				(1<<2)
+#define   MIPI_TX0				(1<<9)
+#define MSS_CAM_RSTN_CTRL			(0x14)
+#define MSS_CAM_RSTN_SET			(0x20)
+#define MSS_CAM_RSTN_CLR			(0x24)
 
-#define MSSCPU_CPR_CLK_EN		(0x0)
-#define MSSCPU_CPR_RST_EN		(0x10)
+#define MSSCPU_CPR_CLK_EN			(0x0)
+#define MSSCPU_CPR_RST_EN			(0x10)
 #define BIT_MASK_16				(0xffff)
 #endif /* __KMB_REGS_H__ */
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
