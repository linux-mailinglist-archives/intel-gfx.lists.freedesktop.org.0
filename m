Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09AB418F746
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ED906E170;
	Mon, 23 Mar 2020 14:50:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D4DF6E134
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:17 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id c81so4536779wmd.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H/yC9zcGVJQRMNkebHNAs39uCTPN4vaETvcX0k/sDfs=;
 b=WiGWKEbg7IxYAWAFHZy0x1BireoEP5hm+PhXXjlshO4EnSmews2rRM9FaSSrihvYce
 cJilZuG60Ve/WYAd0mKEwUXDWxXsIe4zvR9MkFM6qvwsCt6Qg7ZjQ2bFMB+MvUeV48Y6
 YlYPc7lD9tvsbRr+b2p4G9UgO6LUPMSYNDv7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H/yC9zcGVJQRMNkebHNAs39uCTPN4vaETvcX0k/sDfs=;
 b=lb5v5zXttyMAGyAcBK4SZSlYIZyV+JBngnFreHAQU1tmC70eR9Az4gaP+5gTmvxKTq
 amqSHJL0y6TdistRoXlMM9GZevA+jN1hPicOCOE06b3j6vOpR2AYGHQXxXRIIa9p2GA6
 F7UyZlC1Ejldrz7kvWdHnag222jp+yx2Zykd2hI1xFuSGVfKZUPRPfqsl+Bf18cHYR6w
 mmAitF/2Ym7zboFL4/GrqJQ0Mrh9BIBtay1dYL3k+yS597sf+qlVJNUMNAfwIVmL8LJ4
 0u/3xW/VUE5DZcGGY7LwLbjrKsm2Stmg1TXN8wCPYwcmND9EA1qyoFu0q6cHDfoyt9M4
 7a0w==
X-Gm-Message-State: ANhLgQ1Cq3csGR33E435iIhvP3kGllQYn+48LLwb3NAnr3EMWmzO5pzb
 tR1d4WZEYY9IxhYTwxlFWANeiw==
X-Google-Smtp-Source: ADFU+vvhZ83HwyPLL2HkEvEPHeQC7IvbaQqI2yxBOTjHzuvPYM28jniGbG/4RqjmoaXFmk9e1Z7rLA==
X-Received: by 2002:a1c:7418:: with SMTP id p24mr12006696wmc.138.1584975015729; 
 Mon, 23 Mar 2020 07:50:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:15 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:13 +0100
Message-Id: <20200323144950.3018436-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/51] drm/vkms: Use drmm_add_final_kfree
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

With this we can drop the final kfree from the release function.

v2: After drm_dev_init/drmm_add_final_kfree we need to clean up
everything through a drm_dev_put. Rework the unwind code to match
that.

Reviewed-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Tested-by: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
---
 drivers/gpu/drm/vkms/vkms_drv.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/vkms/vkms_drv.c b/drivers/gpu/drm/vkms/vkms_drv.c
index 860de052e820..2f35fe789343 100644
--- a/drivers/gpu/drm/vkms/vkms_drv.c
+++ b/drivers/gpu/drm/vkms/vkms_drv.c
@@ -21,6 +21,7 @@
 #include <drm/drm_file.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_ioctl.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
 
@@ -158,13 +159,14 @@ static int __init vkms_init(void)
 			   &vkms_device->platform->dev);
 	if (ret)
 		goto out_unregister;
+	drmm_add_final_kfree(&vkms_device->drm, vkms_device);
 
 	ret = dma_coerce_mask_and_coherent(vkms_device->drm.dev,
 					   DMA_BIT_MASK(64));
 
 	if (ret) {
 		DRM_ERROR("Could not initialize DMA support\n");
-		goto out_fini;
+		goto out_put;
 	}
 
 	vkms_device->drm.irq_enabled = true;
@@ -172,25 +174,25 @@ static int __init vkms_init(void)
 	ret = drm_vblank_init(&vkms_device->drm, 1);
 	if (ret) {
 		DRM_ERROR("Failed to vblank\n");
-		goto out_fini;
+		goto out_put;
 	}
 
 	ret = vkms_modeset_init(vkms_device);
 	if (ret)
-		goto out_fini;
+		goto out_put;
 
 	ret = drm_dev_register(&vkms_device->drm, 0);
 	if (ret)
-		goto out_fini;
+		goto out_put;
 
 	return 0;
 
-out_fini:
-	drm_dev_fini(&vkms_device->drm);
+out_put:
+	drm_dev_put(&vkms_device->drm);
+	return ret;
 
 out_unregister:
 	platform_device_unregister(vkms_device->platform);
-
 out_free:
 	kfree(vkms_device);
 	return ret;
@@ -205,8 +207,6 @@ static void __exit vkms_exit(void)
 
 	drm_dev_unregister(&vkms_device->drm);
 	drm_dev_put(&vkms_device->drm);
-
-	kfree(vkms_device);
 }
 
 module_init(vkms_init);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
