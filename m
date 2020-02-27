Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64387172674
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 19:16:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 674CE6ECEC;
	Thu, 27 Feb 2020 18:16:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 328196ECE4
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 18:15:51 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id e8so4639736wrm.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=igpRmo6gaDMBMGIx+0UKty4ytpIN+f0m76awjcPMvLA=;
 b=FO1CsynCET+atcd1NDCMfEcy8Bz9s/yEnGgFLe9XLVH9qOqKTfEOrTsBRa6VCmuMqn
 kySGboUyifMmTttGz9K5DtL/a/iHqWNgQhQnkATVo6Kh8dO/agGlDkSlovJa0J8siRL7
 Hak0g3rxv/8O7NElIhh96xYAWdHibmVSKV5jI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=igpRmo6gaDMBMGIx+0UKty4ytpIN+f0m76awjcPMvLA=;
 b=U0IHG4NqPxBrw4CHDFo651whFT7hUBiRXrQTgZu/oe1aI7MPVcVEj/d0774/oAE75W
 i5TJ+uMfS4sGIVe2AEPdcojBlHLI7OwX5K4+QPwawXYd52RpYuh7NSqkwC1I1JErxhzz
 yDpE53JjiAl5gQaoFwy/EMUSYDnqqq8zc7zaqaz7KSON6Gp0WIltP773hXkEqAJJXyS8
 z+sHKSwDFLWK+rmItWtH3ejHeXdqXEhAT+GymyKGx1HDECw9J8xU8iLz+PtNfO6dN1Jd
 h8hwYbR4EkY+97HzoOUUbLGwRDgeDgRby0EQ4BwdShAHbh9nE/je+fcKxEn2pqFvszGS
 Vycw==
X-Gm-Message-State: APjAAAXw2ObPdWiK22iJmToQq8hkARxpLRIP0mfQn6r9mZ+NMtfpeoTG
 W6iZr5Pcqd2xKRG/J61gI2uJfA==
X-Google-Smtp-Source: APXvYqwGFG95Xr52Fz4Cdzm22jQyh4sZSEUAcledAMmxRie0msgpljAqTjoSmBHVlBG581se97hS8g==
X-Received: by 2002:adf:a18b:: with SMTP id u11mr152270wru.148.1582827349869; 
 Thu, 27 Feb 2020 10:15:49 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q1sm8551152wrw.5.2020.02.27.10.15.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 10:15:49 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Thu, 27 Feb 2020 19:14:47 +0100
Message-Id: <20200227181522.2711142-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
References: <20200227181522.2711142-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/51] drm/inigenic: Use drmm_add_final_kfree
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
 m.felsch@pengutronix.de, Paul Cercueil <paul@crapouillou.net>,
 Daniel Vetter <daniel.vetter@intel.com>, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

With this we can drop the final kfree from the release function.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Paul Cercueil <paul@crapouillou.net>
---
 drivers/gpu/drm/ingenic/ingenic-drm.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/ingenic/ingenic-drm.c b/drivers/gpu/drm/ingenic/ingenic-drm.c
index 9dfe7cb530e1..e2c832eb4e9a 100644
--- a/drivers/gpu/drm/ingenic/ingenic-drm.c
+++ b/drivers/gpu/drm/ingenic/ingenic-drm.c
@@ -23,6 +23,7 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_irq.h>
+#include <drm/drm_managed.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 #include <drm/drm_plane.h>
@@ -490,11 +491,8 @@ static irqreturn_t ingenic_drm_irq_handler(int irq, void *arg)
 
 static void ingenic_drm_release(struct drm_device *drm)
 {
-	struct ingenic_drm *priv = drm_device_get_priv(drm);
-
 	drm_mode_config_cleanup(drm);
 	drm_dev_fini(drm);
-	kfree(priv);
 }
 
 static int ingenic_drm_enable_vblank(struct drm_crtc *crtc)
@@ -639,6 +637,7 @@ static int ingenic_drm_probe(struct platform_device *pdev)
 		kfree(priv);
 		return ret;
 	}
+	drmm_add_final_kfree(drm, priv);
 
 	drm_mode_config_init(drm);
 	drm->mode_config.min_width = 0;
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
