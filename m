Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2953172677
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:16:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D3A6ECED;
	Thu, 27 Feb 2020 18:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB08F6ECEC
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:54 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id z12so411985wmi.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ONYCQId/Lp3FCDlAAvJmwBxOy0NZM9plHkZx81NotgQ=;
 b=QQuJuyWSgHkLv4FXjDS0mbiEXuXoNgICif77ao4J7Ps7Qhe0TobDRZOhb1n0+wOzhI
 QSeTjRVjBMSLhjI1cbijoPxcKpNp4Dwti/slljC5jleCuCv9RmShNg1gsao4JdSyttV3
 lsQdSOvOo0IGrRctC2Bdi9Gk5bq/bmwLuqavo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ONYCQId/Lp3FCDlAAvJmwBxOy0NZM9plHkZx81NotgQ=;
 b=HyC8Ve7p+8CgzZjMbYs2No35t4LiGVGKBliwGAOs1Wl+6A3eHRt5kEvHgpdn36ykA0
 5uaqU5ei3QVQJuIb1lIAYQNToH74nIlQExn9yoGARoQPWmUYIcduSS4RJe6ey3IttB0Q
 aSMIek4lVzUMDmm7pPfOjTDy5GMn1dTCuORQbi4+XSB1mmMXsGWig1wu4YAzNgQ/CTb9
 vMXOd/uTqDXFM2pt/kE3PpxBAdIyo+y6im8UyoxaDbLD64oSuBDCm6rxzn02PbD2IbJs
 fGLcFM2yzPijhvfPFHZ4NI9adw5FGNdTcJDvuw9iEwzZRFGAB6djkPDiDq014GE5rgTe
 VzQg==
X-Gm-Message-State: APjAAAXcgJFxECXs4mm0+iW2qRpH2R70ZXtpGo/368mDBBfEYbZCvfzt
 nzlr0JHre1zty7XeMPOLnQPH1g==
X-Google-Smtp-Source: APXvYqxQXjpADoadgdOIPpA/uMlyDWPtNkMbPVCnhLzgHrxlPZj8hyi+1mNvX62i11IFav27AEhjzQ==
X-Received: by 2002:a1c:9c96:: with SMTP id f144mr48330wme.98.1582827353634;
 Thu, 27 Feb 2020 10:15:53 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:53 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:50 +0100
Message-Id: <20200227181522.2711142-20-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/51] drm: Cleanups after drmm_add_final_kfree
 rollout
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 m.felsch@pengutronix.de, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A few things:
- Update the example driver in the documentation.
- We can drop the old kfree in drm_dev_release.
- Add a WARN_ON check in drm_dev_register to make sure everyone calls
  drmm_add_final_kfree and there's no leaks.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/drm_drv.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/drm_drv.c b/drivers/gpu/drm/drm_drv.c
index 9e62e28bbc62..1ee606b4a4f9 100644
--- a/drivers/gpu/drm/drm_drv.c
+++ b/drivers/gpu/drm/drm_drv.c
@@ -297,8 +297,6 @@ void drm_minor_release(struct drm_minor *minor)
  *
  *		drm_mode_config_cleanup(drm);
  *		drm_dev_fini(drm);
- *		kfree(priv->userspace_facing);
- *		kfree(priv);
  *	}
  *
  *	static struct drm_driver driver_drm_driver = {
@@ -326,10 +324,11 @@ void drm_minor_release(struct drm_minor *minor)
  *			kfree(drm);
  *			return ret;
  *		}
+ *		drmm_add_final_kfree(drm, priv);
  *
  *		drm_mode_config_init(drm);
  *
- *		priv->userspace_facing = kzalloc(..., GFP_KERNEL);
+ *		priv->userspace_facing = drmm_kzalloc(..., GFP_KERNEL);
  *		if (!priv->userspace_facing)
  *			return -ENOMEM;
  *
@@ -834,10 +833,6 @@ static void drm_dev_release(struct kref *ref)
 		dev->driver->release(dev);
 	} else {
 		drm_dev_fini(dev);
-		if (!dev->managed.final_kfree) {
-			WARN_ON(!list_empty(&dev->managed.resources));
-			kfree(dev);
-		}
 	}
 
 	drm_managed_release(dev);
@@ -960,6 +955,8 @@ int drm_dev_register(struct drm_device *dev, unsigned long flags)
 	struct drm_driver *driver = dev->driver;
 	int ret;
 
+	WARN_ON(!dev->managed.final_kfree);
+
 	if (drm_dev_needs_global_mutex(dev))
 		mutex_lock(&drm_global_mutex);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
