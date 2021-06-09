Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E273A1F0B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 23:30:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC1616EB67;
	Wed,  9 Jun 2021 21:30:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A006EB5F
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 21:30:09 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 22-20020a17090a0c16b0290164a5354ad0so2449282pjs.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 14:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6ujlSwBFtNLSab33ylvX6bUw6EEVdMDaAuKh8x6lbj8=;
 b=xtHFHabhie43Azccm0jWH22+vjoZuhZf8pbmpNdAgib7WFSShoravd//bkjG/Z4U23
 tNTx4UtDxo/ixObUh5EVrQkJnAXht/rBzAanigpspkdzsfy5MFx4ZxVWF/QfD/7vxj+U
 R7TEr2PXc5sIrUXJ+e3xROwEqWz4kyDWqoRfETTc9SIpkyjCMUcI0U7oK3tFGIqvbVRB
 LZgNncVMWYaYXfHfS1qrvhB/5hS9VDG5KyDZWMypsNSwhh956njKSKLLs4vtGOsrFaY+
 qdPgJRNpoTQz2+1QxZ3Z318lNhL2E9HhmRUUYFADwHUmMA9lritc5KsTkR4W6lsvFFWw
 SmAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6ujlSwBFtNLSab33ylvX6bUw6EEVdMDaAuKh8x6lbj8=;
 b=Q82EpNSC3L4yx22JqxfZe+grujDSEFF78T4vjoagS3N26wxooDQdPsUE9ts6SPB4vj
 CqUb5s1RCHMb2DCqh55rSkTQdqK3OclSwK55lqti0X6QeoC+7s6ue8LB/Px9QzzDvN9P
 nBUftvtuhz/8ZnDsDNSjJEuJ5nV7NeAz2x7YBqzevwVlNgVVMy9v+TY5GaLQylhfD4Ia
 6jehaUQFxxF2kNZQy8Et9txBhbDr6fKxyq8wahg1yrlubSwNvH+avJliZYg3uFefC8Qg
 pA3LbtMoEmuvGqTV0KoJsPA11XswtasZzgTiY6K0jntW6fS23eeOhueadbDIFwxjMajl
 r9Ag==
X-Gm-Message-State: AOAM533JW236ybnSbIbnqZ+/jBQLhZ1whGxDObGcY3C/6mRxPW6YaV+d
 bOEAy7s+wxF4mzn3ZKj5DZRY6w==
X-Google-Smtp-Source: ABdhPJypLRemn8oAin9zM6WsKPHZAdOouKo2sbpQmQRX4fw+BScAmvEpowu4Cilm6zzjEz4Cri3CrA==
X-Received: by 2002:a17:90a:8e82:: with SMTP id
 f2mr12980243pjo.157.1623274208570; 
 Wed, 09 Jun 2021 14:30:08 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id u14sm519133pjx.14.2021.06.09.14.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 14:30:08 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 16:29:56 -0500
Message-Id: <20210609212959.471209-3-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609212959.471209-1-jason@jlekstrand.net>
References: <20210609212959.471209-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/5] drm/i915: Use a simpler scheme for caching
 i915_request
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Instead of attempting to recycle a request in to the cache when it
retires, stuff a new one in the cache every time we allocate a request
for some other reason.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 66 ++++++++++++++---------------
 1 file changed, 31 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 48c5f8527854b..e531c74f0b0e2 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -128,41 +128,6 @@ static void i915_fence_release(struct dma_fence *fence)
 	i915_sw_fence_fini(&rq->submit);
 	i915_sw_fence_fini(&rq->semaphore);
 
-	/*
-	 * Keep one request on each engine for reserved use under mempressure
-	 *
-	 * We do not hold a reference to the engine here and so have to be
-	 * very careful in what rq->engine we poke. The virtual engine is
-	 * referenced via the rq->context and we released that ref during
-	 * i915_request_retire(), ergo we must not dereference a virtual
-	 * engine here. Not that we would want to, as the only consumer of
-	 * the reserved engine->request_pool is the power management parking,
-	 * which must-not-fail, and that is only run on the physical engines.
-	 *
-	 * Since the request must have been executed to be have completed,
-	 * we know that it will have been processed by the HW and will
-	 * not be unsubmitted again, so rq->engine and rq->execution_mask
-	 * at this point is stable. rq->execution_mask will be a single
-	 * bit if the last and _only_ engine it could execution on was a
-	 * physical engine, if it's multiple bits then it started on and
-	 * could still be on a virtual engine. Thus if the mask is not a
-	 * power-of-two we assume that rq->engine may still be a virtual
-	 * engine and so a dangling invalid pointer that we cannot dereference
-	 *
-	 * For example, consider the flow of a bonded request through a virtual
-	 * engine. The request is created with a wide engine mask (all engines
-	 * that we might execute on). On processing the bond, the request mask
-	 * is reduced to one or more engines. If the request is subsequently
-	 * bound to a single engine, it will then be constrained to only
-	 * execute on that engine and never returned to the virtual engine
-	 * after timeslicing away, see __unwind_incomplete_requests(). Thus we
-	 * know that if the rq->execution_mask is a single bit, rq->engine
-	 * can be a physical engine with the exact corresponding mask.
-	 */
-	if (is_power_of_2(rq->execution_mask) &&
-	    !cmpxchg(&rq->engine->request_pool, NULL, rq))
-		return;
-
 	kmem_cache_free(global.slab_requests, rq);
 }
 
@@ -869,6 +834,29 @@ static void retire_requests(struct intel_timeline *tl)
 			break;
 }
 
+static void
+ensure_cached_request(struct i915_request **rsvd, gfp_t gfp)
+{
+	struct i915_request *rq;
+
+	/* Don't try to add to the cache if we don't allow blocking.  That
+	 * just increases the chance that the actual allocation will fail.
+	 */
+	if (gfpflags_allow_blocking(gfp))
+		return;
+
+	if (READ_ONCE(rsvd))
+		return;
+
+	rq = kmem_cache_alloc(global.slab_requests,
+			      gfp | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
+	if (!rq)
+		return; /* Oops but nothing we can do */
+
+	if (cmpxchg(rsvd, NULL, rq))
+		kmem_cache_free(global.slab_requests, rq);
+}
+
 static noinline struct i915_request *
 request_alloc_slow(struct intel_timeline *tl,
 		   struct i915_request **rsvd,
@@ -937,6 +925,14 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	/* Check that the caller provided an already pinned context */
 	__intel_context_pin(ce);
 
+	/* Before we do anything, try to make sure we have at least one
+	 * request in the engine's cache.  If we get here with GPF_NOWAIT
+	 * (this can happen when switching to a kernel context), we we want
+	 * to try very hard to not fail and we fall back to this cache.
+	 * Top it off with a fresh request whenever it's empty.
+	 */
+	ensure_cached_request(&ce->engine->request_pool, gfp);
+
 	/*
 	 * Beware: Dragons be flying overhead.
 	 *
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
