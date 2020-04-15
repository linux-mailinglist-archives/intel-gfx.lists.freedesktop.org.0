Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA321A94BB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 09:42:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 932C76E8A1;
	Wed, 15 Apr 2020 07:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25D286E885
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 07:41:14 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id a201so17307072wme.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 00:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zYsyCYlUTNp19HneBY4lXiaAEzda+/qQSjN5TCET0Jg=;
 b=dXEUJbhWzX558pMiChWHVq1ZBWdSwgZ2BZKiaSb2GQ0/EUCofZHR8jKb74TgQPKFWv
 Ozvkl3TWECaHXrpA87Sh9a65Urag+pqKk78QmYsyTtKe561emurRPNw/Eh1EG1ki7nxv
 mtn07WyFmXGbQnjwuQad4ZFWnxe6kk1Zpcz1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zYsyCYlUTNp19HneBY4lXiaAEzda+/qQSjN5TCET0Jg=;
 b=iIjrBvWTlta2yBdjSlpE0qvyKXMMX1v5rjiv6A95MGdf8L1XMxKFRSxJCAD00XTv9g
 OcmSoSYqBPGjV2NlFW4a3NZi/VwWqH1p+Ro7P7aGkE1QEgIasQtNC8jh+ObM4KbJQnRI
 yFub4x3r/EtOFA1yCpW/4vrEaNyPxDuPApOc36fl4ehqzifnhzRZl912OFPaCDOMO2lk
 lZqdf81O6CayCOy32/M19OwGDXVN5682ca2bqrceGwcoKHk5rUMq2zW6JQ8yn4gmWb16
 aN3AGLmFzxAuIBWwXEa8WE8u3JbB3g/fxrGGHMGyznk51S/ag7ssuzXtHV+LuM1GimD6
 sPgA==
X-Gm-Message-State: AGi0PuZd+eKCG25cZyfVk+RRZD6sUa2jwsThuYlnIEG8LkwOX6GBK8eW
 17JnQPfEJYneske/ESs/atS5zqJVBZw=
X-Google-Smtp-Source: APiQypI+UCF6z3vFSUDWwFiaq6Ltv77FkhIClEqxG1fuQrPeC7TZGX/UeP0t05C6iIQO3JfFBaATsw==
X-Received: by 2002:a1c:6a17:: with SMTP id f23mr3626897wmc.136.1586936472416; 
 Wed, 15 Apr 2020 00:41:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 15 Apr 2020 09:40:05 +0200
Message-Id: <20200415074034.175360-31-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 30/59] drm/ingenic: Use devm_drm_dev_alloc
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
 Daniel Vetter <daniel.vetter@ffwll.ch>, Sam Ravnborg <sam@ravnborg.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Already using devm_drm_dev_init, so very simple replacment.

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Paul Cercueil <paul@crapouillou.net>
---
 drivers/gpu/drm/ingenic/ingenic-drm.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c b/drivers/gpu/drm/ingenic/ingenic-drm.c
index 24cc3587cea5..2dd1f3020fcb 100644
--- a/drivers/gpu/drm/ingenic/ingenic-drm.c
+++ b/drivers/gpu/drm/ingenic/ingenic-drm.c
@@ -611,9 +611,10 @@ static int ingenic_drm_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
+	priv = devm_drm_dev_alloc(dev, &ingenic_drm_driver_data,
+				  struct ingenic_drm, drm);
+	if (IS_ERR(priv))
+		return PTR_ERR(priv);
 
 	priv->soc_info = soc_info;
 	priv->dev = dev;
@@ -622,13 +623,6 @@ static int ingenic_drm_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, priv);
 
-	ret = devm_drm_dev_init(dev, drm, &ingenic_drm_driver_data);
-	if (ret) {
-		kfree(priv);
-		return ret;
-	}
-	drmm_add_final_kfree(drm, priv);
-
 	ret = drmm_mode_config_init(drm);
 	if (ret)
 		return ret;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
