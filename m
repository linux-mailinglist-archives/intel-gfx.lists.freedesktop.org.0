Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A10418F75F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB336E1B8;
	Mon, 23 Mar 2020 14:50:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8AA46E134
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:15 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id h9so17428649wrc.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fwuZx+k2oTvdFoCG8wz3/tjg+SHoKPS36DocaCaM8Rw=;
 b=N1PwzJEeLEFq/Yu/QEOVGhcUu7kKden1884aHg8xiEkSDxVVf8chQ4inbmuw8Qr4oa
 64zjdN6B0x/RhEIYYTjq24Uc3Ut+aqbkyx3I+XITZvplqHO5M/q7ISl8Y1aVh0uS0nt6
 cZaNpwmYZMkyUZfkLs86eCirBWhWVWet2wsds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fwuZx+k2oTvdFoCG8wz3/tjg+SHoKPS36DocaCaM8Rw=;
 b=liGNhKcapvtY/CZeNLi7yJVsouHmhikZVCB0U6gVJPlgtaeqJcyGf03Sqi8PIGR0+O
 7lm1mEdEJ5ZzmrMh8y6sfRUM9x1KaZaeyzCHD1BCcKtDlSC2xtB5cQikuZVIbowglmB/
 c8X9NMBOaqdLvHSev/SGbuCqfV6FdscmwfdXYhc4p0FYSCegB8uh2ridc+qqbZkeX4xz
 6i/Ukq3RZ3gWFjqNSazq7AGb028IZBFWVBVbOV4Heu79SdsCgsai1+/KjJpvDgfS25pf
 FdHPeBau7XI6+isMYlbP+SVdStICXQtRz/qUVbf59ZRWf2jjWprpljd8ZRVU1r3eGYvu
 BWdQ==
X-Gm-Message-State: ANhLgQ1mHUj9rjlZcknloCVrk4cdpooYoR3mIADG8Cn7HQaMlFA12N0r
 3ZLctXI2795MaaBGwFqYe/XIviZu+f+4OQ==
X-Google-Smtp-Source: ADFU+vuJj3JdqmAxSXXOLU+84A1P0+9/NmZZ7HNiM/EwY39Dg0LCRnxO8MMXTUEGrkCp+uozxpgRHg==
X-Received: by 2002:adf:fd87:: with SMTP id d7mr30240028wrr.393.1584975014576; 
 Mon, 23 Mar 2020 07:50:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:13 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:12 +0100
Message-Id: <20200323144950.3018436-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
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
 Eric Anholt <eric@anholt.net>, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

v2: After drm_dev_init/drmm_add_final_kfree we need to clean up
everything through a drm_dev_put. Rework the unwind code to match
that.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
