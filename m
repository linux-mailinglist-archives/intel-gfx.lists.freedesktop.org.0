Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF2336EFF6
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 21:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D28F56F467;
	Thu, 29 Apr 2021 19:04:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com
 [IPv6:2607:f8b0:4864:20::42a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34406F454
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 19:04:02 +0000 (UTC)
Received: by mail-pf1-x42a.google.com with SMTP id c19so2134514pfv.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PeKiXip0SnaAWd0ub9QDTbyd3pBX1kbpUpkbNg02HbQ=;
 b=BOfhjjpwa2f8F9qYIkhggvBBr2Atls0L4omelFuHGSs93zkTzOLlPEEef5nEqjvGxV
 mz9xFfjyyOkbIoUd+THyqzj+eZur3fL6KoKw50FNPS4HT795BxAIk16p8F1Ufso+RZqi
 d2d2H0o7r9csLfXtG2J52+wwALHXQODlSMjrIj9l1BHj4GRdfAsMFeUBmMu2Ol+fizwO
 axmWAa1YfiskTYhXlAbP0XdU67Nj22La3G2QJs2Vtol1vKicJbsEQObJqoBAXUvdc1Zp
 deULBHeV0aEHDig4Z3ksvzEKU+yTNeh9l1mJcvKWuj2V0vsX/Gw3QKWqAvb75GQc7k9c
 Pp5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PeKiXip0SnaAWd0ub9QDTbyd3pBX1kbpUpkbNg02HbQ=;
 b=NbhKi8bkVsxAgGAKThSskxRFuifueVLjAQSCqR/fBBSPWluspYTzmGeM8gbEigjgqQ
 QT0u5H0NK01ZTj66wayvw3OC2XqiQtGsICuD5PEmN1p244UWUhUEwouY8ouub9ODuqzX
 ED6LZ2+J1IAAL2W8ouacB2BXe+c9zHqTKmxqSTj/J7d/ia15jKW2DAjkbN7oKlOHKXrY
 L5X+9HdukJexj6BEpVow7LTwTrJR7/8oQqVQ7epQzOWbYsACLhpDMLeA+Cg9pkvdgjb3
 0aCgJa5oJ8WgIQzg5LasNdwt2YfeKO3j7bpzKzyU1vgw+52weiedSz7H7TpqK6AAIuWq
 l5gw==
X-Gm-Message-State: AOAM533zj4lczLtK+gvvuKNUCIrGSd2+CdgYGlMdZ7zRuaui4+eoGO8f
 hK1BHw4UGjJzzZNC6lztbqcy0o1S/VxCGw==
X-Google-Smtp-Source: ABdhPJwzPdTBPxCzmpWylf5J6wLIj7/2movDU5idBBu1RFBmETZTwzsTDu7eVJ1653Lrrt51V9B6+w==
X-Received: by 2002:a05:6a00:1642:b029:27f:2cae:eb7e with SMTP id
 m2-20020a056a001642b029027f2caeeb7emr1140385pfc.39.1619723042043; 
 Thu, 29 Apr 2021 12:04:02 -0700 (PDT)
Received: from omlet.lan ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id b21sm3114405pji.39.2021.04.29.12.04.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 12:04:01 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 29 Apr 2021 14:03:25 -0500
Message-Id: <20210429190340.1555632-11-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210429190340.1555632-1-jason@jlekstrand.net>
References: <20210429190340.1555632-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/25] drm/i915/gem: Remove engine auto-magic
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
