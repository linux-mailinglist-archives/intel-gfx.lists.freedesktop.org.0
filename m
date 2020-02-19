Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D4301164184
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:22:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B95D6EB36;
	Wed, 19 Feb 2020 10:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172776EB36
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:21:53 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id q9so5840863wmj.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+dqca7vVfAJpVEb4Y1b3H/4RHc4MTBTRHhaWTEoXRoM=;
 b=MTRwJUc9oBJEYpqMzGgfiwV5O2jkxPp0D9tp1M0PHZhjhlGeevzByc1ND3H7maZERt
 q05wHvX/6Ei+xUaJ0ULwrWSZg+nrQyiGGa2lxQ8qY6LyzfyXFA1maaSkYBNj2WsaAd39
 C1Ora9V30DtaEcaERLjc5TEenOL2iZYR4WKOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+dqca7vVfAJpVEb4Y1b3H/4RHc4MTBTRHhaWTEoXRoM=;
 b=d6k0z3fL6uNhXzG+aCKv3yKIafz18zqF+iictpEC+H7TDwroDCZ3EdpNOzv7IzWt9c
 fpPy2WlwPvfIwAXh+/+1YXXpwtWUneW5NdFoUE9U8Y6KYXT/8iu1Tv5kWteSmFPtrzOj
 eZNIPXW0Kd4iXUOB7QvzS2p1vaf4rustYKFDmkOO5VOrWmGCRxm5J1HeQxBrJwR9EksT
 Sxfh+/iCSvQqErNc42s+MaHHaW83pGhpqifOvPPrNiZdex0RpdPGYl4GbrTNLopUY862
 6Sapp6HilrqvXt7UffzLNtIkMXL3MVpA32ZoyM68KdWmZzYNnC22HtiOI3oMUQxq0rOE
 0mxg==
X-Gm-Message-State: APjAAAUFg/MQRY7BVlmzmde57fTzBRe4sqdvFp9VScGzzbc3y2VMOKIw
 RMfuRTKXhAW+jyTM6DAodRni8+Eisfk=
X-Google-Smtp-Source: APXvYqwFDZ0gulBcRp8XRyU91sZFGlpFg0extAyO3RSFqYIWTncbNA4Du0b4L8waJYcva5uU3PdFjw==
X-Received: by 2002:a05:600c:149:: with SMTP id
 w9mr8630551wmm.132.1582107711745; 
 Wed, 19 Feb 2020 02:21:51 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.21.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:21:51 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:20:47 +0100
Message-Id: <20200219102122.1607365-18-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/52] drm/inigenic: Use drmm_add_final_kfree
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Paul Cercueil <paul@crapouillou.net>
---
 drivers/gpu/drm/ingenic/ingenic-drm.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c b/drivers/gpu/drm/ingenic/ingenic-drm.c
index 6d47ef7b148c..12b14aed05cd 100644
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
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
