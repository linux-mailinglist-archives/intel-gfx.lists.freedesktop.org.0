Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C2E31688D0
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F876F550;
	Fri, 21 Feb 2020 21:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E3906F53E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:04:22 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id z7so3506595wrl.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8nbkcQmHjcnN5+weCBzORnysUX3jWPwOIJlR7jZYk5A=;
 b=TeiTIYgWktvBHQCOikl6FDJX2ACvSjXxZ4SsCclbfP7ibVuCw5FMCD8fylA4sVJTqq
 GjG5d8P7Ss9wywe2WAhMYhOtmLpw2Gic/lMMqj8IpaJuoX/LUoAoupLedaM9nIC03fHe
 N6+LpOJimU12spz+iYzrwhala/72K+4OT9VE8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8nbkcQmHjcnN5+weCBzORnysUX3jWPwOIJlR7jZYk5A=;
 b=iVwOQswJhrxKHgFiUwHVCAeBVDGXRPJxk8VDODXiO1ZcWBdb+IFnDgzDq17lVOlhxG
 6F23AenzuZCcZAi31gB9XCBIvMKNIQGR7oWo6/XuUg2ToAxWVQwlA4C438d7+bBRjTwD
 O/D0X8+PtYjbLToc15FgCEbFSTbQSv/d8AKgJXRBLpsfi4C6UxrW/JQLeE8rq2IM+zZc
 XgR7xb7WMAG6ouLVPNEL4j9NBzoukHJjxTiGmc8Ba+dxUp0nadaR+8APbVtJHp56umuF
 +4pQNpHwk1e6zxIdOn9U0FQm8aib58w4mGhfU+jekz+46ZDDnugR9J2XX8OOVAQmiNFc
 tKbw==
X-Gm-Message-State: APjAAAXVk2TRc8hCUg3nAqcWN3aWuSNx6sU0Dk6Ocqja9wA75l+LL9pz
 Z+HJNE1m1+X73BGXZ0QB3OzghA==
X-Google-Smtp-Source: APXvYqyNzD4vBsy29EfuymYbabbsGjCGwNJw/WbSbmAZtcAKjek6u8qI/+mIws8LC8TRAnSsfvMPGw==
X-Received: by 2002:a5d:5221:: with SMTP id i1mr47142624wra.44.1582319061278; 
 Fri, 21 Feb 2020 13:04:21 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.04.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:04:20 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:03:08 +0100
Message-Id: <20200221210319.2245170-41-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 40/51] drm/mtk: Drop explicit
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
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's right above the drm_dev_put().

This is made possible by a preceeding patch which added a drmm_
cleanup action to drm_mode_config_init(), hence all we need to do to
ensure that drm_mode_config_cleanup() is run on final drm_device
cleanup is check the new error code for _init().

Aside: Another driver with a bit much devm_kzalloc, which should
probably use drmm_kzalloc instead ...

v2: Explain why this cleanup is possible (Laurent).

Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 0563c6813333..947b2cbe2836 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -162,7 +162,9 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	}
 	private->mutex_dev = &pdev->dev;
 
-	drm_mode_config_init(drm);
+	ret = drm_mode_config_init(drm);
+	if (ret)
+		return ret;
 
 	drm->mode_config.min_width = 64;
 	drm->mode_config.min_height = 64;
@@ -179,7 +181,7 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 
 	ret = component_bind_all(drm->dev, drm);
 	if (ret)
-		goto err_config_cleanup;
+		return ret;
 
 	/*
 	 * We currently support two fixed data streams, each optional,
@@ -255,8 +257,6 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 		dma_dev->dma_parms = NULL;
 err_component_unbind:
 	component_unbind_all(drm->dev, drm);
-err_config_cleanup:
-	drm_mode_config_cleanup(drm);
 
 	return ret;
 }
@@ -272,7 +272,6 @@ static void mtk_drm_kms_deinit(struct drm_device *drm)
 		private->dma_dev->dma_parms = NULL;
 
 	component_unbind_all(drm->dev, drm);
-	drm_mode_config_cleanup(drm);
 }
 
 static const struct file_operations mtk_drm_fops = {
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
