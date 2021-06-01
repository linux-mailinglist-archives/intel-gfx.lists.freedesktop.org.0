Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B363933CC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:27:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6776F44B;
	Thu, 27 May 2021 16:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com
 [IPv6:2607:f8b0:4864:20::633])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 236F16F44E
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:12 +0000 (UTC)
Received: by mail-pl1-x633.google.com with SMTP id d20so203459pls.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UmCue3mVIUJ/ECXjZ0J9Gg205DnBf3+MkYt7kKSV7Lc=;
 b=SPuYnxwaJYsZW1JNgPlJaSnJyQmjHuETm/9BDzEF/mrTwxC9E902sJcDoyiHMw+Sp7
 H/L83+5R0v3/XgzinIzXXCYYSr3XGZLxcT79H8dE85VOAako2MHvTAJCwsPHCklLP5sI
 ZsN1LaNaPp0j9fIwbuONR4kO5fx9UVsxs6fMrrW7iBTKzCpIFovaRow60z9aYQ/yWC1Y
 aRZM5Iat47J3dWouC5iUBdTTh5chS8SJ9vH8VUDLiCkJzv+ZgHRnCBEAECrjCIAGSMjX
 XviAfW6RhsL0vgz04g99tNvdrTnUufPFB+EjDN/6G8DnfdI2O+0pvrptYMLvrVjXAM/j
 rMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UmCue3mVIUJ/ECXjZ0J9Gg205DnBf3+MkYt7kKSV7Lc=;
 b=BvlaZv4/TcSNBqaF4Txz9J1NCovuDlPSw3/aNd/b4UQ9XsBsRci1wLBt1adUS0vtNa
 90RdwjypjG9BHl+nWEitygQOyNGN4ODmW0YDfQSglGXEcoiuwa9iaAiiL0Eyk8Da5324
 Gq78Z2h1WtJD8SKWNvyajbRk7mMhtKPe0s17uwqkpnGtBNUAja5aEpYwh3hzyfAxD7Dk
 3YHd3xvkLCVRDefMOq3LaLjP37nrRtAPNMFDXWliuJSMmGjelef1a8w7XOe6uue+eIqc
 e8SwN/ZEylv5zeQR8189e5bD5tX+WbrRjpzPOf4cZUAbiU5d4FvofrVnBLBHCm3pkVOY
 1bFA==
X-Gm-Message-State: AOAM531x881NMSmOYIcj4QrZzYVfOe19Q9tM0zv7YDjKNdd0dVDSBTYY
 TIbLubTza8ydswT6YiUAEITO8xxOMEAhtg==
X-Google-Smtp-Source: ABdhPJwHGhcuoXpECr/8WC52zp7a4wNE/5Sui6DEtkIIObt57/ojTHfvQFAyr/sj5eNOtHUXkB65vA==
X-Received: by 2002:a17:90a:bb13:: with SMTP id
 u19mr3125141pjr.95.1622132831436; 
 Thu, 27 May 2021 09:27:11 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:11 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:32 -0500
Message-Id: <20210527162650.1182544-12-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 11/29] drm/i915/request: Remove the hook from
 await_execution
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This was only ever used for FENCE_SUBMIT automatic engine selection
which was removed in the previous commit.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  3 +-
 drivers/gpu/drm/i915/i915_request.c           | 42 ++++---------------
 drivers/gpu/drm/i915/i915_request.h           |  4 +-
 3 files changed, 9 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index efb2fa3522a42..7024adcd5cf15 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3473,8 +3473,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 	if (in_fence) {
 		if (args->flags & I915_EXEC_FENCE_SUBMIT)
 			err = i915_request_await_execution(eb.request,
-							   in_fence,
-							   NULL);
+							   in_fence);
 		else
 			err = i915_request_await_dma_fence(eb.request,
 							   in_fence);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 970d8f4986bbe..53f23ce40dd63 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -49,7 +49,6 @@
 struct execute_cb {
 	struct irq_work work;
 	struct i915_sw_fence *fence;
-	void (*hook)(struct i915_request *rq, struct dma_fence *signal);
 	struct i915_request *signal;
 };
 
@@ -180,17 +179,6 @@ static void irq_execute_cb(struct irq_work *wrk)
 	kmem_cache_free(global.slab_execute_cbs, cb);
 }
 
