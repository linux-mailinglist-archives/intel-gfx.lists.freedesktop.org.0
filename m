Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C74369CBD
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 00:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 523926ECD4;
	Fri, 23 Apr 2021 22:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com
 [IPv6:2607:f8b0:4864:20::429])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C1336ECD4
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 22:32:07 +0000 (UTC)
Received: by mail-pf1-x429.google.com with SMTP id c17so326023pfn.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Apr 2021 15:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e6cOGlKTSrGghhXNVVeiRx+HTQ/xfebFO35hMiaIxJ0=;
 b=YRR8Wgzxk/dsLqYM53K1exMKxsKuEwlvXGca7GyzUUeD9dwFQ4uM60NQP1yopmGgwy
 UySf5raH3P4bfeVzKyD1GoPM4F83PtbvxvOkuroKdbqAzH8s1dLVDqoQ5hQs+CCd8W47
 UcvSrEf8S9UESvWNQAjPvYWo9x+EmzpU67jPvQ3fvp7eKD2eP2H5RhTdXKmoGYbPoW9z
 Qpdk4hAq3IacPqoS7j1zZMY6m5xdroq+Q4qxivQqJCpFuZWUejDFMpwzViGN++h9JmoN
 TfLuomufsZ4dLRcWQvoiO8MCTzHhYYt+H2oo8uAjs2xF1wZAEbRK0IrIzG/FXIxsWYTR
 vhOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e6cOGlKTSrGghhXNVVeiRx+HTQ/xfebFO35hMiaIxJ0=;
 b=aCSvvE2DMnj1SdGF2a+PiEkQ7zUb83wEpsXEBethTeQ/mw6+qhNt6A+ipe7Qt65ugc
 CEd2VqN6mph8xdCAQ0rPQb1lUTiMbXkFPUjGkgKDFXLI3as0t3R+QpnXFQjTYZequUip
 NlJxa5bvWFex9l6mUomOwEFo1oHwCMRJULRg1H5HitBWzRSzjNRjwSQN0knVsVH96hFg
 k3jLXfv7gfJvVXQHStdnozYkfdcX9M6TDNar6ThIazJ4sN9PtsUYU0cJVAI9fxUHQQr9
 SS1K3ivElhISleqyxEV/dtA1NgcQO7qaA29KDsIpYxQ/hMzX0ty0t9BaQE7G/7PKksnv
 qSKQ==
X-Gm-Message-State: AOAM533oAgPCWY/aiTtRrOpvZQ2tSI8Y18q/+ZQ5xpq5brYyDOC+1hjB
 1psQ37mepTW3SHSfRS+zfrKEwHm6wL3Afg==
X-Google-Smtp-Source: ABdhPJybW7DGrAFvjlOAh8vrMqEcco/ZTxCz0sGIGMkHPbrkNNXANDy4gqn/W1g6rHqWghw81ZLILA==
X-Received: by 2002:a63:485b:: with SMTP id x27mr6057134pgk.0.1619217126570;
 Fri, 23 Apr 2021 15:32:06 -0700 (PDT)
Received: from omlet.com ([134.134.139.76])
 by smtp.gmail.com with ESMTPSA id z12sm5523420pfn.195.2021.04.23.15.32.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Apr 2021 15:32:06 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 23 Apr 2021 17:31:29 -0500
Message-Id: <20210423223131.879208-20-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210423223131.879208-1-jason@jlekstrand.net>
References: <20210423223131.879208-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 19/21] drm/i915/selftests: Take a VM in
 kernel_context()
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

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
---
 .../drm/i915/gem/selftests/i915_gem_context.c |  4 ++--
 .../gpu/drm/i915/gem/selftests/mock_context.c |  8 +++++++-
 .../gpu/drm/i915/gem/selftests/mock_context.h |  4 +++-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 20 +++++++++----------
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  2 +-
 5 files changed, 23 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 16ff64ab34a1b..76029d7143f6c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -680,7 +680,7 @@ static int igt_ctx_exec(void *arg)
 			struct i915_gem_context *ctx;
 			struct intel_context *ce;
 
