Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C1A176736
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:28:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1B376E8C0;
	Mon,  2 Mar 2020 22:27:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A4AA6E8B3
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:27:25 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id q8so1877034wrm.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=j+dtsY1gAvr/pDMBzXSCKBfygWCW7gwbjj3jWxvZJ84=;
 b=PLIgMKZpgJli5qhjTQbdsjnNMb2LPVj5+pmqzci1/9Err8E0SJ5GVTLc80KQMhMSaw
 SzVnaS/EVYF0LtQxaqyELcYmIZQBOW30625uKvslydpsAxELb6TLcMX6WkGuM3vSTLcz
 N+/OgBm/PsposYJjHwaaqmHNRIaeKTHT7pato=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=j+dtsY1gAvr/pDMBzXSCKBfygWCW7gwbjj3jWxvZJ84=;
 b=Szqlnuf49E5lYIdlnQBDsH4BSoFir4vUeumcoaZHcM4oFe4HMPnWwA7NNslilaLqpq
 zWPYeMWhVCpR5rV5iScUJHCRowR7rSkXXnYGDJo0MpETePLZNyLEzPXLUqhS+BC9nD8A
 AiHVuxkxrs0lKug515LQTOt+aQygDbBxrbKFyCU2fKgSFi6El7ivF3dbWI2UJJ8yOL6l
 46GN3FtsVi/VagQ+rH2oOI1v5HrWv/MTxwjdRXOzrobaWDnOrB5gztTz+fsc1k7OoB7P
 PfJMlwTlHP3Os7eVjkNGs6L7tG1MIMxDlJ3hL0foHmVuZjoSLnJhFM40FVQmtd4PIImB
 iVlA==
X-Gm-Message-State: ANhLgQ2jszGYsoMyuSFP4mgrA9KaGjWS3Xn+skoq6j3HElWZiSleodOC
 E5iZHvvvS0cE5JdtazjxlfsfiQ==
X-Google-Smtp-Source: ADFU+vu5caVVHZxO0vZoWJX/t7isTNUjlblhFT9uVut57NHMk22IQMY46VnejPG3fFGLwBTkYVKdjw==
X-Received: by 2002:a5d:4043:: with SMTP id w3mr1659295wrp.139.1583188044132; 
 Mon, 02 Mar 2020 14:27:24 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.27.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:27:23 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:26:15 +0100
Message-Id: <20200302222631.3861340-36-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 35/51] drm/pl111: Drop explicit
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
 Eric Anholt <eric@anholt.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's right above the drm_dev_put().

This is made possible by a preceeding patch which added a drmm_
cleanup action to drm_mode_config_init(), hence all we need to do to
ensure that drm_mode_config_cleanup() is run on final drm_device
cleanup is check the new error code for _init().

Aside: This driver gets its devm_ stuff all wrong wrt drm_device and
anything hanging off that. Not the only one unfortunately.

v2: Explain why this cleanup is possible (Laurent).

v3: Use drmm_mode_config_init() for more clarity (Sam, Thomas)

Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Eric Anholt <eric@anholt.net>
---
 drivers/gpu/drm/pl111/pl111_drv.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/pl111/pl111_drv.c b/drivers/gpu/drm/pl111/pl111_drv.c
index aa8aa8d9e405..f9ca0f3edbbb 100644
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
+	ret = drmm_mode_config_init(dev);
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
