Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE78B414952
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Sep 2021 14:45:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6519C6EB9F;
	Wed, 22 Sep 2021 12:45:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1256EB27;
 Wed, 22 Sep 2021 09:11:10 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id t18so4880761wrb.0;
 Wed, 22 Sep 2021 02:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=Z+ma+j9Hsi98m6TMPrZyOvlgwiJE/auOQVt8b0s7y/8hIwKxWopqqf9B/x9kCEu1dX
 u5zApj6Mhy5xObgS+EcT50eDY5gp9X7lv42gnFKQ/bjog+gmUFYs1JOcuv11r8YN0rlt
 D9+YmIj/jVYhvokdNnAdzuFYADJQ1o3BxPcSccng/l+b4JES0EEzpEvSAq9bhXZ8QBVs
 xrgkJRCATuiPRa5P3tcJh1reWSQPgzEUUVGCYptD6b+yolzaXJMBd51V1TnIOJSBs/pR
 vpNF/A16HsDx3qhIdmH12RJ4KVY/YeejI8677AzQPUrFw6NXunkIuOSzTr1UxqbQH6Vk
 q11A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KGewx1QiQQVkw015IvGnnogZeqnpnoxIhP9ykI50FyQ=;
 b=JjA6RIqVCuW1ps8tPE7pfXdnK1AtBrr2bcjmybQujiNxkUF5o5T3NkbBr3wLW9lq3W
 x7d32N8lPHt+4S+DlYgliQgyi7P5IBNAht5ZXmQwRPVy48emphnuzSjOpXcNANLI4a43
 psfslctDENvQ8LRs71kIVSIdqpL3Hp/8UrjsJiGgalDeit+imXePxO8sv56xkj7ZSLts
 m83Lb5oozutj9gkUfhEYs4t+Y1HZJ3PnbUR7eY22bYx/YRh97uFDfMQHEOdIIObtQkzb
 XXbusKgWnW5uHnbTPfOU16AJyRrDv+44kdcYhWm7n/irjsaFjJEvP2jPJJW7h7v/wQuy
 yDyQ==
X-Gm-Message-State: AOAM532jlAYSvi+nGzQcq5n9PFRqyUjRU4aL51RafC93KIEXRorj/Rl7
 Q+cTE+C5opuTDUr3fRTLknEiov/6myI=
X-Google-Smtp-Source: ABdhPJyXD1oAbzynMTqbYHQz9JPlAZOmN6Jct+hP4Cq4joyLvYGSkZ9Mwngyo0eOjqZf5mY3RSBXdA==
X-Received: by 2002:a1c:f314:: with SMTP id q20mr9032321wmq.154.1632301869258; 
 Wed, 22 Sep 2021 02:11:09 -0700 (PDT)
Received: from abel.fritz.box (p5b0ea1b5.dip0.t-ipconnect.de. [91.14.161.181])
 by smtp.gmail.com with ESMTPSA id
 r25sm1535515wra.76.2021.09.22.02.11.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Sep 2021 02:11:08 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org
Cc: daniel@ffwll.ch,
	tvrtko.ursulin@linux.intel.com
Date: Wed, 22 Sep 2021 11:10:41 +0200
Message-Id: <20210922091044.2612-24-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210922091044.2612-1-christian.koenig@amd.com>
References: <20210922091044.2612-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 22 Sep 2021 12:44:58 +0000
Subject: [Intel-gfx] [PATCH 23/26] drm/nouveau: use the new interator in
 nv50_wndw_prepare_fb
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Makes the handling a bit more complex, but avoids the use of
dma_resv_get_excl_unlocked().

Signed-off-by: Christian König <christian.koenig@amd.com>
---
 drivers/gpu/drm/nouveau/dispnv50/wndw.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/nouveau/dispnv50/wndw.c b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
index 8d048bacd6f0..30712a681e2a 100644
--- a/drivers/gpu/drm/nouveau/dispnv50/wndw.c
+++ b/drivers/gpu/drm/nouveau/dispnv50/wndw.c
@@ -539,6 +539,8 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struct drm_plane_state *state)
 	struct nouveau_bo *nvbo;
 	struct nv50_head_atom *asyh;
 	struct nv50_wndw_ctxdma *ctxdma;
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
 	int ret;
 
 	NV_ATOMIC(drm, "%s prepare: %p\n", plane->name, fb);
@@ -561,7 +563,13 @@ nv50_wndw_prepare_fb(struct drm_plane *plane, struct drm_plane_state *state)
 			asyw->image.handle[0] = ctxdma->object.handle;
 	}
 
-	asyw->state.fence = dma_resv_get_excl_unlocked(nvbo->bo.base.resv);
+	dma_resv_iter_begin(&cursor, nvbo->bo.base.resv, false);
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
+		/* TODO: We only use the first writer here */
+		asyw->state.fence = dma_fence_get(fence);
+		break;
+	}
+	dma_resv_iter_end(&cursor);
 	asyw->image.offset[0] = nvbo->offset;
 
 	if (wndw->func->prepare) {
-- 
2.25.1

