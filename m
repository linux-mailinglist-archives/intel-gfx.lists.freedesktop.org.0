Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7D9176709
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:27:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 367196E888;
	Mon,  2 Mar 2020 22:27:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3473F6E881
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:27:00 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id j16so1887815wrt.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z1tke0sOVfWGvlyF2r6H8sdbLDlQmNd9dtRcut3/wJo=;
 b=N5KcJTdujr27N2z9zMVtOlM2EnMxMjzCjBcKz5BNSDs6myY5ydTFbKBUBfeFqQqLEC
 PzX6RJ8/BPWytCu0hvD1m1tV8P66x1PxMyrPhVmtmejcLzTkAtQjaUwweb/f48csbrF4
 aKxOdzUBmZJ9a0McThG6d+4p33o72g5ya2+hs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z1tke0sOVfWGvlyF2r6H8sdbLDlQmNd9dtRcut3/wJo=;
 b=K+sPlzEPmQrmhoRI0RvFwzoxp6jVZU1IDamv4gbcjYWi7BD8yWlJ77bPkjtGeXmj8x
 VizLgXAdKV5oCPcBb1vJzA6+GW/JfLxxMol3qJjBjbWwqqLIbf0L7RXOSOc6mxQGoa7B
 nfbrP9VQO/xhEo0sTyqiuDRMW86Jc6Q2fPj9rIIlALbOIgoJQe047A5UeRQFsPpw5K+T
 nFaoqox+mWrAxmCnNPbOn3547HQc3RxQOfpDjIqnsU9r4sdxKXr02H+DZEpHOBuCVyF0
 fnQ2yRed6PPouXcFWrCIdMoe3lrfmzHK33g0CVM3oiqm9RaE+xv1rkvpWYjxI2mpsKMt
 Xz5g==
X-Gm-Message-State: ANhLgQ3/5sUpVFvFeRcg/F+V93+nQfS94A7+/vl5DUgn6GQYn1msxdg+
 GyZwovi0yyPXx0Ucxfg4MzUH/Q==
X-Google-Smtp-Source: ADFU+vvxyiWlS93JJw4kRBkDfKVHrPltg/T/PATotJ5F7qNffgCFv5jGfWfn2cUKEwcIMHujeK8ZNA==
X-Received: by 2002:a5d:6051:: with SMTP id j17mr1571664wrt.151.1583188018939; 
 Mon, 02 Mar 2020 14:26:58 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:26:57 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:25:54 +0100
Message-Id: <20200302222631.3861340-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
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
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
