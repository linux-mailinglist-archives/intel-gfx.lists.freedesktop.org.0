Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD941688BE
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:04:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1667F6F528;
	Fri, 21 Feb 2020 21:04:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E67F6F528
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:04:12 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id z3so3540480wru.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IUEc+CrkOe8AtWKYGxoHD/G/uVCfJzR2tmcYXyOAXL4=;
 b=M82rh1lRgfSb9Oha5Ptds/9KVdq0j3HCk4c/g+FRjTsowXzvpLqEVQBYxb616k5pPH
 zvrQ/EBt/j455M6dqG11vs3SZxhWMfI78fZwtv8AxhTfOlYkNPZBR8hnbKKVBMjn1sss
 QiFStVgEjZMyuF6j8Bz3iF/VxPJTujHRZIGGk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IUEc+CrkOe8AtWKYGxoHD/G/uVCfJzR2tmcYXyOAXL4=;
 b=eebzsA9amKQeccG+cZ1vDV+PeRzLOzcB9NNPobA7RqmnWlMWJ7lO/KBvlAb5/+PkFi
 RocS+HcLgs/Qk4kJxwZDki4+6lJlPew47q7qEjm8YEKAa6QMP8N5R7f+yRfxlkLIqZOS
 NYQZmAmlmAx3E322Bh3kBK2Kp9Dsv2A3Rz43enZ4cRSEpk7p3RVaWjg9ZDr/ySDqjKcx
 bj++cr9pUgxT8UrOtAyPWT+PJdvm4cG68UTByGap02etFNHj93s8LTU9lZGnLPWd5eIl
 lAufTuffzo/GdQTwrp/hu5VkUotOo1Z1pC6ey1ktlJ7TecWFc9oBz/PCS//mzfWIOobI
 NZNQ==
X-Gm-Message-State: APjAAAVKr9evFGyL8PgecDeyqeur7j+ZHFjp4VN5EfSMzqDUDxTEPpf0
 c9YWtb569clmez2QtyFP05p1sw==
X-Google-Smtp-Source: APXvYqwNxPEpZ+BBk+HmSCqGTqDkYWx44KDkkHpj6DWyy+J3Bjta8dXI4383amw4lW89UCn0CbpBVQ==
X-Received: by 2002:a5d:5381:: with SMTP id d1mr49649112wrv.259.1582319051170; 
 Fri, 21 Feb 2020 13:04:11 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.04.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:04:10 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:03:01 +0100
Message-Id: <20200221210319.2245170-34-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 33/51] drm/mcde: More devm_drm_dev_init
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

Auto-unwind ftw, now possible with the fixed drm_device related
management.

Aside, clk/regulator seem to be missing devm versions for a bunch of
functions, preventing a pile of these simpler drivers from outright
losing their ->remove hook.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_drv.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
index b8ca99995e51..3e92a44397cf 100644
--- a/drivers/gpu/drm/mcde/mcde_drv.c
+++ b/drivers/gpu/drm/mcde/mcde_drv.c
@@ -312,7 +312,7 @@ static int mcde_probe(struct platform_device *pdev)
 		return -ENOMEM;
 	mcde->dev = dev;
 
-	ret = drm_dev_init(&mcde->drm, &mcde_drm_driver, dev);
+	ret = devm_drm_dev_init(dev, &mcde->drm, &mcde_drm_driver);
 	if (ret) {
 		kfree(mcde);
 		return ret;
@@ -331,12 +331,12 @@ static int mcde_probe(struct platform_device *pdev)
 	if (IS_ERR(mcde->epod)) {
 		ret = PTR_ERR(mcde->epod);
 		dev_err(dev, "can't get EPOD regulator\n");
-		goto dev_unref;
+		return ret;
 	}
 	ret = regulator_enable(mcde->epod);
 	if (ret) {
 		dev_err(dev, "can't enable EPOD regulator\n");
-		goto dev_unref;
+		return ret;
 	}
 	mcde->vana = devm_regulator_get(dev, "vana");
 	if (IS_ERR(mcde->vana)) {
@@ -487,8 +487,6 @@ static int mcde_probe(struct platform_device *pdev)
 	regulator_disable(mcde->vana);
 regulator_epod_off:
 	regulator_disable(mcde->epod);
-dev_unref:
-	drm_dev_put(drm);
 	return ret;
 
 }
@@ -502,7 +500,6 @@ static int mcde_remove(struct platform_device *pdev)
 	clk_disable_unprepare(mcde->mcde_clk);
 	regulator_disable(mcde->vana);
 	regulator_disable(mcde->epod);
-	drm_dev_put(drm);
 
 	return 0;
 }
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
