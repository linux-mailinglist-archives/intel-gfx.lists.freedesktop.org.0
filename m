Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0F23933BA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 18:27:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D53D6F42E;
	Thu, 27 May 2021 16:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E5466F42C
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 16:26:59 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id d20so203194pls.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 09:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rIFdXHMv7fC1XsUnY0X13bQCN8ILpEAezxdwmShPHGc=;
 b=AUkhb2EmD6Zl6GkL3/G1h+TowIRx+rjSan2kUic2owfnB7uPi4tTFOaz3N65sssjJ5
 VS3Pq7nfEXRgzCEC3u0ujKGGaHm6OVcbPX04uCqjNXVQvY1iNDG5VuL1BCiAUvq0FgPp
 htpzTdHE2pb0ByXxjHXsoE7IiV81GwPjOr2Rlc0wylmexDuWU2FFyK8PCLspRkI3yW8g
 D0NpsPDXZ9g+/1ardbT8XL1Fw4I+ewWzK/fGeK6Y5jk0CXaxcbB742bBUsnLPPb8wr4c
 OziGBEgi7R0LlQzrPEgXdyqJSczXZwwZycRld5J7GZpsH911GHA251kgSDoqtZLjgkwQ
 tHDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rIFdXHMv7fC1XsUnY0X13bQCN8ILpEAezxdwmShPHGc=;
 b=RKKuojcECxhk+jj/0QP/w0xD7/hRa61wExKb1BRPxzz7ZUJYk806KzQP+CiDEvgZgH
 oL9MlFUboANsvDU7IpTOA36/CSJnWBqk6VAy3B0fmNIzSrl/L72SR2fP4x71N0sUdxUJ
 Y5G/EFIMp5x0YEciFfWR6qYc/0CWfiuw1PFP3/Z2Sf50k0hYGbWKQT2cMvbD+V3rP9t+
 p4TGt22iswRsi7pznlgIKnjWANHFJd3YAe1sAJpUp0iK23wL1v5n2f7UxeBUmHxM7TPo
 gX3wFTRc8R2YfR+8KTNBbtvoxmMvZER+NokTEcdxilZP1IOMZg1Ix2v4GBLOqpTgw0j9
 bqhA==
X-Gm-Message-State: AOAM532Ey7eF1qCQ1HTSdVBIJ327Ab9EIN1+m9AQ/kNBTB9UxrusWvOv
 MrYsUAdXdIYJ2oSvcUYrfWSZgHIaYSHuvQ==
X-Google-Smtp-Source: ABdhPJwaSBkT8LfOHiArlzdeVL4XW2FHkC4c8yiwS4pkSRr6WiX9xgAVykTLU/NOGgpeG9k0ERwMfw==
X-Received: by 2002:a17:90a:7a89:: with SMTP id
 q9mr10149480pjf.0.1622132818870; 
 Thu, 27 May 2021 09:26:58 -0700 (PDT)
Received: from omlet.com ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id h9sm2298711pja.42.2021.05.27.09.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 09:26:58 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 27 May 2021 11:26:23 -0500
Message-Id: <20210527162650.1182544-3-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210527162650.1182544-1-jason@jlekstrand.net>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/29] drm/i915: Stop storing the ring size in
 the ring pointer (v2)
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

Previously, we were storing the ring size in the ring pointer before it
was actually allocated.  We would then guard setting the ring size on
checking for CONTEXT_ALLOC_BIT.  This is error-prone at best and really
only saves us a few bytes on something that already burns at least 4K.
Instead, this patch adds a new ring_size field and makes everything use
that.

