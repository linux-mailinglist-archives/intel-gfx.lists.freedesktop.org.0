Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBCF1E3DF2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 11:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 994A3896B0;
	Wed, 27 May 2020 09:48:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C28C4896B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 09:48:04 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id u12so2393286wmd.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 02:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UR+oqHX3Z65xg1wAwvf/sv5W1xHkc5UdSBKrFC8Pu8Q=;
 b=FUmWoJACWDcmkjRH6kDrBMqoAEZEPWOUlP0Kr/9+XZIGlPCkq2mPPQTe2NQEIySneg
 Pwdyk1qWGem4sRPBuWhn7uFRxocuMEjwBrV2DjYY3m0aTfxni92niiedQXHAw52gs1EW
 4zZjuH1K/SpMY5QCxQrT/kaCAeXh0X0BK3nec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=UR+oqHX3Z65xg1wAwvf/sv5W1xHkc5UdSBKrFC8Pu8Q=;
 b=bnXmF53oPCIY3A+qBZuYofMVDf2MJ8sTabCY152kE4gGPGDnHaRhlBYIcOst3IYKna
 qs6GX0vYDNAY5KWH/nOUtC6LU/0SpJSDBK2OK2KXdB7tBmaFn5uKqd3DjE/MiYNcAfqs
 Rkr24G1xNzo60RoWaz9M7WKJUlj3Vp8EhvRG2b8rT83K5pcZ5fIowdLDkzrs48dOdFBn
 /ozdyEb4pRqfR5TQFj+LXkA3L7M4M6Otfi9hyFGMfAmXXEVctat7T9Fz6WQtM9kJzWNn
 CCjP2fjcV3i03y4/s7MrkURUCPnyIQJZo/h4XiT+TsrziSyFZMm8lcik0g03lPeKmxeh
 tUKQ==
X-Gm-Message-State: AOAM530AZ/JJuQVFj1FMQ7aLK85z1bnhkYdhf+w/XyGQD96JVknaQnip
 P0asYPk3wmoazEwcjhMBNXkYRA==
X-Google-Smtp-Source: ABdhPJwfeJUwsL273S3yIOX7avXf1zfG5f5WAhvIQCbl9w+jX3peXBFWAS4CNo0JUJ5JqqfJLklCbQ==
X-Received: by 2002:a05:600c:4410:: with SMTP id
 u16mr3424921wmn.88.1590572883411; 
 Wed, 27 May 2020 02:48:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s8sm2353489wrg.50.2020.05.27.02.48.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 02:48:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Wed, 27 May 2020 11:47:56 +0200
Message-Id: <20200527094757.1414174-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/mxsfb: Call drm_crtc_vblank_on/off
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Stefan Agner <stefan@agner.ch>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

mxsfb has vblank support, is atomic, but doesn't call
drm_crtc_vblank_on/off as it should. Not good.

With my next patch to add the drm_crtc_vblank_reset to helpers this
means not even the very first crtc enabling will vblanks work anymore,
since they'll just stay off forever.

Since mxsfb doesn't have any vblank waits of its own in the
enable/disable flow, nor an enable/disable_vblank callback we can do
the on/off as the first respectively last operation, and it should all
work.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Marek Vasut <marex@denx.de>
Cc: Stefan Agner <stefan@agner.ch>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/mxsfb/mxsfb_drv.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
index 497cf443a9af..1891cd6deb2f 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
@@ -124,6 +124,7 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
 	drm_panel_prepare(mxsfb->panel);
 	mxsfb_crtc_enable(mxsfb);
 	drm_panel_enable(mxsfb->panel);
+	drm_crtc_vblank_on(&pipe->crtc);
 }
 
 static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
@@ -133,6 +134,7 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
 	struct drm_crtc *crtc = &pipe->crtc;
 	struct drm_pending_vblank_event *event;
 
+	drm_crtc_vblank_off(&pipe->crtc);
 	drm_panel_disable(mxsfb->panel);
 	mxsfb_crtc_disable(mxsfb);
 	drm_panel_unprepare(mxsfb->panel);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
