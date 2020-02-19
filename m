Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF82B1641C0
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2020 11:23:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 268316EB8E;
	Wed, 19 Feb 2020 10:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F16AA6EB5F
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 10:22:11 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id c84so6137296wme.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Feb 2020 02:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TINQTtNWQ1MjVJ1+HAR2tzhjIndOHUAc38+fw2BOHX4=;
 b=fDw8UiD2JAF+ht4GPJfkm1fLdHQ9PU6Cef3kE5aca/4oLmA7qJ1O6zdH4h7b47Op9S
 U8gdD8LL6569/PZGwCM+1RaTLL305czsdMd0saA+wNW42H84WIgXVBwXrVesAcw0C3Ke
 oqwOAfph472CepGzMID7u/qtgM8u74WayJKK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TINQTtNWQ1MjVJ1+HAR2tzhjIndOHUAc38+fw2BOHX4=;
 b=tC5OEkQr8sfuYp/f0mHvjYfkYMiM+eIXv7gKJjrvoFR6pMlKqacLeB+znIS82JsOMC
 YNEiWDv/aAUZHjOeSE3AOMr4xTivT+q2F/7ln21YS4E6f8hPVr2YOrisn5YaNMyehVoa
 +3Q0nMhKaw0oA2DTK2HlyfMQ5b6FzgF9Ygbs+t3jAesaZp9drQ+idRBe4yIcwatqLtDM
 tpW76bB+AhdBWsr9LKbWCh/J5mGo/ONyQf7cXKEMzMyeKGsaxJ87tuErmcKrZJpumuK+
 Wco5e8ZfxIyHCsWn+YSzeWG6MqJSwCxsfQodU5U0tDJmYr7I8z8/02J+M8qmq0uT5hIt
 rpCw==
X-Gm-Message-State: APjAAAVclCtFLkD3ZM3wSXbCND+yRfVAmw6p5J0f+crIYyqMita+wcvk
 X3sP7a3N1VnOXaUOx4pJIoZGkA==
X-Google-Smtp-Source: APXvYqxGgE1TW6rrE6O8gA8msFqmxfxABgg6VcnkzgaigdgxDoZxL3h7lzeFw4hVlHgCAWcMBqNQ2w==
X-Received: by 2002:a1c:a4c3:: with SMTP id n186mr9193721wme.25.1582107729692; 
 Wed, 19 Feb 2020 02:22:09 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s23sm2370339wra.15.2020.02.19.02.22.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 02:22:09 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 19 Feb 2020 11:21:02 +0100
Message-Id: <20200219102122.1607365-33-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 32/52] drm/ingenic: Drop explicit
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
Cc: Paul Cercueil <paul@crapouillou.net>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allows us to drop the drm_driver.release callback.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Paul Cercueil <paul@crapouillou.net>
---
 drivers/gpu/drm/ingenic/ingenic-drm.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c b/drivers/gpu/drm/ingenic/ingenic-drm.c
index 06c195af714e..587369f6c0d7 100644
--- a/drivers/gpu/drm/ingenic/ingenic-drm.c
+++ b/drivers/gpu/drm/ingenic/ingenic-drm.c
@@ -489,11 +489,6 @@ static irqreturn_t ingenic_drm_irq_handler(int irq, void *arg)
 	return IRQ_HANDLED;
 }
 
-static void ingenic_drm_release(struct drm_device *drm)
-{
-	drm_mode_config_cleanup(drm);
-}
-
 static int ingenic_drm_enable_vblank(struct drm_crtc *crtc)
 {
 	struct ingenic_drm *priv = drm_crtc_get_priv(crtc);
@@ -537,7 +532,6 @@ static struct drm_driver ingenic_drm_driver_data = {
 	.gem_prime_mmap		= drm_gem_cma_prime_mmap,
 
 	.irq_handler		= ingenic_drm_irq_handler,
-	.release		= ingenic_drm_release,
 };
 
 static const struct drm_plane_funcs ingenic_drm_primary_plane_funcs = {
@@ -638,7 +632,10 @@ static int ingenic_drm_probe(struct platform_device *pdev)
 	}
 	drmm_add_final_kfree(drm, priv);
 
-	drm_mode_config_init(drm);
+	ret = drm_mode_config_init(drm);
+	if (ret)
+		return ret;
+
 	drm->mode_config.min_width = 0;
 	drm->mode_config.min_height = 0;
 	drm->mode_config.max_width = soc_info->max_width;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
