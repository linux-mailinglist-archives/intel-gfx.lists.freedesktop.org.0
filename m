Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E866369CAA
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 00:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207BD6ECBB;
	Fri, 23 Apr 2021 22:31:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com
 [IPv6:2607:f8b0:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 862016ECB4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 22:31:53 +0000 (UTC)
Received: by mail-pg1-x52d.google.com with SMTP id b17so36135407pgh.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 15:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n4sAffokmQx9QtnzadhhmvR1SBAzqnuYU4nbx3cvNfU=;
 b=Va3YtlwdeDb3v5A3F+y8lgSk0WC6+MvGXiPOcPhiphb5Fa8AmBCv8ccPISOOUHWXud
 ALyziB/DoMmTlWgoHe9tBZ67/rh5mTIh7LnIUucXKYJX9T6rHYAMp3h1IqnaaTwfIg3g
 5rI0VL1YBS+CsuajLb58xisenwDxFeXGYhnXIkYgcHnLfaX/+ZSLxO50NqbBDBBOU5Ct
 m7J1OITeo7EmVN/VBxv6bzEyXn0gMowfnUaBr8uLciw13CroqV7TcgJBGsh/0TeyCBpI
 4jbX8zuqAY3CDsio31/tS8v121ZvRd4WMfEwU8tuZPKJOMCP4tKG/QPlPAYp6cigNoz+
 pRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n4sAffokmQx9QtnzadhhmvR1SBAzqnuYU4nbx3cvNfU=;
 b=fDqO8zwb2G+18HnsKDUjrUUkS1InM9NJwWAEv7aYUc9FmP20DU/GU0PExN2pAwqps1
 ovLkiWtFHuR3vQs8Z+ZwhRWZHosfYM7MZ1V+rl9fBNE3XV4rLc26VErvW9JhHikgEhtf
 4fHy6Jqc+E9UhtNcODI2Dc6TNB5zGKrcYPHAx5Z4cT3IWzeqEVbbV07KXCl5zOxzbJmP
 5/2fHc9WzqLDuSOTYJ+mPEa/3YPaTcE1rFI/H1EyOvjP7fwxF0fyYFyfc2nQY2Yr0EgE
 F+1J96P548GIP9WUQ3Dxmp19ZaNiWLn4Yxr+lZwBk38Aj5an9QKqo8NvreyYTtNInMrt
 52PA==
X-Gm-Message-State: AOAM530HiFNBjkJVpnkai0GPUjMDcq301qF554/Ea7NFh7pf2/SkVMXt
 xHhNBHR9jbhRJa9YnjH6ZaQaU6aJEBAwSg==
X-Google-Smtp-Source: ABdhPJzP7MccW6N6gsNkRhM/XYoQu9Ljz3+forhesjWjqj5a8vAChuciW1/R0iLCscLYdIIKDwgCjA==
X-Received: by 2002:a63:6b4a:: with SMTP id g71mr5870512pgc.274.1619217112712; 
 Fri, 23 Apr 2021 15:31:52 -0700 (PDT)
Received: from omlet.com ([134.134.139.76])
 by smtp.gmail.com with ESMTPSA id z12sm5523420pfn.195.2021.04.23.15.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Apr 2021 15:31:52 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 23 Apr 2021 17:31:20 -0500
Message-Id: <20210423223131.879208-11-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210423223131.879208-1-jason@jlekstrand.net>
References: <20210423223131.879208-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/21] drm/i915/request: Remove the hook from
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This was only ever used for bonded virtual engine execution.  Since
that's no longer allowed, this is dead code.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
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
index bec9c3652188b..7e00218b8c105 100644
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
