Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5FB1A9494
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:41:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2992A6E890;
	Wed, 15 Apr 2020 07:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C712E6E88B
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:40:56 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id o81so10589589wmo.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KgK3G2A1STC7flhBaGiCXJKQEoHrUb4s+30Xdgv1uqQ=;
 b=lTcj+h5t2CqxfLJxf0bB4D4i4UDznI9GJV0h5edSX5tgEJMWEu+5pTEMgEY3+h5IPG
 cMWVC8xSo/9rZWfREShCC1w+f5CDw+v9rnlfNkdFhbsDuuluGiq5A57GAJONAoq5Fbc/
 fi+NxN8CGCy5VhFkgxJqaOcVb9zFNiGZv54UU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KgK3G2A1STC7flhBaGiCXJKQEoHrUb4s+30Xdgv1uqQ=;
 b=GiEX+W7WGgsfBL6okqBjkxy5MQKaSG+II2YYGF6Xh79eIUdA35LNjuTjd04IE6YK4h
 UnT7sZ0Tpxwc7JRU6Af/MC15knlIUcfGSIg/o35F/C480Z2Zpw/flvXHuTz6yHFNDMX8
 JH4ONPEbLLQyOrO6nDOzV17YfHPGq7kBF3LyLSkHGzvNbRT0AdMvd+v/k022e2KKGKIk
 VcOyqGKHBNF82IkFMjCkaMZFoG/rOSIdMYdgj8iK9uBKopJaUG/fzdQ839BMIdXD3LLZ
 VX9z/eqdnrjrvTx6zXHGewV66oAEOS1a+7hS5RJFPoBAJyWbZhsVeaSh9FF/zybr4avJ
 f9xg==
X-Gm-Message-State: AGi0PuYfF01MLL7qdNHkP6IK/lF9gOkbE1UwxQiL+fYh+EMNrjlaOG3i
 kRr8Ym38guQKFWyd9xCQb/lbQdJiT7U=
X-Google-Smtp-Source: APiQypI//pOtyMwKjVsVow+4np140pwXpH1ebyPslWByrMVyzbIVabB98l2YWR70QpAl50DQ6nvCTg==
X-Received: by 2002:a05:600c:225a:: with SMTP id
 a26mr3811166wmm.104.1586936454521; 
 Wed, 15 Apr 2020 00:40:54 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.40.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:40:53 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:39:48 +0200
Message-Id: <20200415074034.175360-14-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/59] drm/st7735r: Use devm_drm_dev_alloc
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 David Lechner <david@lechnology.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

Aside: There was an oddity in the old code, we allocated priv but in
the error path we've freed priv->dbidev ...

Acked-by: David Lechner <david@lechnology.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: David Lechner <david@lechnology.com>
---
 drivers/gpu/drm/tiny/st7735r.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/tiny/st7735r.c b/drivers/gpu/drm/tiny/st7735r.c
index 631801c36f46..ccbf49a53202 100644
--- a/drivers/gpu/drm/tiny/st7735r.c
+++ b/drivers/gpu/drm/tiny/st7735r.c
@@ -195,21 +195,16 @@ static int st7735r_probe(struct spi_device *spi)
 	if (!cfg)
 		cfg = (void *)spi_get_device_id(spi)->driver_data;
 
-	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
+	priv = devm_drm_dev_alloc(dev, &st7735r_driver,
+				  struct st7735r_priv, dbidev.drm);
+	if (IS_ERR(priv))
+		return PTR_ERR(priv);
 
 	dbidev = &priv->dbidev;
 	priv->cfg = cfg;
 
 	dbi = &dbidev->dbi;
 	drm = &dbidev->drm;
-	ret = devm_drm_dev_init(dev, drm, &st7735r_driver);
-	if (ret) {
-		kfree(dbidev);
-		return ret;
-	}
-	drmm_add_final_kfree(drm, dbidev);
 
 	dbi->reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_HIGH);
 	if (IS_ERR(dbi->reset)) {
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
