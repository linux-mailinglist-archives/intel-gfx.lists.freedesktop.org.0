Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2B4176744
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:28:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC64E6E8D5;
	Mon,  2 Mar 2020 22:27:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DAE46E8D0
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:27:31 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id v4so1847191wrs.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YaqoQK4JapBefAfXiK3AF28YNurDMAX13lAGeSaxSd8=;
 b=XZuNIpd0RLsK2Ohw6sreK64S69PyAKcaxTvu7Ge5eH6DP0jAOJHHlK4pnW8cqaaVY/
 pTkKb8BElNQ1YB6h6+jzByHXsFaF9M3zU++xt3nGG0ALN+7rELx+TdEJgKhC+QrRebL7
 BFiCDK76ofWSW69diu/4lQh+zHMb9sBNLryN4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YaqoQK4JapBefAfXiK3AF28YNurDMAX13lAGeSaxSd8=;
 b=HFbUXrjJinpqB5FwSKe+hXZ1kzGR5IEryFvFwsRwogKdsc/WD2oY6zSpykmoUy+9+W
 bigVcb6F4pb7Sbi464BJvpNP65Itqb/lp+jU22J5+OHbsSWViFtz41K2W1/FvA5Yba3O
 mij9bYox8flIg54fj8TBl5IucxDlURbc0bzz8LmUlw93IOmSFenvEgR9W6U3/l+4qUEL
 tdzwkQRBt/0Wv7L/lHwse3y2VsftS2uZuoaDA4AB0ozqrv6bkn7NTccLCSNaFrizq0LN
 uPg+sQLDGwfjdgYwn7R6IzcSFRkTtOkFGqS+n6TyBphoOdNu3DJ8Ul3NAbBQc9ibWDnS
 YSUA==
X-Gm-Message-State: ANhLgQ2NYqDi6rNiMbsIw9Hsust00jwsPY0OO7et/wOP5bdZG7ohtAii
 jCP1wJrb9uq2yZiSKBfmu0A+xDiNMVM=
X-Google-Smtp-Source: ADFU+vvgDWbZ+V+yI4H3g3usPcXvvr47gHCVFOJJ1bBsaWDMjg4jFPYWKCpAiOUhBlSzWgENlN1mZw==
X-Received: by 2002:adf:f751:: with SMTP id z17mr1671078wrp.207.1583188050185; 
 Mon, 02 Mar 2020 14:27:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.27.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:27:29 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:26:20 +0100
Message-Id: <20200302222631.3861340-41-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
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
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
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

v3: Use drmm_mode_config_init() for more clarity (Sam, Thomas)

Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 0563c6813333..2eaa9080d250 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -162,7 +162,9 @@ static int mtk_drm_kms_init(struct drm_device *drm)
 	}
 	private->mutex_dev = &pdev->dev;
 
-	drm_mode_config_init(drm);
+	ret = drmm_mode_config_init(drm);
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
