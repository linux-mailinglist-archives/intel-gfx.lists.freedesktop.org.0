Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE5E388846
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 09:43:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A5686E0FB;
	Wed, 19 May 2021 07:43:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D15AD6E56D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 07:43:32 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id q5so12883809wrs.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 00:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XREiNZvCt6m1Dz1Oz10kerKOA32xyw0gcDqrFl0Jar4=;
 b=YhbZIvlwlURfAY2JJWuFzVGxB9Q6qk/356Juc+n9uPixFDUJtEab9cjJ4rMEoq7RPu
 YkLCt0La26xbLf/28C/O6O7EXaUiroCs0qN+IIU8fHVXvNQ2ejJdrrm/wpaBWUAvoYw6
 ZwDR3gFKoVWA56fRO/9uoZhA4GaqqLwpsm/t0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XREiNZvCt6m1Dz1Oz10kerKOA32xyw0gcDqrFl0Jar4=;
 b=T1QYh6zV1wf/UpQN5IkWEPt1Hokslzfl7P2mg3ORURNza8aEeY2HziXL4gEU7Txxg0
 hraYlmT5OuhyUpxEFLzP2XiFY45Dgf9/yIpVFhK0uP5ZVewatL28bBU5C8mLNaifP+pN
 ns1iVPAmcGlyoPBCzfczg/CuJ9P5gp0LQaBQJzOKXb60/jttxNxPlZLDmlYJ6XT+pe/W
 xMV2khVKVeWQIsFkB2fn6pUoaho/t5gxBmk/skHC7BVtmeprkrLxqGALRJDZGuu3G7DM
 TuobSZjipjp89dRQgEjojxyhBtOFrjQyGQ9At91/UU18qtegXFDsjpjI1H2BIr1M8NnB
 tyDw==
X-Gm-Message-State: AOAM533MBTDEz9BVUYUSeTn7vWaalB5254+xdg7/mEUdMDEcZ8vs824G
 NvS007WIoeK/7NDg6dathMu4xg==
X-Google-Smtp-Source: ABdhPJz8JhBGQu/oYkUVZ03JmiiNYW+/5RKbEJ8XJyjhgFE0mMNWQ6MBSBe4JIXo63fHTQldZkVr8w==
X-Received: by 2002:a5d:4a4f:: with SMTP id v15mr12954340wrs.154.1621410211567; 
 Wed, 19 May 2021 00:43:31 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h13sm21189986wml.26.2021.05.19.00.43.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 May 2021 00:43:31 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 19 May 2021 09:43:23 +0200
Message-Id: <20210519074323.665872-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210519074323.665872-1-daniel.vetter@ffwll.ch>
References: <20210519074323.665872-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] Revert "drm/i915: Propagate errors on
 awaiting already signaled fences"
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, stable@vger.kernel.org,
 Jason Ekstrand <jason.ekstrand@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Jason Ekstrand <jason@jlekstrand.net>

This reverts commit 9e31c1fe45d555a948ff66f1f0e3fe1f83ca63f7.  Ever
since that commit, we've been having issues where a hang in one client
can propagate to another.  In particular, a hang in an app can propagate
to the X server which causes the whole desktop to lock up.

Signed-off-by: Jason Ekstrand <jason.ekstrand@intel.com>
Reported-by: Marcin Slusarz <marcin.slusarz@intel.com>
Cc: <stable@vger.kernel.org> # v5.6+
Cc: Jason Ekstrand <jason.ekstrand@intel.com>
Cc: Marcin Slusarz <marcin.slusarz@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3080
Fixes: 9e31c1fe45d5 ("drm/i915: Propagate errors on awaiting already signaled fences")
Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/i915_request.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 970d8f4986bb..b796197c0772 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -1426,10 +1426,8 @@ i915_request_await_execution(struct i915_request *rq,
 
 	do {
 		fence = *child++;
-		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
-			i915_sw_fence_set_error_once(&rq->submit, fence->error);
+		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
 			continue;
-		}
 
 		if (fence->context == rq->fence.context)
 			continue;
@@ -1527,10 +1525,8 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
 
 	do {
 		fence = *child++;
-		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
-			i915_sw_fence_set_error_once(&rq->submit, fence->error);
+		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
 			continue;
-		}
 
 		/*
 		 * Requests on the same timeline are explicitly ordered, along
-- 
2.31.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
