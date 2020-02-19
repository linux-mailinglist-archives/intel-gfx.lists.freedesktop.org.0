Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6C21641DE
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A366EB69;
	Wed, 19 Feb 2020 10:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 700E46EB5F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:20 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id a6so6143859wme.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ra/jYUSiXamgYu/JamVQr8pWXrAQtMQY8c7jRMMc6pY=;
 b=S8G+9qlagL5yIxvDS2Cmne8waOo0yaG0iNuzqxZupk4N2TnpZOeD9Y+aBIzJ89UiyC
 yMXxqMPId9KcRWO43mwxgBpTIwZx/8M+Ez3vr0pbRlhmimOiJemxIuG0PsCnUqm+hYYV
 hasVGlBcvKMJ2cVFWasJDiqAsucEUXpFD26Zw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ra/jYUSiXamgYu/JamVQr8pWXrAQtMQY8c7jRMMc6pY=;
 b=d17LR4hdRjavJpOBolP8EvU5G6S0dRaQF2X0iAMCG2qBj2SnR72QuH/Crs66zTZN7U
 w7wNQccqa/V74aAYhtLMZ4dKZ51xIWfQY9WDe+oFsI6ZDznsypF4aKyw+PGBpiKoQ9M2
 H+R8dx8vEdSowmoTA8cmiOjXpINUGN3MNcazxUtvnarmAU1tkj3e7/i48svGMpbN7Q6c
 lLsiMfueN6iqxHWz40kgifpYBvkyWfmD0K56Zj1Qje70X1gV0U6oaiubV129HyBRbtJI
 JE5ETKUfCCjw45D/50UCkAxWwaGwKE68e6fXH422mTKfggMAAMntQNhSiVuuUn61QmEO
 voBw==
X-Gm-Message-State: APjAAAXh+M/WRUNuq49gvJKfRYjdA6pdjqSSoaXfWBWFkuvFOJqflKv5
 Qjw7yTt1HrG/H8Aprk0FrMCdhA==
X-Google-Smtp-Source: APXvYqyXrsEWE44mHqV6H9DQnZaeWEEjB0A4IvWm1mBkRUT8/uZfDnbxEm/1kdjWKDQVjddy+Vgj8A==
X-Received: by 2002:a7b:c3d1:: with SMTP id t17mr9100246wmj.27.1582107739143; 
 Wed, 19 Feb 2020 02:22:19 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:18 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:10 +0100
Message-Id: <20200219102122.1607365-41-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 40/52] drm/shmob: Drop explicit
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
 linux-renesas-soc@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's right above the drm_dev_put().

Aside: Another driver with a bit much devm_kzalloc, which should
probably use drmm_kzalloc instead ...

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Cc: linux-renesas-soc@vger.kernel.org
---
 drivers/gpu/drm/shmobile/shmob_drm_drv.c | 2 --
 drivers/gpu/drm/shmobile/shmob_drm_kms.c | 6 +++++-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/shmobile/shmob_drm_drv.c b/drivers/gpu/drm/shmobile/shmob_drm_drv.c
index b8c0930959c7..ae9d6b8d3ca8 100644
--- a/drivers/gpu/drm/shmobile/shmob_drm_drv.c
+++ b/drivers/gpu/drm/shmobile/shmob_drm_drv.c
@@ -192,7 +192,6 @@ static int shmob_drm_remove(struct platform_device *pdev)
 
 	drm_dev_unregister(ddev);
 	drm_kms_helper_poll_fini(ddev);
-	drm_mode_config_cleanup(ddev);
 	drm_irq_uninstall(ddev);
 	drm_dev_put(ddev);
 
@@ -288,7 +287,6 @@ static int shmob_drm_probe(struct platform_device *pdev)
 	drm_irq_uninstall(ddev);
 err_modeset_cleanup:
 	drm_kms_helper_poll_fini(ddev);
-	drm_mode_config_cleanup(ddev);
 err_free_drm_dev:
 	drm_dev_put(ddev);
 
diff --git a/drivers/gpu/drm/shmobile/shmob_drm_kms.c b/drivers/gpu/drm/shmobile/shmob_drm_kms.c
index c51197b6fd85..e6e34bb75ba0 100644
--- a/drivers/gpu/drm/shmobile/shmob_drm_kms.c
+++ b/drivers/gpu/drm/shmobile/shmob_drm_kms.c
@@ -126,7 +126,11 @@ static const struct drm_mode_config_funcs shmob_drm_mode_config_funcs = {
 
 int shmob_drm_modeset_init(struct shmob_drm_device *sdev)
 {
-	drm_mode_config_init(sdev->ddev);
+	int ret;
+
+	ret = drm_mode_config_init(sdev->ddev);
+	if (ret)
+		return ret;
 
 	shmob_drm_crtc_create(sdev);
 	shmob_drm_encoder_create(sdev);
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
