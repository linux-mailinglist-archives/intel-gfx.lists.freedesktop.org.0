Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D541F7B49
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 18:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026026E9F7;
	Fri, 12 Jun 2020 16:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A1626E9D8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 16:01:08 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id l17so8662495wmj.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 09:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ai/GewSrfjWw8RFQeCPuHksZB4nG2hUc1PyTsYsu8vY=;
 b=ZeUzy+BDFmi0hzuy2YABme60Odgjw9N5h0GbzfR0dKZEjHjk54gaM0zy63vTtb1U6j
 d6HxTg0jSBIvWnFVutKX2aZmDhoXbk8wD0WWmYn7sXx+fmKK8o3x1KAwxgScuA7hwUvD
 PVTN9wYaIC64+Req3Fk7QaiJVSfljRv00DUMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ai/GewSrfjWw8RFQeCPuHksZB4nG2hUc1PyTsYsu8vY=;
 b=FZqC3XoCIiQHgQAeP2sFGZvFZRZlLUjHe9tbhvg26uMBtPTU7BoxgnrYBxe4Bu0489
 Jm3UZU9PwD5Dyra5D2ZZgvsXYlK/D62SvapSP2DpTROFprhrL6gha6LLgMWlggyciTdE
 GdY12nmOLh9sUEvorl5J5BQ/msFPf7uuHuD+HOtboTuEXPS6bE+ihY0/OkP7CWBuCXLp
 tmHzyhPSQhfBX8oPsThYmzg9HVXWHSMx7h+FN6+NjWFOwkM/QHobPP0fIruwSt7WJ/Fu
 qDaWxLLr0l2lABAKDOozj6vrGZeYtPxtHHoqcxcgZig5zSI/JnmBo92TTskGMTA8bncO
 LSzw==
X-Gm-Message-State: AOAM5326LomUcDmVWv9lSYDhz5AFSKUEzmCcl9CVxueH4RhWXskqW+Ox
 o7oHKAxJVtqdK1AgYEbC+cTyKg==
X-Google-Smtp-Source: ABdhPJzcZl754TDwXqT0GXMbZmzYQ+dc98ngsLiZ6R1rZX/1YyH+Z06m9kcZTJtclj0BBq9f/zmCrw==
X-Received: by 2002:a1c:b386:: with SMTP id
 c128mr14847821wmf.133.1591977666086; 
 Fri, 12 Jun 2020 09:01:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm10801566wrq.39.2020.06.12.09.01.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 09:01:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 12 Jun 2020 18:00:51 +0200
Message-Id: <20200612160056.2082681-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/8] drm/imx: Use __drm_atomic_helper_crtc_reset
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

Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
which means vblank state isn't ill-defined and fail-y at driver load
before the first modeset on each crtc.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/imx/ipuv3-crtc.c | 21 ++++++++-------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/imx/ipuv3-crtc.c b/drivers/gpu/drm/imx/ipuv3-crtc.c
index 63c0284f8b3c..02c2f848f2d1 100644
--- a/drivers/gpu/drm/imx/ipuv3-crtc.c
+++ b/drivers/gpu/drm/imx/ipuv3-crtc.c
@@ -109,20 +109,15 @@ static void imx_drm_crtc_reset(struct drm_crtc *crtc)
 {
 	struct imx_crtc_state *state;
 
-	if (crtc->state) {
-		if (crtc->state->mode_blob)
-			drm_property_blob_put(crtc->state->mode_blob);
-
-		state = to_imx_crtc_state(crtc->state);
-		memset(state, 0, sizeof(*state));
-	} else {
-		state = kzalloc(sizeof(*state), GFP_KERNEL);
-		if (!state)
-			return;
-		crtc->state = &state->base;
-	}
+	if (crtc->state)
+		__drm_atomic_helper_crtc_destroy_state(crtc->state);
 
-	state->base.crtc = crtc;
+	kfree(to_imx_crtc_state(crtc->state));
+	crtc->state = NULL;
+
+	state = kzalloc(sizeof(*state), GFP_KERNEL);
+	if (state)
+		__drm_atomic_helper_crtc_reset(crtc, &state->base);
 }
 
 static struct drm_crtc_state *imx_drm_crtc_duplicate_state(struct drm_crtc *crtc)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
