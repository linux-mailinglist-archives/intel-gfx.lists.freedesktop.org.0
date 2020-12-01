Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EEBA2C9F96
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 11:36:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F8BD6E5C3;
	Tue,  1 Dec 2020 10:35:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 752086E5A4;
 Tue,  1 Dec 2020 10:35:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 148C5AC90;
 Tue,  1 Dec 2020 10:35:54 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie,
	daniel@ffwll.ch
Date: Tue,  1 Dec 2020 11:35:29 +0100
Message-Id: <20201201103542.2182-8-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201103542.2182-1-tzimmermann@suse.de>
References: <20201201103542.2182-1-tzimmermann@suse.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/20] drm/gma500: Remove references to
 struct drm_device.pdev
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
Cc: Sam Ravnborg <sam@ravnborg.org>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, amd-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>, spice-devel@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Using struct drm_device.pdev is deprecated. Convert gma500 to struct
drm_device.dev. No functional changes.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Patrik Jakobsson <patrik.r.jakobsson@gmail.com>
---
 drivers/gpu/drm/gma500/cdv_device.c        | 22 ++++++++-----
 drivers/gpu/drm/gma500/cdv_intel_crt.c     |  3 +-
 drivers/gpu/drm/gma500/cdv_intel_lvds.c    |  4 +--
 drivers/gpu/drm/gma500/framebuffer.c       |  9 +++---
 drivers/gpu/drm/gma500/gma_device.c        |  3 +-
 drivers/gpu/drm/gma500/gma_display.c       |  4 +--
 drivers/gpu/drm/gma500/gtt.c               | 20 ++++++------
 drivers/gpu/drm/gma500/intel_bios.c        |  2 +-
 drivers/gpu/drm/gma500/intel_gmbus.c       |  4 +--
 drivers/gpu/drm/gma500/intel_i2c.c         |  2 +-
 drivers/gpu/drm/gma500/mdfld_device.c      |  4 ++-
 drivers/gpu/drm/gma500/mdfld_dsi_dpi.c     |  8 ++---
 drivers/gpu/drm/gma500/mid_bios.c          |  9 ++++--
 drivers/gpu/drm/gma500/oaktrail_device.c   |  3 +-
 drivers/gpu/drm/gma500/oaktrail_lvds.c     |  2 +-
 drivers/gpu/drm/gma500/oaktrail_lvds_i2c.c |  2 +-
 drivers/gpu/drm/gma500/opregion.c          |  3 +-
 drivers/gpu/drm/gma500/power.c             | 13 ++++----
 drivers/gpu/drm/gma500/psb_drv.c           | 16 +++++-----
 drivers/gpu/drm/gma500/psb_drv.h           |  8 ++---
 drivers/gpu/drm/gma500/psb_intel_lvds.c    |  4 +--
 drivers/gpu/drm/gma500/psb_intel_sdvo.c    |  2 +-
 drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c | 36 +++++++++++-----------
 23 files changed, 101 insertions(+), 82 deletions(-)

