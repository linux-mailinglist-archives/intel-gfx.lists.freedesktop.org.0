Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A18BF19D81E
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 15:58:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C910F6EBA2;
	Fri,  3 Apr 2020 13:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DE976EB9F
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:58:42 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id d202so7847732wmd.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+mGUGjh0CC/t1SDZZ+GcG+/m/QQrU/8AC3hihxvKjN8=;
 b=MYPbGqDziGGVYpN2BAyCrBd/Db34zb8iOF6oohmrVHjPhgAoeDZZasOS1zFA4rtm4H
 YcuSB8EZ6rh3J5Kb92c8x8VCTx+FQWWDP0X2AwzgartAWbl+63wOOcBgfXuVPfp8IP9B
 kLBOeCrZlfaXO9PzEsS/l1kFt2wZ598fzr6FI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+mGUGjh0CC/t1SDZZ+GcG+/m/QQrU/8AC3hihxvKjN8=;
 b=c/+wsX95PL54EWxlKEaRwVZxcW7JiiQCQIkNNuXt5urbGkn8+TuiLLiHPZALS+/JAJ
 GQU2Q9abNQugBOr6yS2v71DAymJ35Rj+U/FMXmkXUz5d2k72lfJpva4JOItMqnllzIbP
 OPpZoAx3OflbWG9Br+mY+ruqnB95w/yKWwFBXHJoVsT9l0YQQkh/LjoVP3yw72o2g8NC
 kHvhc4YWmmAajGmXh11sqvUFasYWutx9wxYli9kmGeDHm2yxfWFWbc2U0ouNBG6Kxnpq
 qTodw9V7xTExnAbFS3u+cR2YLpPgBddQyvjmiJx/TaureyPNH6j2u8T/j1ESLDyUoQFY
 Bdmw==
X-Gm-Message-State: AGi0PubtMwa0lqiZHyz+T2lN8L83OnXFcNrS5eyEsjcxTLzQx3jCFVl+
 VMHel/87U/sFsakIWyUfDzACzg==
X-Google-Smtp-Source: APiQypJR4spXw2fqh++sMcnd2tLbyzL7JRTPPWoJCJMNjbShLnhvSc/4dSesdr4KcmeNlrI82oHcnQ==
X-Received: by 2002:a1c:e203:: with SMTP id z3mr9099593wmg.71.1585922320980;
 Fri, 03 Apr 2020 06:58:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.58.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:58:40 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:57:49 +0200
Message-Id: <20200403135828.2542770-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/44] drm/vkms: Use devm_drm_dev_alloc
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

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/vkms/vkms_drv.c | 48 +++++++++++----------------------
 1 file changed, 16 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/vkms/vkms_drv.c b/drivers/gpu/drm/vkms/vkms_drv.c
index eef85f1a0ce5..fec2a4b91c4d 100644
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
 
@@ -142,30 +139,26 @@ static int vkms_modeset_init(struct vkms_device *vkmsdev)
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
+	vkms_device = devm_drm_dev_alloc(&pdev->dev, &vkms_driver,
+					 struct vkms_device, drm);
+	if (IS_ERR(vkms_device)) {
+		platform_device_unregister(pdev);
+		return PTR_ERR(vkms_device);
 	}
-
-	ret = drm_dev_init(&vkms_device->drm, &vkms_driver,
-			   &vkms_device->platform->dev);
-	if (ret)
-		goto out_unregister;
-	drmm_add_final_kfree(&vkms_device->drm, vkms_device);
+	vkms_device->platform = pdev;
 
 	ret = dma_coerce_mask_and_coherent(vkms_device->drm.dev,
 					   DMA_BIT_MASK(64));
 
 	if (ret) {
 		DRM_ERROR("Could not initialize DMA support\n");
-		goto out_put;
+		return ret;
 	}
 
 	vkms_device->drm.irq_enabled = true;
@@ -173,28 +166,18 @@ static int __init vkms_init(void)
 	ret = drm_vblank_init(&vkms_device->drm, 1);
 	if (ret) {
 		DRM_ERROR("Failed to vblank\n");
-		goto out_put;
+		return ret;
 	}
 
 	ret = vkms_modeset_init(vkms_device);
 	if (ret)
-		goto out_put;
+		return ret;
 
 	ret = drm_dev_register(&vkms_device->drm, 0);
 	if (ret)
-		goto out_put;
+		return ret;
 
 	return 0;
-
-out_put:
-	drm_dev_put(&vkms_device->drm);
-	return ret;
-
-out_unregister:
-	platform_device_unregister(vkms_device->platform);
-out_free:
-	kfree(vkms_device);
-	return ret;
 }
 
 static void __exit vkms_exit(void)
@@ -205,7 +188,8 @@ static void __exit vkms_exit(void)
 	}
 
 	drm_dev_unregister(&vkms_device->drm);
-	drm_dev_put(&vkms_device->drm);
+	drm_atomic_helper_shutdown(&vkms_device->drm);
+	platform_device_unregister(vkms_device->platform);
 }
 
 module_init(vkms_init);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
