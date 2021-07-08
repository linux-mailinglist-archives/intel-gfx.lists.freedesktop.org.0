Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7165C3C1664
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 17:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E3416E902;
	Thu,  8 Jul 2021 15:48:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com
 [IPv6:2607:f8b0:4864:20::22f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CE9D6E8FC
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 15:48:52 +0000 (UTC)
Received: by mail-oi1-x22f.google.com with SMTP id 65so6335666oie.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 08:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1v8ZnznCUlwOzu80aP7iRZ2Mr93SQJISpdJGhA4G/WM=;
 b=Vkl5aOn60YKTo/BPeVkA8PR8sO3m8PTcp9+tIss88RJF1zZ4/4ZWALBzmfTdESANkU
 b2ZoNhfKLL4c4K1p2DvCViLBsXYlCACYM73KRT6o9F1907NlwxnqVZSUD92FDurGbG0a
 tqHXInUvILMNEvityf2BUm8h+ahIQF3oC7dQSOiNuO72hGrtQs+lynaKGj4JOlpdzGQ4
 eImIO8R3WqkkWqajhKdrTk9CVXm2fohTX1ARVM9YQcjQrFiJukyWHTn0J7O8iYz5lTSE
 b7vv4+D0aMt59+t0uL092e2PCIFOvzl6S9Dw9dUnGYcuQujGRB8jDGh8PBEqog651mPn
 fnlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1v8ZnznCUlwOzu80aP7iRZ2Mr93SQJISpdJGhA4G/WM=;
 b=Ii5cxC65V9QRJN8Ej5Tm23u4epv3Sl+s3Ge44w1JS76k6YfsVcUYDcGFu0OdJlKFAr
 kTgigR7l0erkPaGeMymkpy7WZ5gecoe3CoymR4fhzkFBvmmz9NtCjA+X9dZv9Osla85Z
 xfvDS9HmWmxS6TC6E89JAao8OsclVbyg5Vsk5mYcW1amvNPibEJAjkCLZMBug1qg+f9o
 WPGWUijbIBU75bxU4eeLli658SE1DlajtY6Y1ZBW94TKUJIQUfIhILdcJIDAE0JyVKlm
 88XMqMDcSrxwmQ2Zyu5nqvOZ110wo53F4DGOOanp3pC/Nzn6uHyC+0/OmUla8uQDLWyI
 jTig==
X-Gm-Message-State: AOAM532RhLgDybc4SQusRyU9l+TWj26YvuD6DOWP3KuOJ30R7B4xaK52
 wSDliPvQj1GrmdM0yPhK5O7ITtkJJFT3Lg==
X-Google-Smtp-Source: ABdhPJw/o16PlgpgR4gccLks9uevMqo/VqFe0kB0Ymi6l/ETgkgDxNQ8uNqCMahha7UviF/P7I/fug==
X-Received: by 2002:a05:6808:1150:: with SMTP id
 u16mr14347226oiu.63.1625759331211; 
 Thu, 08 Jul 2021 08:48:51 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id d20sm548356otq.62.2021.07.08.08.48.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 08:48:50 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  8 Jul 2021 10:48:15 -0500
Message-Id: <20210708154835.528166-11-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210708154835.528166-1-jason@jlekstrand.net>
References: <20210708154835.528166-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/30] drm/i915/gem: Remove engine auto-magic
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
index 7b7897242a837..30498948c83d0 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -3493,7 +3493,7 @@ i915_gem_do_execbuffer(struct drm_device *dev,
 		if (args->flags & I915_EXEC_FENCE_SUBMIT)
 			err = i915_request_await_execution(eb.request,
 							   in_fence,
-							   eb.engine->bond_execute);
+							   NULL);
 		else
 			err = i915_request_await_dma_fence(eb.request,
 							   in_fence);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 5b91068ab2779..1cb9c3b70b29a 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -416,13 +416,6 @@ struct intel_engine_cs {
 	 */
 	void		(*submit_request)(struct i915_request *rq);
 
-	/*
-	 * Called on signaling of a SUBMIT_FENCE, passing along the signaling
-	 * request down to the bonded pairs.
-	 */
-	void            (*bond_execute)(struct i915_request *rq,
-					struct dma_fence *signal);
-
 	void		(*release)(struct intel_engine_cs *engine);
 
 	struct intel_engine_execlists execlists;
diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
index 98b256352c23d..56e25090da672 100644
--- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
@@ -3655,22 +3655,6 @@ static void virtual_submit_request(struct i915_request *rq)
 	spin_unlock_irqrestore(&ve->base.sched_engine->lock, flags);
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
@@ -3731,7 +3715,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 	ve->base.sched_engine->schedule = i915_schedule;
 	ve->base.sched_engine->kick_backend = kick_execlists;
 	ve->base.submit_request = virtual_submit_request;
-	ve->base.bond_execute = virtual_bond_execute;
 
 	INIT_LIST_HEAD(virtual_queue(ve));
 	tasklet_setup(&ve->base.sched_engine->tasklet, virtual_submission_tasklet);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
