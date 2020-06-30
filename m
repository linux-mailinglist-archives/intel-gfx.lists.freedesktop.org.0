Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C7E20FF2B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 23:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88C2E6E4B0;
	Tue, 30 Jun 2020 21:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73E256E32A;
 Tue, 30 Jun 2020 21:28:53 +0000 (UTC)
IronPort-SDR: FUBi53GESqYx75jPcRNtULB2ob1tPYucAYDBhccRRVEYEiTSAdy2+hGf9SdTmW8AOiWi8v/0vN
 G+lOloKKeKMA==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="133846926"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="133846926"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 14:28:53 -0700
IronPort-SDR: TCIAhEdCRqZMgygjluXkTjr51d6OrgEeD7EtyZ77R8kcifJiQ7VdJtP1/suGUUhmurFYaaRfMy
 8Zpav3yKSRlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="481066807"
Received: from hdwiyono-mobl.amr.corp.intel.com (HELO
 achrisan-DESK2.amr.corp.intel.com) ([10.254.176.225])
 by fmsmga006.fm.intel.com with ESMTP; 30 Jun 2020 14:28:52 -0700
From: Anitha Chrisanthus <anitha.chrisanthus@intel.com>
To: dri-devel@lists.freedesktop.org, anitha.chrisanthus@intel.com,
 bob.j.paauwe@intel.com, edmund.j.dea@intel.com
Date: Tue, 30 Jun 2020 14:27:57 -0700
Message-Id: <1593552491-23698-46-git-send-email-anitha.chrisanthus@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
References: <1593552491-23698-1-git-send-email-anitha.chrisanthus@intel.com>
Subject: [Intel-gfx] [PATCH 45/59] drm/kmb: Enable LCD interrupts
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

Enabled vblank interrupts for LCD.

Signed-off-by: Anitha Chrisanithus <anitha.chrisanthus@intel.com>
Reviewed-by: Bob Paauwe <bob.j.paauwe@intel.com>
---
 drivers/gpu/drm/kmb/kmb_crtc.c  | 35 +++++++++++++++--------------------
 drivers/gpu/drm/kmb/kmb_drv.c   | 41 +++++++++++++++++++++--------------------
 drivers/gpu/drm/kmb/kmb_plane.c |  6 +++---
 drivers/gpu/drm/kmb/kmb_regs.h  |  2 +-
 4 files changed, 40 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/kmb/kmb_crtc.c b/drivers/gpu/drm/kmb/kmb_crtc.c
index 75e78d7..b617507 100644
--- a/drivers/gpu/drm/kmb/kmb_crtc.c
+++ b/drivers/gpu/drm/kmb/kmb_crtc.c
@@ -61,7 +61,8 @@ static int kmb_crtc_enable_vblank(struct drm_crtc *crtc)
 	kmb_write_lcd(dev->dev_private, LCD_VSTATUS_COMPARE,
 			LCD_VSTATUS_COMPARE_VSYNC);
 	/* enable vertical interrupt */
-	kmb_write_lcd(dev->dev_private, LCD_INT_ENABLE, LCD_INT_VERT_COMP);
+	kmb_set_bitmask_lcd(dev->dev_private, LCD_INT_ENABLE,
+			LCD_INT_VERT_COMP);
 	return 0;
 }
 
@@ -72,13 +73,9 @@ static void kmb_crtc_disable_vblank(struct drm_crtc *crtc)
 	/*clear interrupt */
 	kmb_write_lcd(dev->dev_private, LCD_INT_CLEAR, LCD_INT_VERT_COMP);
 	/* disable vertical interrupt */
-	kmb_write_lcd(dev->dev_private, LCD_INT_ENABLE, 0);
+	kmb_clr_bitmask_lcd(dev->dev_private, LCD_INT_ENABLE,
+			LCD_INT_VERT_COMP);
 
