Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 413DC172695
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:16:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77686ECF5;
	Thu, 27 Feb 2020 18:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C16EF6E954
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:16:12 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id r7so2357830wro.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IUEc+CrkOe8AtWKYGxoHD/G/uVCfJzR2tmcYXyOAXL4=;
 b=g1nJ1GOEkCWCWepXpv5f0Owhj9hUVzZyyckW3u/polJaOAwPsd0YOm3A0vCNF1mKtE
 EAnm+r6BW3rqZbWq+3m+W8BEJaqt8idkobB5EnlHzVrE7/0sJjUV2NydfrLOAY7SDuZQ
 v0/UksYwRU+iihMX0jcXGXZH9MBJ5GH82Yrz0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IUEc+CrkOe8AtWKYGxoHD/G/uVCfJzR2tmcYXyOAXL4=;
 b=pKQWulHMYdsF+h6B4/WyzWf8ZsK9V5LRlVvv2g7u/7i8KYsgG3O4MPegSSstj8THoE
 SBTZkVzQ5TMLMIQf3SAwsue5uXoXVJQPb7p2CweepczUCjwqS9YckTlNCgeF18OmYe/o
 /5dDlZxRYxt505QYvjLGzuoVo76I+DYWdiC8NpFqEoZ/74vCCFBIYvSfjgOUMyjSEBPS
 MrINhaMq9Clb40vzHqr2KtyhfoF53L90cRszIjgjX88X+U3lTDEWmOuLVay2eyB8t/Q4
 OMT4ij0kIRZW9sCvyatCsiNj2iJ0yQSXD9j5Zn0SIGmk7lzliIsRlJIyvTBCRJdW09n9
 IX1Q==
X-Gm-Message-State: APjAAAWFPBnDvSQrBF8ZocK0fPVIjKsTFhGURTSdLu4LqU5bv995kIfO
 leFzc3ZgYqH8nCqFxNWBU9pJug==
X-Google-Smtp-Source: APXvYqyiyju0GFq+4Sw02NEEPCy0v5PMwcKgCtHB98ULfXCsw/lij5fBEAj5Q/jHwaCo2L6wedDNMw==
X-Received: by 2002:adf:ef4f:: with SMTP id c15mr142303wrp.200.1582827371475; 
 Thu, 27 Feb 2020 10:16:11 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.16.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:16:10 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:15:04 +0100
Message-Id: <20200227181522.2711142-34-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
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
 m.felsch@pengutronix.de, Daniel Vetter <daniel.vetter@intel.com>,
 Linus Walleij <linus.walleij@linaro.org>, l.stach@pengutronix.de
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