v2 (Daniel Vetter):
 - Replace 512 * SZ_4K with SZ_2M

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 3 +--
 drivers/gpu/drm/i915/gt/intel_context.c       | 3 ++-
 drivers/gpu/drm/i915/gt/intel_context.h       | 5 -----
 drivers/gpu/drm/i915/gt/intel_context_types.h | 1 +
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 2 +-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 2 +-
 drivers/gpu/drm/i915/gt/selftest_mocs.c       | 2 +-
 drivers/gpu/drm/i915/gt/selftest_timeline.c   | 2 +-
 drivers/gpu/drm/i915/gvt/scheduler.c          | 7 ++-----
 9 files changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 650364a0dae28..ec999b7ca50f4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -211,8 +211,7 @@ static void intel_context_set_gem(struct intel_context *ce,
 	GEM_BUG_ON(rcu_access_pointer(ce->gem_context));
 	RCU_INIT_POINTER(ce->gem_context, ctx);
 
-	if (!test_bit(CONTEXT_ALLOC_BIT, &ce->flags))
-		ce->ring = __intel_context_ring_size(SZ_16K);
+	ce->ring_size = SZ_16K;
 
 	if (rcu_access_pointer(ctx->vm)) {
 		struct i915_address_space *vm;
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 4033184f13b9f..bd63813c8a802 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -371,7 +371,8 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 	ce->engine = engine;
 	ce->ops = engine->cops;
 	ce->sseu = engine->sseu;
-	ce->ring = __intel_context_ring_size(SZ_4K);
+	ce->ring = NULL;
+	ce->ring_size = SZ_4K;
 
 	ewma_runtime_init(&ce->runtime.avg);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index f83a73a2b39fc..b10cbe8fee992 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -175,11 +175,6 @@ int intel_context_prepare_remote_request(struct intel_context *ce,
 
 struct i915_request *intel_context_create_request(struct intel_context *ce);
 
-static inline struct intel_ring *__intel_context_ring_size(u64 sz)
-{
-	return u64_to_ptr(struct intel_ring, sz);
-}
-
 static inline bool intel_context_is_barrier(const struct intel_context *ce)
 {
 	return test_bit(CONTEXT_BARRIER_BIT, &ce->flags);
diff --git a/drivers/gpu/drm/i915/gt/intel_context_types.h b/drivers/gpu/drm/i915/gt/intel_context_types.h
index ed8c447a7346b..90026c1771055 100644
--- a/drivers/gpu/drm/i915/gt/intel_context_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_context_types.h
@@ -82,6 +82,7 @@ struct intel_context {
 	spinlock_t signal_lock; /* protects signals, the list of requests */
 
 	struct i915_vma *state;
+	u32 ring_size;
 	struct intel_ring *ring;
 	struct intel_timeline *timeline;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index aafe2a4df4960..890b43b296a90 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -845,7 +845,7 @@ int lrc_alloc(struct intel_context *ce, struct intel_engine_cs *engine)
 	if (IS_ERR(vma))
 		return PTR_ERR(vma);
 
-	ring = intel_engine_create_ring(engine, (unsigned long)ce->ring);
+	ring = intel_engine_create_ring(engine, ce->ring_size);
 	if (IS_ERR(ring)) {
 		err = PTR_ERR(ring);
 		goto err_vma;
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index 1081cd36a2bd3..01d9896dd4844 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -2793,7 +2793,7 @@ static int __live_preempt_ring(struct intel_engine_cs *engine,
 			goto err_ce;
 		}
 
-		tmp->ring = __intel_context_ring_size(ring_sz);
+		tmp->ring_size = ring_sz;
 
 		err = intel_context_pin(tmp);
 		if (err) {
diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
index e55a887d11e2b..f343fa5fd986f 100644
--- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
+++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
@@ -28,7 +28,7 @@ static struct intel_context *mocs_context_create(struct intel_engine_cs *engine)
 		return ce;
 
 	/* We build large requests to read the registers from the ring */
-	ce->ring = __intel_context_ring_size(SZ_16K);
+	ce->ring_size = SZ_16K;
 
 	return ce;
 }
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index 9adbd9d147bea..7eedecfb86e59 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -874,7 +874,7 @@ static int create_watcher(struct hwsp_watcher *w,
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	ce->ring = __intel_context_ring_size(ringsz);
+	ce->ring_size = ringsz;
 	w->rq = intel_context_create_request(ce);
 	intel_context_put(ce);
 	if (IS_ERR(w->rq))
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index fc735692f21fb..422cbe0d579d2 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -1409,11 +1409,8 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 		intel_context_set_single_submission(ce);
 
 		/* Max ring buffer size */
-		if (!intel_uc_wants_guc_submission(&engine->gt->uc)) {
-			const unsigned int ring_size = 512 * SZ_4K;
-
-			ce->ring = __intel_context_ring_size(ring_size);
-		}
+		if (!intel_uc_wants_guc_submission(&engine->gt->uc))
+			ce->ring_size = SZ_2M;
 
 		s->shadow[i] = ce;
 	}
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