diff --git a/drivers/gpu/drm/gma500/cdv_device.c b/drivers/gpu/drm/gma500/cdv_device.c
index e0b728f246fb..19e055dbd4c2 100644
--- a/drivers/gpu/drm/gma500/cdv_device.c
+++ b/drivers/gpu/drm/gma500/cdv_device.c
@@ -95,13 +95,14 @@ static u32 cdv_get_max_backlight(struct drm_device *dev)
 static int cdv_get_brightness(struct backlight_device *bd)
 {
 	struct drm_device *dev = bl_get_data(bd);
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	u32 val = REG_READ(BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
 
 	if (cdv_backlight_combination_mode(dev)) {
 		u8 lbpc;
 
 		val &= ~1;
-		pci_read_config_byte(dev->pdev, 0xF4, &lbpc);
+		pci_read_config_byte(pdev, 0xF4, &lbpc);
 		val *= lbpc;
 	}
 	return (val * 100)/cdv_get_max_backlight(dev);
@@ -111,6 +112,7 @@ static int cdv_get_brightness(struct backlight_device *bd)
 static int cdv_set_brightness(struct backlight_device *bd)
 {
 	struct drm_device *dev = bl_get_data(bd);
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	int level = bd->props.brightness;
 	u32 blc_pwm_ctl;
 
@@ -128,7 +130,7 @@ static int cdv_set_brightness(struct backlight_device *bd)
 		lbpc = level * 0xfe / max + 1;
 		level /= lbpc;
 
-		pci_write_config_byte(dev->pdev, 0xF4, lbpc);
+		pci_write_config_byte(pdev, 0xF4, lbpc);
 	}
 
 	blc_pwm_ctl = REG_READ(BLC_PWM_CTL) & ~BACKLIGHT_DUTY_CYCLE_MASK;
@@ -205,8 +207,9 @@ static inline void CDV_MSG_WRITE32(int domain, uint port, uint offset,
 static void cdv_init_pm(struct drm_device *dev)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	u32 pwr_cnt;
-	int domain = pci_domain_nr(dev->pdev->bus);
+	int domain = pci_domain_nr(pdev->bus);
 	int i;
 
 	dev_priv->apm_base = CDV_MSG_READ32(domain, PSB_PUNIT_PORT,
@@ -234,6 +237,8 @@ static void cdv_init_pm(struct drm_device *dev)
 
 static void cdv_errata(struct drm_device *dev)
 {
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
+
 	/* Disable bonus launch.
 	 *	CPU and GPU competes for memory and display misses updates and
 	 *	flickers. Worst with dual core, dual displays.
@@ -242,7 +247,7 @@ static void cdv_errata(struct drm_device *dev)
 	 *	Bonus Launch to work around the issue, by degrading
 	 *	performance.
 	 */
-	 CDV_MSG_WRITE32(pci_domain_nr(dev->pdev->bus), 3, 0x30, 0x08027108);
+	 CDV_MSG_WRITE32(pci_domain_nr(pdev->bus), 3, 0x30, 0x08027108);
 }
 
 /**
@@ -255,12 +260,13 @@ static void cdv_errata(struct drm_device *dev)
 static int cdv_save_display_registers(struct drm_device *dev)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	struct psb_save_area *regs = &dev_priv->regs;
 	struct drm_connector *connector;
 
 	dev_dbg(dev->dev, "Saving GPU registers.\n");
 
-	pci_read_config_byte(dev->pdev, 0xF4, &regs->cdv.saveLBB);
+	pci_read_config_byte(pdev, 0xF4, &regs->cdv.saveLBB);
 
 	regs->cdv.saveDSPCLK_GATE_D = REG_READ(DSPCLK_GATE_D);
 	regs->cdv.saveRAMCLK_GATE_D = REG_READ(RAMCLK_GATE_D);
@@ -309,11 +315,12 @@ static int cdv_save_display_registers(struct drm_device *dev)
 static int cdv_restore_display_registers(struct drm_device *dev)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	struct psb_save_area *regs = &dev_priv->regs;
 	struct drm_connector *connector;
 	u32 temp;
 
-	pci_write_config_byte(dev->pdev, 0xF4, regs->cdv.saveLBB);
+	pci_write_config_byte(pdev, 0xF4, regs->cdv.saveLBB);
 
 	REG_WRITE(DSPCLK_GATE_D, regs->cdv.saveDSPCLK_GATE_D);
 	REG_WRITE(RAMCLK_GATE_D, regs->cdv.saveRAMCLK_GATE_D);
@@ -568,9 +575,10 @@ static const struct psb_offset cdv_regmap[2] = {
 static int cdv_chip_setup(struct drm_device *dev)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	INIT_WORK(&dev_priv->hotplug_work, cdv_hotplug_work_func);
 
-	if (pci_enable_msi(dev->pdev))
+	if (pci_enable_msi(pdev))
 		dev_warn(dev->dev, "Enabling MSI failed!\n");
 	dev_priv->regmap = cdv_regmap;
 	gma_get_core_freq(dev);
diff --git a/drivers/gpu/drm/gma500/cdv_intel_crt.c b/drivers/gpu/drm/gma500/cdv_intel_crt.c
index 88535f5aacc5..fc58a73ed11d 100644
--- a/drivers/gpu/drm/gma500/cdv_intel_crt.c
+++ b/drivers/gpu/drm/gma500/cdv_intel_crt.c
@@ -278,8 +278,7 @@ void cdv_intel_crt_init(struct drm_device *dev,
 	gma_encoder->ddc_bus = psb_intel_i2c_create(dev,
 							  i2c_reg, "CRTDDC_A");
 	if (!gma_encoder->ddc_bus) {
-		dev_printk(KERN_ERR, &dev->pdev->dev, "DDC bus registration "
-			   "failed.\n");
+		dev_printk(KERN_ERR, dev->dev, "DDC bus registration failed.\n");
 		goto failed_ddc;
 	}
 
diff --git a/drivers/gpu/drm/gma500/cdv_intel_lvds.c b/drivers/gpu/drm/gma500/cdv_intel_lvds.c
index eaaf4efec217..b62368962c21 100644
--- a/drivers/gpu/drm/gma500/cdv_intel_lvds.c
+++ b/drivers/gpu/drm/gma500/cdv_intel_lvds.c
@@ -554,7 +554,7 @@ void cdv_intel_lvds_init(struct drm_device *dev,
 							 "LVDSBLC_B");
 	if (!gma_encoder->i2c_bus) {
 		dev_printk(KERN_ERR,
-			&dev->pdev->dev, "I2C bus registration failed.\n");
+			dev->dev, "I2C bus registration failed.\n");
 		goto failed_blc_i2c;
 	}
 	gma_encoder->i2c_bus->slave_addr = 0x2C;
@@ -575,7 +575,7 @@ void cdv_intel_lvds_init(struct drm_device *dev,
 							 GPIOC,
 							 "LVDSDDC_C");
 	if (!gma_encoder->ddc_bus) {
-		dev_printk(KERN_ERR, &dev->pdev->dev,
+		dev_printk(KERN_ERR, dev->dev,
 			   "DDC bus registration " "failed.\n");
 		goto failed_ddc;
 	}
diff --git a/drivers/gpu/drm/gma500/framebuffer.c b/drivers/gpu/drm/gma500/framebuffer.c
index fc4fda1d258b..22c80e87aeb4 100644
--- a/drivers/gpu/drm/gma500/framebuffer.c
+++ b/drivers/gpu/drm/gma500/framebuffer.c
@@ -262,6 +262,7 @@ static int psbfb_create(struct drm_fb_helper *fb_helper,
 {
 	struct drm_device *dev = fb_helper->dev;
 	struct drm_psb_private *dev_priv = dev->dev_private;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	struct fb_info *info;
 	struct drm_framebuffer *fb;
 	struct drm_mode_fb_cmd2 mode_cmd;
@@ -325,8 +326,8 @@ static int psbfb_create(struct drm_fb_helper *fb_helper,
 
 	drm_fb_helper_fill_info(info, fb_helper, sizes);
 
-	info->fix.mmio_start = pci_resource_start(dev->pdev, 0);
-	info->fix.mmio_len = pci_resource_len(dev->pdev, 0);
+	info->fix.mmio_start = pci_resource_start(pdev, 0);
+	info->fix.mmio_len = pci_resource_len(pdev, 0);
 
 	/* Use default scratch pixmap (info->pixmap.flags = FB_PIXMAP_SYSTEM) */
 
@@ -529,6 +530,7 @@ void psb_modeset_init(struct drm_device *dev)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
 	struct psb_intel_mode_device *mode_dev = &dev_priv->mode_dev;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	int i;
 
 	drm_mode_config_init(dev);
@@ -540,8 +542,7 @@ void psb_modeset_init(struct drm_device *dev)
 
 	/* set memory base */
 	/* Oaktrail and Poulsbo should use BAR 2*/
-	pci_read_config_dword(dev->pdev, PSB_BSM, (u32 *)
-					&(dev->mode_config.fb_base));
+	pci_read_config_dword(pdev, PSB_BSM, (u32 *)&(dev->mode_config.fb_base));
 
 	/* num pipes is 2 for PSB but 1 for Mrst */
 	for (i = 0; i < dev_priv->num_pipe; i++)
diff --git a/drivers/gpu/drm/gma500/gma_device.c b/drivers/gpu/drm/gma500/gma_device.c
index 869f30392566..cfbeb010ede0 100644
--- a/drivers/gpu/drm/gma500/gma_device.c
+++ b/drivers/gpu/drm/gma500/gma_device.c
@@ -10,8 +10,9 @@
 void gma_get_core_freq(struct drm_device *dev)
 {
 	uint32_t clock;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	struct pci_dev *pci_root =
-		pci_get_domain_bus_and_slot(pci_domain_nr(dev->pdev->bus),
+		pci_get_domain_bus_and_slot(pci_domain_nr(pdev->bus),
 					    0, 0);
 	struct drm_psb_private *dev_priv = dev->dev_private;
 
diff --git a/drivers/gpu/drm/gma500/gma_display.c b/drivers/gpu/drm/gma500/gma_display.c
index 3df6d6e850f5..cadae842a0e9 100644
--- a/drivers/gpu/drm/gma500/gma_display.c
+++ b/drivers/gpu/drm/gma500/gma_display.c
@@ -559,9 +559,9 @@ int gma_crtc_set_config(struct drm_mode_set *set,
 	if (!dev_priv->rpm_enabled)
 		return drm_crtc_helper_set_config(set, ctx);
 
-	pm_runtime_forbid(&dev->pdev->dev);
+	pm_runtime_forbid(dev->dev);
 	ret = drm_crtc_helper_set_config(set, ctx);
-	pm_runtime_allow(&dev->pdev->dev);
+	pm_runtime_allow(dev->dev);
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/gma500/gtt.c b/drivers/gpu/drm/gma500/gtt.c
index d246b1f70366..e884750bc123 100644
--- a/drivers/gpu/drm/gma500/gtt.c
+++ b/drivers/gpu/drm/gma500/gtt.c
@@ -340,13 +340,14 @@ static void psb_gtt_alloc(struct drm_device *dev)
 void psb_gtt_takedown(struct drm_device *dev)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 
 	if (dev_priv->gtt_map) {
 		iounmap(dev_priv->gtt_map);
 		dev_priv->gtt_map = NULL;
 	}
 	if (dev_priv->gtt_initialized) {
-		pci_write_config_word(dev->pdev, PSB_GMCH_CTRL,
+		pci_write_config_word(pdev, PSB_GMCH_CTRL,
 				      dev_priv->gmch_ctrl);
 		PSB_WVDC32(dev_priv->pge_ctl, PSB_PGETBL_CTL);
 		(void) PSB_RVDC32(PSB_PGETBL_CTL);
@@ -358,6 +359,7 @@ void psb_gtt_takedown(struct drm_device *dev)
 int psb_gtt_init(struct drm_device *dev, int resume)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	unsigned gtt_pages;
 	unsigned long stolen_size, vram_stolen_size;
 	unsigned i, num_pages;
@@ -376,8 +378,8 @@ int psb_gtt_init(struct drm_device *dev, int resume)
 	pg = &dev_priv->gtt;
 
 	/* Enable the GTT */
-	pci_read_config_word(dev->pdev, PSB_GMCH_CTRL, &dev_priv->gmch_ctrl);
-	pci_write_config_word(dev->pdev, PSB_GMCH_CTRL,
+	pci_read_config_word(pdev, PSB_GMCH_CTRL, &dev_priv->gmch_ctrl);
+	pci_write_config_word(pdev, PSB_GMCH_CTRL,
 			      dev_priv->gmch_ctrl | _PSB_GMCH_ENABLED);
 
 	dev_priv->pge_ctl = PSB_RVDC32(PSB_PGETBL_CTL);
@@ -397,8 +399,8 @@ int psb_gtt_init(struct drm_device *dev, int resume)
 	 */
 	pg->mmu_gatt_start = 0xE0000000;
 
-	pg->gtt_start = pci_resource_start(dev->pdev, PSB_GTT_RESOURCE);
-	gtt_pages = pci_resource_len(dev->pdev, PSB_GTT_RESOURCE)
+	pg->gtt_start = pci_resource_start(pdev, PSB_GTT_RESOURCE);
+	gtt_pages = pci_resource_len(pdev, PSB_GTT_RESOURCE)
 								>> PAGE_SHIFT;
 	/* CDV doesn't report this. In which case the system has 64 gtt pages */
 	if (pg->gtt_start == 0 || gtt_pages == 0) {
@@ -407,10 +409,10 @@ int psb_gtt_init(struct drm_device *dev, int resume)
 		pg->gtt_start = dev_priv->pge_ctl;
 	}
 
-	pg->gatt_start = pci_resource_start(dev->pdev, PSB_GATT_RESOURCE);
-	pg->gatt_pages = pci_resource_len(dev->pdev, PSB_GATT_RESOURCE)
+	pg->gatt_start = pci_resource_start(pdev, PSB_GATT_RESOURCE);
+	pg->gatt_pages = pci_resource_len(pdev, PSB_GATT_RESOURCE)
 								>> PAGE_SHIFT;
-	dev_priv->gtt_mem = &dev->pdev->resource[PSB_GATT_RESOURCE];
+	dev_priv->gtt_mem = &pdev->resource[PSB_GATT_RESOURCE];
 
 	if (pg->gatt_pages == 0 || pg->gatt_start == 0) {
 		static struct resource fudge;	/* Preferably peppermint */
@@ -431,7 +433,7 @@ int psb_gtt_init(struct drm_device *dev, int resume)
 		dev_priv->gtt_mem = &fudge;
 	}
 
-	pci_read_config_dword(dev->pdev, PSB_BSM, &dev_priv->stolen_base);
+	pci_read_config_dword(pdev, PSB_BSM, &dev_priv->stolen_base);
 	vram_stolen_size = pg->gtt_phys_start - dev_priv->stolen_base
 								- PAGE_SIZE;
 
diff --git a/drivers/gpu/drm/gma500/intel_bios.c b/drivers/gpu/drm/gma500/intel_bios.c
index 08e1dacbdbc8..a3b843316f4e 100644
--- a/drivers/gpu/drm/gma500/intel_bios.c
+++ b/drivers/gpu/drm/gma500/intel_bios.c
@@ -516,7 +516,7 @@ parse_device_mapping(struct drm_psb_private *dev_priv,
 int psb_intel_init_bios(struct drm_device *dev)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
-	struct pci_dev *pdev = dev->pdev;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	struct vbt_header *vbt = NULL;
 	struct bdb_header *bdb = NULL;
 	u8 __iomem *bios = NULL;
diff --git a/drivers/gpu/drm/gma500/intel_gmbus.c b/drivers/gpu/drm/gma500/intel_gmbus.c
index a083fbfe35b8..370bd6451bd9 100644
--- a/drivers/gpu/drm/gma500/intel_gmbus.c
+++ b/drivers/gpu/drm/gma500/intel_gmbus.c
@@ -196,7 +196,7 @@ intel_gpio_create(struct drm_psb_private *dev_priv, u32 pin)
 		 "gma500 GPIO%c", "?BACDE?F"[pin]);
 	gpio->adapter.owner = THIS_MODULE;
 	gpio->adapter.algo_data	= &gpio->algo;
-	gpio->adapter.dev.parent = &dev_priv->dev->pdev->dev;
+	gpio->adapter.dev.parent = dev_priv->dev->dev;
 	gpio->algo.setsda = set_data;
 	gpio->algo.setscl = set_clock;
 	gpio->algo.getsda = get_data;
@@ -417,7 +417,7 @@ int gma_intel_setup_gmbus(struct drm_device *dev)
 			 "gma500 gmbus %s",
 			 names[i]);
 
-		bus->adapter.dev.parent = &dev->pdev->dev;
+		bus->adapter.dev.parent = dev->dev;
 		bus->adapter.algo_data	= dev_priv;
 
 		bus->adapter.algo = &gmbus_algorithm;
diff --git a/drivers/gpu/drm/gma500/intel_i2c.c b/drivers/gpu/drm/gma500/intel_i2c.c
index de8810188190..cb92f24e6f1c 100644
--- a/drivers/gpu/drm/gma500/intel_i2c.c
+++ b/drivers/gpu/drm/gma500/intel_i2c.c
@@ -117,7 +117,7 @@ struct psb_intel_i2c_chan *psb_intel_i2c_create(struct drm_device *dev,
 	snprintf(chan->adapter.name, I2C_NAME_SIZE, "intel drm %s", name);
 	chan->adapter.owner = THIS_MODULE;
 	chan->adapter.algo_data = &chan->algo;
-	chan->adapter.dev.parent = &dev->pdev->dev;
+	chan->adapter.dev.parent = dev->dev;
 	chan->algo.setsda = set_data;
 	chan->algo.setscl = set_clock;
 	chan->algo.getsda = get_data;
diff --git a/drivers/gpu/drm/gma500/mdfld_device.c b/drivers/gpu/drm/gma500/mdfld_device.c
index b83d59b21de5..684d6cf9856f 100644
--- a/drivers/gpu/drm/gma500/mdfld_device.c
+++ b/drivers/gpu/drm/gma500/mdfld_device.c
@@ -523,7 +523,9 @@ static struct gpiod_lookup_table mdfld_dsi_pipe_gpio_table = {
 static int mdfld_chip_setup(struct drm_device *dev)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
-	if (pci_enable_msi(dev->pdev))
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
+
+	if (pci_enable_msi(pdev))
 		dev_warn(dev->dev, "Enabling MSI failed!\n");
 	dev_priv->regmap = mdfld_regmap;
 
diff --git a/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c b/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c
index ae1223f631a7..4c5a2f7348c5 100644
--- a/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c
+++ b/drivers/gpu/drm/gma500/mdfld_dsi_dpi.c
@@ -138,7 +138,7 @@ static void dsi_set_pipe_plane_enable_state(struct drm_device *dev,
 		REG_WRITE(pipeconf_reg, BIT(31));
 
 		if (REG_BIT_WAIT(pipeconf_reg, 1, 30))
-			dev_err(&dev->pdev->dev, "%s: Pipe enable timeout\n",
+			dev_err(dev->dev, "%s: Pipe enable timeout\n",
 				__func__);
 
 		/*Set up display plane */
@@ -165,11 +165,11 @@ static void dsi_set_pipe_plane_enable_state(struct drm_device *dev,
 		REG_FLD_MOD(pipeconf_reg, 0, 31, 31);
 
 		if (REG_BIT_WAIT(pipeconf_reg, 0, 30))
-			dev_err(&dev->pdev->dev, "%s: Pipe disable timeout\n",
+			dev_err(dev->dev, "%s: Pipe disable timeout\n",
 				__func__);
 
 		if (REG_BIT_WAIT(MIPI_GEN_FIFO_STAT_REG(pipe), 1, 28))
-			dev_err(&dev->pdev->dev, "%s: FIFO not empty\n",
+			dev_err(dev->dev, "%s: FIFO not empty\n",
 				__func__);
 	}
 }
@@ -867,7 +867,7 @@ void mdfld_dsi_dpi_mode_set(struct drm_encoder *encoder,
 		REG_WRITE(MRST_DPLL_A, 0x80800000);
 
 		if (REG_BIT_WAIT(pipeconf_reg, 1, 29))
-			dev_err(&dev->pdev->dev, "%s: DSI PLL lock timeout\n",
+			dev_err(dev->dev, "%s: DSI PLL lock timeout\n",
 				__func__);
 
 		REG_WRITE(MIPI_DPHY_PARAM_REG(pipe), 0x2A0c6008);
diff --git a/drivers/gpu/drm/gma500/mid_bios.c b/drivers/gpu/drm/gma500/mid_bios.c
index 8ab44fec4bfa..68e787924ed0 100644
--- a/drivers/gpu/drm/gma500/mid_bios.c
+++ b/drivers/gpu/drm/gma500/mid_bios.c
@@ -19,8 +19,9 @@
 static void mid_get_fuse_settings(struct drm_device *dev)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	struct pci_dev *pci_root =
-		pci_get_domain_bus_and_slot(pci_domain_nr(dev->pdev->bus),
+		pci_get_domain_bus_and_slot(pci_domain_nr(pdev->bus),
 					    0, 0);
 	uint32_t fuse_value = 0;
 	uint32_t fuse_value_tmp = 0;
@@ -93,7 +94,8 @@ static void mid_get_fuse_settings(struct drm_device *dev)
 static void mid_get_pci_revID(struct drm_psb_private *dev_priv)
 {
 	uint32_t platform_rev_id = 0;
-	int domain = pci_domain_nr(dev_priv->dev->pdev->bus);
+	struct pci_dev *pdev = to_pci_dev(dev_priv->dev->dev);
+	int domain = pci_domain_nr(pdev->bus);
 	struct pci_dev *pci_gfx_root =
 		pci_get_domain_bus_and_slot(domain, 0, PCI_DEVFN(2, 0));
 
@@ -269,11 +271,12 @@ static int mid_get_vbt_data_r10(struct drm_psb_private *dev_priv, u32 addr)
 static void mid_get_vbt_data(struct drm_psb_private *dev_priv)
 {
 	struct drm_device *dev = dev_priv->dev;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	u32 addr;
 	u8 __iomem *vbt_virtual;
 	struct mid_vbt_header vbt_header;
 	struct pci_dev *pci_gfx_root =
-		pci_get_domain_bus_and_slot(pci_domain_nr(dev->pdev->bus),
+		pci_get_domain_bus_and_slot(pci_domain_nr(pdev->bus),
 					    0, PCI_DEVFN(2, 0));
 	int ret = -1;
 
diff --git a/drivers/gpu/drm/gma500/oaktrail_device.c b/drivers/gpu/drm/gma500/oaktrail_device.c
index d9f8324f7c58..08cd5f73c868 100644
--- a/drivers/gpu/drm/gma500/oaktrail_device.c
+++ b/drivers/gpu/drm/gma500/oaktrail_device.c
@@ -504,9 +504,10 @@ static const struct psb_offset oaktrail_regmap[2] = {
 static int oaktrail_chip_setup(struct drm_device *dev)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	int ret;
 
-	if (pci_enable_msi(dev->pdev))
+	if (pci_enable_msi(pdev))
 		dev_warn(dev->dev, "Enabling MSI failed!\n");
 
 	dev_priv->regmap = oaktrail_regmap;
diff --git a/drivers/gpu/drm/gma500/oaktrail_lvds.c b/drivers/gpu/drm/gma500/oaktrail_lvds.c
index 2828360153d1..3abaedb01afc 100644
--- a/drivers/gpu/drm/gma500/oaktrail_lvds.c
+++ b/drivers/gpu/drm/gma500/oaktrail_lvds.c
@@ -60,7 +60,7 @@ static void oaktrail_lvds_set_power(struct drm_device *dev,
 			pp_status = REG_READ(PP_STATUS);
 		} while (pp_status & PP_ON);
 		dev_priv->is_lvds_on = false;
-		pm_request_idle(&dev->pdev->dev);
+		pm_request_idle(dev->dev);
 	}
 	gma_power_end(dev);
 }
diff --git a/drivers/gpu/drm/gma500/oaktrail_lvds_i2c.c b/drivers/gpu/drm/gma500/oaktrail_lvds_i2c.c
index baaf8212e01d..d64aedc69845 100644
--- a/drivers/gpu/drm/gma500/oaktrail_lvds_i2c.c
+++ b/drivers/gpu/drm/gma500/oaktrail_lvds_i2c.c
@@ -145,7 +145,7 @@ void oaktrail_lvds_i2c_init(struct drm_encoder *encoder)
 	strncpy(chan->adapter.name, "gma500 LPC",  I2C_NAME_SIZE - 1);
 	chan->adapter.owner = THIS_MODULE;
 	chan->adapter.algo_data = &chan->algo;
-	chan->adapter.dev.parent = &dev->pdev->dev;
+	chan->adapter.dev.parent = dev->dev;
 	chan->algo.setsda = set_data;
 	chan->algo.setscl = set_clock;
 	chan->algo.getsda = get_data;
diff --git a/drivers/gpu/drm/gma500/opregion.c b/drivers/gpu/drm/gma500/opregion.c
index eab6d889bde9..a1ffc6a1c255 100644
--- a/drivers/gpu/drm/gma500/opregion.c
+++ b/drivers/gpu/drm/gma500/opregion.c
@@ -305,12 +305,13 @@ void psb_intel_opregion_fini(struct drm_device *dev)
 int psb_intel_opregion_setup(struct drm_device *dev)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	struct psb_intel_opregion *opregion = &dev_priv->opregion;
 	u32 opregion_phy, mboxes;
 	void __iomem *base;
 	int err = 0;
 
-	pci_read_config_dword(dev->pdev, PCI_ASLS, &opregion_phy);
+	pci_read_config_dword(pdev, PCI_ASLS, &opregion_phy);
 	if (opregion_phy == 0) {
 		DRM_DEBUG_DRIVER("ACPI Opregion not supported\n");
 		return -ENOTSUPP;
diff --git a/drivers/gpu/drm/gma500/power.c b/drivers/gpu/drm/gma500/power.c
index bea8578846d1..f0fc171e6705 100644
--- a/drivers/gpu/drm/gma500/power.c
+++ b/drivers/gpu/drm/gma500/power.c
@@ -70,8 +70,8 @@ void gma_power_init(struct drm_device *dev)
  */
 void gma_power_uninit(struct drm_device *dev)
 {
-	pm_runtime_disable(&dev->pdev->dev);
-	pm_runtime_set_suspended(&dev->pdev->dev);
+	pm_runtime_disable(dev->dev);
+	pm_runtime_set_suspended(dev->dev);
 }
 
 /**
@@ -249,6 +249,7 @@ bool gma_power_is_on(struct drm_device *dev)
 bool gma_power_begin(struct drm_device *dev, bool force_on)
 {
 	struct drm_psb_private *dev_priv = dev->dev_private;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	int ret;
 	unsigned long flags;
 
@@ -256,7 +257,7 @@ bool gma_power_begin(struct drm_device *dev, bool force_on)
 	/* Power already on ? */
 	if (dev_priv->display_power) {
 		dev_priv->display_count++;
-		pm_runtime_get(&dev->pdev->dev);
+		pm_runtime_get(dev->dev);
 		spin_unlock_irqrestore(&power_ctrl_lock, flags);
 		return true;
 	}
@@ -264,11 +265,11 @@ bool gma_power_begin(struct drm_device *dev, bool force_on)
 		goto out_false;
 
 	/* Ok power up needed */
-	ret = gma_resume_pci(dev->pdev);
+	ret = gma_resume_pci(pdev);
 	if (ret == 0) {
 		psb_irq_preinstall(dev);
 		psb_irq_postinstall(dev);
-		pm_runtime_get(&dev->pdev->dev);
+		pm_runtime_get(dev->dev);
 		dev_priv->display_count++;
 		spin_unlock_irqrestore(&power_ctrl_lock, flags);
 		return true;
@@ -293,7 +294,7 @@ void gma_power_end(struct drm_device *dev)
 	dev_priv->display_count--;
 	WARN_ON(dev_priv->display_count < 0);
 	spin_unlock_irqrestore(&power_ctrl_lock, flags);
-	pm_runtime_put(&dev->pdev->dev);
+	pm_runtime_put(dev->dev);
 }
 
 int psb_runtime_suspend(struct device *dev)
diff --git a/drivers/gpu/drm/gma500/psb_drv.c b/drivers/gpu/drm/gma500/psb_drv.c
index cc2d59e8471d..bd4fcf44405c 100644
--- a/drivers/gpu/drm/gma500/psb_drv.c
+++ b/drivers/gpu/drm/gma500/psb_drv.c
@@ -208,6 +208,7 @@ static void psb_driver_unload(struct drm_device *dev)
 
 static int psb_driver_load(struct drm_device *dev, unsigned long flags)
 {
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	struct drm_psb_private *dev_priv;
 	unsigned long resource_start, resource_len;
 	unsigned long irqflags;
@@ -227,11 +228,11 @@ static int psb_driver_load(struct drm_device *dev, unsigned long flags)
 
 	pg = &dev_priv->gtt;
 
-	pci_set_master(dev->pdev);
+	pci_set_master(pdev);
 
 	dev_priv->num_pipe = dev_priv->ops->pipes;
 
-	resource_start = pci_resource_start(dev->pdev, PSB_MMIO_RESOURCE);
+	resource_start = pci_resource_start(pdev, PSB_MMIO_RESOURCE);
 
 	dev_priv->vdc_reg =
 	    ioremap(resource_start + PSB_VDC_OFFSET, PSB_VDC_SIZE);
@@ -244,7 +245,7 @@ static int psb_driver_load(struct drm_device *dev, unsigned long flags)
 		goto out_err;
 
 	if (IS_MRST(dev)) {
-		int domain = pci_domain_nr(dev->pdev->bus);
+		int domain = pci_domain_nr(pdev->bus);
 
 		dev_priv->aux_pdev =
 			pci_get_domain_bus_and_slot(domain, 0,
@@ -359,7 +360,7 @@ static int psb_driver_load(struct drm_device *dev, unsigned long flags)
 	PSB_WVDC32(0xFFFFFFFF, PSB_INT_MASK_R);
 	spin_unlock_irqrestore(&dev_priv->irqmask_lock, irqflags);
 
-	drm_irq_install(dev, dev->pdev->irq);
+	drm_irq_install(dev, pdev->irq);
 
 	dev->max_vblank_count = 0xffffff; /* only 24 bits of frame count */
 
@@ -385,8 +386,8 @@ static int psb_driver_load(struct drm_device *dev, unsigned long flags)
 	psb_intel_opregion_enable_asle(dev);
 #if 0
 	/* Enable runtime pm at last */
-	pm_runtime_enable(&dev->pdev->dev);
-	pm_runtime_set_active(&dev->pdev->dev);
+	pm_runtime_enable(dev->dev);
+	pm_runtime_set_active(dev->dev);
 #endif
 	/* Intel drm driver load is done, continue doing pvr load */
 	return 0;
@@ -415,7 +416,7 @@ static long psb_unlocked_ioctl(struct file *filp, unsigned int cmd,
 
 	if (runtime_allowed == 1 && dev_priv->is_lvds_on) {
 		runtime_allowed++;
-		pm_runtime_allow(&dev->pdev->dev);
+		pm_runtime_allow(dev->dev);
 		dev_priv->rpm_enabled = 1;
 	}
 	return drm_ioctl(filp, cmd, arg);
@@ -437,7 +438,6 @@ static int psb_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto err_pci_disable_device;
 	}
 
-	dev->pdev = pdev;
 	pci_set_drvdata(pdev, dev);
 
 	ret = psb_driver_load(dev, ent->driver_data);
diff --git a/drivers/gpu/drm/gma500/psb_drv.h b/drivers/gpu/drm/gma500/psb_drv.h
index 5b7f7a312d53..d303f8271f7e 100644
--- a/drivers/gpu/drm/gma500/psb_drv.h
+++ b/drivers/gpu/drm/gma500/psb_drv.h
@@ -43,10 +43,10 @@ enum {
 	CHIP_MFLD_0130 = 3,		/* Medfield */
 };
 
-#define IS_PSB(dev) (((dev)->pdev->device & 0xfffe) == 0x8108)
-#define IS_MRST(dev) (((dev)->pdev->device & 0xfff0) == 0x4100)
-#define IS_MFLD(dev) (((dev)->pdev->device & 0xfff8) == 0x0130)
-#define IS_CDV(dev) (((dev)->pdev->device & 0xfff0) == 0x0be0)
+#define IS_PSB(drm) ((to_pci_dev((drm)->dev)->device & 0xfffe) == 0x8108)
+#define IS_MRST(drm) ((to_pci_dev((drm)->dev)->device & 0xfff0) == 0x4100)
+#define IS_MFLD(drm) ((to_pci_dev((drm)->dev)->device & 0xfff8) == 0x0130)
+#define IS_CDV(drm) ((to_pci_dev((drm)->dev)->device & 0xfff0) == 0x0be0)
 
 /* Hardware offsets */
 #define PSB_VDC_OFFSET		 0x00000000
diff --git a/drivers/gpu/drm/gma500/psb_intel_lvds.c b/drivers/gpu/drm/gma500/psb_intel_lvds.c
index 49228e2cf480..f65a6f386cae 100644
--- a/drivers/gpu/drm/gma500/psb_intel_lvds.c
+++ b/drivers/gpu/drm/gma500/psb_intel_lvds.c
@@ -700,7 +700,7 @@ void psb_intel_lvds_init(struct drm_device *dev,
 	lvds_priv->i2c_bus = psb_intel_i2c_create(dev, GPIOB, "LVDSBLC_B");
 	if (!lvds_priv->i2c_bus) {
 		dev_printk(KERN_ERR,
-			&dev->pdev->dev, "I2C bus registration failed.\n");
+			dev->dev, "I2C bus registration failed.\n");
 		goto failed_blc_i2c;
 	}
 	lvds_priv->i2c_bus->slave_addr = 0x2C;
@@ -719,7 +719,7 @@ void psb_intel_lvds_init(struct drm_device *dev,
 	/* Set up the DDC bus. */
 	lvds_priv->ddc_bus = psb_intel_i2c_create(dev, GPIOC, "LVDSDDC_C");
 	if (!lvds_priv->ddc_bus) {
-		dev_printk(KERN_ERR, &dev->pdev->dev,
+		dev_printk(KERN_ERR, dev->dev,
 			   "DDC bus registration " "failed.\n");
 		goto failed_ddc;
 	}
diff --git a/drivers/gpu/drm/gma500/psb_intel_sdvo.c b/drivers/gpu/drm/gma500/psb_intel_sdvo.c
index 907f966d6f22..2ddf7e41aa5d 100644
--- a/drivers/gpu/drm/gma500/psb_intel_sdvo.c
+++ b/drivers/gpu/drm/gma500/psb_intel_sdvo.c
@@ -2406,7 +2406,7 @@ psb_intel_sdvo_init_ddc_proxy(struct psb_intel_sdvo *sdvo,
 	sdvo->ddc.owner = THIS_MODULE;
 	sdvo->ddc.class = I2C_CLASS_DDC;
 	snprintf(sdvo->ddc.name, I2C_NAME_SIZE, "SDVO DDC proxy");
-	sdvo->ddc.dev.parent = &dev->pdev->dev;
+	sdvo->ddc.dev.parent = dev->dev;
 	sdvo->ddc.algo_data = sdvo;
 	sdvo->ddc.algo = &psb_intel_sdvo_ddc_proxy;
 
diff --git a/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c b/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
index e5bdd99ad453..99d2ffc2fed9 100644
--- a/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
+++ b/drivers/gpu/drm/gma500/tc35876x-dsi-lvds.c
@@ -454,13 +454,13 @@ static void tc35876x_brightness_init(struct drm_device *dev)
 	ret = intel_scu_ipc_ioread8(GPIOPWMCTRL, &pwmctrl);
 	if (ret || pwmctrl != 0x01) {
 		if (ret)
-			dev_err(&dev->pdev->dev, "GPIOPWMCTRL read failed\n");
+			dev_err(dev->dev, "GPIOPWMCTRL read failed\n");
 		else
-			dev_warn(&dev->pdev->dev, "GPIOPWMCTRL was not set to system clock (pwmctrl = 0x%02x)\n", pwmctrl);
+			dev_warn(dev->dev, "GPIOPWMCTRL was not set to system clock (pwmctrl = 0x%02x)\n", pwmctrl);
 
 		ret = intel_scu_ipc_iowrite8(GPIOPWMCTRL, 0x01);
 		if (ret)
-			dev_err(&dev->pdev->dev, "GPIOPWMCTRL set failed\n");
+			dev_err(dev->dev, "GPIOPWMCTRL set failed\n");
 	}
 
 	clkdiv = calc_clkdiv(SYSTEMCLK, PWM_FREQUENCY);
@@ -470,9 +470,9 @@ static void tc35876x_brightness_init(struct drm_device *dev)
 		ret = intel_scu_ipc_iowrite8(PWM0CLKDIV0, clkdiv & 0xff);
 
 	if (ret)
-		dev_err(&dev->pdev->dev, "PWM0CLKDIV set failed\n");
+		dev_err(dev->dev, "PWM0CLKDIV set failed\n");
 	else
-		dev_dbg(&dev->pdev->dev, "PWM0CLKDIV set to 0x%04x (%d Hz)\n",
+		dev_dbg(dev->dev, "PWM0CLKDIV set to 0x%04x (%d Hz)\n",
 			clkdiv, PWM_FREQUENCY);
 }
 
@@ -575,7 +575,7 @@ static struct drm_display_mode *tc35876x_get_config_mode(struct drm_device *dev)
 {
 	struct drm_display_mode *mode;
 
-	dev_dbg(&dev->pdev->dev, "%s\n", __func__);
+	dev_dbg(dev->dev, "%s\n", __func__);
 
 	mode = kzalloc(sizeof(*mode), GFP_KERNEL);
 	if (!mode)
@@ -592,15 +592,15 @@ static struct drm_display_mode *tc35876x_get_config_mode(struct drm_device *dev)
 	mode->vtotal = 838;
 	mode->clock = 33324 << 1;
 
-	dev_info(&dev->pdev->dev, "hdisplay(w) = %d\n", mode->hdisplay);
-	dev_info(&dev->pdev->dev, "vdisplay(h) = %d\n", mode->vdisplay);
-	dev_info(&dev->pdev->dev, "HSS = %d\n", mode->hsync_start);
-	dev_info(&dev->pdev->dev, "HSE = %d\n", mode->hsync_end);
-	dev_info(&dev->pdev->dev, "htotal = %d\n", mode->htotal);
-	dev_info(&dev->pdev->dev, "VSS = %d\n", mode->vsync_start);
-	dev_info(&dev->pdev->dev, "VSE = %d\n", mode->vsync_end);
-	dev_info(&dev->pdev->dev, "vtotal = %d\n", mode->vtotal);
-	dev_info(&dev->pdev->dev, "clock = %d\n", mode->clock);
+	dev_info(dev->dev, "hdisplay(w) = %d\n", mode->hdisplay);
+	dev_info(dev->dev, "vdisplay(h) = %d\n", mode->vdisplay);
+	dev_info(dev->dev, "HSS = %d\n", mode->hsync_start);
+	dev_info(dev->dev, "HSE = %d\n", mode->hsync_end);
+	dev_info(dev->dev, "htotal = %d\n", mode->htotal);
+	dev_info(dev->dev, "VSS = %d\n", mode->vsync_start);
+	dev_info(dev->dev, "VSE = %d\n", mode->vsync_end);
+	dev_info(dev->dev, "vtotal = %d\n", mode->vtotal);
+	dev_info(dev->dev, "clock = %d\n", mode->clock);
 
 	drm_mode_set_name(mode);
 	drm_mode_set_crtcinfo(mode, 0);
@@ -775,19 +775,19 @@ void tc35876x_init(struct drm_device *dev)
 {
 	int r;
 
-	dev_dbg(&dev->pdev->dev, "%s\n", __func__);
+	dev_dbg(dev->dev, "%s\n", __func__);
 
 	cmi_lcd_hack_create_device();
 
 	r = i2c_add_driver(&cmi_lcd_i2c_driver);
 	if (r < 0)
-		dev_err(&dev->pdev->dev,
+		dev_err(dev->dev,
 			"%s: i2c_add_driver() for %s failed (%d)\n",
 			__func__, cmi_lcd_i2c_driver.driver.name, r);
 
 	r = i2c_add_driver(&tc35876x_bridge_i2c_driver);
 	if (r < 0)
-		dev_err(&dev->pdev->dev,
+		dev_err(dev->dev,
 			"%s: i2c_add_driver() for %s failed (%d)\n",
 			__func__, tc35876x_bridge_i2c_driver.driver.name, r);
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
