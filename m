Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF4016889A
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:04:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A73A6F52B;
	Fri, 21 Feb 2020 21:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C92C6F523
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:03:45 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id g3so3509935wrs.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h8Wt4RcjEThpU/mKoBI0075q/dm2GH9LI640F/mu9pU=;
 b=k7+Q6uvozTDTXITJBuMioz/RkVEgaB9rJbSJr8LCE19qrTjhQdWxX6CaWFPW6RBeQ/
 xEGPmrLrQTD8mJcDa4OZuTxHlKkcwZOcku6pO7eHkgdqdqUwtr6Yit4+WTXK7Xbt9ZPb
 sDXc9zh8tmVaxCuTz9FhqLxmCrQH0V3ucpPmo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h8Wt4RcjEThpU/mKoBI0075q/dm2GH9LI640F/mu9pU=;
 b=kIH4/Fd7CfVizrK+3nnvx0j4uSS6M5nW45rp/jhBD4mq7vnW+Z9N4rkqOGBgon28nq
 ONvetP5xDs9qKiCupWIkd9SPP++zDjAFHodGQUT3MwVKAHDbz7+n0YWL0Wng0wn1FpIC
 AAR6ywbr6b9riYJdBYHOJPSNefgSrji3xVR1QvxHdF8ND3auoiDepsWG5cKO/7FAxrvW
 LDN8u9PmmOs70QmMLXg5EzmZQTh4YiXEgyqzsf47MFBLC+QBArftQQAm7Ga1rAJYX4xd
 XgAqfnS6vdGWU/T3DaNbrYiHwQrdWbJu4qUEPZsMBgW0WImaLa/utFwtLZ+PvbV+fIio
 kJKg==
X-Gm-Message-State: APjAAAWeslUHPG1zoU9uU/dc9Wk2VP0690h7fnnWllXZlqu/J5sJSBbK
 +0BMTSBSD/MbPbeX+cM4UewuKA==
X-Google-Smtp-Source: APXvYqzUcJqO1FmwumlLCWC5josxu17WAcaRls+ls9foy30+skzw6TXDgfCLwZ61lMq5ZwiUskR5Xw==
X-Received: by 2002:a5d:5452:: with SMTP id w18mr48090809wrv.333.1582319024088; 
 Fri, 21 Feb 2020 13:03:44 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.03.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:03:43 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:40 +0100
Message-Id: <20200221210319.2245170-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/51] drm/mcde: Use drmm_add_final_kfree
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

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
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
