Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C99DF25DBEF
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 16:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 514076EBFF;
	Fri,  4 Sep 2020 14:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF59A6EBED
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 14:39:57 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id b79so6308782wmb.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Sep 2020 07:39:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qtWnKrVNVweA93+MOus9KbLJ2VhRdGr6cwOQbzrZZPY=;
 b=Jy8zOhZTAgh3PdbPZDxvWjenJqlvixaww5yPuZp4e8fGBKFcYStAIY+QYQv3eRRgD8
 27ySn1ClOuQwTgGPUysp540IuAORxOWnRdmrK7btDNDDO/ac0+nkSe2LdKvp+9PyFuxk
 igyL9RdC1xEizqx59rYOJLcnKk5qNBgjEA05I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qtWnKrVNVweA93+MOus9KbLJ2VhRdGr6cwOQbzrZZPY=;
 b=XeeWjCuwOvWeRJSp7+La9+r/M+DnMm53CyBLznCfWVMghNReIzITKFF+Xhm8V0Gjg1
 xfnbv55C5fZ3LQiPJx4IbCY55kjx2SoM+e5Op1sRhZOxj8UoGUDD1PAXEDBM1Q9NnD6U
 oHpltQAFyhutNF4Gxag0++UE//sRIo0pw0c13H8qzoNyXwLFGtBOMBUpeTnW9SVbKlH5
 ruPpXw0TuaD5DtBr7N0UQSigqyV5O3iUTaMNCJhfZl4VRPas34tDnhs3Xn17AWfJSRM/
 6ct0i42Ee8MxAOg8D5nXSHsQosqwl1dHq2AygPGrye6BK/Zwqz2YwWDxAXZrtv4GRYMB
 N5mw==
X-Gm-Message-State: AOAM531/8RFNfcbmZlSI7wrBMpMP6DLu88PWQSh5m3kIhZlPDJfc1OZn
 1kWCNJF8JWpx9dNVdH1FHGiTqA==
X-Google-Smtp-Source: ABdhPJxcvJgLWxOJI0H4Yz5dKzdW6bZX3l+PWs7LCOKa4Rdr14LW1W4j5jD7MapgQV7i+MxcITshFA==
X-Received: by 2002:a1c:4d12:: with SMTP id o18mr8534428wmh.177.1599230396544; 
 Fri, 04 Sep 2020 07:39:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z15sm11597949wrv.94.2020.09.04.07.39.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 07:39:55 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  4 Sep 2020 16:39:22 +0200
Message-Id: <20200904143941.110665-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
References: <20200904143941.110665-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/24] drm/vkms: Use devm_drm_dev_alloc
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
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>,
 Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This means we also need to slightly restructure the exit code, so that
final cleanup of the drm_device is triggered by unregistering the
platform device. Note that devres is both clean up when the driver is
unbound (not the case for vkms, we don't bind), and also when unregistering
the device (very much the case for vkms). Therefore we can rely on devres
even though vkms isn't a proper platform device driver.

This also somewhat untangles the load code, since the drm and platform device
setup are no longer interleaved, but two distinct steps.

v2: use devres_open/release_group so we can use devm without real
hacks in the driver core or having to create an entire fake bus for
testing drivers. Might want to extract this into helpers eventually,
maybe as a mock_drm_dev_alloc or test_drm_dev_alloc.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/vkms/vkms_drv.c | 54 ++++++++++++++++-----------------
 1 file changed, 26 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/vkms/vkms_drv.c b/drivers/gpu/drm/vkms/vkms_drv.c
index 83dd5567de8b..0d2c6dcf73c3 100644
--- a/drivers/gpu/drm/vkms/vkms_drv.c
+++ b/drivers/gpu/drm/vkms/vkms_drv.c
@@ -61,9 +61,6 @@ static void vkms_release(struct drm_device *dev)
 {
 	struct vkms_device *vkms = container_of(dev, struct vkms_device, drm);
 
-	platform_device_unregister(vkms->platform);
-	drm_atomic_helper_shutdown(&vkms->drm);
-	drm_mode_config_cleanup(&vkms->drm);
 	destroy_workqueue(vkms->output.composer_workq);
 }
 
@@ -144,30 +141,31 @@ static int vkms_modeset_init(struct vkms_device *vkmsdev)
 static int __init vkms_init(void)
 {
 	int ret;
+	struct platform_device *pdev;
 
-	vkms_device = kzalloc(sizeof(*vkms_device), GFP_KERNEL);
-	if (!vkms_device)
-		return -ENOMEM;
+	pdev = platform_device_register_simple(DRIVER_NAME, -1, NULL, 0);
+	if (IS_ERR(pdev))
+		return PTR_ERR(pdev);
 
-	vkms_device->platform =
-		platform_device_register_simple(DRIVER_NAME, -1, NULL, 0);
-	if (IS_ERR(vkms_device->platform)) {
-		ret = PTR_ERR(vkms_device->platform);
-		goto out_free;
+	if (!devres_open_group(&pdev->dev, NULL, GFP_KERNEL)) {
+		ret = -ENOMEM;
+		goto out_unregister;
 	}
 
-	ret = drm_dev_init(&vkms_device->drm, &vkms_driver,
-			   &vkms_device->platform->dev);
-	if (ret)
-		goto out_unregister;
-	drmm_add_final_kfree(&vkms_device->drm, vkms_device);
+	vkms_device = devm_drm_dev_alloc(&pdev->dev, &vkms_driver,
+					 struct vkms_device, drm);
+	if (IS_ERR(vkms_device)) {
+		ret = PTR_ERR(vkms_device);
+		goto out_devres;
+	}
+	vkms_device->platform = pdev;
 
 	ret = dma_coerce_mask_and_coherent(vkms_device->drm.dev,
 					   DMA_BIT_MASK(64));
 
 	if (ret) {
 		DRM_ERROR("Could not initialize DMA support\n");
-		goto out_put;
+		goto out_devres;
 	}
 
 	vkms_device->drm.irq_enabled = true;
@@ -175,39 +173,39 @@ static int __init vkms_init(void)
 	ret = drm_vblank_init(&vkms_device->drm, 1);
 	if (ret) {
 		DRM_ERROR("Failed to vblank\n");
-		goto out_put;
+		goto out_devres;
 	}
 
 	ret = vkms_modeset_init(vkms_device);
 	if (ret)
-		goto out_put;
+		goto out_devres;
 
 	ret = drm_dev_register(&vkms_device->drm, 0);
 	if (ret)
-		goto out_put;
+		goto out_devres;
 
 	return 0;
 
-out_put:
-	drm_dev_put(&vkms_device->drm);
-	platform_device_unregister(vkms_device->platform);
-	return ret;
+out_devres:
+	devres_release_group(&pdev->dev, NULL);
 out_unregister:
-	platform_device_unregister(vkms_device->platform);
-out_free:
-	kfree(vkms_device);
+	platform_device_unregister(pdev);
 	return ret;
 }
 
 static void __exit vkms_exit(void)
 {
+	struct platform_device *pdev = vkms_device->platform;
+
 	if (!vkms_device) {
 		DRM_INFO("vkms_device is NULL.\n");
 		return;
 	}
 
 	drm_dev_unregister(&vkms_device->drm);
-	drm_dev_put(&vkms_device->drm);
+	drm_atomic_helper_shutdown(&vkms_device->drm);
+	devres_release_group(&pdev->dev, NULL);
+	platform_device_unregister(pdev);
 }
 
 module_init(vkms_init);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
