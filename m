Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 383123A1C2F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 19:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F036EAAD;
	Wed,  9 Jun 2021 17:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com
 [IPv6:2607:f8b0:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DFD36EAC7
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 17:44:54 +0000 (UTC)
Received: by mail-pl1-x62b.google.com with SMTP id v11so4482265ply.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 10:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1c+Vf/fISSF1ShrETNnLZxD8aoMkPfO5q/h6Uf6iE2A=;
 b=KcAC1HvHgBSrp3FWltzBXQm2bNEtlT2Ch/duQvoYZ3UneVoH4J/NJ0sdA9/z7qBpNO
 p8jyvqv6t+Cjf5S8wereWd9AYqUgGMP+pAp7mMuJTExdNjXDvaoTc13ign/SdYhrs11U
 229pQfGjJpeWyxlvf8TyHjJfvMLrYYCav268kRtpM7DNiyYX4vqM7QZPqz6vtz1DHMnV
 lK6eUmT4MagoFMx7aF0vF+tHhbB//u+UbklHFlbRyY8YRCSqVWm6pWzlXBq91j1tHYs8
 Imbe7lCaaH3tzp/rBYlfIY5/YFCbubtgVWNG2iX2EZ5nTeY97NOYqGfWdaXTpilWRvvc
 5f2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1c+Vf/fISSF1ShrETNnLZxD8aoMkPfO5q/h6Uf6iE2A=;
 b=M5Gk1EA+gdNdJkZMC5sG8OfdueaHzckpf5o5F6EMkan2MWtckj+ZEiReTWtzy5BFkZ
 6kMF3nf3l8zdS5QsK+hpokfmgqsSOUJG5BQTnNjAfeIpR4st5wvqvzosY3FEokPUVKLr
 4dZXq6kFOsDDWjUv9xBVRyJa5QnQ6s2dVvdkjNwUKll5RiCQ2zN3kuaNJrzPYMrOHBbK
 dbmYo0ALo+esaScWJ/O6BXuDkTmGoZdpn3Z3SNjbPXzci32B6EJ0AMo1d0ffaCTPHzOi
 i6iI64mSTZhlFrbQcLfeipubg0gRkMOLpDmqKLnXA7bFOpz8hdPpsvOFM0Rjew4rX3R1
 gZrQ==
X-Gm-Message-State: AOAM530pf4RmNcMKWRoEI282Wf3cPVNiTuGJa95SGMBdq4Vj72r7yfwM
 CBVmKkgSzgKIknODKHc0voxJ7w==
X-Google-Smtp-Source: ABdhPJyantoZX+oENZqsa6w3dfoir360i00HC2gNs23TjxDAILiwTB153zqzNo/bV4mIaHgAGz7m/A==
X-Received: by 2002:a17:903:22c6:b029:107:6048:ee4c with SMTP id
 y6-20020a17090322c6b02901076048ee4cmr804954plg.79.1623260694032; 
 Wed, 09 Jun 2021 10:44:54 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id b10sm208619pfi.122.2021.06.09.10.44.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 10:44:53 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 12:44:05 -0500
Message-Id: <20210609174418.249585-19-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
References: <20210609174418.249585-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/31] drm/i915/gem: Optionally set SSEU in
 intel_context_set_gem
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

For now this is a no-op because everyone passes in a null SSEU but it
lets us get some of the error handling and selftest refactoring plumbed
through.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 41 +++++++++++++++----
 .../gpu/drm/i915/gem/selftests/mock_context.c |  6 ++-
 2 files changed, 36 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 93579fa0324d1..e62482477c771 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -307,9 +307,12 @@ context_get_vm_rcu(struct i915_gem_context *ctx)
 	} while (1);
 }
 
-static void intel_context_set_gem(struct intel_context *ce,
-				  struct i915_gem_context *ctx)
+static int intel_context_set_gem(struct intel_context *ce,
+				 struct i915_gem_context *ctx,
+				 struct intel_sseu sseu)
 {
+	int ret = 0;
+
 	GEM_BUG_ON(rcu_access_pointer(ce->gem_context));
 	RCU_INIT_POINTER(ce->gem_context, ctx);
 
@@ -336,6 +339,12 @@ static void intel_context_set_gem(struct intel_context *ce,
 
 		intel_context_set_watchdog_us(ce, (u64)timeout_ms * 1000);
 	}
+
+	/* A valid SSEU has no zero fields */
+	if (sseu.slice_mask && !WARN_ON(ce->engine->class != RENDER_CLASS))
+		ret = intel_context_reconfigure_sseu(ce, sseu);
+
+	return ret;
 }
 
 static void __free_engines(struct i915_gem_engines *e, unsigned int count)
@@ -403,7 +412,8 @@ static struct i915_gem_engines *alloc_engines(unsigned int count)
 	return e;
 }
 
