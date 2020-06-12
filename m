Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4041F7B50
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 18:01:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 792CB6EA08;
	Fri, 12 Jun 2020 16:01:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A08D86EA02
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 16:01:12 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id e1so10279967wrt.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 09:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AcTqDgb/C4AgxenNvTv2x+6WfFDTaZMg7V/QTE3Cav8=;
 b=WPxQjfk608TiZ44KRgZF3BbidOGMD0ZfyldhzsVLvGs/fKSEWoVqvNfsxRmqgpsUhk
 jDGNL/NUM3CG08BV6kjuYSPFjGWtZe2KZsPHFpftgiMrXAopZK6dY75FKqO6M5iyudNj
 SDpriH8+y/EaXHO3GldSPJWTARyQyB5Awc0IU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AcTqDgb/C4AgxenNvTv2x+6WfFDTaZMg7V/QTE3Cav8=;
 b=fdP4LmRPYYdSfAcWB51G0mbpiYwjLtPJNbqZgt+Y2zgrNZZAuIo1NQ/qs49LE/2wjc
 +ZyIQSTAiA/iT0BbivzkK84dJG4Omq/U7WafsDXAQHG+aQXzmeug/9BDiN5kvHt5err7
 xM8A8aNw27+5M0l30ZBjHXePffejcwsAnQ+VR6AsS+NXtkGOqL88HoTrlUWx39zMILNJ
 64FC8NwATujG8ZGb8Dg77u8eANkAC5KZVC1Wb4uKvk86XWzaxeBoVXdKG9lVceutxGow
 Yyoc86WwG45gDIHEI3bV39468iiCA09hmzCjApm7ndBCeuClHLlHoD7aMWcOhxX4p19y
 V4Rw==
X-Gm-Message-State: AOAM531gM6MZk/pCDJS6i/f9OVAjV1kFFJkeNrJrpKEhKCzAbBBS5h2V
 GW5SzqikTQHntdXQRQC10UvMUA==
X-Google-Smtp-Source: ABdhPJzetAcWKSLLliseVARP4EOFUw8CVTLZfx/mWeNNhOf0ik5yOwSwWkRhfZBi7Ru0m/j7maAs/A==
X-Received: by 2002:adf:ecce:: with SMTP id s14mr15919225wro.154.1591977669820; 
 Fri, 12 Jun 2020 09:01:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm10801566wrq.39.2020.06.12.09.01.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 09:01:08 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 12 Jun 2020 18:00:54 +0200
Message-Id: <20200612160056.2082681-6-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/8] drm/vmwgfx: Use
 __drm_atomic_helper_crtc_reset
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
Cc: Roland Scheidegger <sroland@vmware.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
which means vblank state isn't ill-defined and fail-y at driver load
before the first modeset on each crtc.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: VMware Graphics <linux-graphics-maintainer@vmware.com>
Cc: Roland Scheidegger <sroland@vmware.com>
---
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c b/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
index 3c97654b5a43..e91dfc65a93f 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
@@ -629,8 +629,7 @@ void vmw_du_crtc_reset(struct drm_crtc *crtc)
 		return;
 	}
 
-	crtc->state = &vcs->base;
-	crtc->state->crtc = crtc;
+	__drm_atomic_helper_crtc_reset(crtc, &state->base);
 }
 
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
