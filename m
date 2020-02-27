Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAADB17265B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:16:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54D346EC8E;
	Thu, 27 Feb 2020 18:15:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65B046ECD8
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:47 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id v4so4613199wrs.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Awh1scCBZDnbimNWmMKzFzKs8NB+SPqvHt1ZzjCLXAI=;
 b=Tn4FIjaBP2AAVbSdMgfePpRAV81byeQnfDYDFdWpXHQbJcJIzhlbfit9ApCOo1ymu7
 H0tO/5SEEDeJvRfN38PfwD5SM4/ZzgS+LVufuL+0+FaCYgfjwqvRCPQ/EEvp2QDGESjZ
 O0JwaQ4BoDrDdAZXDleXQGbsc1IF2xEsyS2F0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Awh1scCBZDnbimNWmMKzFzKs8NB+SPqvHt1ZzjCLXAI=;
 b=ujQ5450wsAXcczfU2VqADs3KEAKjra1W4c1PvQ6ln3oCRmTMF+d6yVSf+ywNqtYx+H
 kg4NGn6Y01pq4LWDc2QWo5OAiV2jrNgcE3rfX0n0sS32QoCEm/loWjhwrlxEeNTqPsoX
 plElZJI5Ela2FzSnhjt3JzUrqfW0yDJomH6xRHt/N818SSppQMGbY+mjgsgIKdiHvGgZ
 ICXm+WCXl0nzrouIcoUDX/66HFWK5uwsEcwXxsp9crGWpPS96dCvyal3gq2CEiClFl3C
 2O+BRrfB8JKk29AvDyE6p+Bfcv7CScamT0aafCrMYPvTHgNc6SAredLDBUOi7r8IfjQK
 tM9w==
X-Gm-Message-State: APjAAAV2tsxkAz7H+XlMNIDtRsX+/GEmkkJTEomM7K4Ksol25uKDS3M6
 ZONM3bEQpqGjzvSJhL/+dlA1mg==
X-Google-Smtp-Source: APXvYqyKhXAL8FjYkoHYaQZ0+vfwS6aPF6b3aLtnChEDP066FT7h4a1V+E52R4T/e8swxt8+hZkB3w==
X-Received: by 2002:adf:a48f:: with SMTP id g15mr159531wrb.42.1582827346093;
 Thu, 27 Feb 2020 10:15:46 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:45 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:44 +0100
Message-Id: <20200227181522.2711142-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/51] drm/vgem: Use drmm_add_final_kfree
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
 m.felsch@pengutronix.de, Eric Anholt <eric@anholt.net>,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel.vetter@intel.com>,
 l.stach@pengutronix.de, Sam Ravnborg <sam@ravnborg.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

v2: After drm_dev_init/drmm_add_final_kfree we need to clean up
everything through a drm_dev_put. Rework the unwind code to match
that.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Emil Velikov <emil.velikov@collabora.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Sean Paul <seanpaul@chromium.org>
Cc: Eric Anholt <eric@anholt.net>
Cc: Rob Clark <robdclark@chromium.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/gpu/drm/vgem/vgem_drv.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/vgem/vgem_drv.c b/drivers/gpu/drm/vgem/vgem_drv.c
index 909eba43664a..7486014e9149 100644
--- a/drivers/gpu/drm/vgem/vgem_drv.c
+++ b/drivers/gpu/drm/vgem/vgem_drv.c
@@ -39,6 +39,7 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
 #include <drm/drm_ioctl.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_prime.h>
 
 #include "vgem_drv.h"
@@ -432,8 +433,6 @@ static void vgem_release(struct drm_device *dev)
 
 	platform_device_unregister(vgem->platform);
 	drm_dev_fini(&vgem->drm);
-
-	kfree(vgem);
 }
 
 static struct drm_driver vgem_driver = {
@@ -489,16 +488,19 @@ static int __init vgem_init(void)
 			   &vgem_device->platform->dev);
 	if (ret)
 		goto out_unregister;
+	drmm_add_final_kfree(&vgem_device->drm, vgem_device);
 
 	/* Final step: expose the device/driver to userspace */
-	ret  = drm_dev_register(&vgem_device->drm, 0);
+	ret = drm_dev_register(&vgem_device->drm, 0);
 	if (ret)
-		goto out_fini;
+		goto out_put;
 
 	return 0;
 
-out_fini:
-	drm_dev_fini(&vgem_device->drm);
+out_put:
+	drm_dev_put(&vgem_device->drm);
+	return ret;
+
 out_unregister:
 	platform_device_unregister(vgem_device->platform);
 out_free:
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
