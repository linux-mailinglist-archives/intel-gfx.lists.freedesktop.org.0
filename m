Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B52D18F747
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30C096E16B;
	Mon, 23 Mar 2020 14:50:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A5C66E134
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:14 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id 65so735485wrl.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C+qwRvOTQBprgCHFV2JnXoXJFc0YxzOIY1i5YWjQEZc=;
 b=H2ZWKXjO2Tj1DCEiWPj33bKYe44uHab1I3CazyAjmsnoHzuObLpYvc6H5K1pHcRBUO
 JWr8DgAimBADxVVDUrmk+kkeh8swqCNU9gDDC2LcwA1mekhRxmyo3XGQ30zPF1dbgVX2
 4/eKv1eOQ43hxDelasNaZg6ceRFUEbkqQsdPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C+qwRvOTQBprgCHFV2JnXoXJFc0YxzOIY1i5YWjQEZc=;
 b=BxctoKuQQt3Dwof26yJOy2sFtOtEkATjkoCoiyahDHnsnI0+8Wj+/YTb/xpIKzXEpK
 e9dHMqME75jGXmBXU+mjJLfsl3h1/i4/W43O5Iz5mzaSF+JPIAV3Geyd7SXUa9DazD+p
 M9HheX1fJVwghUeFI6B8y1cjjOFVP1k0Rp34a0Xd6k/7zkqF8713L5ih26BESnDn3F3z
 7uzu+WM4NfSXGCH2FcdqeV2EKhjp/seHlDGixML/b0Hd2mEBGex6QiJnulCfpaU+YQA9
 p0dpj1X+b8iT7+q6XBfHR0ok0EmWcoKGiq78FL30yNk44265X0wP8QtJvml0WFuZTicv
 PQYg==
X-Gm-Message-State: ANhLgQ0WdcbR2O05QsNe8vfx7zF+jq2wvnyTDbopT2AQQYzOC1mxuq/E
 DgZgGbg4gD9PpxmW0sB+vJp51w==
X-Google-Smtp-Source: ADFU+vsvxEsTudZYlp5vYiZPLnCBxrD3E9RTP/SRzPMB1ubm/i9BFERXxRdVaZBH/7Nx4KwiBVwX1A==
X-Received: by 2002:a05:6000:189:: with SMTP id
 p9mr30469632wrx.391.1584975013150; 
 Mon, 23 Mar 2020 07:50:13 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:12 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:11 +0100
Message-Id: <20200323144950.3018436-13-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
