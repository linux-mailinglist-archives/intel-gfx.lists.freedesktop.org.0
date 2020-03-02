Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D54B176708
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:27:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6356E889;
	Mon,  2 Mar 2020 22:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FC926E87B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:26:57 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id c24so787522wml.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:26:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=h8Wt4RcjEThpU/mKoBI0075q/dm2GH9LI640F/mu9pU=;
 b=MxeDnZCZWjiX/GVAd5gmeAp3qQI8doBUUcINAenajCX7TmHNsRkiCGYABLtxfBIpRa
 IZ6O3emS0huPr7gHZ1IBzaephRYwkGE+AG69sBCQFV+n0BgwCNGkUkRDWPHSRudE6TH4
 LYAHXoVI5R8FHZvtteutuFGMLki9blKlBX0O0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=h8Wt4RcjEThpU/mKoBI0075q/dm2GH9LI640F/mu9pU=;
 b=WiubOIRLSrrJ115kUvXZnXTndtyOValb/88imTVXdkUaaHKaK3CMWqkUxdtEusGCDv
 x8Hc1dKk8jkbfg70c+Mc9XkGSMysPXE0xUGur+3A4UEpmUK+XfoV6WL+CH541f8TMZwH
 8Cjn55IWwTy1wP8gqnlpXMjSdFC4lGo6m7SXElmH/2r4ouU8KWxKVjJzX6tQC18X7xqp
 K8jvEA4CTE7boIZgxerFv5KNdzQK9QWwiXoB+KCtn6xHpoE0wck4obiG1xmFGc7Vz+Tl
 BlCsd6w4kAhOtuHcLlhJ19kyu7CqDz6cbn1E6Abkad3SbBvfjv7grSxvIzLfGLwNd75w
 ZTbQ==
X-Gm-Message-State: ANhLgQ1SV66vrp+xFkzFKoB2E1KKfdasnuTpOMnJTIxGYI1Eol4xYpku
 Y+OF1eNTZtAwgtI/z/CFGURzPHFEvUQ=
X-Google-Smtp-Source: ADFU+vtAG5Vf01Mf9J+GTr5/lgiKpoK00Xka/bzAbxvn5a2BiNjuUVCWdMEzQcYXDFjASk7axwqqLw==
X-Received: by 2002:a1c:7c06:: with SMTP id x6mr517370wmc.71.1583188016081;
 Mon, 02 Mar 2020 14:26:56 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.26.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:26:55 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:25:52 +0100
Message-Id: <20200302222631.3861340-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
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
