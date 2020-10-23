Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 159AC296E87
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF1E06E520;
	Fri, 23 Oct 2020 12:22:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98F266E51A
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:33 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id c16so1298583wmd.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b6rkxHUpAoW3ADDD9yecvzJ/H8V6QUCVWd37I73mhug=;
 b=NegaIL95AZMZrYGEqpllAPuC4YEXKBSPt9ZC7f3moTusYcOgVcquEa7EUPPwSNw6VX
 P8XlYhkp9fN2p0U2nDvu/GspeLO3MxC4mkMamOxURRDVec3O22ixrxUe9gOzG3Fxy1ZU
 bdOffu5jdeoXA1UFdxglK3jWwRG0E30/YhqVw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b6rkxHUpAoW3ADDD9yecvzJ/H8V6QUCVWd37I73mhug=;
 b=B3V0oVeDoGdnyEiuGkjhpMavEV6UppEQnlEFJTk9K7fn8txFDKs4cfyqcF6PJ9ITtC
 F8Yjs0jkeXEtIYr+U1mCx29ZZv87BnFr4rWjoSw6bLSgxR55Ti3Nver1kNexnOvYYG7P
 mZaAsHHxGdYO6/8spPNNZktQwl2ujn+wLEamWLZkmL9a2biqJM37FHOt2lKUyHPzr+tY
 mBt/UZV9VFA8+kP8BesgJx3sWbW98TCRIGkJFb1f30Xb3C48VZqMwnfHhMqtuLsut1kR
 I+qMurJ+aBiixzaW76Ytd5s3x0kdJwJXutXLVJdsu3Qe1a2t9B6xUYBpxEBuEoomCe5L
 cP0w==
X-Gm-Message-State: AOAM532Ctaw1N8XV7lxyQq78YSHyc8+z+iVlAykch4Fvq/J3kM69vlqb
 ez4HpgLqe1WWChWyqTF1RF8hjQ==
X-Google-Smtp-Source: ABdhPJxaXmfrljo2z/YC6BMM1jXiTv3getDGMOtXk2mx5+EFG5MTRnEQFcRRKNnuONVbcKQ3sPx42A==
X-Received: by 2002:a1c:2681:: with SMTP id m123mr1987673wmm.138.1603455752369; 
 Fri, 23 Oct 2020 05:22:32 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:31 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:20 +0200
Message-Id: <20201023122216.2373294-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/65] drm/komeda: Annotate dma-fence critical
 section in commit path
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
 James Qian Wang <james.qian.wang@arm.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Mihail Atanassov <mihail.atanassov@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Like the helpers, nothing special. Well except not, because we the
critical section extends until after hw_done(), since that's the last
thing which could hold up a subsequent atomic commit. That means the
wait_for_flip_done is included, but that's not a problem, we're
allowed to call dma_fence_wait() from signalling critical sections.
Even on our own fence (which this does), it's just a bit confusing.
But in a way those last 2 function calls are already part of the fence
signalling critical section for the next atomic commit.

Reading this I'm wondering why komeda waits for flip_done() before
calling hw_done(), which is a bit backwards (but hey hw can be
special). Might be good to throw a comment in there that explains why,
because the original commit that added this just doesn't.

Reviewed-by: James Qian Wang <james.qian.wang@arm.com>
Cc: "James (Qian) Wang" <james.qian.wang@arm.com>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Mihail Atanassov <mihail.atanassov@arm.com>
Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
---
 drivers/gpu/drm/arm/display/komeda/komeda_kms.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
index 1f6682032ca4..cc5b5915bc5e 100644
--- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
+++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.c
@@ -73,6 +73,7 @@ static struct drm_driver komeda_kms_driver = {
 static void komeda_kms_commit_tail(struct drm_atomic_state *old_state)
 {
 	struct drm_device *dev = old_state->dev;
+	bool fence_cookie = dma_fence_begin_signalling();
 
 	drm_atomic_helper_commit_modeset_disables(dev, old_state);
 
@@ -85,6 +86,8 @@ static void komeda_kms_commit_tail(struct drm_atomic_state *old_state)
 
 	drm_atomic_helper_commit_hw_done(old_state);
 
+	dma_fence_end_signalling(fence_cookie);
+
 	drm_atomic_helper_cleanup_planes(dev, old_state);
 }
 
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
