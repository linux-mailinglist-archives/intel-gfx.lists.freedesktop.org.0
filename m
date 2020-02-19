Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED8F1641D9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCFC66EBA7;
	Wed, 19 Feb 2020 10:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A14106EB69
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:15 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id a9so6140667wmj.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=38Blbfc4kB8T8l7OCqbZglHsB4iJ9JWjkG+yj6B0Qss=;
 b=Xu3nNg15XkOilo3dt5CyNg3+977nZIP1w4Jaz/WfxgGvVXHnd0k90r7hamLe1yYVE3
 ijq8oeSq7bF7pahssFqjqAgXNVFrVMwY0egkHdE2D1hGrrKg+Q/N/bwx/tuKSaEon5u6
 pxViTsiGSqVQeFZeu4ceGarxsSjCvhJYeDjdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=38Blbfc4kB8T8l7OCqbZglHsB4iJ9JWjkG+yj6B0Qss=;
 b=tDT1PWI5BYtjI/DRgSGkhKSsGyqrfI3MIIKn1CzHtfxc5PR8+K43vzLJCJyM+qB9zr
 nsYabokr0um0mUh8aFeFb2+bbGN/BUMuuZjsTlJOCS7qPNmpAGOJi1J5M5jZ5NAOq7KG
 cMkW7MRxheprW888Lp4q7tn1o0koiU/5tIh37w79z8kuhn0lWXTbGZFWP4qviDug2jFj
 vjNrg9XoGWxot4EF9cb3GTqgg/dsnvpU4yb3ow3IVRzRMf7lMVxdyEF7bCmKXWmV2tKF
 B2TT7bkGjpM7UWo11CkT1ehQGtoI7rBHzZ0yRWLrFpfOaXoTBHVXrJvt1aki6k1o7i7a
 esog==
X-Gm-Message-State: APjAAAVJ8VJ6FD3K5z0Z2cnugIiyd2mOx5ZXDZ4S8EydMDJA86KJoomk
 RPulIPSLZ0FRrvjbhmlHmqETuw==
X-Google-Smtp-Source: APXvYqxAPlJT1DmcMESZqUXbzXBT1FCIxjztmcFvS5Csf4oUkO02P88WzNkqkLPZfzwnYZKzD8h6tA==
X-Received: by 2002:a05:600c:414e:: with SMTP id
 h14mr1664783wmm.179.1582107734285; 
 Wed, 19 Feb 2020 02:22:14 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:13 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:06 +0100
Message-Id: <20200219102122.1607365-37-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 36/52] drm/pl111: Drop explicit
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
Cc: Eric Anholt <eric@anholt.net>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's right above the drm_dev_put().

Aside: This driver gets its devm_ stuff all wrong wrt drm_device and
anything hanging off that. Not the only one unfortunately.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Eric Anholt <eric@anholt.net>
---
 drivers/gpu/drm/pl111/pl111_drv.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/pl111/pl111_drv.c b/drivers/gpu/drm/pl111/pl111_drv.c
index aa8aa8d9e405..87b9b32c90a8 100644
--- a/drivers/gpu/drm/pl111/pl111_drv.c
+++ b/drivers/gpu/drm/pl111/pl111_drv.c
@@ -90,10 +90,13 @@ static int pl111_modeset_init(struct drm_device *dev)
 	struct drm_panel *panel = NULL;
 	struct drm_bridge *bridge = NULL;
 	bool defer = false;
-	int ret = 0;
+	int ret;
 	int i;
 
-	drm_mode_config_init(dev);
+	ret = drm_mode_config_init(dev);
+	if (ret)
+		return ret;
+
 	mode_config = &dev->mode_config;
 	mode_config->funcs = &mode_config_funcs;
 	mode_config->min_width = 1;
@@ -154,7 +157,7 @@ static int pl111_modeset_init(struct drm_device *dev)
 						    DRM_MODE_CONNECTOR_Unknown);
 		if (IS_ERR(bridge)) {
 			ret = PTR_ERR(bridge);
-			goto out_config;
+			goto finish;
 		}
 	} else if (bridge) {
 		dev_info(dev->dev, "Using non-panel bridge\n");
@@ -197,8 +200,6 @@ static int pl111_modeset_init(struct drm_device *dev)
 out_bridge:
 	if (panel)
 		drm_panel_bridge_remove(bridge);
-out_config:
-	drm_mode_config_cleanup(dev);
 finish:
 	return ret;
 }
@@ -343,7 +344,6 @@ static int pl111_amba_remove(struct amba_device *amba_dev)
 	drm_dev_unregister(drm);
 	if (priv->panel)
 		drm_panel_bridge_remove(priv->bridge);
-	drm_mode_config_cleanup(drm);
 	drm_dev_put(drm);
 	of_reserved_mem_device_release(dev);
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
