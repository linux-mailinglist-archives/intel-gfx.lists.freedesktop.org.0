Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECB318F754
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:50:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753EA6E17B;
	Mon, 23 Mar 2020 14:50:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33B0E6E134
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:13 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id w10so17455297wrm.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RpBwJRU6QP8E4fA7oXBnbZ0R6iwlfd2Oj+Tujq20OWQ=;
 b=TwqTg/7Q0oQgHilrtFjCZKm9QjHrAz9GLoAMmoSzcpE7+su605PJQFjM9SmZEeHA0I
 EoaKb/tBlP4lkkRH0YuMHz5jK64SHGfQZCfLG4iOfVDSYvkIv27RnWzGvgkbkezhUgFN
 OPqKEuioQ3xLmZ04ihws5ydp8Yh4yGygGAOyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RpBwJRU6QP8E4fA7oXBnbZ0R6iwlfd2Oj+Tujq20OWQ=;
 b=FpGUIQYlubHsN9xEAJZJfz+/MS5SDoiwlZVJMjGcVCBd1ZHvhA9HbUjkb2U9hBZz/D
 k68tQ6aLRWsTBhTnr3Ya6qYhBa+aCy9iF8NcItHnDTel4PZhUdZ/btx0DR4Uyt8sA2gk
 koQzo3H6A40SJ8CnPc8vh8dyxXEnO0WP50dZ7sZD08sc+TOaUY76+vW44sI85/YXeQHu
 iRxo72mt9DKzncZBdXNAxMqCRXJttFN8WM124yfrkfOCLFQuH4jZGke/zmgtg01ssDzO
 hVDO9jMzm5IqV3iyFZyhood3Obfc54yMalXO4kjA0Dl9yoCqT0fXv1kssyjtpwWp/CAi
 35ow==
X-Gm-Message-State: ANhLgQ0UiAfCQ1XXLywUmgoGv+sihYFjN7eFS4IIHWoPyzjisOwnA/CE
 39ARM295OY5y5oYKgFjUpDRrXQ==
X-Google-Smtp-Source: ADFU+vsLPXJgPUr3JUO+m1Ia1/iH4z4tr0EACEWi8dIu1/kNvXqjA3mlmxX1XKJGoiczZLRV4hJLIA==
X-Received: by 2002:a5d:540c:: with SMTP id g12mr25688626wrv.178.1584975011884; 
 Mon, 23 Mar 2020 07:50:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:10 +0100
Message-Id: <20200323144950.3018436-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/51] drm/tidss: Use drmm_add_final_kfree
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
 Tomi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

Acked-by: Jyri Sarha <jsarha@ti.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jyri Sarha <jsarha@ti.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
---
 drivers/gpu/drm/tidss/tidss_drv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
index d95e4be2c7b9..32a85628dbec 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.c
+++ b/drivers/gpu/drm/tidss/tidss_drv.c
@@ -17,6 +17,7 @@
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_irq.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_probe_helper.h>
 
 #include "tidss_dispc.h"
@@ -109,8 +110,6 @@ static void tidss_release(struct drm_device *ddev)
 	tidss_modeset_cleanup(tidss);
 
 	drm_dev_fini(ddev);
-
-	kfree(tidss);
 }
 
 DEFINE_DRM_GEM_CMA_FOPS(tidss_fops);
@@ -154,6 +153,7 @@ static int tidss_probe(struct platform_device *pdev)
 		kfree(ddev);
 		return ret;
 	}
+	drmm_add_final_kfree(ddev, tidss);
 
 	tidss->dev = dev;
 	tidss->feat = of_device_get_match_data(dev);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
