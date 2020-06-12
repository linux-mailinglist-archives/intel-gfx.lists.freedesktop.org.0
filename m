Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D07571F7B48
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 18:01:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3FD16E9FB;
	Fri, 12 Jun 2020 16:01:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9114C6E9F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 16:01:08 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id f185so8768911wmf.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 09:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9edpO/0nDjw8MbHtkOLQlTMXtNF/bFvFcs1wCzvqaNE=;
 b=RmdKYYVAB0MwG5SuaGWDL0n378xqj0UKR2ugbyV34AEb89kM51e9b9HRJZ0ikKdBuc
 B9C0JTVT88c3OToaO0mWw/TXYqK9UBckZWDC7aOkCwPdotyoZMBd4oZwoZrBkUuGnZOS
 JYbrXB49RsrMh7/PlWYkJBxYIQzV0K9XbCg+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9edpO/0nDjw8MbHtkOLQlTMXtNF/bFvFcs1wCzvqaNE=;
 b=T4DGR8TlZChxrzrIUtDhhqdRR72vHij1ewQyN5Si98CIhy6H1wVO8SJNaWtPbBAanb
 xgFtsHE+kybGoWhF/flmHADClnh1S9MahqoLuU0vu7na7UxCZEpmEan3PfCKJ4xieX+L
 j5HoNa0quLV9h9Zt2tbKUz7UoB9o/yNBj5SI4Va53kxxdvAi0r6j+7V6pab5XnmJZo8d
 Wf7J5PmLuH6cbTL4wW/FNDiuvNhzIhlBd1ssRa/hZhEnEmHBuxRe03PLZ+Mye0DUWZIN
 4hivzlIgNxBBf6SZjz0ZtGWRtNOXgGelrf/3MZIOftq3kOlyMZfm8Ea+11p0zy6igPyh
 L6EA==
X-Gm-Message-State: AOAM533DqWT6t/1wMp2Z9qcqK12OhrEB9o/wSrdyz7hR70NBfam+Wftw
 3nHoPBBgRNWJkMgpnj3rBFjOQA==
X-Google-Smtp-Source: ABdhPJyRA5JCt10uM462WYchlysJDh14QJpSPAUPgz+E7dH/E3C15TB4JYTTvqcYM2l4Duif233pBw==
X-Received: by 2002:a1c:1f85:: with SMTP id
 f127mr13454795wmf.163.1591977667256; 
 Fri, 12 Jun 2020 09:01:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j5sm10801566wrq.39.2020.06.12.09.01.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 09:01:06 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 12 Jun 2020 18:00:52 +0200
Message-Id: <20200612160056.2082681-4-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/8] drm/mtk: Use __drm_atomic_helper_crtc_reset
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now also comes with the added benefit of doing a drm_crtc_vblank_off(),
which means vblank state isn't ill-defined and fail-y at driver load
before the first modeset on each crtc.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index a7dba4ced902..d654c7d514bd 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -112,19 +112,15 @@ static void mtk_drm_crtc_reset(struct drm_crtc *crtc)
 {
 	struct mtk_crtc_state *state;
 
-	if (crtc->state) {
+	if (crtc->state)
 		__drm_atomic_helper_crtc_destroy_state(crtc->state);
 
-		state = to_mtk_crtc_state(crtc->state);
-		memset(state, 0, sizeof(*state));
-	} else {
-		state = kzalloc(sizeof(*state), GFP_KERNEL);
-		if (!state)
-			return;
-		crtc->state = &state->base;
-	}
+	kfree(to_mtk_crtc_state(crtc->state));
+	crtc->state = NULL;
 
-	state->base.crtc = crtc;
+	state = kzalloc(sizeof(*state), GFP_KERNEL);
+	if (state)
+		__drm_atomic_helper_crtc_reset(crtc, &state->base);
 }
 
 static struct drm_crtc_state *mtk_drm_crtc_duplicate_state(struct drm_crtc *crtc)
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
