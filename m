Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6779316418D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:22:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B60F6EB4E;
	Wed, 19 Feb 2020 10:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0C996EB3D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:21:47 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id p9so5869847wmc.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9rDCI55LpkQVPZOIqCzPLQ0VOfp5jqvjH+bv30JO/fY=;
 b=XjHgkhWwm/lK2zY39T5CPs6TmKyDh5hZJKsmz5itThtS/3V7xL3JtX19p6cErEXCdv
 LOeMoFbS9udC8fLoElOxVNWZPPJySXGS3/iEBT8nQCAxcD1hbliGlKM03svQWkIGtDIr
 nO+qvvKJh8q/DnEJ00HUahrJ85vNigGVaNzMU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9rDCI55LpkQVPZOIqCzPLQ0VOfp5jqvjH+bv30JO/fY=;
 b=uBaFbUNRkMvDlpjOrfjGEY1pr6CMmsUvOlY4byEHuK/zkJ5eheB/1qP5nQH6Uea7fn
 xqDgGHTtg5EB3L12OQ8IKuI2k9r1A+OA/A/K7b60N5KenhaImiKYACsaobLqAm0pTjhK
 ZyC9sfxRdhOhL+8BzuQtyszkkzxFQXb6mBm2xs59f0BrWxKvRr5QjdbnrM+RnPzCLT/R
 8Pfby5Zh1Jeb6j6Z70KPDLeS5rW2+H8PHjwEZth7TTZlRpRmfrEBxLQu4EPXaZdR5Ol9
 s0vS/CTwJwG/+nIxXPRJ0X0L7QACUicdR/LKiULgcrefpsGOZ55iJbJEuIeg9/vUFtom
 4HVQ==
X-Gm-Message-State: APjAAAUAWjs9wNAq0oR5VKA1E7bKQl4E0eJzE8Jby6Ea14P4G6TmRslq
 tqx+rtzuRvoBWhmxHh16xhnLHg==
X-Google-Smtp-Source: APXvYqxpNyvXLddyuy5x9ynL43sFhJCRvFZOfXFuyQVLWSHKgUg9WHcedL25SS1gpeq2pwtxKX3+nw==
X-Received: by 2002:a1c:3b09:: with SMTP id i9mr9030259wma.31.1582107706424;
 Wed, 19 Feb 2020 02:21:46 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.21.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:21:45 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:43 +0100
Message-Id: <20200219102122.1607365-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/52] drm/mcde: Use drmm_add_final_kfree
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
 Linus Walleij <linus.walleij@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_drv.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
index f28cb7a576ba..7474481503a1 100644
--- a/drivers/gpu/drm/mcde/mcde_drv.c
+++ b/drivers/gpu/drm/mcde/mcde_drv.c
@@ -72,6 +72,7 @@
 #include <drm/drm_gem.h>
 #include <drm/drm_gem_cma_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_panel.h>
@@ -223,7 +224,6 @@ static void mcde_release(struct drm_device *drm)
 
 	drm_mode_config_cleanup(drm);
 	drm_dev_fini(drm);
-	kfree(mcde);
 }
 
 DEFINE_DRM_GEM_CMA_FOPS(drm_fops);
@@ -330,6 +330,7 @@ static int mcde_probe(struct platform_device *pdev)
 	}
 	drm = &mcde->drm;
 	drm->dev_private = mcde;
+	drmm_add_final_kfree(drm, mcde);
 	platform_set_drvdata(pdev, drm);
 
 	/* Enable continuous updates: this is what Linux' framebuffer expects */
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
