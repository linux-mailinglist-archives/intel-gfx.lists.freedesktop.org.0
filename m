Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF04172699
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:16:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCB0E6ED00;
	Thu, 27 Feb 2020 18:16:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B94BF89831
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:16:11 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id c13so4606253wrq.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:16:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iLLeF/pcS2m0P07OactkBBXJHNqJyrXQylwma878fiQ=;
 b=jrMQlT5nCzevh0Oar85lE9zEMDDTdudYHCN7wiRww82VFDBqduJeBMlT8cTKW6UrTH
 CyqlCEDqpHhcCdTlmCj+yJVYCxOHIxwal/EWCvZ0LIgoWlqDPl6vm7jX6V849rIG3xAj
 CMzgLZplbMdPIuWYwNWywIhK7H55BnzJ45+qI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iLLeF/pcS2m0P07OactkBBXJHNqJyrXQylwma878fiQ=;
 b=V6fJ7zAVJOooHG76FT20lS2S6byBXudLJH/BmUE40W7p0a8M3BpOY/2NAbNvTZHWgs
 f8HKbhZVtM2N/Z95q6B9c8dHFiCz7Ff+Q5LSaOhPnGb8pyFE3pi+E35PUJaQ5bMT1Z/s
 keKCHBho/6kvrQbAa8TD3rTs90PZRnuJjTnAZ5HyvJ4S9iktjTJJXzqOkcpsrIUL8eul
 7gtnHNdbHPiN5VCqAr0m9XML5N3ExTzRdPUlkcnDihXuQIzTeQv3TvTVfmAP2r34IKro
 mSAdaHFVMbIzZScxz0M4nRFM6okAjRa3eqfruWT5aK+kQM5Vssff4R1oJs4l/wZwY7jU
 Ag7g==
X-Gm-Message-State: APjAAAXj+tq1s6siq1S40msGOc8Nu5nQQ4b51OH+fa+7g3MHWAqc3B80
 q+9eN71ZPLbqKotKUZczNj++hA==
X-Google-Smtp-Source: APXvYqwBmQ7k3xHoTHPL1qUAP4X2CmgqIYvOhIJ6U1lvVDHe0ipoAiGI3srax0+KKYEsE9Ybo5Mklw==
X-Received: by 2002:adf:ed42:: with SMTP id u2mr96083wro.345.1582827370322;
 Thu, 27 Feb 2020 10:16:10 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.16.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:16:09 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:15:03 +0100
Message-Id: <20200227181522.2711142-33-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 32/51] drm/mcde: Drop explicit
 drm_mode_config_cleanup call
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 m.felsch@pengutronix.de, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Linus Walleij <linus.walleij@linaro.org>, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allows us to drop the drm_driver.release callback.

This is made possible by a preceeding patch which added a drmm_
cleanup action to drm_mode_config_init(), hence all we need to do to
ensure that drm_mode_config_cleanup() is run on final drm_device
cleanup is check the new error code for _init().

v2: Explain why this cleanup is possible (Laurent).

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_drv.c | 22 ++++++----------------
 1 file changed, 6 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
index a543ebf3d541..b8ca99995e51 100644
--- a/drivers/gpu/drm/mcde/mcde_drv.c
+++ b/drivers/gpu/drm/mcde/mcde_drv.c
@@ -184,13 +184,13 @@ static int mcde_modeset_init(struct drm_device *drm)
 	ret = drm_vblank_init(drm, 1);
 	if (ret) {
 		dev_err(drm->dev, "failed to init vblank\n");
-		goto out_config;
+		return ret;
 	}
 
 	ret = mcde_display_init(drm);
 	if (ret) {
 		dev_err(drm->dev, "failed to init display\n");
-		goto out_config;
+		return ret;
 	}
 
 	/*
@@ -204,7 +204,7 @@ static int mcde_modeset_init(struct drm_device *drm)
 						    mcde->bridge);
 	if (ret) {
 		dev_err(drm->dev, "failed to attach display output bridge\n");
-		goto out_config;
+		return ret;
 	}
 
 	drm_mode_config_reset(drm);
@@ -212,17 +212,6 @@ static int mcde_modeset_init(struct drm_device *drm)
 	drm_fbdev_generic_setup(drm, 32);
 
 	return 0;
-
-out_config:
-	drm_mode_config_cleanup(drm);
-	return ret;
-}
-
-static void mcde_release(struct drm_device *drm)
-{
-	struct mcde *mcde = drm->dev_private;
-
-	drm_mode_config_cleanup(drm);
 }
 
 DEFINE_DRM_GEM_CMA_FOPS(drm_fops);
@@ -230,7 +219,6 @@ DEFINE_DRM_GEM_CMA_FOPS(drm_fops);
 static struct drm_driver mcde_drm_driver = {
 	.driver_features =
 		DRIVER_MODESET | DRIVER_GEM | DRIVER_ATOMIC,
-	.release = mcde_release,
 	.lastclose = drm_fb_helper_lastclose,
 	.ioctls = NULL,
 	.fops = &drm_fops,
@@ -258,7 +246,9 @@ static int mcde_drm_bind(struct device *dev)
 	struct drm_device *drm = dev_get_drvdata(dev);
 	int ret;
 
-	drm_mode_config_init(drm);
+	ret = drm_mode_config_init(drm);
+	if (ret)
+		return ret;
 
 	ret = component_bind_all(drm->dev, drm);
 	if (ret) {
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
