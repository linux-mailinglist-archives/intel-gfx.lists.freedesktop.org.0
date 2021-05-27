Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD383933EB
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:28:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A266F476;
	Thu, 27 May 2021 16:27:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8D2C6F44B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:27:10 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id d16so952690pfn.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UP13GnWc+dZAJXVJewmd5JY7nVKWRrK8BrMHu5LCX3A=;
 b=tBa8RgW9wAQlTEFOlklbHNXUqzakRtw+y2WYiyUnXbFBgT8Pc8JPNDBRekHr+dabur
 hjbx6coT0aONNz8jJpAtjrb2ZX9H1SO+YFIbe+uphFrEYtYyZ6NcP+110Ya6H7wq+lgk
 Tgks7GQcJE6yqdZtorzL/95PKnaWjysW4DGbUWK/M9CSvhwdzR69b4E4RRQm90McNStm
 QCvyOAokCJEjVi3+OiUC3/VlBPn+KNu6v4IB202Yx/EABrUai2d4e28lDRX+UTUBFL4M
 sZZSjDjdUKgf8Zuk/ZlzvNGW45FcW6ALGS2MjbgimZ+zHM+ug+RRMNPX1NKKKCxP7UmM
 6F8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UP13GnWc+dZAJXVJewmd5JY7nVKWRrK8BrMHu5LCX3A=;
 b=Iu3sCw7m1iTO2efF+zJZeRMR1WvFUh+Hl9IZzj61ifK99oCe0YBjHjrNT6Sikn258f
 46f/rA2XqmiuMyHVOgTZmJCLU6SeLLGYpA88pNk2wSZp1IuOFxVFSB++x9NxENx6q0pD
 5xXcsyvBWD9kWnc3ZAIbBoN8xzv5n4XYKxdHbBAS5hALmiN1LFOcackKNtEvaYGaRqHD
 lgUtzia/f63q6wRBoxNBKyH87lnpR5jHCGGVBqUcykKIBeh4Nr43r5lkBe+kvSiwTtFb
 i70lY1cBOWlGZJuOhSSA/xDpsZpClZBg7BTTOpM/EPXkoLa4KrcLjW/0phlbVTymoBQS
 gQsw==
X-Gm-Message-State: AOAM533jiq0JdkqGu3bpc9EdQFN/t3vslR6p0nNgeTcglE6ctnMyqOOl
 sckGY00Hnq5DOTN3Azvy44h2vVpMd5P6EQ==
X-Google-Smtp-Source: ABdhPJxoQExVfsvGuzAQ1sdU7xJKGRCN9p+xjqnn8YmmQYZPpFk4Q6Luu6JvInQTNSoHtl9cwIohhA==
X-Received: by 2002:a63:5c5e:: with SMTP id n30mr4363623pgm.87.1622132830127; 
 Thu, 27 May 2021 09:27:10 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.27.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:27:09 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:31 -0500
Message-Id: <20210527162650.1182544-11-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/29] drm/i915/gem: Remove engine auto-magic
 with FENCE_SUBMIT (v2)
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

Even though FENCE_SUBMIT is only documented to wait until the request in
the in-fence starts instead of waiting until it completes, it has a bit
more magic than that.  If FENCE_SUBMIT is used to submit something to a
balanced engine, we would wait to assign engines until the primary
request was ready to start and then attempt to assign it to a different
engine than the primary.  There is an IGT test (the bonded-slice subtest
of gem_exec_balancer) which exercises this by submitting a primary batch
to a specific VCS and then using FENCE_SUBMIT to submit a secondary
which can run on any VCS and have i915 figure out which VCS to run it on
such that they can run in parallel.

However, this functionality has never been used in the real world.  The
media driver (the only user of FENCE_SUBMIT) always picks exactly two
physical engines to bond and never asks us to pick which to use.

v2 (Daniel Vetter):
 - Mention the exact IGT test this breaks

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_engine_types.h    |  7 -------
 .../drm/i915/gt/intel_execlists_submission.c    | 17 -----------------
 3 files changed, 1 insertion(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index d640bba6ad9ab..efb2fa3522a42 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3474,7 +3474,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		if (args->flags & I915_EXEC_FENCE_SUBMIT)
 			err = i915_request_await_execution(eb.request,
 							   in_fence,
-							   eb.engine->bond_execute);
+							   NULL);
 		else
 			err = i915_request_await_dma_fence(eb.request,
 							   in_fence);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 883bafc449024..68cfe5080325c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -446,13 +446,6 @@ struct intel_engine_cs {
 	 */
 	void		(*submit_request)(struct i915_request *rq);
 
-	/*
-	 * Called on signaling of a SUBMIT_FENCE, passing along the signaling
-	 * request down to the bonded pairs.
-	 */
-	void            (*bond_execute)(struct i915_request *rq,
-					struct dma_fence *signal);
-
 	/*
 	 * Call when the priority on a request has changed and it and its
 	 * dependencies may need rescheduling. Note the request itself may
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 14378b28169b7..635d6d2494d26 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3547,22 +3547,6 @@ static void virtual_submit_request(struct i915_request *rq)
 	spin_unlock_irqrestore(&ve->base.active.lock, flags);
 }
 
-static void
-virtual_bond_execute(struct i915_request *rq, struct dma_fence *signal)
-{
-	intel_engine_mask_t allowed, exec;
-
-	allowed = ~to_request(signal)->engine->mask;
-
-	/* Restrict the bonded request to run on only the available engines */
-	exec = READ_ONCE(rq->execution_mask);
-	while (!try_cmpxchg(&rq->execution_mask, &exec, exec & allowed))
-		;
-
-	/* Prevent the master from being re-run on the bonded engines */
-	to_request(signal)->execution_mask &= ~allowed;
-}
-
 struct intel_context *
 intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 			       unsigned int count)
@@ -3616,7 +3600,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 	ve->base.schedule = i915_schedule;
 	ve->base.submit_request = virtual_submit_request;
-	ve->base.bond_execute = virtual_bond_execute;
 
 	INIT_LIST_HEAD(virtual_queue(ve));
 	ve->base.execlists.queue_priority_hint = INT_MIN;
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
