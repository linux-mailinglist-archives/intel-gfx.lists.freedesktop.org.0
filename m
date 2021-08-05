Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B2D3E1333
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A98106E9A2;
	Thu,  5 Aug 2021 10:47:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FDB66E9A3
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:47:27 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id x90so7685427ede.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:47:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0nW6BUxnI6TMJMo1WltvrQ4AqMv928Ed54nT/6I6Mgc=;
 b=kESKOMxUYcelz7HM18OazIQNnelJPkPp4bRWps3UliaFeiOxyYx1/3QCkERRsBA8wU
 8ZavOyGiJEOH+N9YFOQnjoK3eiSnjhna91L1Nl2oVa1Im9lIvgNznhFGMzAStYwvm9d/
 vNBehUeIQZOaKlykjrBz0eT5YNBZIyYply6MA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0nW6BUxnI6TMJMo1WltvrQ4AqMv928Ed54nT/6I6Mgc=;
 b=j7rcb3LYQpC2PlfX0MsgqUOhC/31E7xlPk85tGtYIwXhubL0bBfMje8ge3Y6xD3aun
 BvTEY+64cptV9Fjhq72INvSvM7lIUmb4mtz0x1Yxykm98kJzaNstJD/HqoTNaCr1OMJ9
 uskwG+REKDYtD4eekEcnjeEPFvEThLwBfv3Q6V/U8mT7sVVGbSOCVBBS0/UfHtY1SvT6
 0Pht3qfrBMqWWBK4OEkZ1xIgw/O7T6I17P/My5MngHzg4t8yiR2DnLyjVx0uJsdWlBNr
 jMn9gPrw6qOJHMoDpSPhbcQAUJvn/zJgAbmyD4aKxBCZnOvtuPpP48yp0hVACVv4aKSG
 vV9g==
X-Gm-Message-State: AOAM531rCT3m+5xut4YMfBzKZt0Wt67MgeaPaOhKmZ30tFYJ88zqVLzG
 ZwViqhS2FVtl2X+eht9IS2uQXQ==
X-Google-Smtp-Source: ABdhPJyWr04CWCimxVfH49eigYJCVRGOcuvnO0amqFreQofVHnnHbSdvHVyVQAuSX0vwApjBSt4aKg==
X-Received: by 2002:a05:6402:b82:: with SMTP id
 cf2mr5572534edb.71.1628160445836; 
 Thu, 05 Aug 2021 03:47:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p5sm1578809ejl.73.2021.08.05.03.47.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:47:25 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Lucas Stach <l.stach@pengutronix.de>,
 Daniel Vetter <daniel.vetter@intel.com>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org
Date: Thu,  5 Aug 2021 12:47:01 +0200
Message-Id: <20210805104705.862416-17-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
References: <20210805104705.862416-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 16/20] drm/msm: Don't break exclusive fence
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
index fb5a2eab27a2..66633dfd58a2 100644
--- a/drivers/gpu/drm/msm/msm_gem_submit.c
+++ b/drivers/gpu/drm/msm/msm_gem_submit.c
@@ -330,7 +330,8 @@ static int submit_fence_sync(struct msm_gem_submit *submit, bool no_implicit)
 				return ret;
 		}
 
-		if (no_implicit)
+		/* exclusive fences must be ordered */
+		if (no_implicit && !write)
 			continue;
 
 		ret = drm_sched_job_add_implicit_dependencies(&submit->base,
-- 
2.32.0

