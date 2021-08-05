Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 761BD3E1332
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35916E9A3;
	Thu,  5 Aug 2021 10:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 096C46E97F
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:47:28 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id c25so8821649ejb.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vD2S+D+qrCZmRTtKkUPij1jFnTcmLCN3Y/bdBlucsvE=;
 b=ic1SXM32uTOLVJgGkmD4Es4BpeKc/jyWFibVMgY5g0aXLAwkcFZcdU42eH87ozcSGJ
 8YXnx+uNmWh5bhBdl+vZknJR12ctDcMIj8yO4C/ahzSS+kcoVG7G3as6pRPcGRWy30ub
 sDvkoOuIBNjT/P8blREcJeEe4c7RLns61/7lI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vD2S+D+qrCZmRTtKkUPij1jFnTcmLCN3Y/bdBlucsvE=;
 b=keltaaULfbrqszefK95/MROpdxxyOrmM1T0setu4yCO6Orr8B/JEBOV92qciqNESzq
 Jr6vraGAv+jtwfE2AxSGqTBFAjGExTjxz6lV75w2/i1S/4T+3gbe9custTzP64dFIghq
 qGUfW36LwYjqJQiJYIKh5USlhmkOe3+bNx1VqXtFhU+72q/OUD4hWf+dtt6DiSVYHZtj
 SFvOB5hBfWAPVEp2t0Pnpb5QsbHnxUcLV5ceQOcCIc7GT9Uq+LGGRfrXV5CmCBS2cq+N
 EFSv5S40LdbPAETnTaeDu1/ltFguO1CMFCDqdT00CYAgMaUpd0FeeNoNslMLHA5yUnDa
 L5Sg==
X-Gm-Message-State: AOAM531YD6woso1v2FnRSAZfPEvleO0MbWIrddn2EPqdevvhZgM8p6Zv
 t+0SqnsIG4XPCncmf1osrXKg+Su5kd1cvA==
X-Google-Smtp-Source: ABdhPJzyRHlFv8ykD4YHz5U9uoWYC0PJ246OHOlI07Dqn40yv9PG4/7M4N5faVYmKV5fhcCu24Zftw==
X-Received: by 2002:a17:906:cb95:: with SMTP id
 mf21mr4217141ejb.484.1628160446604; 
 Thu, 05 Aug 2021 03:47:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:26 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Lucas Stach <l.stach@pengutronix.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 etnaviv@lists.freedesktop.org
Date: Thu,  5 Aug 2021 12:47:02 +0200
Message-Id: <20210805104705.862416-18-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 17/20] drm/etnaviv: Don't break exclusive
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
index e3d43678eb09..8d1703da971a 100644
--- a/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
+++ b/drivers/gpu/drm/etnaviv/etnaviv_gem_submit.c
@@ -178,19 +178,21 @@ static int submit_fence_sync(struct etnaviv_gem_submit *submit)
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
 
 		ret = drm_sched_job_add_implicit_dependencies(&submit->sched_job,
 							      &bo->obj->base,
-							      bo->flags & ETNA_SUBMIT_BO_WRITE);
+							      write);
 		if (ret)
 			return ret;
 	}
-- 
2.32.0

