Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB933C64A6
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 22:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D01A789E43;
	Mon, 12 Jul 2021 20:02:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AD3689E05
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 20:02:14 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id r11so22000193wro.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 13:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0WTGYnK900Sbe5MqmyJ3un5MyLkukJoTVto5awctnjg=;
 b=GjUhjfEdBwCSiBaDg7Iu6or3rFuGM4d1aNcTzdhvuZfABvGIqLjMGNSloDR8tDDUBu
 +pZncIjxQ4bi1qxHeZeO4iP1dBgpVGXaGOJCOs9GzMq8eSY8WDXXwJ1jaQdkULnfNvJb
 5tDaAAmA6/m9T5+KbjkrZRbz9qZ3gB7H25SYc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0WTGYnK900Sbe5MqmyJ3un5MyLkukJoTVto5awctnjg=;
 b=A7qdlprOgDEGsVgCdIHw0plT86zbrF1nvqlgSuyD3fD6mCW1+3rwAbLrSNBfyfKVXI
 RIDmzvoEwCNjpCTP2YSqBcN75o9j2H5lOBsuGDfTzcRCkmfuLblm3npuVMj8/oGsqrrF
 u7C8V5CclhNg0poRqwl4TAhf1sYFnmmKVFt0oKvnJwlOEkrj40ToHFl2K7J720YRQpN9
 jjsDKVRao5PGz+AgtMecIMduuaoOAZPc8PtRFOZhnlQYYkcZhCD3jCy83Tg9MwC8ySRm
 PxUT37PgCzoVsu+RveKqhcKprvBT9uHXM4WJJP5UFbaLOvkz1aEhYneMs6Ojxwc9vJns
 TWSg==
X-Gm-Message-State: AOAM532f2wswubu7jzA8Ed0zGSZjYbtd4ToJ0tWjNYoH8+aQgeVdTFu7
 WiOOnFYwh+vEwSzb3eJ7c58Tbg==
X-Google-Smtp-Source: ABdhPJxdW9zedwV3kiKEjC+VCqmVxuonv+xxpUAHoAsi+u2hN3Ug9mborlJNXGzl9pdAB2wU4LVuHQ==
X-Received: by 2002:a5d:591c:: with SMTP id v28mr803547wrd.373.1626120132395; 
 Mon, 12 Jul 2021 13:02:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm9858221wrs.22.2021.07.12.13.02.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:02:12 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 12 Jul 2021 19:53:49 +0200
Message-Id: <20210712175352.802687-16-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 15/18] drm/etnaviv: Don't break exclusive
 fence ordering
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
 etnaviv@lists.freedesktop.org, Christian Gmeiner <christian.gmeiner@gmail.com>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 Daniel Vetter <daniel.vetter@intel.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There's only one exclusive slot, and we must not break the ordering.
Adding a new exclusive fence drops all previous fences from the
dma_resv. To avoid violating the signalling order we err on the side of
over-synchronizing by waiting for the existing fences, even if
userspace asked us to ignore them.

A better fix would be to us a dma_fence_chain or _array like e.g.
amdgpu now uses, but it probably makes sense to lift this into
dma-resv.c code as a proper concept, so that drivers don't have to
hack up their own solution each on their own. Hence go with the simple
fix for now.

Another option is the fence import ioctl from Jason:

https://lore.kernel.org/dri-devel/20210610210925.642582-7-jason@jlekstrand.net/

v2: Improve commit message per Lucas' suggestion.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Russell King <linux+etnaviv@armlinux.org.uk>
Cc: Christian Gmeiner <christian.gmeiner@gmail.com>
Cc: etnaviv@lists.freedesktop.org
---
 drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
index 5b97ce1299ad..07454db4b150 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
@@ -178,18 +178,20 @@ static int submit_fence_sync(struct etnaviv_gem_submit *submit)
 	for (i = 0; i < submit->nr_bos; i++) {
 		struct etnaviv_gem_submit_bo *bo = &submit->bos[i];
 		struct dma_resv *robj = bo->obj->base.resv;
+		bool write = bo->flags & ETNA_SUBMIT_BO_WRITE;
 
-		if (!(bo->flags & ETNA_SUBMIT_BO_WRITE)) {
+		if (!(write)) {
 			ret = dma_resv_reserve_shared(robj, 1);
 			if (ret)
 				return ret;
 		}
 
-		if (submit->flags & ETNA_SUBMIT_NO_IMPLICIT)
+		/* exclusive fences must be ordered */
+		if (submit->flags & ETNA_SUBMIT_NO_IMPLICIT && !write)
 			continue;
 
 		ret = drm_sched_job_await_implicit(&submit->sched_job, &bo->obj->base,
-						   bo->flags & ETNA_SUBMIT_BO_WRITE);
+						   write);
 		if (ret)
 			return ret;
 	}
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
