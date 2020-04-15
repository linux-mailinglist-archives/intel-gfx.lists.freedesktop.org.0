Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C65B51A94AD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88DB46E8B3;
	Wed, 15 Apr 2020 07:41:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 239B16E8A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:12 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id g12so9841739wmh.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8pNkHhFd1LMKUnffKElCqpL6Yw/TeF8VvxrZLC1hFeA=;
 b=VPLkjBvDmctAg2OYVppd2VBZAafMbLpBBx6d33KuCo4fH61hkA5n7yp24ZVZnS0XWO
 8xIxaculrBucOVnGuZyTSrXOApaAz7quf40oe7jeUvLGsm9ppRV8SYOnmNMzwVvDITKw
 sbgRVF0EoX9HVYIRq5YcPtAZywvK+A/MBTolo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8pNkHhFd1LMKUnffKElCqpL6Yw/TeF8VvxrZLC1hFeA=;
 b=sAq47JWorGH4qztCXRdNPo4P1i8ykIJ/+7V09iuaVZThNU6z6sF+uRlIgADxs3BOTY
 /NmGKH+YW9kBYBMUqND3n+5nQ57VZrNZ8z6WC12v5X6jXIeJyRJOgFSAi684a9CWyCzP
 akdPXJKJsPZuDfMw4k7uKUruBA2XeVr9yEc4ShURkfDR8SfLHK0a7kxQ9xWdTAOc+AlD
 93tCfPQbLR8Dx8W709VBQlFly6O7QBNyGtk3GW5kzHuwl/zsrq85I4h18K2QQ0eZqLZs
 Gw00vIkF4LmEDs+mmEoE6FaiPuoWSOUYayGRwpEcfyi28PX5Cdh3ErgX0GCcIDDUvdVU
 vuIQ==
X-Gm-Message-State: AGi0PuabSB71zd600cT+GbcaE9AbO4h+koLuo464JC/3CtOwH0o0yaSG
 97t28xPzGHBP78e9q8kRxiEQvKOhAEA=
X-Google-Smtp-Source: APiQypLExqQezL90Iwy+jU6nEraSJwrGpPL+HQPrh8XyL4U3QAwtTR0rioJrNAbPLTa8M5Acjyqj3w==
X-Received: by 2002:a1c:e1c1:: with SMTP id y184mr3861432wmg.143.1586936470328; 
 Wed, 15 Apr 2020 00:41:10 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:09 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:03 +0200
Message-Id: <20200415074034.175360-29-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/59] drm/mcde: Use devm_drm_dev_alloc
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
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

v2: Move misplaced double-assignement to next patch (Sam)

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_drv.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
index 88cc6b4a7a64..22003478db2c 100644
--- a/drivers/gpu/drm/mcde/mcde_drv.c
+++ b/drivers/gpu/drm/mcde/mcde_drv.c
@@ -307,19 +307,12 @@ static int mcde_probe(struct platform_device *pdev)
 	int ret;
 	int i;
 
-	mcde = kzalloc(sizeof(*mcde), GFP_KERNEL);
-	if (!mcde)
-		return -ENOMEM;
-	mcde->dev = dev;
-
-	ret = devm_drm_dev_init(dev, &mcde->drm, &mcde_drm_driver);
-	if (ret) {
-		kfree(mcde);
-		return ret;
-	}
+	mcde = devm_drm_dev_alloc(dev, &mcde_drm_driver, struct mcde, drm);
+	if (IS_ERR(mcde))
+		return PTR_ERR(mcde);
 	drm = &mcde->drm;
 	drm->dev_private = mcde;
-	drmm_add_final_kfree(drm, mcde);
+	mcde->dev = dev;
 	platform_set_drvdata(pdev, drm);
 
 	/* Enable continuous updates: this is what Linux' framebuffer expects */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
