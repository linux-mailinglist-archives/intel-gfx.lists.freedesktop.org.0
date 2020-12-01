Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA17C2C9FBF
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 11:37:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 166D66E8F6;
	Tue,  1 Dec 2020 10:36:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72E9F6E84F;
 Tue,  1 Dec 2020 10:35:59 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 15B2EAD77;
 Tue,  1 Dec 2020 10:35:58 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: airlied@linux.ie,
	daniel@ffwll.ch
Date: Tue,  1 Dec 2020 11:35:34 +0100
Message-Id: <20201201103542.2182-13-tzimmermann@suse.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201103542.2182-1-tzimmermann@suse.de>
References: <20201201103542.2182-1-tzimmermann@suse.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/20] drm/mgag200: Remove references to
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

Using struct drm_device.pdev is deprecated. Convert mgag200 to struct
drm_device.dev. No functional changes.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/mgag200/mgag200_drv.c | 20 +++++++++++---------
 drivers/gpu/drm/mgag200/mgag200_i2c.c |  2 +-
 drivers/gpu/drm/mgag200/mgag200_mm.c  | 10 ++++++----
 3 files changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/mgag200/mgag200_drv.c b/drivers/gpu/drm/mgag200/mgag200_drv.c
index a977c9f49719..4e4c105f9a50 100644
--- a/drivers/gpu/drm/mgag200/mgag200_drv.c
+++ b/drivers/gpu/drm/mgag200/mgag200_drv.c
@@ -47,10 +47,11 @@ static const struct drm_driver mgag200_driver = {
 static bool mgag200_has_sgram(struct mga_device *mdev)
 {
 	struct drm_device *dev = &mdev->base;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	u32 option;
 	int ret;
 
-	ret = pci_read_config_dword(dev->pdev, PCI_MGA_OPTION, &option);
+	ret = pci_read_config_dword(pdev, PCI_MGA_OPTION, &option);
 	if (drm_WARN(dev, ret, "failed to read PCI config dword: %d\n", ret))
 		return false;
 
@@ -60,6 +61,7 @@ static bool mgag200_has_sgram(struct mga_device *mdev)
 static int mgag200_regs_init(struct mga_device *mdev)
 {
 	struct drm_device *dev = &mdev->base;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	u32 option, option2;
 	u8 crtcext3;
 
@@ -99,13 +101,13 @@ static int mgag200_regs_init(struct mga_device *mdev)
 	}
 
 	if (option)
-		pci_write_config_dword(dev->pdev, PCI_MGA_OPTION, option);
+		pci_write_config_dword(pdev, PCI_MGA_OPTION, option);
 	if (option2)
-		pci_write_config_dword(dev->pdev, PCI_MGA_OPTION2, option2);
+		pci_write_config_dword(pdev, PCI_MGA_OPTION2, option2);
 
 	/* BAR 1 contains registers */
-	mdev->rmmio_base = pci_resource_start(dev->pdev, 1);
-	mdev->rmmio_size = pci_resource_len(dev->pdev, 1);
+	mdev->rmmio_base = pci_resource_start(pdev, 1);
+	mdev->rmmio_size = pci_resource_len(pdev, 1);
 
 	if (!devm_request_mem_region(dev->dev, mdev->rmmio_base,
 				     mdev->rmmio_size, "mgadrmfb_mmio")) {
@@ -113,7 +115,7 @@ static int mgag200_regs_init(struct mga_device *mdev)
 		return -ENOMEM;
 	}
 
-	mdev->rmmio = pcim_iomap(dev->pdev, 1, 0);
+	mdev->rmmio = pcim_iomap(pdev, 1, 0);
 	if (mdev->rmmio == NULL)
 		return -ENOMEM;
 
@@ -218,6 +220,7 @@ static void mgag200_g200_interpret_bios(struct mga_device *mdev,
 static void mgag200_g200_init_refclk(struct mga_device *mdev)
 {
 	struct drm_device *dev = &mdev->base;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	unsigned char __iomem *rom;
 	unsigned char *bios;
 	size_t size;
@@ -226,7 +229,7 @@ static void mgag200_g200_init_refclk(struct mga_device *mdev)
 	mdev->model.g200.pclk_max = 230000;
 	mdev->model.g200.ref_clk = 27050;
 
-	rom = pci_map_rom(dev->pdev, &size);
+	rom = pci_map_rom(pdev, &size);
 	if (!rom)
 		return;
 
@@ -244,7 +247,7 @@ static void mgag200_g200_init_refclk(struct mga_device *mdev)
 
 	vfree(bios);
 out:
-	pci_unmap_rom(dev->pdev, rom);
+	pci_unmap_rom(pdev, rom);
 }
 
 static void mgag200_g200se_init_unique_id(struct mga_device *mdev)
@@ -301,7 +304,6 @@ mgag200_device_create(struct pci_dev *pdev, unsigned long flags)
 		return mdev;
 	dev = &mdev->base;
 
-	dev->pdev = pdev;
 	pci_set_drvdata(pdev, dev);
 
 	ret = mgag200_device_init(mdev, flags);
diff --git a/drivers/gpu/drm/mgag200/mgag200_i2c.c b/drivers/gpu/drm/mgag200/mgag200_i2c.c
index 09731e614e46..ac8e34eef513 100644
--- a/drivers/gpu/drm/mgag200/mgag200_i2c.c
+++ b/drivers/gpu/drm/mgag200/mgag200_i2c.c
@@ -126,7 +126,7 @@ struct mga_i2c_chan *mgag200_i2c_create(struct drm_device *dev)
 	i2c->clock = clock;
 	i2c->adapter.owner = THIS_MODULE;
 	i2c->adapter.class = I2C_CLASS_DDC;
-	i2c->adapter.dev.parent = &dev->pdev->dev;
+	i2c->adapter.dev.parent = dev->dev;
 	i2c->dev = dev;
 	i2c_set_adapdata(&i2c->adapter, i2c);
 	snprintf(i2c->adapter.name, sizeof(i2c->adapter.name), "mga i2c");
diff --git a/drivers/gpu/drm/mgag200/mgag200_mm.c b/drivers/gpu/drm/mgag200/mgag200_mm.c
index 641f1aa992be..b667371b69a4 100644
--- a/drivers/gpu/drm/mgag200/mgag200_mm.c
+++ b/drivers/gpu/drm/mgag200/mgag200_mm.c
@@ -78,11 +78,12 @@ static size_t mgag200_probe_vram(struct mga_device *mdev, void __iomem *mem,
 static void mgag200_mm_release(struct drm_device *dev, void *ptr)
 {
 	struct mga_device *mdev = to_mga_device(dev);
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 
 	mdev->vram_fb_available = 0;
 	iounmap(mdev->vram);
-	arch_io_free_memtype_wc(pci_resource_start(dev->pdev, 0),
-				pci_resource_len(dev->pdev, 0));
+	arch_io_free_memtype_wc(pci_resource_start(pdev, 0),
+				pci_resource_len(pdev, 0));
 	arch_phys_wc_del(mdev->fb_mtrr);
 	mdev->fb_mtrr = 0;
 }
@@ -90,6 +91,7 @@ static void mgag200_mm_release(struct drm_device *dev, void *ptr)
 int mgag200_mm_init(struct mga_device *mdev)
 {
 	struct drm_device *dev = &mdev->base;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	u8 misc;
 	resource_size_t start, len;
 	int ret;
@@ -102,8 +104,8 @@ int mgag200_mm_init(struct mga_device *mdev)
 	WREG8(MGA_MISC_OUT, misc);
 
 	/* BAR 0 is VRAM */
-	start = pci_resource_start(dev->pdev, 0);
-	len = pci_resource_len(dev->pdev, 0);
+	start = pci_resource_start(pdev, 0);
+	len = pci_resource_len(pdev, 0);
 
 	if (!devm_request_mem_region(dev->dev, start, len, "mgadrmfb_vram")) {
 		drm_err(dev, "can't reserve VRAM\n");
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
