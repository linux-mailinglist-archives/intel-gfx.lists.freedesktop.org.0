Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAA1164189
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:22:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31B866EB4F;
	Wed, 19 Feb 2020 10:21:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC0B56EB35
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:21:45 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id s10so5852475wmh.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a+4NhGxRfFA0WJt0xUpJ29gkV88BgGtXWhYlqEL4uzo=;
 b=FEF95UqFIvLONDyqtFRjoW+IEUvZK+kE7x+pbUOQlX5cTtOFHyABpIPsi5jIPOUord
 AT/UIFEjn2zN/75CAQLindVWEm2sYl1VGd/y58has9O6ndd4txqNGqmKBdLsyDVnHmWz
 2dSjc9R+FnT2j9gC3B3G95FynkOLPdBNW4QO0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a+4NhGxRfFA0WJt0xUpJ29gkV88BgGtXWhYlqEL4uzo=;
 b=aQb9okxiDJxEL7TZd0cUIPryoTyvx/5zrFZS8zZNEF0gpW4vTDRofpas55LH3EWniV
 ZvQDgmqtDBNhOdZ9rOLVIq5EHzCZKrNCnvVmTqKwq4z60+tRtv+eokEal1bMILI477Fg
 M+SAaULOlu7TvmAcbF4caw2U/egd5Wqgz1QtfLQvJq9/TuTqU6y0Xe1JOSvPBPvPAlqn
 pANYS2ux90Zif2tXxBdg36d4n9p0gSWOfZA1O2rPoEXaUZ0hjz2qmUR3MRdJOh9ZsP0U
 pXH4dAE1GQWFiuC+XYeBToiUTgH9ubtjIS8eC9ecND/sB96IQwOCgsgejwuv5SdGlep+
 UCew==
X-Gm-Message-State: APjAAAXtSACCTxf4BTt43qStXr2QZ2wKRNPdI+AEyN38oat2RQmMurUR
 yqWl5LPz80UdizQugMi53J5b9A==
X-Google-Smtp-Source: APXvYqw4JYqQarHLdG+K8IFpZctE30FzqtkQx4dL9V7RaSrQuw6sRXLoaw4ppwn6zc6dAJteRhIjTA==
X-Received: by 2002:a1c:9849:: with SMTP id a70mr8929240wme.76.1582107704454; 
 Wed, 19 Feb 2020 02:21:44 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.21.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:21:43 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:41 +0100
Message-Id: <20200219102122.1607365-12-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/52] drm/v3d: Use drmm_add_final_kfree
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

With this we can drop the final kfree from the release function.

I also noticed that the unwind code is wrong, after drm_dev_init the
drm_device owns the v3d allocation, so the kfree(v3d) is a double-free.
Reorder the setup to fix this issue.

After a bit more prep in drivers and drm core v3d should be able to
switch over to devm_drm_dev_init, which should clean this up further.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Eric Anholt <eric@anholt.net>
---
 drivers/gpu/drm/v3d/v3d_drv.c | 38 ++++++++++++++++++-----------------
 1 file changed, 20 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/v3d/v3d_drv.c b/drivers/gpu/drm/v3d/v3d_drv.c
index eaa8e9682373..8d0c0daaac81 100644
--- a/drivers/gpu/drm/v3d/v3d_drv.c
+++ b/drivers/gpu/drm/v3d/v3d_drv.c
@@ -25,6 +25,7 @@
 #include <drm/drm_drv.h>
 #include <drm/drm_fb_cma_helper.h>
 #include <drm/drm_fb_helper.h>
+#include <drm/drm_managed.h>
 #include <uapi/drm/v3d_drm.h>
 
 #include "v3d_drv.h"
@@ -257,13 +258,23 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 	v3d->pdev = pdev;
 	drm = &v3d->drm;
 
+	ret = drm_dev_init(&v3d->drm, &v3d_drm_driver, dev);
+	if (ret) {
+		kfree(v3d);
+		return ret;
+	}
+
+	platform_set_drvdata(pdev, drm);
+	drm->dev_private = v3d;
+	drmm_add_final_kfree(drm, v3d);
+
 	ret = map_regs(v3d, &v3d->hub_regs, "hub");
 	if (ret)
-		goto dev_free;
+		goto dev_destroy;
 
 	ret = map_regs(v3d, &v3d->core_regs[0], "core0");
 	if (ret)
-		goto dev_free;
+		goto dev_destroy;
 
 	mmu_debug = V3D_READ(V3D_MMU_DEBUG_INFO);
 	dev->coherent_dma_mask =
@@ -281,21 +292,21 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 		ret = PTR_ERR(v3d->reset);
 
 		if (ret == -EPROBE_DEFER)
-			goto dev_free;
+			goto dev_destroy;
 
 		v3d->reset = NULL;
 		ret = map_regs(v3d, &v3d->bridge_regs, "bridge");
 		if (ret) {
 			dev_err(dev,
 				"Failed to get reset control or bridge regs\n");
-			goto dev_free;
+			goto dev_destroy;
 		}
 	}
 
 	if (v3d->ver < 41) {
 		ret = map_regs(v3d, &v3d->gca_regs, "gca");
 		if (ret)
-			goto dev_free;
+			goto dev_destroy;
 	}
 
 	v3d->mmu_scratch = dma_alloc_wc(dev, 4096, &v3d->mmu_scratch_paddr,
@@ -303,23 +314,16 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 	if (!v3d->mmu_scratch) {
 		dev_err(dev, "Failed to allocate MMU scratch page\n");
 		ret = -ENOMEM;
-		goto dev_free;
+		goto dev_destroy;
 	}
 
 	pm_runtime_use_autosuspend(dev);
 	pm_runtime_set_autosuspend_delay(dev, 50);
 	pm_runtime_enable(dev);
 
-	ret = drm_dev_init(&v3d->drm, &v3d_drm_driver, dev);
-	if (ret)
-		goto dma_free;
-
-	platform_set_drvdata(pdev, drm);
-	drm->dev_private = v3d;
-
 	ret = v3d_gem_init(drm);
 	if (ret)
-		goto dev_destroy;
+		goto dma_free;
 
 	ret = v3d_irq_init(v3d);
 	if (ret)
@@ -335,12 +339,10 @@ static int v3d_platform_drm_probe(struct platform_device *pdev)
 	v3d_irq_disable(v3d);
 gem_destroy:
 	v3d_gem_destroy(drm);
-dev_destroy:
-	drm_dev_put(drm);
 dma_free:
 	dma_free_wc(dev, 4096, v3d->mmu_scratch, v3d->mmu_scratch_paddr);
-dev_free:
-	kfree(v3d);
+dev_destroy:
+	drm_dev_put(drm);
 	return ret;
 }
 
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
