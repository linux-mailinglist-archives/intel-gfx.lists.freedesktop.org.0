Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96BF33BC927
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jul 2021 12:12:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F59889DD5;
	Tue,  6 Jul 2021 10:12:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD9AD897E8
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jul 2021 10:12:17 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id j34so13163971wms.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Jul 2021 03:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eK8t9BEjbT//Rj4X6P1/lXym1o29s4XXgV4fm7IqVSk=;
 b=kWZV1mpE1AInwl6j30iEOk6ezDVr32HVfzgJQxtdJro6607JT5suF4GWCqBcjUEbam
 XhQNJzP8MSccGPCykN97E2CC9Chc0cgCGff4zSCaCTwQ2cUlP+QLNcyS7VtEXgv3RVRB
 OKR+KhaSG0xcQ9L8NQxw5ng46E5kW5p5F2X3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eK8t9BEjbT//Rj4X6P1/lXym1o29s4XXgV4fm7IqVSk=;
 b=HOe4vPNNYl5JwInTntjXFdo3+fo8G/HT1Ja5nsVJ1x2hdB2hQI/PWpbwk9NnEE2e4G
 uqnhKFJ8hX7z9qn8DYaqjeVTrq4xuH/4RfycQEwtJaO7/H+bLwxOsoSzE+6aup+zujwJ
 60Xw2psq0lN5BLIAm7WML5W+ii0wdRI9KZxu/LI93lv0Z1C3HrxU4zEcPVEatzQGliRL
 lfl++NhP+Sm6gVRMZGA2vBZWdpmvtaxNLVIIJjZtUywgvxKM+LQTAk+0L+rUjINim4T1
 H2dSrHDf+H+ynrkzYKFX877qaxdI8Qca7p/CQ1dCu1qdr2ki+VB+5S6X76uYBNV6Y01V
 DG+Q==
X-Gm-Message-State: AOAM532EgdN4ZK6INigZcSUXp/XJu0GhxFluz9lfkj00B+IHKZpfboeR
 PfB+Kalv1hH0L6pYjbkUnVKg3g==
X-Google-Smtp-Source: ABdhPJxEDVRYf4jHMU2qeOsNXRMr4+1OkGaalkBSQqZe5EBhZ/N8/6og1cZ8MfQphbVhzw5iK7eGXA==
X-Received: by 2002:a7b:ce0d:: with SMTP id m13mr1209304wmc.59.1625566336286; 
 Tue, 06 Jul 2021 03:12:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u2sm9862739wmc.42.2021.07.06.03.12.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Jul 2021 03:12:15 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  6 Jul 2021 12:12:03 +0200
Message-Id: <20210706101209.3034092-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210706101209.3034092-1-daniel.vetter@ffwll.ch>
References: <20210706101209.3034092-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/7] drm/msm: Don't break exclusive fence
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
 linux-arm-msm@vger.kernel.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

There's only one exclusive slot, and we must not break the ordering.

A better fix would be to us a dma_fence_chain or _array like e.g.
amdgpu now uses, but
- msm has a synchronous dma_fence_wait for anything from another
  context, so doesn't seem to care much,
- and it probably makes sense to lift this into dma-resv.c code as a
  proper concept, so that drivers don't have to hack up their own
  solution each on their own.

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
