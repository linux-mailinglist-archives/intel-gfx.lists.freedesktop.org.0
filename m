Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DFB1726C7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:17:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 494C16ED16;
	Thu, 27 Feb 2020 18:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A20E46ECD8
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:48 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id m16so4589360wrx.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jfKWZZU6Yo+Zwjdd+Cefvuzj8Pr73ZnaVy/LVnilzqI=;
 b=TW+6pgwFJPhB/96xzQrjwVPPbEQ1hU0ieoJy4LSJDo4068QZxnXbyc8ecCbQKYCZz8
 SHo3zQRLlT9Ic2vl7L9hHr3YeCwS8PC7jGZwGG7DQKuWSjrbQplm/LhNtYxHag4Wqbrn
 b4rAAoHRB+KXV22oZp+dfAEWEFaPtFeQG02ms=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jfKWZZU6Yo+Zwjdd+Cefvuzj8Pr73ZnaVy/LVnilzqI=;
 b=aBdhxhAdgix5AW4QQxLOVbenikwEyjktxtWf+XnxbPBmdmq5iemJ/0RmWRiz82BpZc
 4rT21kJTBhPpUuipsAwsiAVupxhwNYATrx8s9uw9qwfbD3UQFnB5GKBxlLruUoKn8ptk
 1oPvLYWgLvdEKqwvOvjuzmicigTORlw7Gdhg7R8ICaBNPA9XEnEa4gTbcB/g0nYfArl1
 y8NNYl2uGpgdLSOxghhmkiqajUnrI60F25Ru4LTmzX40GPtffeCaE50n5XrMEOUzsodJ
 haFJ82HIBxTD63cSXObHgCjqL23VV5xPcDCALUm9l7+2XqYxern4+yD6xBXNvqXy7EzI
 6ZQw==
X-Gm-Message-State: APjAAAXxguXZvPMfqedEkYrfc19AWnc6kGl4Wdg4VDpuO8zeI3OiJxkR
 Vz96qI5fCbSKJn9nJQw7F/ydUA==
X-Google-Smtp-Source: APXvYqzwHDzRxXGKadBwzpRmmXtuhRWb1B60xX9Re8EbUDRlZknbb7OMizMPvz09Iw8BMjq69tDBVg==
X-Received: by 2002:adf:f692:: with SMTP id v18mr140958wrp.246.1582827347362; 
 Thu, 27 Feb 2020 10:15:47 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:46 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:45 +0100
Message-Id: <20200227181522.2711142-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
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
 m.felsch@pengutronix.de, Daniel Vetter <daniel.vetter@intel.com>,
 l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

v2: After drm_dev_init/drmm_add_final_kfree we need to clean up
everything through a drm_dev_put. Rework the unwind code to match
that.

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
