Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3D818F74C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2364C6E187;
	Mon, 23 Mar 2020 14:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04AC56E134
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:20 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id d198so9200464wmd.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QB7nWriSd/RsDO5y6HocdPS6ke6M+vxoqpaoPFGhYhw=;
 b=EvReFOtMBX7wXy5LlXLwGV3Op0+4769pW9pnEFu6+LJa19Bbe5Gn1IFg3DOG6goqng
 etcEpT61Pb/24DGcWxqnzD+Mv/u0ekt/ltzjANdG8RAUr95D/pWzToheB0WwWNUdP15g
 +yURXe4wISadnkzc7jwyo2Zo32Hca3qEhiyLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QB7nWriSd/RsDO5y6HocdPS6ke6M+vxoqpaoPFGhYhw=;
 b=Od/mwH87m+cpHezUP8Prr/Zg4/rZXZ8zTryowNLOGPyoajZ9+TXS00gnqza2VVdyHS
 XtC6w/lIuLh7sL1nMOX8qPDhcp5XsbrfGII/Y5SEtasLcrj2mLPybcoRtPavg/i3cYXm
 v+iMmvvpwP+DrtLpAKKOQv9uj+6URLoXPjEku8qL8R9bmNXApQGjKjw/g8BVsPQnwH/f
 f51/q4RPZ3zYfhnDj1aFQuj3xMQIdui6oNa4KnOFpyIv/ee0Mar0iUw1jy/RgYbN4tQC
 tHPYH4H2+Mx9K8bUWmsKvIHi0UQvOdXOztaFXe+cVBvR/9Djeh/72OT2ZKJsDes6Cz7R
 z3Qg==
X-Gm-Message-State: ANhLgQ14bOpMIlUJFTBbDeQ83xjxd8ZK8nF3xksoWl8c+G6L+uU0O9GO
 toGeULWxVwXOgT/3O3FvrSMjvVqbUIBaTQ==
X-Google-Smtp-Source: ADFU+vtdl5PtJlf2vzHK0jUy//CDFQx9t0y+DwEeKpIrpSpgQHpz5bhLaxp0zos3mJtJ9cOwL42tMQ==
X-Received: by 2002:a1c:6605:: with SMTP id a5mr27854414wmc.32.1584975018667; 
 Mon, 23 Mar 2020 07:50:18 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:17 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:15 +0100
Message-Id: <20200323144950.3018436-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/51] drm/ingenic: Use drmm_add_final_kfree
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
Cc: Paul Cercueil <paul@crapouillou.net>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Paul Cercueil <paul@crapouillou.net>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Paul Cercueil <paul@crapouillou.net>
---
 drivers/gpu/drm/ingenic/ingenic-drm.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c b/drivers/gpu/drm/ingenic/ingenic-drm.c
index 9dfe7cb530e1..e2c832eb4e9a 100644
--- a/drivers/gpu/drm/ingenic/ingenic-drm.c
+++ b/drivers/gpu/drm/ingenic/ingenic-drm.c
@@ -23,6 +23,7 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_irq.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 #include <drm/drm_plane.h>
@@ -490,11 +491,8 @@ static irqreturn_t ingenic_drm_irq_handler(int irq, void *arg)
 
 static void ingenic_drm_release(struct drm_device *drm)
 {
-	struct ingenic_drm *priv = drm_device_get_priv(drm);
-
 	drm_mode_config_cleanup(drm);
 	drm_dev_fini(drm);
-	kfree(priv);
 }
 
 static int ingenic_drm_enable_vblank(struct drm_crtc *crtc)
@@ -639,6 +637,7 @@ static int ingenic_drm_probe(struct platform_device *pdev)
 		kfree(priv);
 		return ret;
 	}
+	drmm_add_final_kfree(drm, priv);
 
 	drm_mode_config_init(drm);
 	drm->mode_config.min_width = 0;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
