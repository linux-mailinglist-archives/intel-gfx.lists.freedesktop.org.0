Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 371F319D81D
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:58:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C487E6EB9F;
	Fri,  3 Apr 2020 13:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C4816EB9B
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:41 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id h15so8632857wrx.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EV+hXhZHFgKPuY24ZWbtZLwxUzZizQqcQSJB76RnXak=;
 b=iAZ18c3j05RC5E+2IipB2laspfLcQVbagE/MoNbAwfpZdFMUweG/WQIID09HzGx0Yp
 eLnh1bpgBAhY+uQ7cJxtPpDiUa0HnCi60kOt3WSXgNz73os3lCiNu6x2Ho9pX0dVtxZ3
 xUpL3+Z6wdnqxHvxC6HzFSNs/aeFvw3wtc6uI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EV+hXhZHFgKPuY24ZWbtZLwxUzZizQqcQSJB76RnXak=;
 b=lZJWJDrj/DSygaHgl4jNPuc+fyoAEyKu7ln2rOE0Su99TMoP9dmAYurBIUpyQjRaH6
 cCOA5/gsgW2qwT1FZgoPlgJHzwJDVE9+WIpuuKdXOLNJ1yrFE32O6PAEMvPY8XWzQYlM
 4ZzqW6zF4sCUeXEF9nDSo44ljOW3cBMaO0XAnrw2t2SvzT4RNNPUb+NqSjL1iP59X7X1
 ISyjxCAnsmmJl+IrcZEaan8hL6EcdN9CGxIVn/jQvnuXSTGlz2xwqNIO3C5JAH4YE1YL
 +kvVbXYZ/DDQrhja8KT4H/5kDF8GcooGhXMvaljJcuP1EmO7KbQdwTLNJRCfGWGa+OjQ
 SDwQ==
X-Gm-Message-State: AGi0PuahhSp8rVsfSAbKzEfRWPpvmWH8T205Vq6zJEY1XeoRYwp4P5E0
 P8Uyqx1nrQeFrilD0RDGv5RCSA==
X-Google-Smtp-Source: APiQypJtkIisnKACDsuWnmsbGpqOlxCX9cJglo48eNS+yo0wkaLklrd0uYBth7/5mV1lLkH6yRYgmA==
X-Received: by 2002:adf:f48d:: with SMTP id l13mr9438626wro.96.1585922319946; 
 Fri, 03 Apr 2020 06:58:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:57:48 +0200
Message-Id: <20200403135828.2542770-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/44] drm/vgem: Use devm_drm_dev_alloc
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

Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Emil Velikov <emil.velikov@collabora.com>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/vgem/vgem_drv.c | 51 ++++++++++-----------------------
 1 file changed, 15 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_drv.c
index ec1a8ebb6f1b..2ce3b547312a 100644
--- a/drivers/gpu/drm/vgem/vgem_drv.c
+++ b/drivers/gpu/drm/vgem/vgem_drv.c
@@ -427,16 +427,8 @@ static int vgem_prime_mmap(struct drm_gem_object *obj,
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
@@ -469,48 +461,35 @@ static struct drm_driver vgem_driver = {
 static int __init vgem_init(void)
 {
 	int ret;
+	struct platform_device *pdev;
 
-	vgem_device = kzalloc(sizeof(*vgem_device), GFP_KERNEL);
-	if (!vgem_device)
-		return -ENOMEM;
-
-	vgem_device->platform =
-		platform_device_register_simple("vgem", -1, NULL, 0);
-	if (IS_ERR(vgem_device->platform)) {
-		ret = PTR_ERR(vgem_device->platform);
-		goto out_free;
-	}
+	pdev = platform_device_register_simple("vgem", -1, NULL, 0);
+	if (IS_ERR(pdev))
+		return PTR_ERR(vgem_device->platform);
 
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
+		platform_device_unregister(pdev);
+		return PTR_ERR(vgem_device);
+	}
+	vgem_device->platform = pdev;
 
 	/* Final step: expose the device/driver to userspace */
 	ret = drm_dev_register(&vgem_device->drm, 0);
 	if (ret)
-		goto out_put;
+		return ret;
 
 	return 0;
-
-out_put:
-	drm_dev_put(&vgem_device->drm);
-	return ret;
-
-out_unregister:
-	platform_device_unregister(vgem_device->platform);
-out_free:
-	kfree(vgem_device);
-	return ret;
 }
 
 static void __exit vgem_exit(void)
 {
 	drm_dev_unregister(&vgem_device->drm);
-	drm_dev_put(&vgem_device->drm);
+	platform_device_unregister(vgem_device->platform);
 }
 
 module_init(vgem_init);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
