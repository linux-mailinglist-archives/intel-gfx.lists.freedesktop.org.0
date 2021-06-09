Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A135B3A1C0C
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 19:44:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF1786EA47;
	Wed,  9 Jun 2021 17:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A308E6EA4D
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 17:44:27 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id
 k22-20020a17090aef16b0290163512accedso4003712pjz.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 10:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sgele2oDgXsYUD7TuLFu9+dvT7yZeM1YGlkIHrb0l3Q=;
 b=UDMzQ/FC1dMy6MGG1FOm0KmWRi31OmAsbS0eVstx8QWlNPBgvvECh5aAOJm3ci5elQ
 cqPVWlMlO4e7sI9c687IOVK4PkEE527aAi5hSsHhfO3dHkFUD2fgvlDp28Uf9NX2HrK6
 f1FB+ehk3ReTLQxrNmgN/A7vS2e1gkoVOtlHE2ncRjA0s1UKJoFmaoeysMEqKpS6x+8w
 /OWTJjAx5e6mtajTLh29Q8SMDABIZN3y+C+gN1SFXvt6WvSWgXwKWCY6AfcfZrj4ooVZ
 mwlRdP8LqNQsl2WdCVpqCsR4gFJyGX9dRBR5Sh4pLeuJTAtq+tP0nDfLRCRPqrCQiN2R
 VRjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sgele2oDgXsYUD7TuLFu9+dvT7yZeM1YGlkIHrb0l3Q=;
 b=IEaar7JSRFQewvebuUhTMtWPDGqw9LAMnFi18v5EKGgWwZhIHqgxN01SKppjYeCY/P
 TkPt4UaLPVsqaf7V8hX5aKclflolWdu9YBrEI4IBDA1p6t/B8Fu6kky81gZ/1IhWUHG/
 UY2wAxFmlT8p/Poe2twkFuNHK364TfZqm9HrIhUqT/4stzwXfc75J532KJpIeZuh9u6w
 yymK+3zGe5iwuFl8ksc6LkJBQtUeNJICGJFTpQm6Mak8m0J1mLtZVh3LTM6FJqco6Okb
 Bn7+pBQDUAN2kbKU24Ndk7v+akNIdHBnfi6e3keoebrZ86DVjlgG4ILGtie7dWqgJeow
 iWiw==
X-Gm-Message-State: AOAM533H8CdXRCCJk/YjSpV/nlv3uTMs7i+2j24dkIYBA+f1LgGhavcf
 6Vr/kEHRQ9+68evKItBxVqLtQA==
X-Google-Smtp-Source: ABdhPJza6wfQ8tEVkTD6hQn1hK9//jS9YYf7VEeHGp3G0rtCLVxBTgPvX4n7TM+khmva8viGX+Cf0Q==
X-Received: by 2002:a17:903:188:b029:115:29f6:674c with SMTP id
 z8-20020a1709030188b029011529f6674cmr794826plg.57.1623260667197; 
 Wed, 09 Jun 2021 10:44:27 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id b10sm208619pfi.122.2021.06.09.10.44.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 10:44:26 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 12:43:49 -0500
Message-Id: <20210609174418.249585-3-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
References: <20210609174418.249585-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/31] drm/i915: Stop storing the ring size in
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
index ddc3cc3f8f092..a4faf06022d5a 100644
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
index a27bac0a4bfb8..8ada1afe3d229 100644
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
index ea2203af0764d..ed5a8142c543d 100644
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
index b9bb0e6e97f7f..8763bbeca0f77 100644
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
index 64da0c91dec1d..d0b6a3afcf44e 100644
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
index 734c37c5e3474..b56a8e37a3cd6 100644
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