-/* TBD
- *  set the BIT2 (VERTICAL_COMPARE_INTERRUPT) of the LCD_INT_ENABLE register
- *  set the required bit LCD_VSTATUS_COMPARE register
- *  Not sure if anything needs to be done in the ICB
- */
 }
 
 static const struct drm_crtc_funcs kmb_crtc_funcs = {
@@ -100,7 +97,7 @@ static void kmb_crtc_mode_set_nofb(struct drm_crtc *crtc)
 	struct videomode vm;
 	int vsync_start_offset;
 	int vsync_end_offset;
-#endif
+
 	/* initialize mipi */
 	kmb_dsi_hw_init(dev, m);
 	DRM_INFO("vfp= %d vbp= %d vsyc_len=%d hfp=%d hbp=%d hsync_len=%d\n",
@@ -110,7 +107,6 @@ static void kmb_crtc_mode_set_nofb(struct drm_crtc *crtc)
 			m->crtc_hsync_start - m->crtc_hdisplay,
 			m->crtc_htotal - m->crtc_hsync_end,
 			m->crtc_hsync_end - m->crtc_hsync_start);
-#ifdef LCD_TEST
 //	vm.vfront_porch = m->crtc_vsync_start - m->crtc_vdisplay;
 	vm.vfront_porch = 2;
 //	vm.vback_porch = m->crtc_vtotal - m->crtc_vsync_end;
@@ -174,7 +170,7 @@ static void kmb_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	clk_prepare_enable(lcd->clk);
 	kmb_crtc_mode_set_nofb(crtc);
-//	drm_crtc_vblank_on(crtc);
+	drm_crtc_vblank_on(crtc);
 }
 
 static void kmb_crtc_atomic_disable(struct drm_crtc *crtc,
@@ -185,33 +181,32 @@ static void kmb_crtc_atomic_disable(struct drm_crtc *crtc,
 	/* always disable planes on the CRTC that is being turned off */
 	drm_atomic_helper_disable_planes_on_crtc(old_state, false);
 
-//	drm_crtc_vblank_off(crtc);
+	drm_crtc_vblank_off(crtc);
 	clk_disable_unprepare(lcd->clk);
 }
 
 static void kmb_crtc_atomic_begin(struct drm_crtc *crtc,
 				  struct drm_crtc_state *state)
 {
-	/* TBD */
-	/*disable  vblank interrupts here
-	 * clear BIT 2 (VERTICAL_COMPARE_INTERRUPT) LCD_INT_ENABLE
-	 */
+	struct drm_device *dev = crtc->dev;
+
+	kmb_clr_bitmask_lcd(dev->dev_private, LCD_INT_ENABLE,
+			LCD_INT_VERT_COMP);
 }
 
 static void kmb_crtc_atomic_flush(struct drm_crtc *crtc,
 				  struct drm_crtc_state *state)
 {
-	/* TBD */
-	/*enable  vblank interrupts after
-	 * set BIT 2 (VERTICAL_COMPARE_INTERRUPT) LCD_INT_ENABLE
-	 */
+	struct drm_device *dev = crtc->dev;
+
+	kmb_set_bitmask_lcd(dev->dev_private, LCD_INT_ENABLE,
+			LCD_INT_VERT_COMP);
 
 	spin_lock_irq(&crtc->dev->event_lock);
 	if (crtc->state->event)
 		drm_crtc_send_vblank_event(crtc, crtc->state->event);
 	crtc->state->event = NULL;
 	spin_unlock_irq(&crtc->dev->event_lock);
-
 }
 
 static const struct drm_crtc_helper_funcs kmb_crtc_helper_funcs = {
diff --git a/drivers/gpu/drm/kmb/kmb_drv.c b/drivers/gpu/drm/kmb/kmb_drv.c
index 64e45e7..d987529 100644
--- a/drivers/gpu/drm/kmb/kmb_drv.c
+++ b/drivers/gpu/drm/kmb/kmb_drv.c
@@ -147,10 +147,8 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 {
 	struct kmb_drm_private *dev_p = drm->dev_private;
 	struct platform_device *pdev = to_platform_device(drm->dev);
-#ifdef WIP
 	/*u32 version;*/
-	int irq_lcd, irq_mipi;
-#endif
+	int irq_lcd;// irq_mipi;
 	int ret = 0;
 	unsigned long clk;
 
@@ -286,10 +284,9 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 	kmb_set_bitmask_msscam(dev_p, MSS_CAM_CLK_CTRL, 0x1fff);
 	kmb_set_bitmask_msscam(dev_p, MSS_CAM_RSTN_CTRL, 0xffffffff);
 #endif //KMB_CLOCKS
-#ifdef WIP
 	/* Register irqs here - section 17.3 in databook
 	 * lists LCD at 79 and 82 for MIPI under MSS CPU -
-	 * firmware has to redirect it to A53
+	 * firmware has redirected  79 to A53 IRQ 33
 	 */
 	DRM_INFO("platform_get_irq_byname %pOF\n", drm->dev->of_node);
 
@@ -299,14 +296,12 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 	irq_lcd = platform_get_irq_byname(pdev, "irq_lcd");
 	if (irq_lcd < 0) {
 		DRM_ERROR("irq_lcd not found");
-		return irq_lcd;
+		goto setup_fail;
 	}
 
 	pr_info("irq_lcd platform_get_irq = %d\n", irq_lcd);
 
-	ret = request_irq(irq_lcd, kmb_isr, IRQF_SHARED, "irq_lcd", dev_p);
-	dev_p->irq_lcd = irq_lcd;
-
+#ifdef WIP
 	/* Allocate MIPI interrupt resources, enable interrupt line,
 	 * and setup IRQ handling
 	 */
@@ -342,19 +337,16 @@ static int kmb_load(struct drm_device *drm, unsigned long flags)
 		DRM_ERROR("failed to initialize DSI\n");
 		goto setup_fail;
 	}
-#ifdef WIP
-	ret = drm_irq_install(drm, platform_get_irq(pdev, 0));
+	ret = drm_irq_install(drm, irq_lcd);
 	if (ret < 0) {
 		DRM_ERROR("failed to install IRQ handler\n");
 		goto irq_fail;
 	}
-#endif
+	dev_p->irq_lcd = irq_lcd;
 	return 0;
 
-#ifdef WIP
 irq_fail:
 	drm_crtc_cleanup(&dev_p->crtc);
-#endif
 setup_fail:
 	of_reserved_mem_device_release(drm->dev);
 
@@ -400,6 +392,11 @@ static irqreturn_t handle_lcd_irq(struct drm_device *dev)
 		kmb_write_lcd(dev->dev_private, LCD_INT_CLEAR,
 				LCD_INT_LINE_CMP);
 	}
+	if (status & LCD_INT_LAYER) {
+		/* clear layer interrupts */
+		kmb_write_lcd(dev->dev_private, LCD_INT_CLEAR, LCD_INT_LAYER);
+	}
+
 	if (status & LCD_INT_VERT_COMP) {
 		/* read VSTATUS */
 		val = kmb_read_lcd(dev->dev_private, LCD_VSTATUS);
@@ -419,23 +416,20 @@ static irqreturn_t handle_lcd_irq(struct drm_device *dev)
 	return IRQ_HANDLED;
 }
 
+#ifdef MIPI_IRQ
 static irqreturn_t  handle_mipi_irq(struct drm_device *dev)
 {
 	mipi_tx_handle_irqs(dev->dev_private);
 	return IRQ_HANDLED;
 }
+#endif
 
 static irqreturn_t kmb_isr(int irq, void *arg)
 {
 	struct drm_device *dev = (struct drm_device *)arg;
-	struct kmb_drm_private *dev_p = dev->dev_private;
 	irqreturn_t ret = IRQ_NONE;
 
-	if (irq == dev_p->irq_lcd)
-		ret = handle_lcd_irq(dev);
-	else if (irq == dev_p->irq_mipi)
-		ret = handle_mipi_irq(dev);
-
+	ret = handle_lcd_irq(dev);
 	return ret;
 }
 
@@ -566,6 +560,12 @@ static int kmb_probe(struct platform_device *pdev)
 
 	/* Set the CRTC's port so that the encoder component can find it */
 	lcd->crtc.port = of_graph_get_port_by_id(dev->of_node, 0);
+	ret = drm_vblank_init(drm, drm->mode_config.num_crtc);
+	DRM_INFO("mode_config.num_crtc=%d\n", drm->mode_config.num_crtc);
+	if (ret < 0) {
+		DRM_ERROR("failed to initialize vblank\n");
+		goto err_vblank;
+	}
 	drm_mode_config_reset(drm);
 	drm_kms_helper_poll_init(drm);
 
@@ -582,6 +582,7 @@ static int kmb_probe(struct platform_device *pdev)
 
 err_register:
 	drm_kms_helper_poll_fini(drm);
+err_vblank:
 	pm_runtime_disable(drm->dev);
 err_free:
 	drm_mode_config_cleanup(drm);
diff --git a/drivers/gpu/drm/kmb/kmb_plane.c b/drivers/gpu/drm/kmb/kmb_plane.c
index 3cd9b0d..1990e8c 100644
--- a/drivers/gpu/drm/kmb/kmb_plane.c
+++ b/drivers/gpu/drm/kmb/kmb_plane.c
@@ -175,9 +175,9 @@ static void kmb_plane_atomic_disable(struct drm_plane *plane,
 		break;
 	}
 
-	kmb_write_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
-			~LCD_DMA_LAYER_ENABLE);
-	kmb_write_lcd(dev_p, LCD_CONTROL, ~ctrl);
+	kmb_clr_bitmask_lcd(dev_p, LCD_LAYERn_DMA_CFG(plane_id),
+			LCD_DMA_LAYER_ENABLE);
+	kmb_clr_bitmask_lcd(dev_p, LCD_CONTROL, ctrl);
 }
 
 
diff --git a/drivers/gpu/drm/kmb/kmb_regs.h b/drivers/gpu/drm/kmb/kmb_regs.h
index c80646a..0249ea5 100644
--- a/drivers/gpu/drm/kmb/kmb_regs.h
+++ b/drivers/gpu/drm/kmb/kmb_regs.h
@@ -107,7 +107,7 @@
 #define LAYER3_DMA_IDLE				  (1<<24)
 #define LAYER3_DMA_FIFO_OVERFLOW		  (1<<25)
 #define LAYER3_DMA_FIFO_UNDERFLOW		  (1<<26)
-
+#define LCD_INT_LAYER				  (0x07fffff8)
 #define LCD_INT_ENABLE				(0x4 * 0x002)
 #define LCD_INT_CLEAR				(0x4 * 0x003)
 #define LCD_LINE_COUNT				(0x4 * 0x004)
-- 
2.7.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
