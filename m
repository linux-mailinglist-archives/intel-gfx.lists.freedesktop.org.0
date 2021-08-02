Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3893DDCBD
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 17:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC8E76E560;
	Mon,  2 Aug 2021 15:48:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 437D26E1EC
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 15:48:42 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id p21so25103568edi.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Aug 2021 08:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=szer5ysTcN0cXhDZZ68P3ISHgJkdsGE6DidnebcKmQU=;
 b=FYojloi1vR8bqCqvp5AnbTKZd/vwn+GJc9rZLMyrVsRZg38lHt2ATKDm8buUVXZUEN
 keg/OdjCfLuP1Q7Z4ddXqROgiMbVEWQXbY/89QETjHaSBtkwmCHEWSGoXSJWizi4b+Vs
 0Ik+sUzVsZv2xy4n7psTEgx01Bfl6uG0/ilKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=szer5ysTcN0cXhDZZ68P3ISHgJkdsGE6DidnebcKmQU=;
 b=DwV+T9XifBtGVQhg+7M3Hsp38pZl4XtGj1s1enYKOsZ02t20JBngiSjk3kxM0Wr27j
 xAuUqLDtcltz+HELHtg0GezQuMPrDNr4N7jfRr2SXAtv3yKka3rhxOCdTG7N3WD70h/7
 bQ7fl1Fpbh4o4LGhtdhbBGkvTPLl8b6HVGhiFnqvG9/qdfBSwx6EIO9Z1I2ftXVVZsL+
 PA9yQc7BRfK2MUxQMY0CnB2USoMxyFXz64SGS4yVfAg2hP8f4U/Z8CFA+sz1WSP6Oy3A
 UkrBQsujkdCbApux/mjDNBu4wqLneXzoxd0Pubn1T0wcTVQGaknDu8/7PcP8vlLJ/USF
 7Cqw==
X-Gm-Message-State: AOAM532HAmIlBOroOT7XeLdE4bGUN2Jz97qu1gfTJWRjRIuxmlZhk3Pq
 mpU6oEiURMooAQ4l4yChVmvTxA==
X-Google-Smtp-Source: ABdhPJzdDab5dBnvDZ4UFOAmOT/pHFp62h/kz4m2QFwX8hvzflphu6sbuoMXp9iaMfF8i5R3YBlEiQ==
X-Received: by 2002:a05:6402:254b:: with SMTP id
 l11mr19623420edb.157.1627919320903; 
 Mon, 02 Aug 2021 08:48:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m20sm5064020edv.67.2021.08.02.08.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Aug 2021 08:48:40 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Date: Mon,  2 Aug 2021 17:48:01 +0200
Message-Id: <20210802154806.3710472-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210802154806.3710472-1-daniel.vetter@ffwll.ch>
References: <20210802154806.3710472-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Add i915_gem_context_is_full_ppgtt
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

And use it anywhere we have open-coded checks for ctx->vm that really
only check for full ppgtt.

Plus for paranoia add a GEM_BUG_ON that checks it's really only set
when we have full ppgtt, just in case. gem_context->vm is different
since it's NULL in ggtt mode, unlike intel_context->vm or gt->vm,
which is always set.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: "Thomas Hellström" <thomas.hellstrom@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c           | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_context.h           | 7 +++++++
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c        | 2 +-
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 4 ++--
 4 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 6263563e15d6..a80b06c98dba 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1581,7 +1581,7 @@ static int get_ppgtt(struct drm_i915_file_private *file_priv,
 	int err;
 	u32 id;
 
-	if (!rcu_access_pointer(ctx->vm))
+	if (!i915_gem_context_is_full_ppgtt(ctx))
 		return -ENODEV;
 
 	rcu_read_lock();
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index da6e8b506d96..37536a260e6e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -154,6 +154,13 @@ i915_gem_context_vm(struct i915_gem_context *ctx)
 	return rcu_dereference_protected(ctx->vm, lockdep_is_held(&ctx->mutex));
 }
 
+static inline bool i915_gem_context_is_full_ppgtt(struct i915_gem_context *ctx)
+{
+	GEM_BUG_ON(!!rcu_access_pointer(ctx->vm) != HAS_FULL_PPGTT(ctx->i915));
+
+	return !!rcu_access_pointer(ctx->vm);
+}
+
 static inline struct i915_address_space *
 i915_gem_context_get_eb_vm(struct i915_gem_context *ctx)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 69e47b97d786..bdf2b5785a81 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -749,7 +749,7 @@ static int eb_select_context(struct i915_execbuffer *eb)
 		return PTR_ERR(ctx);
 
 	eb->gem_context = ctx;
-	if (rcu_access_pointer(ctx->vm))
+	if (i915_gem_context_is_full_ppgtt(ctx))
 		eb->invalid_flags |= EXEC_OBJECT_NEEDS_GTT;
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index d436ce7fa25c..5442b8e59629 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -838,7 +838,7 @@ static int igt_shared_ctx_exec(void *arg)
 				pr_err("Failed to fill dword %lu [%lu/%lu] with gpu (%s) [full-ppgtt? %s], err=%d\n",
 				       ndwords, dw, max_dwords(obj),
 				       engine->name,
-				       yesno(!!rcu_access_pointer(ctx->vm)),
+				       yesno(i915_gem_context_is_full_ppgtt(ctx)),
 				       err);
 				intel_context_put(ce);
 				kernel_context_close(ctx);
@@ -1417,7 +1417,7 @@ static int igt_ctx_readonly(void *arg)
 				pr_err("Failed to fill dword %lu [%lu/%lu] with gpu (%s) [full-ppgtt? %s], err=%d\n",
 				       ndwords, dw, max_dwords(obj),
 				       ce->engine->name,
-				       yesno(!!ctx_vm(ctx)),
+				       yesno(i915_gem_context_is_full_ppgtt(ctx)),
 				       err);
 				i915_gem_context_unlock_engines(ctx);
 				goto out_file;
-- 
2.32.0

