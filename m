Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC8136EFED
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 21:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A00BB6F45B;
	Thu, 29 Apr 2021 19:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F16E6F45D
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 19:03:54 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id 10so4230789pfl.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 12:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+kRTuwDNC4ils+7NiZYLhZ8grmBdiU9nKzwhxjTQvJI=;
 b=fPUL6cY/CVdOoT6R/BDAR8x3tOCDR/UpEyCkWJVmuT/iRydd9+pPiZYMHEeP887jOZ
 ms4HNZhvMQZ+XB018x9/IvfPcJjR8JGD2QTktc3SFDluggpTERwhzXy+a/Dr0HOMuJc1
 YXITaii3lijujcwmRGRm9Op2TxXBhLdq079y2UT2i9O/DWektWhm09kWix69aB+YnVtu
 CMYMErizCnM902RCNoT87onufiL6K96fbs2Bqje4WakGvRLmIhC8pZEz6VVTh24ufXAH
 24hwY/eb24su1og3gS9a/Lh/EfeL71ZxL7+Ba1gDq1TtJ95ca9D+jQ5DFWxKdAtFHGoX
 Paqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+kRTuwDNC4ils+7NiZYLhZ8grmBdiU9nKzwhxjTQvJI=;
 b=jcfzCdsAarE43AG9wAiEp01eI8bud6Ib1WGooEUbSKyKlJq5WyktPGYm9JRgzr9BRd
 Y1FP+EnZFye0qlpxVoy4aT7poVycVi0DEzOp9fgxXk7R76jKmNrwa4Jm5dcSWQF1dh7M
 uAxb0ekNZuCrvxsMB6lQBFeMpRzhB9gUBVsE0rz2zonM6O84LIokEMv+r8iKzaIilYmQ
 Qkgd089drIzYHdyFqoC4EW3OcmWl2CbEIz1VpFsiHWV8NuvhgOvw9egPUVUI3XCJjCtg
 saPBRWDErvQOJpPq7oR/wB1jNqNKLB7hu+7uNkjuefMhUAomMQRGsFDEXHLIIchqFKI4
 zJow==
X-Gm-Message-State: AOAM530iAkoJZPauuCwZwD9RsRvJFfoLxYsTr+IO1406kpOEWH0SWIa5
 E3qsc94tcSrsdg3QTPx89Yv9TG/PjyfbEw==
X-Google-Smtp-Source: ABdhPJxLiQIwqjjFBZD4PswiftIJoxvlWf9SA/YvC8+NcK2DEzkGVC4O2j90WvwOzPqaGHJTW8QxCw==
X-Received: by 2002:a63:4610:: with SMTP id t16mr1125018pga.171.1619723033668; 
 Thu, 29 Apr 2021 12:03:53 -0700 (PDT)
Received: from omlet.lan ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id b21sm3114405pji.39.2021.04.29.12.03.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 12:03:52 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 29 Apr 2021 14:03:20 -0500
Message-Id: <20210429190340.1555632-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210429190340.1555632-1-jason@jlekstrand.net>
References: <20210429190340.1555632-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/25] drm/i915/gem: Return void from
 context_apply_all
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

None of the callbacks we use with it return an error code anymore; they
all return 0 unconditionally.

Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 26 +++++++--------------
 1 file changed, 8 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 2207e8ea6f065..d6f342e605254 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -718,32 +718,25 @@ __context_engines_await(const struct i915_gem_context *ctx,
 	return engines;
 }
 
-static int
+static void
 context_apply_all(struct i915_gem_context *ctx,
-		  int (*fn)(struct intel_context *ce, void *data),
+		  void (*fn)(struct intel_context *ce, void *data),
 		  void *data)
 {
 	struct i915_gem_engines_iter it;
 	struct i915_gem_engines *e;
 	struct intel_context *ce;
-	int err = 0;
 
 	e = __context_engines_await(ctx, NULL);
-	for_each_gem_engine(ce, e, it) {
-		err = fn(ce, data);
-		if (err)
-			break;
-	}
+	for_each_gem_engine(ce, e, it)
+		fn(ce, data);
 	i915_sw_fence_complete(&e->fence);
-
-	return err;
 }
 
-static int __apply_ppgtt(struct intel_context *ce, void *vm)
+static void __apply_ppgtt(struct intel_context *ce, void *vm)
 {
 	i915_vm_put(ce->vm);
 	ce->vm = i915_vm_get(vm);
-	return 0;
 }
 
 static struct i915_address_space *
@@ -783,10 +776,9 @@ static void __set_timeline(struct intel_timeline **dst,
 		intel_timeline_put(old);
 }
 
-static int __apply_timeline(struct intel_context *ce, void *timeline)
+static void __apply_timeline(struct intel_context *ce, void *timeline)
 {
 	__set_timeline(&ce->timeline, timeline);
-	return 0;
 }
 
 static void __assign_timeline(struct i915_gem_context *ctx,
@@ -1842,19 +1834,17 @@ set_persistence(struct i915_gem_context *ctx,
 	return __context_set_persistence(ctx, args->value);
 }
 
-static int __apply_priority(struct intel_context *ce, void *arg)
+static void __apply_priority(struct intel_context *ce, void *arg)
 {
 	struct i915_gem_context *ctx = arg;
 
 	if (!intel_engine_has_timeslices(ce->engine))
-		return 0;
+		return;
 
 	if (ctx->sched.priority >= I915_PRIORITY_NORMAL)
 		intel_context_set_use_semaphores(ce);
 	else
 		intel_context_clear_use_semaphores(ce);
-
-	return 0;
 }
 
 static int set_priority(struct i915_gem_context *ctx,
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
