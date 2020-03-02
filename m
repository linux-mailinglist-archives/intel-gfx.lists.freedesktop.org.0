Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B94917670C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 23:27:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DC466E866;
	Mon,  2 Mar 2020 22:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE4576E866
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 22:27:02 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id y17so1858537wrn.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Mar 2020 14:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qGoGSbTNkZFx5tgvwlztmnRpHWHN6b2LbTM3vMG5+84=;
 b=OHB1yhJJQyPF9RAQLH9w/VcFkrWvYh2TZ1Trln+UpTqesvCShoqQC8+YnquSV6Wgft
 PygiY2PCq3B3nwWU6ZGFDOpYB38tNACZk/HHJdOu+xR/3QPR1gPnYYbmYnBLkWBNpwWF
 MUZG3+80XPk2rB43z7JJaV1bDhcmzbxKLuQKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qGoGSbTNkZFx5tgvwlztmnRpHWHN6b2LbTM3vMG5+84=;
 b=ksDSZjYSUgHbcaLpk0KsFOxJHwfbNeC2O9ae8Rjp9Hgtj4t1hJRYH+zeURmqyrS6y4
 GD1Sjr6rTktx+oWFXBXaR3RvaJW0fVqbrfQmqZRxZ1l0R2zbmDPKcN96Goccy0e1qdi0
 wL7nZh7qYV77iL3AZ5Qh/jR5l5StQc/nALJ5AYrctwXe63HFt9rHM1Q4c817gc1w3rrL
 Xfnq0vVivBOoOgbn9cheuTqgdl4qMPuaO3bvTcedVD4I4xV74q7l/hmMEFmB2iG/MYHR
 TaLHVQbVtUMaJF3E9yI44Y0FGf9pB4uDXsmTrIKpgT0U3PT31yd0jz/uDaDhrDNE//sz
 cM7g==
X-Gm-Message-State: ANhLgQ3G8FvdggTzqBQjnhsRk7Clncc+2lGUrA0lDjOIGUbFGpqBTXk2
 gwET3KtDbD5fXmD28xihdZlmIQ==
X-Google-Smtp-Source: ADFU+vsqOzAhs7HgIODTU4McCOgUs//E8Qeu4Bq2P4bSyyWOHs2d233jK+jilxH9Rkb2bX/aasSjdA==
X-Received: by 2002:a5d:5609:: with SMTP id l9mr1554664wrv.48.1583188021723;
 Mon, 02 Mar 2020 14:27:01 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o18sm26114589wrv.60.2020.03.02.14.27.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 14:27:01 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon,  2 Mar 2020 23:25:56 +0100
Message-Id: <20200302222631.3861340-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
References: <20200302222631.3861340-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 16/51] drm/ingenic: Use drmm_add_final_kfree
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

With this we can drop the final kfree from the release function.

Reviewed-by: Paul Cercueil <paul@crapouillou.net>
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