-static void irq_execute_cb_hook(struct irq_work *wrk)
-{
-	struct execute_cb *cb = container_of(wrk, typeof(*cb), work);
-
-	cb->hook(container_of(cb->fence, struct i915_request, submit),
-		 &cb->signal->fence);
-	i915_request_put(cb->signal);
-
-	irq_execute_cb(wrk);
-}
-
 static __always_inline void
 __notify_execute_cb(struct i915_request *rq, bool (*fn)(struct irq_work *wrk))
 {
@@ -517,17 +505,12 @@ static bool __request_in_flight(const struct i915_request *signal)
 static int
 __await_execution(struct i915_request *rq,
 		  struct i915_request *signal,
-		  void (*hook)(struct i915_request *rq,
-			       struct dma_fence *signal),
 		  gfp_t gfp)
 {
 	struct execute_cb *cb;
 
-	if (i915_request_is_active(signal)) {
-		if (hook)
-			hook(rq, &signal->fence);
+	if (i915_request_is_active(signal))
 		return 0;
-	}
 
 	cb = kmem_cache_alloc(global.slab_execute_cbs, gfp);
 	if (!cb)
@@ -537,12 +520,6 @@ __await_execution(struct i915_request *rq,
 	i915_sw_fence_await(cb->fence);
 	init_irq_work(&cb->work, irq_execute_cb);
 
-	if (hook) {
-		cb->hook = hook;
-		cb->signal = i915_request_get(signal);
-		cb->work.func = irq_execute_cb_hook;
-	}
-
 	/*
 	 * Register the callback first, then see if the signaler is already
 	 * active. This ensures that if we race with the
@@ -1253,7 +1230,7 @@ emit_semaphore_wait(struct i915_request *to,
 		goto await_fence;
 
 	/* Only submit our spinner after the signaler is running! */
-	if (__await_execution(to, from, NULL, gfp))
+	if (__await_execution(to, from, gfp))
 		goto await_fence;
 
 	if (__emit_semaphore_wait(to, from, from->fence.seqno))
@@ -1284,16 +1261,14 @@ static int intel_timeline_sync_set_start(struct intel_timeline *tl,
 
 static int
 __i915_request_await_execution(struct i915_request *to,
-			       struct i915_request *from,
-			       void (*hook)(struct i915_request *rq,
-					    struct dma_fence *signal))
+			       struct i915_request *from)
 {
 	int err;
 
 	GEM_BUG_ON(intel_context_is_barrier(from->context));
 
 	/* Submit both requests at the same time */
-	err = __await_execution(to, from, hook, I915_FENCE_GFP);
+	err = __await_execution(to, from, I915_FENCE_GFP);
 	if (err)
 		return err;
 
@@ -1406,9 +1381,7 @@ i915_request_await_external(struct i915_request *rq, struct dma_fence *fence)
 
 int
 i915_request_await_execution(struct i915_request *rq,
-			     struct dma_fence *fence,
-			     void (*hook)(struct i915_request *rq,
-					  struct dma_fence *signal))
+			     struct dma_fence *fence)
 {
 	struct dma_fence **child = &fence;
 	unsigned int nchild = 1;
@@ -1441,8 +1414,7 @@ i915_request_await_execution(struct i915_request *rq,
 
 		if (dma_fence_is_i915(fence))
 			ret = __i915_request_await_execution(rq,
-							     to_request(fence),
-							     hook);
+							     to_request(fence));
 		else
 			ret = i915_request_await_external(rq, fence);
 		if (ret < 0)
@@ -1468,7 +1440,7 @@ await_request_submit(struct i915_request *to, struct i915_request *from)
 							&from->submit,
 							I915_FENCE_GFP);
 	else
-		return __i915_request_await_execution(to, from, NULL);
+		return __i915_request_await_execution(to, from);
 }
 
 static int
diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
index 270f6cd37650c..63b087a7f5707 100644
--- a/drivers/gpu/drm/i915/i915_request.h
+++ b/drivers/gpu/drm/i915/i915_request.h
@@ -352,9 +352,7 @@ int i915_request_await_object(struct i915_request *to,
 int i915_request_await_dma_fence(struct i915_request *rq,
 				 struct dma_fence *fence);
 int i915_request_await_execution(struct i915_request *rq,
-				 struct dma_fence *fence,
-				 void (*hook)(struct i915_request *rq,
-					      struct dma_fence *signal));
+				 struct dma_fence *fence);
 
 void i915_request_add(struct i915_request *rq);
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
