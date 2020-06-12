Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CED781F7E3C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 22:49:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC04D6E1D5;
	Fri, 12 Jun 2020 20:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FEF46E1D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 20:49:47 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id l11so11308415wru.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 13:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XIgjIzPFIgBI4EmyoK38np1WAjTN8clhgllj8ppmN0o=;
 b=bknKxuRZkahxMHOgE9ynpDquNqp6yw7USyhNiDp1nm0tVtAVJ7+8dSuU9K13Md8846
 Q0aWKqLm1+Cl8/2Vw6wjjsWhVxBMHtUt1PzZHRx4eDmx6g+QUn7nnAL3NcVs9vSrlYdy
 oInRDbFKGlgIVhFVpvdfG+FjCYzR7W98P8yV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XIgjIzPFIgBI4EmyoK38np1WAjTN8clhgllj8ppmN0o=;
 b=HLFro5OX1t4rt1aR+PbAoDQJGSI6BGSRrkPaVWRcA3hNAj2R2AyzX4mlGgYeNYM2lB
 fcEtVQGj2YRzbn438Q2MAeEjpFHsNsK+y0qEz67CGX681oZ/Id91JxfYwrBpPwRiO5QK
 7OvsFUKMqCy6n9h+3qtKqvQelHY9pIt9/WOaIz82dO0qHufJFtgdP4PkzX3h2dozdBQo
 lj/4HuEasJg9/noMP6KIj38Wbpp9ol1AFwQ3OehzLZ2oLzUO2GtY9tTBakjrK8sqInEA
 bEHCRAowA4GwJVwjJ57Zm1myjpiMa+O5kM8WGFCYHYUNNr4jVZ4b6JM12xhrziLzj47p
 TycA==
X-Gm-Message-State: AOAM5326srKOc/HlifxJ7V+Yb+iMVKOsAFPpEHTHYiSTU9tX4Cf+7Rpy
 h2Pbre9vwJ1exIJLf32hPgBxaw==
X-Google-Smtp-Source: ABdhPJzCs81BOXZQABnrH6PiF+mNU4ln7OpSkG0b0FLaXNTTrsuHx3nfSdG8xpcXE91hBXJljqvFEg==
X-Received: by 2002:adf:e604:: with SMTP id p4mr16403880wrm.212.1591994985834; 
 Fri, 12 Jun 2020 13:49:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id a7sm10811284wmh.14.2020.06.12.13.49.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 13:49:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 12 Jun 2020 22:49:40 +0200
Message-Id: <20200612204940.2134653-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612160056.2082681-6-daniel.vetter@ffwll.ch>
References: <20200612160056.2082681-6-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/vmwgfx: Use __drm_atomic_helper_crtc_reset
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

v2: Compile fix. Oops.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: VMware Graphics <linux-graphics-maintainer@vmware.com>
Cc: Roland Scheidegger <sroland@vmware.com>
---
 drivers/gpu/drm/vmwgfx/vmwgfx_kms.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c b/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
index 3c97654b5a43..bbce45d142aa 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_kms.c
@@ -629,8 +629,7 @@ void vmw_du_crtc_reset(struct drm_crtc *crtc)
 		return;
 	}
 
-	crtc->state = &vcs->base;
-	crtc->state->crtc = crtc;
+	__drm_atomic_helper_crtc_reset(crtc, &vcs->base);
 }
 
 
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
