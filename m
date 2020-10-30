Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 228F02A0287
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 11:11:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01616ED9C;
	Fri, 30 Oct 2020 10:11:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2359F6ED9B
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 10:11:12 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id c16so2406703wmd.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 03:11:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VDn+J8ngV47strrQhclt1Bp8IV8eJ4QSc1r+a3zx4GU=;
 b=cyuvye3fZ5WgsQZpTjtBis3v6jomeoLZ9j2JMnM87VCsi48ogh4TSXyIJecVGrMHA/
 p/JMBEO8id/6+NCsy7vvqHdl+QhsenoWkMmgkbBGxWGaaq0/ExeQCeR583Mmem96mtUY
 PS2zf/A+cUEuH5LnEXmdSGISnkUUJk9bl0cyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VDn+J8ngV47strrQhclt1Bp8IV8eJ4QSc1r+a3zx4GU=;
 b=myhJ5NtwJHSW5/ZazqADTcPq/f7jJG1HIuPAfPQQBGNQm+WqZjgkAYiIpTpTWQK0MR
 qGIZv6g3gy5JgkxNsbma/uReJ6dfb7v9mHR9AQZpOKGPSUiO27gXbkYzjMGr3UeNK6Jx
 stTtaOq23OrscHcWQxANvHOWmozshG6roJ/vZd6IwYz/Yq4FWin2/421t2YyeRm061qG
 8r7l4LAxcJ0OgRYst2JhS4wm8Yc56RkGC+9Gw+6gQVTuXBWTuBHshvRvitggmLx0ItQm
 pC2lq20GPk2OMm8bVfS7sw7NVGaSlu94SHo+6bh3l93vUu/rDDwgyxs7rxZ5yHbm0AGp
 P1uQ==
X-Gm-Message-State: AOAM531bOK74MK+ylx0Ui118mTVcycCGUIloZTgFH/NXzVueyfD6G+UK
 6o9GDYwccSJQWIWFEaWoNOyw3w==
X-Google-Smtp-Source: ABdhPJz+l6JBUPW6MTliHPs9PuNY1eaSt2tcrMkFeqDuQ/Pj0DQzoNDkZFSZr7sUdq609E1L4A+Dgg==
X-Received: by 2002:a7b:c384:: with SMTP id s4mr1755255wmj.77.1604052670821;
 Fri, 30 Oct 2020 03:11:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q10sm9735769wrp.83.2020.10.30.03.11.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Oct 2020 03:11:10 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 30 Oct 2020 11:11:01 +0100
Message-Id: <20201030101104.2503-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201030101104.2503-1-daniel.vetter@ffwll.ch>
References: <20201030101104.2503-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm: Compile out legacy chunks from struct
 drm_device
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This means some very few #ifdef in code, but it allows us to
enlist the compiler to make sure this stuff isn't used anymore.

More important, only legacy drivers change drm_device (for the
legacy_dev_list shadow attach management), therefore this is
prep to allow modern drivers to have a const driver struct. Which
is nice, because there's a ton of function pointers in there.

Acked-by: Maxime Ripard <mripard@kernel.org>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
Review-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/drm_file.c   |  2 ++
 drivers/gpu/drm/drm_vblank.c | 15 ++++++++++++---
 include/drm/drm_drv.h        |  2 ++
 3 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
index 0ac4566ae3f4..b50380fa80ce 100644
--- a/drivers/gpu/drm/drm_file.c
+++ b/drivers/gpu/drm/drm_file.c
@@ -258,9 +258,11 @@ void drm_file_free(struct drm_file *file)
 		  (long)old_encode_dev(file->minor->kdev->devt),
 		  atomic_read(&dev->open_count));
 
+#ifdef CONFIG_DRM_LEGACY
 	if (drm_core_check_feature(dev, DRIVER_LEGACY) &&
 	    dev->driver->preclose)
 		dev->driver->preclose(dev, file);
+#endif
 
 	if (drm_core_check_feature(dev, DRIVER_LEGACY))
 		drm_legacy_lock_release(dev, file->filp);
diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index ba7e741764aa..15e5ea436434 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -210,9 +210,12 @@ static u32 __get_vblank_counter(struct drm_device *dev, unsigned int pipe)
 
 		if (crtc->funcs->get_vblank_counter)
 			return crtc->funcs->get_vblank_counter(crtc);
-	} else if (dev->driver->get_vblank_counter) {
+	}
+#ifdef CONFIG_DRM_LEGACY
+	else if (dev->driver->get_vblank_counter) {
 		return dev->driver->get_vblank_counter(dev, pipe);
 	}
+#endif
 
 	return drm_vblank_no_hw_counter(dev, pipe);
 }
@@ -430,9 +433,12 @@ static void __disable_vblank(struct drm_device *dev, unsigned int pipe)
 
 		if (crtc->funcs->disable_vblank)
 			crtc->funcs->disable_vblank(crtc);
-	} else {
+	}
+#ifdef CONFIG_DRM_LEGACY
+	else {
 		dev->driver->disable_vblank(dev, pipe);
 	}
+#endif
 }
 
 /*
@@ -1097,9 +1103,12 @@ static int __enable_vblank(struct drm_device *dev, unsigned int pipe)
 
 		if (crtc->funcs->enable_vblank)
 			return crtc->funcs->enable_vblank(crtc);
-	} else if (dev->driver->enable_vblank) {
+	}
+#ifdef CONFIG_DRM_LEGACY
+	else if (dev->driver->enable_vblank) {
 		return dev->driver->enable_vblank(dev, pipe);
 	}
+#endif
 
 	return -EINVAL;
 }
diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
index c6d17550efc9..7af220226a25 100644
--- a/include/drm/drm_drv.h
+++ b/include/drm/drm_drv.h
@@ -498,6 +498,7 @@ struct drm_driver {
 	 */
 	const struct file_operations *fops;
 
+#ifdef CONFIG_DRM_LEGACY
 	/* Everything below here is for legacy driver, never use! */
 	/* private: */
 
@@ -512,6 +513,7 @@ struct drm_driver {
 	int (*enable_vblank)(struct drm_device *dev, unsigned int pipe);
 	void (*disable_vblank)(struct drm_device *dev, unsigned int pipe);
 	int dev_priv_size;
+#endif
 };
 
 void *__devm_drm_dev_alloc(struct device *parent, struct drm_driver *driver,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
