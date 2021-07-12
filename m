Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6388B3C649D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 22:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F98D89E0E;
	Mon, 12 Jul 2021 20:02:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com
 [IPv6:2a00:1450:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0ADC89E0D
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 20:02:12 +0000 (UTC)
Received: by mail-wr1-x42a.google.com with SMTP id r11so22000130wro.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 13:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=InVnPLy1h+Gn4xVBn/fC7AZt6grH88jqC7oOozTIXb8=;
 b=X+SJ3p0ESK4TQAQ/qH/+BAUMT6xrms/nqyPKdH0HxK3ym7UQ3p95EVQZ7XCWfzGR/y
 fkmaGRWWf7ruyInATjXDAqzkFIUWmEheqOY9qU0bBEDLG3unVw+cktegJiy4Ce9efes5
 3RgAX2dj1ORkeX7jkS+IWjkhq297tm+bn7wxc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=InVnPLy1h+Gn4xVBn/fC7AZt6grH88jqC7oOozTIXb8=;
 b=rBFtcENf3C1ZZVOKIAm1rIYV4YUqcbZM8cPxELbeLCYMLJa0e4rW6ImQqGfYM2rfQH
 miaVrtY+KmHO+JpeEXxp0GGhUppY/IJn9kFRRq0rq+8v5NDsQBhckmmNIC2KIvPJSe/W
 EyybbhOgp2GqcpqRAGGnHlF0mDRpWvAhRlcmYlHky41k0Q0DpxtT321NH2ouU2h3ApZe
 qoC1z7oly96EvvCf/gVNtnATWtg93KrkgHwCUxaSL7iCtLjlbH+8doVS743E20cBYt+p
 3YIB+PXKb1uzWZJ6VRTh7qrkln4x+25ZvLyYSYi+haEl6uGVpYWlxvfdETACBHgiafOy
 TvWw==
X-Gm-Message-State: AOAM530nkuy71q0s66XOY7Qz34eF/YKNUVH+Uj6VKSpjq+wQlCC8Irik
 M6szJq3EGdvQhmVhkKtkYcCLcA==
X-Google-Smtp-Source: ABdhPJyJSV9zsmZBMr7dsHfxfEOPFY/zcUhgikRQEnDQpbjq7rFktFp+vN9flFcWF5qevrFsmcL8wA==
X-Received: by 2002:a5d:6786:: with SMTP id v6mr870277wru.290.1626120131603;
 Mon, 12 Jul 2021 13:02:11 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l14sm9858221wrs.22.2021.07.12.13.02.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:02:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 12 Jul 2021 19:53:48 +0200
Message-Id: <20210712175352.802687-15-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
References: <20210712175352.802687-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 14/18] drm/msm: Don't break exclusive fence
 ordering
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
Cc: freedreno@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-arm-msm@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>,
 Lucas Stach <l.stach@pengutronix.de>
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
amdgpu now uses, but
- msm has a synchronous dma_fence_wait for anything from another
  context, so doesn't seem to care much,
- and it probably makes sense to lift this into dma-resv.c code as a
  proper concept, so that drivers don't have to hack up their own
  solution each on their own.

v2: Improve commit message per Lucas' suggestion.

Cc: Lucas Stach <l.stach@pengutronix.de>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: linux-arm-msm@vger.kernel.org
Cc: freedreno@lists.freedesktop.org
---
 drivers/gpu/drm/msm/msm_gem_submit.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/msm_gem_submit.c b/drivers/gpu/drm/msm/msm_gem_submit.c
index b71da71a3dd8..edd0051d849f 100644
--- a/drivers/gpu/drm/msm/msm_gem_submit.c
+++ b/drivers/gpu/drm/msm/msm_gem_submit.c
@@ -306,7 +306,8 @@ static int submit_fence_sync(struct msm_gem_submit *submit, bool no_implicit)
 				return ret;
 		}
 
-		if (no_implicit)
+		/* exclusive fences must be ordered */
+		if (no_implicit && !write)
 			continue;
 
 		ret = msm_gem_sync_object(&msm_obj->base, submit->ring->fctx,
-- 
2.32.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
