Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C005E18F790
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2020 15:51:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F03116E1E5;
	Mon, 23 Mar 2020 14:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 532566E1E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 14:50:49 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id g62so15131720wme.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2020 07:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b+n0kt13JLOOA06dxYWckddoP/N3w9YSOQJqXMTw9VM=;
 b=gPUBcd+7Nu+3R0wF9D32HXrJtnM7RGxkWos+FNVOM10t0NU5wS+rjbPZUhViIIEiQy
 2hN3e48//EvHTJODobtxyldtYDU7BCa/fCmpj8jLTG2IaFtGqqo9ElMu51bayuno0Rar
 rH9cA/dMbeCXwI9fA1NjNYTKFsgXC5hHje2IA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b+n0kt13JLOOA06dxYWckddoP/N3w9YSOQJqXMTw9VM=;
 b=Wb3h64hSDTzkd6x2OjzJAt6ZaIfX1UvrQq+kz6WqQ1dC3niusrK5+smRX4gOjp2cEv
 N8KoxZMrfwIHt/lNSFmDXcgYV1jN7xkuZw9Vna7hNdUad6S4LhqZUo5AgsBHRvpvW9U8
 dMU705qAVqE3yRYQ2f2fP2PCZLntz610wLPH/kH9la1B3Zen+fgQjsP/qA8ZlLQxX8eA
 gE2uVTJkkg2FN9p8sYQ1mbqNXmRuDzfLbb0ciO+4gPfTFRMM1Qh+ireSedgMQD7Mf6l5
 TMWb2kj4Tb62xgA2S+JKUIXfLQt0/SD2U0h4O4whyZFJG2HVj+mIBWuVxRrJ4puCd2g5
 SAQA==
X-Gm-Message-State: ANhLgQ0rTR+u88rT4nahAclfXIvsoIh1mRo/MTehuJL+S32FFZcoRmc0
 2c5inRzCpiRIac2A8djS0UOB+zWYgUww3A==
X-Google-Smtp-Source: ADFU+vtHZWCQK/GTRrPDdXMCEquiprZ3VAGWwPq8c0B1jFuBK238+5bVoXXCGHEUoRo0txw8kJqisQ==
X-Received: by 2002:a7b:c148:: with SMTP id z8mr27147299wmi.174.1584975047937; 
 Mon, 23 Mar 2020 07:50:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s22sm20376522wmc.16.2020.03.23.07.50.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 07:50:47 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 23 Mar 2020 15:49:35 +0100
Message-Id: <20200323144950.3018436-37-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
References: <20200323144950.3018436-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 36/51] drm/rcar-du: Drop explicit
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
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's right above the drm_dev_put().

This is made possible by a preceeding patch which added a drmm_
cleanup action to drm_mode_config_init(), hence all we need to do to
ensure that drm_mode_config_cleanup() is run on final drm_device
cleanup is check the new error code for _init().

Aside: Another driver with a bit much devm_kzalloc, which should
probably use drmm_kzalloc instead ...

v2: Explain why this cleanup is possible (Laurent).

v3: Use drmm_mode_config_init() for more clarity (Sam, Thomas)

Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com> (v2)
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Cc: linux-renesas-soc@vger.kernel.org
---
 drivers/gpu/drm/rcar-du/rcar_du_drv.c | 1 -
 drivers/gpu/drm/rcar-du/rcar_du_kms.c | 4 +++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rcar-du/rcar_du_drv.c b/drivers/gpu/drm/rcar-du/rcar_du_drv.c
index 654e2dd08146..3e67cf70f040 100644
--- a/drivers/gpu/drm/rcar-du/rcar_du_drv.c
+++ b/drivers/gpu/drm/rcar-du/rcar_du_drv.c
@@ -530,7 +530,6 @@ static int rcar_du_remove(struct platform_device *pdev)
 	drm_dev_unregister(ddev);
 
 	drm_kms_helper_poll_fini(ddev);
-	drm_mode_config_cleanup(ddev);
 
 	drm_dev_put(ddev);
 
diff --git a/drivers/gpu/drm/rcar-du/rcar_du_kms.c b/drivers/gpu/drm/rcar-du/rcar_du_kms.c
index fcfd916227d1..482329102f19 100644
--- a/drivers/gpu/drm/rcar-du/rcar_du_kms.c
+++ b/drivers/gpu/drm/rcar-du/rcar_du_kms.c
@@ -712,7 +712,9 @@ int rcar_du_modeset_init(struct rcar_du_device *rcdu)
 	unsigned int i;
 	int ret;
 
-	drm_mode_config_init(dev);
+	ret = drmm_mode_config_init(dev);
+	if (ret)
+		return ret;
 
 	dev->mode_config.min_width = 0;
 	dev->mode_config.min_height = 0;
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
