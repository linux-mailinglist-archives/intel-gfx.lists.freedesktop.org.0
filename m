Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A1525DBF1
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2CDA6EBB7;
	Fri,  4 Sep 2020 14:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4E2A6EBED
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:39:56 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id x14so6956856wrl.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Mmp2YddBxU3SpyfXCINIYmjt0mZ2lhKSiW8oJoAH7bE=;
 b=Wj6k2TACn1+LuYNJTiDIkAUKHf/PpNYxuNcArqBXSAulYPcYXGwg4eJyVfl4Jvk6il
 pHHw6dZVoNor0wqdlOJfkn3Bbux67TkCEEVBvWkYMXmYaF3q/6JIgj2fQu7BhcR7jmC3
 nRjoeEgJs3XD2E4pr3+pFoKE7gNKWPngMfHRU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Mmp2YddBxU3SpyfXCINIYmjt0mZ2lhKSiW8oJoAH7bE=;
 b=o2RTSHDWc1jwMNUd1ujKffiO/4XaW5y2vUA1KfUsPPNLDFQgcEU1VJC6IE9YSQ1J7l
 ONRGNtjGz61rgWvjwPFx7SUSbGomWZkXZuUJeAZbt+RwQfSYwLGG1wJbXDQDrlUmCv6i
 UH2taannaHSC1MbHYkWHtL9E+HJtkYSc+KUOxuH2l/9GPNfrZE+UoeMbBeqTdDumYIej
 quSIuuT3RkhytHZhbRZvUvH6iCFd4IS6u+qQuKKBs9ruJXGC5EDUL1YQ2ChscAD2SlAv
 IDkJjlo37LZllbzic/zRsKhsfHD2aj/eTYrtjb6cy/jqdLg0+eXnH9aOmePtHLiw82tw
 g9EA==
X-Gm-Message-State: AOAM530XNoXZubt9Sp7dtT1xXlvFdBDV04DIVTLUxtLIVbs24NOaLaEF
 PZqOFC+j0xD7bRLY6NcdCvOifA==
X-Google-Smtp-Source: ABdhPJwsgeMgc+H+IGuIfVePmmxMjg2zrT9uHe9f+P9050U1uBAI/sXCfVwPSb6cnY2JQ0zU1rVhjQ==
X-Received: by 2002:a5d:4e02:: with SMTP id p2mr8657833wrt.276.1599230395375; 
 Fri, 04 Sep 2020 07:39:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.39.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:39:54 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:21 +0200
Message-Id: <20200904143941.110665-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/24] drm/vgem: Use devm_drm_dev_alloc
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Sean Paul <seanpaul@chromium.org>,
 Sam Ravnborg <sam@ravnborg.org>, Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This means we also need to slightly restructure the exit code, so that
final cleanup of the drm_device is triggered by unregistering the
platform device. Note that devres is both clean up when the driver is
unbound (not the case for vgem, we don't bind), and also when unregistering
the device (very much the case for vgem). Therefore we can rely on devres
even though vgem isn't a proper platform device driver.

This also somewhat untangles the load code, since the drm and platform device
setup are no longer interleaved, but two distinct steps.

v2: use devres_open/release_group so we can use devm without real
hacks in the driver core or having to create an entire fake bus for
testing drivers. Might want to extract this into helpers eventually,
maybe as a mock_drm_dev_alloc or test_drm_dev_alloc.

Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Emil Velikov <emil.velikov@collabora.com>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/vgem/vgem_drv.c | 55 ++++++++++++++-------------------
 1 file changed, 24 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_drv.c
index 313339bbff90..f95537627463 100644
--- a/drivers/gpu/drm/vgem/vgem_drv.c
+++ b/drivers/gpu/drm/vgem/vgem_drv.c
@@ -401,16 +401,8 @@ static int vgem_prime_mmap(struct drm_gem_object *obj,
 	return 0;
 }
 
-static void vgem_release(struct drm_device *dev)
-{
-	struct vgem_device *vgem = container_of(dev, typeof(*vgem), drm);
-
-	platform_device_unregister(vgem->platform);
-}
-
 static struct drm_driver vgem_driver = {
 	.driver_features		= DRIVER_GEM | DRIVER_RENDER,
-	.release			= vgem_release,
 	.open				= vgem_open,
 	.postclose			= vgem_postclose,
 	.gem_free_object_unlocked	= vgem_gem_free_object,
@@ -442,48 +434,49 @@ static struct drm_driver vgem_driver = {
 static int __init vgem_init(void)
 {
 	int ret;
+	struct platform_device *pdev;
 
-	vgem_device = kzalloc(sizeof(*vgem_device), GFP_KERNEL);
-	if (!vgem_device)
-		return -ENOMEM;
+	pdev = platform_device_register_simple("vgem", -1, NULL, 0);
+	if (IS_ERR(pdev))
+		return PTR_ERR(vgem_device->platform);
 
-	vgem_device->platform =
-		platform_device_register_simple("vgem", -1, NULL, 0);
-	if (IS_ERR(vgem_device->platform)) {
-		ret = PTR_ERR(vgem_device->platform);
-		goto out_free;
+	if (!devres_open_group(&pdev->dev, NULL, GFP_KERNEL)) {
+		ret = -ENOMEM;
+		goto out_unregister;
 	}
 
-	dma_coerce_mask_and_coherent(&vgem_device->platform->dev,
+	dma_coerce_mask_and_coherent(&pdev->dev,
 				     DMA_BIT_MASK(64));
-	ret = drm_dev_init(&vgem_device->drm, &vgem_driver,
-			   &vgem_device->platform->dev);
-	if (ret)
-		goto out_unregister;
-	drmm_add_final_kfree(&vgem_device->drm, vgem_device);
+
+	vgem_device = devm_drm_dev_alloc(&pdev->dev, &vgem_driver,
+					 struct vgem_device, drm);
+	if (IS_ERR(vgem_device)) {
+		ret = PTR_ERR(vgem_device);
+		goto out_devres;
+	}
+	vgem_device->platform = pdev;
 
 	/* Final step: expose the device/driver to userspace */
 	ret = drm_dev_register(&vgem_device->drm, 0);
 	if (ret)
-		goto out_put;
+		goto out_devres;
 
 	return 0;
 
-out_put:
-	drm_dev_put(&vgem_device->drm);
-	platform_device_unregister(vgem_device->platform);
-	return ret;
+out_devres:
+	devres_release_group(&pdev->dev, NULL);
 out_unregister:
-	platform_device_unregister(vgem_device->platform);
-out_free:
-	kfree(vgem_device);
+	platform_device_unregister(pdev);
 	return ret;
 }
 
 static void __exit vgem_exit(void)
 {
+	struct platform_device *pdev = vgem_device->platform;
+
 	drm_dev_unregister(&vgem_device->drm);
-	drm_dev_put(&vgem_device->drm);
+	devres_release_group(&pdev->dev, NULL);
+	platform_device_unregister(pdev);
 }
 
 module_init(vgem_init);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
