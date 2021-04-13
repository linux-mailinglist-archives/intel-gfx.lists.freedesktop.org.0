Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4531B35DBA2
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 11:49:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB396E2DF;
	Tue, 13 Apr 2021 09:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A0C26E24E
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 09:49:15 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 g18-20020a7bc4d20000b0290116042cfdd8so10291146wmk.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Apr 2021 02:49:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kflxSBqLQaPPRJYxvd/LNnDO2sK1GIdN9i+UPGrUqpQ=;
 b=lOs4ZUh4aFlEAaDuPradkJytOePPNKjsnB5l9JuSEDrjMBvEpASLZ6BFMnpndw7Y8y
 AamCWbb+JylQb+6X4NPZiuNpPGuS6PXOcWmZxn05iqyA+suNvol8MLHwF84wMeVLilmK
 q74N8RB2VZC8JUEJ7Zbtqur750OzSJz7Bdn6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kflxSBqLQaPPRJYxvd/LNnDO2sK1GIdN9i+UPGrUqpQ=;
 b=nYXVdgnUzd3zb9ZVfjzEUbLffuHHAZF4eAStuNTm6CjxB8BnuZCHBkISTKu4SyrzzC
 2mc/r+reLqgZZZbv1BgrlQXwzKPpxyn2Px2otDFUg+sWdx+2E8L0ENr0sSiZzmBDsxdm
 NTJs9UCWoEBHFbU5I4oEzVv8SWK68FsEvSbCW2NIgxoc+8MW3Xh9vGAvWZRhKDEjTSYD
 7mPb7eZacs07RVZyOPloo0kFrOyQGPmwUsAyEzdzKTqq882tSaZrkT/nUqMMHIPF3T74
 oIdStyXUkOYNqI3eb0YHmRRZT0+IumCfqTersYUqJkfNKv++M/1lvkNggW5IAnWkGh6N
 clNw==
X-Gm-Message-State: AOAM5326v44fOgJZWNZkBxJiBnvkw7vv4Fahwde2zYMJOWxjAfMvl2MS
 S5EIlMQ+cQfmO+Whqm1zkwGL2jv+EtH8rA==
X-Google-Smtp-Source: ABdhPJwJSGRymhGmSzjJLWTzNCtPih2XjXM79SNIHdkr/3jbietkqqwhLRz8rdVTpcUEryV7iJRfyQ==
X-Received: by 2002:a05:600c:3594:: with SMTP id
 p20mr3115175wmq.173.1618307354288; 
 Tue, 13 Apr 2021 02:49:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 64sm1956458wmz.7.2021.04.13.02.49.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 02:49:13 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 13 Apr 2021 11:48:56 +0200
Message-Id: <20210413094904.3736372-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/12] drm/imx: Don't set allow_fb_modifiers
 explicitly
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
Cc: Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since

commit 890880ddfdbe256083170866e49c87618b706ac7
Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Date:   Fri Jan 4 09:56:10 2019 +0100

    drm: Auto-set allow_fb_modifiers when given modifiers at plane init

this is done automatically as part of plane init, if drivers set the
modifier list correctly. Which is the case here.

This one actually set it twice on top of what drm_plane_init does, so
double-redundant!

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/imx/dcss/dcss-kms.c | 1 -
 drivers/gpu/drm/imx/imx-drm-core.c  | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/imx/dcss/dcss-kms.c b/drivers/gpu/drm/imx/dcss/dcss-kms.c
index b549ce5e7607..37ae68a7fba5 100644
--- a/drivers/gpu/drm/imx/dcss/dcss-kms.c
+++ b/drivers/gpu/drm/imx/dcss/dcss-kms.c
@@ -52,7 +52,6 @@ static void dcss_kms_mode_config_init(struct dcss_kms_dev *kms)
 	config->min_height = 1;
 	config->max_width = 4096;
 	config->max_height = 4096;
-	config->allow_fb_modifiers = true;
 	config->normalize_zpos = true;
 
 	config->funcs = &dcss_drm_mode_config_funcs;
diff --git a/drivers/gpu/drm/imx/imx-drm-core.c b/drivers/gpu/drm/imx/imx-drm-core.c
index 2ded8e4f32d0..8be4edaec958 100644
--- a/drivers/gpu/drm/imx/imx-drm-core.c
+++ b/drivers/gpu/drm/imx/imx-drm-core.c
@@ -209,7 +209,6 @@ static int imx_drm_bind(struct device *dev)
 	drm->mode_config.max_height = 4096;
 	drm->mode_config.funcs = &imx_drm_mode_config_funcs;
 	drm->mode_config.helper_private = &imx_drm_mode_config_helpers;
-	drm->mode_config.allow_fb_modifiers = true;
 	drm->mode_config.normalize_zpos = true;
 
 	ret = drmm_mode_config_init(drm);
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
