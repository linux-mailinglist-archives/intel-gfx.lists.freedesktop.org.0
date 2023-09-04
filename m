Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6A3791E13
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 22:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F067510E3E9;
	Mon,  4 Sep 2023 20:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out-219.mta1.migadu.com (out-219.mta1.migadu.com
 [95.215.58.219])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 939E810E3E2
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Sep 2023 20:05:31 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1693857472;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=F94OEAVhjRPNan81JT9jYKc/35rAAkFMKn0HnOUomvI=;
 b=GnSWs3Th21KoWg3GlauP3qiIOfTQOIrowoSQabwTLw+lmR60Zkz6STabaEZAnjCGxkeJj7
 3JZwsA+Ed49UQWdSv8QN1222rpeBrwhEKmFkowFHEmI3Xv35ckwzuofdSFTolilLKKXFoF
 0kP5vMu/6Z3tploGLiaOXmyG8Od7rYc=
From: Sui Jingfeng <sui.jingfeng@linux.dev>
To: Bjorn Helgaas <bhelgaas@google.com>
Date: Tue,  5 Sep 2023 03:57:23 +0800
Message-Id: <20230904195724.633404-9-sui.jingfeng@linux.dev>
In-Reply-To: <20230904195724.633404-1-sui.jingfeng@linux.dev>
References: <20230904195724.633404-1-sui.jingfeng@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
Subject: [Intel-gfx] [RFC,
 drm-misc-next v4 8/9] drm/hibmc: Register as a VGA client by
 calling vga_client_register()
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
Cc: Sui Jingfeng <suijingfeng@loongson.cn>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 linux-pci@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sui Jingfeng <suijingfeng@loongson.cn>

Because the display controller in the Hibmc chip is a VGA compatible
display controller. Because ARM64 doesn't need the VGA console. It does not
need to worry about the side effects that come with the VGA compatible.
However, the real problem is that some ARM64 PCs and servers do not have
good UEFI firmware support. At least, it is not as good as UEFI firmware
for x86. The Huawei KunPeng 920 PC and Taishan 100 server are examples.
When a discrete GPU is mounted on such machines, the UEFI firmware still
selects the integrated display controller (in the BMC) as the primary GPU.
It is hardcoded, no options are provided for selection. A Linux user has
no control at all.

Signed-off-by: Sui Jingfeng <suijingfeng@loongson.cn>
---
 drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c b/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c
index 8a98fa276e8a..73a3f1cb109a 100644
--- a/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c
+++ b/drivers/gpu/drm/hisilicon/hibmc/hibmc_drm_drv.c
@@ -13,6 +13,7 @@
 
 #include <linux/module.h>
 #include <linux/pci.h>
+#include <linux/vgaarb.h>
 
 #include <drm/drm_aperture.h>
 #include <drm/drm_atomic_helper.h>
@@ -27,6 +28,10 @@
 #include "hibmc_drm_drv.h"
 #include "hibmc_drm_regs.h"
 
+static int hibmc_modeset = -1;
+MODULE_PARM_DESC(modeset, "Disable/Enable modesetting");
+module_param_named(modeset, hibmc_modeset, int, 0400);
+
 DEFINE_DRM_GEM_FOPS(hibmc_fops);
 
 static irqreturn_t hibmc_interrupt(int irq, void *arg)
@@ -299,6 +304,14 @@ static int hibmc_load(struct drm_device *dev)
 	return ret;
 }
 
+static bool hibmc_want_to_be_primary(struct pci_dev *pdev)
+{
+	if (hibmc_modeset == 10)
+		return true;
+
+	return false;
+}
+
 static int hibmc_pci_probe(struct pci_dev *pdev,
 			   const struct pci_device_id *ent)
 {
@@ -339,6 +352,8 @@ static int hibmc_pci_probe(struct pci_dev *pdev,
 		goto err_unload;
 	}
 
+	vga_client_register(pdev, NULL, hibmc_want_to_be_primary);
+
 	drm_fbdev_generic_setup(dev, 32);
 
 	return 0;
-- 
2.34.1

