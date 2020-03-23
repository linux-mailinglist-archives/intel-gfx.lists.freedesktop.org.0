Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B4E18F78C
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15F3D6E245;
	Mon, 23 Mar 2020 14:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27BC56E207
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:41 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id f3so17418252wrw.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JvZgrmn4j7ZJxRKN8yvq6qs0aoxyT6PgO1KaxmuLjXA=;
 b=gaolUwAVRpIXNsl9tRtlLYfv8BglIf3X30xf5/pUflKhxaCYacuVs2zsHiQQff7QLL
 CF7AOU5h5rgxgEkqpFGm8EKWdnIv1Bs9kPhaln7POEx21WxjZYN9GRRDEQdPb1NuZeBC
 Z8HzkdXFSyB/Ms246W21GZBRWunLNyVHvhmhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JvZgrmn4j7ZJxRKN8yvq6qs0aoxyT6PgO1KaxmuLjXA=;
 b=EK8sKzVgU5zKFlsnKgHu1YpHsdIyXzcFJVYCz1RAE8adrzaoz/Dt1S7VwMevKbO0+0
 eHQZIZj2AnqkoAuGfmatUcbqhm1xNJb82KQA7fCZ6y8EeJY7V3pZ47Wt/0vzRQSHLnIV
 k+11ZQ/B0p3wyMSjnD+IbNcz7uAzt2uPVx7cQfBBC+rPKCoFLTFqXmvfByb4JI7hUACt
 i0MzSlJmsQX0hR2MV40wNEN9qiuNqVnX1f1leBtSh787H7RoWKLtpyPizv+lFdwL/Xle
 5Z4fh9xKugudg3BfeWMX7jKm9E9zuvPn6ybxS9GoCxrGm3f2fwgDgPpYR3sHHqtTvt5o
 s5Gg==
X-Gm-Message-State: ANhLgQ3akgMuqQjf4Vmyc/8tj4RXpGoWYrSzXpwe+BK/EMTGzyLGetS7
 1rJkh2SMFLExzfjcsVWkBREXnQ==
X-Google-Smtp-Source: ADFU+vvYwHIJudTYQhuzx/tWaZBXOGVrniY4ilqmhDSSiS0+dHk14P9Z/ol+keNgTpOqbKtLA5GjFQ==
X-Received: by 2002:adf:a3db:: with SMTP id m27mr31243328wrb.350.1584975039694; 
 Mon, 23 Mar 2020 07:50:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:39 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:30 +0100
Message-Id: <20200323144950.3018436-32-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 31/51] drm/ingenic: Drop explicit
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
 Paul Cercueil <paul@crapouillou.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allows us to drop the drm_driver.release callback.

This is made possible by a preceeding patch which added a drmm_
cleanup action to drm_mode_config_init(), hence all we need to do to
ensure that drm_mode_config_cleanup() is run on final drm_device
cleanup is check the new error code for _init().

v2: Explain why this cleanup is possible (Laurent).

v3: Use drmm_mode_config_init() for more clarity (Sam, Thomas)

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Paul Cercueil <paul@crapouillou.net> (v2)
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Paul Cercueil <paul@crapouillou.net>
---
 drivers/gpu/drm/ingenic/ingenic-drm.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c b/drivers/gpu/drm/ingenic/ingenic-drm.c
index 192aaa4421a3..a9bc6623b488 100644
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
+	ret = drmm_mode_config_init(drm);
+	if (ret)
+		return ret;
+
 	drm->mode_config.min_width = 0;
 	drm->mode_config.min_height = 0;
 	drm->mode_config.max_width = soc_info->max_width;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