-static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
+static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
+						struct intel_sseu rcs_sseu)
 {
 	const struct intel_gt *gt = &ctx->i915->gt;
 	struct intel_engine_cs *engine;
@@ -416,6 +426,8 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 
 	for_each_engine(engine, gt, id) {
 		struct intel_context *ce;
+		struct intel_sseu sseu = {};
+		int ret;
 
 		if (engine->legacy_idx == INVALID_ENGINE)
 			continue;
@@ -429,10 +441,18 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx)
 			goto free_engines;
 		}
 
-		intel_context_set_gem(ce, ctx);
-
 		e->engines[engine->legacy_idx] = ce;
 		e->num_engines = max(e->num_engines, engine->legacy_idx + 1);
+
+		if (engine->class == RENDER_CLASS)
+			sseu = rcs_sseu;
+
+		ret = intel_context_set_gem(ce, ctx, sseu);
+		if (ret) {
+			err = ERR_PTR(ret);
+			goto free_engines;
+		}
+
 	}
 
 	return e;
@@ -746,6 +766,7 @@ __create_context(struct drm_i915_private *i915,
 {
 	struct i915_gem_context *ctx;
 	struct i915_gem_engines *e;
+	struct intel_sseu null_sseu = {};
 	int err;
 	int i;
 
@@ -763,7 +784,7 @@ __create_context(struct drm_i915_private *i915,
 	INIT_LIST_HEAD(&ctx->stale.engines);
 
 	mutex_init(&ctx->engines_mutex);
-	e = default_engines(ctx);
+	e = default_engines(ctx, null_sseu);
 	if (IS_ERR(e)) {
 		err = PTR_ERR(e);
 		goto err_free;
@@ -1549,6 +1570,7 @@ set_engines__load_balance(struct i915_user_extension __user *base, void *data)
 	struct intel_engine_cs *stack[16];
 	struct intel_engine_cs **siblings;
 	struct intel_context *ce;
+	struct intel_sseu null_sseu = {};
 	u16 num_siblings, idx;
 	unsigned int n;
 	int err;
@@ -1621,7 +1643,7 @@ set_engines__load_balance(struct i915_user_extension __user *base, void *data)
 		goto out_siblings;
 	}
 
-	intel_context_set_gem(ce, set->ctx);
+	intel_context_set_gem(ce, set->ctx, null_sseu);
 
 	if (cmpxchg(&set->engines->engines[idx], NULL, ce)) {
 		intel_context_put(ce);
@@ -1729,6 +1751,7 @@ set_engines(struct i915_gem_context *ctx,
 	struct drm_i915_private *i915 = ctx->i915;
 	struct i915_context_param_engines __user *user =
 		u64_to_user_ptr(args->value);
+	struct intel_sseu null_sseu = {};
 	struct set_engines set = { .ctx = ctx };
 	unsigned int num_engines, n;
 	u64 extensions;
@@ -1738,7 +1761,7 @@ set_engines(struct i915_gem_context *ctx,
 		if (!i915_gem_context_user_engines(ctx))
 			return 0;
 
-		set.engines = default_engines(ctx);
+		set.engines = default_engines(ctx, null_sseu);
 		if (IS_ERR(set.engines))
 			return PTR_ERR(set.engines);
 
@@ -1795,7 +1818,7 @@ set_engines(struct i915_gem_context *ctx,
 			return PTR_ERR(ce);
 		}
 
-		intel_context_set_gem(ce, ctx);
+		intel_context_set_gem(ce, ctx, null_sseu);
 
 		set.engines->engines[n] = ce;
 	}
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index e0f512ef7f3c6..cbeefd060e97b 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -14,6 +14,7 @@ mock_context(struct drm_i915_private *i915,
 {
 	struct i915_gem_context *ctx;
 	struct i915_gem_engines *e;
+	struct intel_sseu null_sseu = {};
 
 	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 	if (!ctx)
@@ -31,7 +32,7 @@ mock_context(struct drm_i915_private *i915,
 	i915_gem_context_set_persistence(ctx);
 
 	mutex_init(&ctx->engines_mutex);
-	e = default_engines(ctx);
+	e = default_engines(ctx, null_sseu);
 	if (IS_ERR(e))
 		goto err_free;
 	RCU_INIT_POINTER(ctx->engines, e);
@@ -112,6 +113,7 @@ live_context_for_engine(struct intel_engine_cs *engine, struct file *file)
 {
 	struct i915_gem_engines *engines;
 	struct i915_gem_context *ctx;
+	struct intel_sseu null_sseu = {};
 	struct intel_context *ce;
 
 	engines = alloc_engines(1);
@@ -130,7 +132,7 @@ live_context_for_engine(struct intel_engine_cs *engine, struct file *file)
 		return ERR_CAST(ce);
 	}
 
-	intel_context_set_gem(ce, ctx);
+	intel_context_set_gem(ce, ctx, null_sseu);
 	engines->engines[0] = ce;
 	engines->num_engines = 1;
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
