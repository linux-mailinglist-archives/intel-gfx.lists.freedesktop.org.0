Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE323A1C14
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 19:44:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E78036EA8A;
	Wed,  9 Jun 2021 17:44:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EAD16EA89
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 17:44:32 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 go18-20020a17090b03d2b029016e4ae973f7so780033pjb.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 10:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=G+hLgeiGvYpyFrjLGrbFT9e+VhCR6ZRDXGOupSKTV44=;
 b=amjbHSsbeANUvL/3K1dxs2SRmTU0/jqX1aE7rUjCsFTCzb8IhoXoPKI7qmsC4vUvhM
 YyH9GEaYHJlEsFiPGxvMt1lKMDt1xMy9OResAisNo1QRD5SznzqtZH1As9yquvo35quc
 YGw6/KjFTlRQcbl7qo/rzv1yyPrgOm4iuRqqOQEZPZmRQfSwx6MT5L9bRtCQBr5+GKrr
 cxhflsX2SGm/0cBnmksDGpZ0bTh5kktdMrd4vHrkgQfC8wo3o8revhgJcTj7Ip1y77/m
 OssaYkBOcet8yYru9bF5fplull1e9zBuxAvV2U62bJ30pXwfbHsfFaThxdjiruumfv6F
 5sgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=G+hLgeiGvYpyFrjLGrbFT9e+VhCR6ZRDXGOupSKTV44=;
 b=VQCjSXHv8KqbZG4cTIzUyuz3HNMw4wITZ8TT/8Nv7Sl9qEgqyleyAGBbpVNvZLOzmq
 +9qk+CARQyVNgyjGdQ0ML0KN4OWMAEib7c/lO0hXohisK6c6giKsro1ZCXvhUjOtYUQ/
 oIHf6169OG11EQWrZI1wQhY6GnUj5MyM1dJbq7Rog6n1B+cCGZGuP4W+T2siVEqw17d3
 2NRmgFLzIykVy132p9JjeIAvK68EmOF3ETCZxJT0Wt15PQxdk6kyydYw7dnrrZsi1Frv
 MLk6kWdIoBrdEEbvRXgZzyHbJTBaJXYay+DRJSiBoUBs8WhRrvzr0Bj7y25M4knIi+UM
 oc/Q==
X-Gm-Message-State: AOAM533+5eHAo33II9BVoRn+XDE+acpTfgpuYIG2feUU4w1SdWCTYlTt
 yHkDuPrClremNTE6TLfAOt4aow==
X-Google-Smtp-Source: ABdhPJzRHJbkf31MUgBFOoeMfiReksDZyvwcoAtc531uf+fkuEHz78+O6x4+4oUlmQn22eg5u8FiwQ==
X-Received: by 2002:a17:90a:24a:: with SMTP id
 t10mr712014pje.178.1623260672178; 
 Wed, 09 Jun 2021 10:44:32 -0700 (PDT)
Received: from omlet.lan (jfdmzpr04-ext.jf.intel.com. [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id b10sm208619pfi.122.2021.06.09.10.44.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 10:44:31 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed,  9 Jun 2021 12:43:52 -0500
Message-Id: <20210609174418.249585-6-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
References: <20210609174418.249585-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/31] drm/i915/gem: Return void from
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
index 9750a1ac7023e..3503d46c88cbf 100644
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
@@ -1841,19 +1833,17 @@ set_persistence(struct i915_gem_context *ctx,
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
