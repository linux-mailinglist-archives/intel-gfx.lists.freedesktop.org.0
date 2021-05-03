Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F56F3718A7
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 17:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5CFE6E8EF;
	Mon,  3 May 2021 15:58:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 030866E8F6
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 15:58:13 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 l10-20020a17090a850ab0290155b06f6267so5995523pjn.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 03 May 2021 08:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PeKiXip0SnaAWd0ub9QDTbyd3pBX1kbpUpkbNg02HbQ=;
 b=gIHYWfswPaEALAW8ZI/mq8bmEbo0iF1+9MExxAUoLF9neI5OPnaqZPfaCSVRRGnw2T
 c3TMwhYx2QvS5s3MMSklFz+vRz0qxwfAK/avJBsb8ftXIlhNMsZiOnLBmhSRFEczcayQ
 uY4lzVunHJteA+kPMJCUUg7l9vvF2/n5vnOI0FKuD+zSe3F1parsohKBafHH62V8l72a
 RGdHp2BA64um1lp1qxZGSiSjMIJ+Jen0LyS5Tpc98htlgqlNjTH34Y7COnlIXcLFIs/t
 iSVueZaUWMrBD2M2NrodHUtPSUzaL+vJsEliXqC0JdWffGhruKwXBVJbI1fZeIZV89yI
 JQwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PeKiXip0SnaAWd0ub9QDTbyd3pBX1kbpUpkbNg02HbQ=;
 b=hW0oKUeSxSxBK0pe42WJoKl49FIV3A4YUAgtEl4F3qlNTvqNJG3DIYZ8+mHfE64knD
 MAJxw4USjyKoGIdvisnduCmH+E6MdM4JppiogVKD5m219J0QUYQNFWoD45+ZE9cUVsXp
 LYzMdrOe6x10t5Kb8ii2NMuF1bxXn10Dlwwbkwrid+5w6O7zjJK8j8DUTtiyXvi7DQ6a
 9IjXZBl07Pme/TfZzDQtYHRaGcRhAd/iZcQR5YgdJZYXPtyBvpJuhfEa6Tgk5/4B66Tr
 A8c954x6hX74KDs/sA9FxAVBTyqVSlnjrTuD+msvMYscyOfZ/0rRrrwz4dtQRBQ68oEE
 1+FQ==
X-Gm-Message-State: AOAM533GRWsJot6kw28Ic1TOBWukmz6jhqlUvJFZxCYmhM9OnMcDIVrg
 elpUUlX60D8vPwk32NrRMyNzDkK66IUE2g==
X-Google-Smtp-Source: ABdhPJymgbFfTJqw8zCPVbNNewAGGeADGXgAD0oyFA6SSqb/p0x8bb+X+maPkUYj6EBOYaaHmtpQnw==
X-Received: by 2002:a17:90b:907:: with SMTP id
 bo7mr21460808pjb.114.1620057492194; 
 Mon, 03 May 2021 08:58:12 -0700 (PDT)
Received: from omlet.com (jfdmzpr05-ext.jf.intel.com. [134.134.139.74])
 by smtp.gmail.com with ESMTPSA id gf21sm9783296pjb.20.2021.05.03.08.58.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 May 2021 08:58:11 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  3 May 2021 10:57:31 -0500
Message-Id: <20210503155748.1961781-11-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210503155748.1961781-1-jason@jlekstrand.net>
References: <20210503155748.1961781-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/27] drm/i915/gem: Remove engine auto-magic
 with FENCE_SUBMIT
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

Even though FENCE_SUBMIT is only documented to wait until the request in
the in-fence starts instead of waiting until it completes, it has a bit
more magic than that.  If FENCE_SUBMIT is used to submit something to a
balanced engine, we would wait to assign engines until the primary
request was ready to start and then attempt to assign it to a different
engine than the primary.  There is an IGT test which exercises this by
submitting a primary batch to a specific VCS and then using FENCE_SUBMIT
to submit a secondary which can run on any VCS and have i915 figure out
which VCS to run it on such that they can run in parallel.

However, this functionality has never been used in the real world.  The
media driver (the only user of FENCE_SUBMIT) always picks exactly two
physical engines to bond and never asks us to pick which to use.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
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