-			ctx = kernel_context(i915);
+			ctx = kernel_context(i915, NULL);
 			if (IS_ERR(ctx)) {
 				err = PTR_ERR(ctx);
 				goto out_file;
@@ -813,7 +813,7 @@ static int igt_shared_ctx_exec(void *arg)
 			struct i915_gem_context *ctx;
 			struct intel_context *ce;
 
-			ctx = kernel_context(i915);
+			ctx = kernel_context(i915, NULL);
 			if (IS_ERR(ctx)) {
 				err = PTR_ERR(ctx);
 				goto out_test;
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index 32cf2103828f9..e4aced7eabb72 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -148,7 +148,8 @@ live_context_for_engine(struct intel_engine_cs *engine, struct file *file)
 }
 
 struct i915_gem_context *
-kernel_context(struct drm_i915_private *i915)
+kernel_context(struct drm_i915_private *i915,
+	       struct i915_address_space *vm)
 {
 	struct i915_gem_context *ctx;
 	struct i915_gem_proto_context *pc;
@@ -157,6 +158,11 @@ kernel_context(struct drm_i915_private *i915)
 	if (IS_ERR(pc))
 		return ERR_CAST(pc);
 
+	if (vm) {
+		i915_vm_put(pc->vm);
+		pc->vm = i915_vm_get(vm);
+	}
+
 	ctx = i915_gem_create_context(i915, pc);
 	proto_context_close(pc);
 	if (IS_ERR(ctx))
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.h b/drivers/gpu/drm/i915/gem/selftests/mock_context.h
index 2a6121d33352d..7a02fd9b5866a 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.h
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.h
@@ -10,6 +10,7 @@
 struct file;
 struct drm_i915_private;
 struct intel_engine_cs;
+struct i915_address_space;
 
 void mock_init_contexts(struct drm_i915_private *i915);
 
@@ -25,7 +26,8 @@ live_context(struct drm_i915_private *i915, struct file *file);
 struct i915_gem_context *
 live_context_for_engine(struct intel_engine_cs *engine, struct file *file);
 
-struct i915_gem_context *kernel_context(struct drm_i915_private *i915);
+struct i915_gem_context *kernel_context(struct drm_i915_private *i915,
+					struct i915_address_space *vm);
 void kernel_context_close(struct i915_gem_context *ctx);
 
 #endif /* !__MOCK_CONTEXT_H */
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index f03446d587160..0bb35c29ea193 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -1522,12 +1522,12 @@ static int live_busywait_preempt(void *arg)
 	 * preempt the busywaits used to synchronise between rings.
 	 */
 
-	ctx_hi = kernel_context(gt->i915);
+	ctx_hi = kernel_context(gt->i915, NULL);
 	if (!ctx_hi)
 		return -ENOMEM;
 	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
 
-	ctx_lo = kernel_context(gt->i915);
+	ctx_lo = kernel_context(gt->i915, NULL);
 	if (!ctx_lo)
 		goto err_ctx_hi;
 	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
@@ -1724,12 +1724,12 @@ static int live_preempt(void *arg)
 	if (igt_spinner_init(&spin_lo, gt))
 		goto err_spin_hi;
 
-	ctx_hi = kernel_context(gt->i915);
+	ctx_hi = kernel_context(gt->i915, NULL);
 	if (!ctx_hi)
 		goto err_spin_lo;
 	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
 
-	ctx_lo = kernel_context(gt->i915);
+	ctx_lo = kernel_context(gt->i915, NULL);
 	if (!ctx_lo)
 		goto err_ctx_hi;
 	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
@@ -1816,11 +1816,11 @@ static int live_late_preempt(void *arg)
 	if (igt_spinner_init(&spin_lo, gt))
 		goto err_spin_hi;
 
-	ctx_hi = kernel_context(gt->i915);
+	ctx_hi = kernel_context(gt->i915, NULL);
 	if (!ctx_hi)
 		goto err_spin_lo;
 
-	ctx_lo = kernel_context(gt->i915);
+	ctx_lo = kernel_context(gt->i915, NULL);
 	if (!ctx_lo)
 		goto err_ctx_hi;
 
@@ -1910,7 +1910,7 @@ struct preempt_client {
 
 static int preempt_client_init(struct intel_gt *gt, struct preempt_client *c)
 {
-	c->ctx = kernel_context(gt->i915);
+	c->ctx = kernel_context(gt->i915, NULL);
 	if (!c->ctx)
 		return -ENOMEM;
 
@@ -3367,12 +3367,12 @@ static int live_preempt_timeout(void *arg)
 	if (igt_spinner_init(&spin_lo, gt))
 		return -ENOMEM;
 
-	ctx_hi = kernel_context(gt->i915);
+	ctx_hi = kernel_context(gt->i915, NULL);
 	if (!ctx_hi)
 		goto err_spin_lo;
 	ctx_hi->sched.priority = I915_CONTEXT_MAX_USER_PRIORITY;
 
-	ctx_lo = kernel_context(gt->i915);
+	ctx_lo = kernel_context(gt->i915, NULL);
 	if (!ctx_lo)
 		goto err_ctx_hi;
 	ctx_lo->sched.priority = I915_CONTEXT_MIN_USER_PRIORITY;
@@ -3659,7 +3659,7 @@ static int live_preempt_smoke(void *arg)
 	}
 
 	for (n = 0; n < smoke.ncontext; n++) {
-		smoke.contexts[n] = kernel_context(smoke.gt->i915);
+		smoke.contexts[n] = kernel_context(smoke.gt->i915, NULL);
 		if (!smoke.contexts[n])
 			goto err_ctx;
 	}
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 746985971c3a6..3676eaf6b2aee 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -42,7 +42,7 @@ static int hang_init(struct hang *h, struct intel_gt *gt)
 	memset(h, 0, sizeof(*h));
 	h->gt = gt;
 
-	h->ctx = kernel_context(gt->i915);
+	h->ctx = kernel_context(gt->i915, NULL);
 	if (IS_ERR(h->ctx))
 		return PTR_ERR(h->ctx);
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
