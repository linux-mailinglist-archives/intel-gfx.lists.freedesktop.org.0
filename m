Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A901641C1
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D1CA6EB95;
	Wed, 19 Feb 2020 10:22:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 816FE6EB67
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:21 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id t14so6137499wmi.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xMlgdU1cYExkP2QmLXd1n53OowDsHqDIXTQr8j/y3Q8=;
 b=T+x49BUuQM7M/z3U38Vqp7Kmd4NXSMDNcFJe991R5bZt0s8aChJvrMmz7fsDCSLOhp
 jv8FE72a5MrrcrFuHDqXOz/ULMzBBR56wKPlc4NOlK2a5jN35HHmACcATr7QaeAsazY7
 61cbCtIOligGJrJbU0kSCW97mdiqOdjAI1AXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xMlgdU1cYExkP2QmLXd1n53OowDsHqDIXTQr8j/y3Q8=;
 b=j55N5xX1Vtnz+MKYX/I5w4prC+kMKax8Vqa3rB3L4Eru40njcBEqZhik9szNtr4xgK
 2frORnEhpf9i5HBKMbX8hHc/PDS3NTcdxrabMYygby8DPEkq5BH2xdmlf2+1ixn/VXQc
 XmU58fWR2fM2kmwLtqKBC0uGMJmQ6M7urN45lJYqj7ve8yZsD7shYOkMI0Km9B5OnxkN
 sFKdLXT75nc7Q1eH/5F037J7EZrSfi8M3zs2zAqvEa7g7b4qZ7LwKGyqnvYnu3mYBGqZ
 al9BYInDAfg/u7GlaNYiNfP13a4YpAN6NDL0L/JGBj7nJTvVqgILU7QlvzJxhU19E8Kj
 X4Iw==
X-Gm-Message-State: APjAAAXJ9rTSMc2aBpF7+QZ2b5KsBX9RBJ/tjjqvCShDL8GSpv8qQy2J
 K1aGcuUcmNym/WBUpoxC7WZMjg==
X-Google-Smtp-Source: APXvYqymi9589CDsGB+zjTSFgOOAfFLrPZpKIiRrm56SLHkI/2PZysDoDOjkW1ClCmBMu5VkiuS1AA==
X-Received: by 2002:a1c:7205:: with SMTP id n5mr9512518wmc.9.1582107740163;
 Wed, 19 Feb 2020 02:22:20 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:19 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:11 +0100
Message-Id: <20200219102122.1607365-42-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 41/52] drm/mtk: Drop explicit
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
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's right above the drm_dev_put().

Aside: Another driver with a bit much devm_kzalloc, which should
probably use drmm_kzalloc instead ...

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
