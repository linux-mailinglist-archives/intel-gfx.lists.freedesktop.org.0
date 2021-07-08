Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FC23C1684
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 17:49:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E9D96E92D;
	Thu,  8 Jul 2021 15:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com
 [IPv6:2607:f8b0:4864:20::230])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BC586E91C
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 15:49:13 +0000 (UTC)
Received: by mail-oi1-x230.google.com with SMTP id b2so8302887oiy.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 08:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rlXH1wIj9Tv4TJV4idXPfXEBSvX8irptcp8FFRGeYIg=;
 b=l7La6fcuZbiEWUMNWmyF0CxcSiP8VobXi1zAa1+WTx7Uxj/VjzeSzdnPsP2ku1BD8f
 xRV0gGSBZ3t4wChP0JWyDT47zJBPEi4rFZM7c+mmRjp87IeynWMJIKKbR7gmhMFAC6dS
 Zz8g5Q8A8vTmInojpNcT18RXCTG4X4cwsIiUVSjz+nFJ2vKRSJxlF5LkjzmHhLXWZUsU
 hI/pBH7+pEiY9MqYW/+vQ4k3dnoZjp1uncHd8fVa96z8mR5MFQQXtRWoPnz+/mmQ3dYd
 +oG5hOo/wP9XthpbOibJGZLCMSXHA9tZ/wkiShh81/8YQS9XGF5YQDJOBIcJ4vE/OWuq
 T92w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rlXH1wIj9Tv4TJV4idXPfXEBSvX8irptcp8FFRGeYIg=;
 b=dycLrT8L4Pg6A+TgvwxsHtprG64VKpB15VlLRKnZ6m+RZPijEitd4fWKd6+mwgQ95O
 BvcOEg2Rjk7pflH9ZgCSavSoeSZUJtIPV5Glj+5QnTEX9UwuU8stHve8i47D2nrfckmt
 +sJZKCHzuI8CAiUw1CTBYN901mWYDrD97uFyckVh/+zqdcDOLEBDUFZLUIeCe7ygDvZP
 5r/YNg33yprYt1HE3fWA7u18UOAvrdQs8OfiEceD5V4/ToawCCF6SpgBRjLtEYDdRDbD
 Kxdk/x/oW0zCtG4j/7qTUxXM4jfYF/cTSpkAHcoXxQlvoIbjJ5Vtigx5BA0LG9FeGvOV
 ebQg==
X-Gm-Message-State: AOAM5329RAZes+9kEjfW2zgERYUScOQWOCJvpnQUF4VlWvGJKZKEGiEG
 8Jx8qGcaUPuTQ82NjL3I7GfIwl/pI1VJIQ==
X-Google-Smtp-Source: ABdhPJwnd5U8Plb+LLkpeFfj5+pWBX0EomfzEqgugukzdr9UH8u87vaqHY5FT9aVFMak1NSCKRpUpA==
X-Received: by 2002:aca:d842:: with SMTP id p63mr4239420oig.114.1625759351969; 
 Thu, 08 Jul 2021 08:49:11 -0700 (PDT)
Received: from omlet.lan ([68.203.99.148])
 by smtp.gmail.com with ESMTPSA id d20sm548356otq.62.2021.07.08.08.49.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 08:49:10 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu,  8 Jul 2021 10:48:32 -0500
Message-Id: <20210708154835.528166-28-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210708154835.528166-1-jason@jlekstrand.net>
References: <20210708154835.528166-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 27/30] drm/i915/selftests: Take a VM in
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This better models where we want to go with contexts in general where
things like the VM and engine set are create parameters instead of being
set after the fact.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 .../drm/i915/gem/selftests/i915_gem_context.c |  4 ++--
 .../gpu/drm/i915/gem/selftests/mock_context.c |  9 ++++++++-
 .../gpu/drm/i915/gem/selftests/mock_context.h |  4 +++-
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 20 +++++++++----------
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  2 +-
 5 files changed, 24 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 92544a174cc9a..3e59746afdc82 100644
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
index 61aaac4a334cf..500ef27ba4771 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -150,7 +150,8 @@ live_context_for_engine(struct intel_engine_cs *engine, struct file *file)
 }
 
 struct i915_gem_context *
-kernel_context(struct drm_i915_private *i915)
+kernel_context(struct drm_i915_private *i915,
+	       struct i915_address_space *vm)
 {
 	struct i915_gem_context *ctx;
 	struct i915_gem_proto_context *pc;
@@ -159,6 +160,12 @@ kernel_context(struct drm_i915_private *i915)
 	if (IS_ERR(pc))
 		return ERR_CAST(pc);
 
+	if (vm) {
+		if (pc->vm)
+			i915_vm_put(pc->vm);
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
index 6abce18d0ef32..73ddc6e147305 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -1539,12 +1539,12 @@ static int live_busywait_preempt(void *arg)
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
@@ -1741,12 +1741,12 @@ static int live_preempt(void *arg)
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
@@ -1833,11 +1833,11 @@ static int live_late_preempt(void *arg)
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
 
@@ -1927,7 +1927,7 @@ struct preempt_client {
 
 static int preempt_client_init(struct intel_gt *gt, struct preempt_client *c)
 {
-	c->ctx = kernel_context(gt->i915);
+	c->ctx = kernel_context(gt->i915, NULL);
 	if (!c->ctx)
 		return -ENOMEM;
 
@@ -3384,12 +3384,12 @@ static int live_preempt_timeout(void *arg)
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
@@ -3676,7 +3676,7 @@ static int live_preempt_smoke(void *arg)
 	}
 
 	for (n = 0; n < smoke.ncontext; n++) {
-		smoke.contexts[n] = kernel_context(smoke.gt->i915);
+		smoke.contexts[n] = kernel_context(smoke.gt->i915, NULL);
 		if (!smoke.contexts[n])
 			goto err_ctx;
 	}
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 6a0b04bdac58b..7aea10aa1fb4f 100644
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
