Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DC119D85F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 16:00:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 675176EBE4;
	Fri,  3 Apr 2020 13:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FDF86EBCB
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2020 13:59:12 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id t7so8611196wrw.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 03 Apr 2020 06:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kj9EgXkkoDR4+lgYLOHu9a1ttAywo89xqS89MfiMLWE=;
 b=j2MAwijYWcDut8+40MYT5U6kGuM27kpjqaJ8c008nKLhGhnIy71usPLOuzkSQ73Q4N
 J5RZJenC3uZYM41S4VRXtG4YHdpDLbvpKPJzFc0zrBcja2JLkafiJmGQo8bUIF0fnCJ/
 5ihMsn/+xxtXO6WjGzXjp7joqheZvj5a2M2Ac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kj9EgXkkoDR4+lgYLOHu9a1ttAywo89xqS89MfiMLWE=;
 b=QjAlD3l+VDepTKPoVlyzp4oK3jf0NljZxWV7+dj7SkG3WFnsY6TW/qrrD1sh1MO/I/
 vnpuyAFNKk0/boHd4yT+m2e7Ue4XSUSXJfkTDsh9WQD7jKsbo1I3reAJWs2GXGnN7Kue
 LSDLh51BLLe62Z9Op/SYDrUYeF4X3DFMk8/ZS9R1uW0j3meJ7ormjRD0SHugePV0dX+Y
 s534yBjjCbZWJiJWxb6+SZZm6nbND3BjNryVkA7MJ5+MO7i/5HNM7drbaAjhcCQdwS1v
 g06v3ry2Dn9RdTVlZ7LRW7Pb7N3u6I03PeCIY0V6otckzYgwYZ3uvmtqJpNm2KyTWx0a
 BB/g==
X-Gm-Message-State: AGi0PuZzOgWR21yRDxqHq3zXlBHgZCdyc4aN+pZc6gT7v4WuUBe6pUDq
 NYiOmfA7tQMNdS2/ddWXYRpDOg==
X-Google-Smtp-Source: APiQypIeclvs32sFZOEF6n+jt6pCYAANPAGnmvAn7aCu1NevuMqZRJkdxQwhtgcje8AJFpuXKHIEnQ==
X-Received: by 2002:adf:e948:: with SMTP id m8mr9094258wrn.193.1585922351320; 
 Fri, 03 Apr 2020 06:59:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id f141sm11783919wmf.3.2020.04.03.06.59.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 06:59:10 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri,  3 Apr 2020 15:58:16 +0200
Message-Id: <20200403135828.2542770-33-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 32/44] drm/mcde: Use devm_drm_dev_alloc
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

Already using devm_drm_dev_init, so very simple replacment.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_drv.c | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
index 88cc6b4a7a64..bdb525e3c5d7 100644
--- a/drivers/gpu/drm/mcde/mcde_drv.c
+++ b/drivers/gpu/drm/mcde/mcde_drv.c
@@ -307,24 +307,16 @@ static int mcde_probe(struct platform_device *pdev)
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
 	mcde->oneshot_mode = false;
-	drm->dev_private = mcde;
 
 	/* First obtain and turn on the main power */
 	mcde->epod = devm_regulator_get(dev, "epod");
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
