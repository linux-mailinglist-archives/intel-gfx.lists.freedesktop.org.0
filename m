Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC8B1688D4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:05:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9FB76F540;
	Fri, 21 Feb 2020 21:04:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 502C96F540
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:04:10 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id b17so3318811wmb.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:04:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lR2wxhEMO1iAwv/lDViPlGyIqGuT/3YAbqqQkhbFVx4=;
 b=SZWxi7MUcTSHimEAOGAwKrWJQwh3t4tMYGyioxQogk/yeJid5aGXTUwogsRJW2I83D
 QsWvElZyzgB4qkUSUUDUyQVjJ8l+5vc7K/rH0tiz6hjPlxJmp5q2tYYTqEGHwCA3T8QB
 v3QyFZvZSMYUZUHmSoh0xl7wUhPDmHHHiKF34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lR2wxhEMO1iAwv/lDViPlGyIqGuT/3YAbqqQkhbFVx4=;
 b=ZsZBQC+tz4wB3cd2MCir/3wUewzZpji6FERThxtb85TvtN9pzuTHkTuwRcWCWkyCGR
 mgylvF93aQ0ela6gU4QTq10dP/EPtGbOq06syHMH5mO/+2ULfLKS4Az8aB1kNMV8YHBn
 3j8GSOxmL58QQLkiEq6saF63KPkWeaoC5FTls/Yby+sQvlmba+Z3zAOaIPqW9cNwxEB8
 i52qnkuTF9ZMPP29Q7aIEbagE7ER/1d52WdTdEHVrIwJWf+zxXf2ISYBS9NiDC8c0TCE
 SZwIyKWsRKS4s5HtxJq1CZtr28KMPyQ38m0psjcappfE4CmEfYy/sSFl/tn6J8mx4Pug
 /A3w==
X-Gm-Message-State: APjAAAWUkG/QeuQmJGKuKE4Wmc6N4J9jD9oPOOnDnMeOMkZVZrdn4G3d
 W+bqEvQqadJkWv/+dRimzljLqw==
X-Google-Smtp-Source: APXvYqwk/xDS+fVVmlFGAqvh/znVHgSn/w+ADTca839zhuNxeVbAIsRbQXHU81cKPdDNy3yWQG+TMA==
X-Received: by 2002:a1c:dc85:: with SMTP id t127mr6147626wmg.16.1582319049038; 
 Fri, 21 Feb 2020 13:04:09 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.04.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:04:08 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:02:59 +0100
Message-Id: <20200221210319.2245170-32-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
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
Cc: Paul Cercueil <paul@crapouillou.net>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>
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

Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
