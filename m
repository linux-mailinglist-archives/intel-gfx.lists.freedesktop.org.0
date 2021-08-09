Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB1A3E46AC
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 15:31:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A642C89B84;
	Mon,  9 Aug 2021 13:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4404B89B29;
 Mon,  9 Aug 2021 13:31:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10070"; a="278441572"
X-IronPort-AV: E=Sophos;i="5.84,307,1620716400"; d="scan'208";a="278441572"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2021 06:31:51 -0700
X-IronPort-AV: E=Sophos;i="5.84,307,1620716400"; d="scan'208";a="502764423"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2021 06:31:49 -0700
From: Imre Deak <imre.deak@intel.com>
To: linux-fbdev@vger.kernel.org,
	Kai-Heng Feng <kai.heng.feng@canonical.com>
Cc: dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon,  9 Aug 2021 16:31:46 +0300
Message-Id: <20210809133146.2478382-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210802133551.1904964-1-imre.deak@intel.com>
References: <20210802133551.1904964-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] fbdev/efifb: Release PCI device's runtime PM
 ref during FB destroy
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

Atm the EFI FB platform driver gets a runtime PM reference for the
associated GFX PCI device during probing the EFI FB platform device and
releases it only when the platform device gets unbound.

When fbcon switches to the FB provided by the PCI device's driver (for
instance i915/drmfb), the EFI FB will get only unregistered without the
EFI FB platform device getting unbound, keeping the runtime PM reference
acquired during the platform device probing. This reference will prevent
the PCI driver from runtime suspending the device.

Fix this by releasing the RPM reference from the EFI FB's destroy hook,
called when the FB gets unregistered.

While at it assert that pm_runtime_get_sync() didn't fail.

v2:
- Move pm_runtime_get_sync() before register_framebuffer() to avoid its
  race wrt. efifb_destroy()->pm_runtime_put(). (Daniel)
- Assert that pm_runtime_get_sync() didn't fail.
- Clarify commit message wrt. platform/PCI device/driver and driver
  removal vs. device unbinding.

Fixes: a6c0fd3d5a8b ("efifb: Ensure graphics device for efifb stays at PCI D0")
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch> (v1)
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/video/fbdev/efifb.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/video/fbdev/efifb.c b/drivers/video/fbdev/efifb.c
index 8ea8f079cde26..edca3703b9640 100644
--- a/drivers/video/fbdev/efifb.c
+++ b/drivers/video/fbdev/efifb.c
@@ -47,6 +47,8 @@ static bool use_bgrt = true;
 static bool request_mem_succeeded = false;
 static u64 mem_flags = EFI_MEMORY_WC | EFI_MEMORY_UC;
 
+static struct pci_dev *efifb_pci_dev;	/* dev with BAR covering the efifb */
+
 static struct fb_var_screeninfo efifb_defined = {
 	.activate		= FB_ACTIVATE_NOW,
 	.height			= -1,
@@ -243,6 +245,9 @@ static inline void efifb_show_boot_graphics(struct fb_info *info) {}
 
 static void efifb_destroy(struct fb_info *info)
 {
+	if (efifb_pci_dev)
+		pm_runtime_put(&efifb_pci_dev->dev);
+
 	if (info->screen_base) {
 		if (mem_flags & (EFI_MEMORY_UC | EFI_MEMORY_WC))
 			iounmap(info->screen_base);
@@ -333,7 +338,6 @@ ATTRIBUTE_GROUPS(efifb);
 
 static bool pci_dev_disabled;	/* FB base matches BAR of a disabled device */
 
-static struct pci_dev *efifb_pci_dev;	/* dev with BAR covering the efifb */
 static struct resource *bar_resource;
 static u64 bar_offset;
 
@@ -569,17 +573,22 @@ static int efifb_probe(struct platform_device *dev)
 		pr_err("efifb: cannot allocate colormap\n");
 		goto err_groups;
 	}
+
+	if (efifb_pci_dev)
+		WARN_ON(pm_runtime_get_sync(&efifb_pci_dev->dev) < 0);
+
 	err = register_framebuffer(info);
 	if (err < 0) {
 		pr_err("efifb: cannot register framebuffer\n");
-		goto err_fb_dealoc;
+		goto err_put_rpm_ref;
 	}
 	fb_info(info, "%s frame buffer device\n", info->fix.id);
-	if (efifb_pci_dev)
-		pm_runtime_get_sync(&efifb_pci_dev->dev);
 	return 0;
 
-err_fb_dealoc:
+err_put_rpm_ref:
+	if (efifb_pci_dev)
+		pm_runtime_put(&efifb_pci_dev->dev);
+
 	fb_dealloc_cmap(&info->cmap);
 err_groups:
 	sysfs_remove_groups(&dev->dev.kobj, efifb_groups);
@@ -603,8 +612,6 @@ static int efifb_remove(struct platform_device *pdev)
 	unregister_framebuffer(info);
 	sysfs_remove_groups(&pdev->dev.kobj, efifb_groups);
 	framebuffer_release(info);
-	if (efifb_pci_dev)
-		pm_runtime_put(&efifb_pci_dev->dev);
 
 	return 0;
 }
-- 
2.27.0

