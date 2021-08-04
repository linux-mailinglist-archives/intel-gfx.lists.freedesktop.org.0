Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6803E0311
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 16:25:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FCA16EA83;
	Wed,  4 Aug 2021 14:25:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 178F96EA94
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Aug 2021 14:25:36 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id b13so2497424wrs.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Aug 2021 07:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VTUsQ+lGN+oTAvTdvP/CXdYHrIH9A60NwRkDwSBv14w=;
 b=GTK/A7iJrEqlcik5qajFAEa05wW2l+wWkPjF5iJT+esAiVPg1Khdz2KaR+fL+scJ+D
 zPJbcfw/t5SKx15zMchVPjLXYq08MhDBkyDuDwd6fMjwm9vJF+G+U/+nsxx6yIHrymlv
 9NZfYl9rteMHnS70N4XRvxlNLsPVf+xVb1Kgw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VTUsQ+lGN+oTAvTdvP/CXdYHrIH9A60NwRkDwSBv14w=;
 b=XVDX7Ih/BpANWQIjrgZq8Sspj+PcmaknjDoObLlc1fShAF/tcQlw5uv2jDpYns7NnD
 GxqKdOl0EuD8GxakxJ3GaE3s/TF7FLq5/MeWcMgS4tuBIjmQ2XMFOTVtY++13PQWm99I
 V8LTG4z6ErbmRFVblC0HbyZE6zpNqvSLsvCJ91l1dbLg+JiP21fQBxPiTct4Ubx9ypet
 f8HSgrNe7Fd/PVMhNuiqAeO1RIjqBhzuz33l9cyedcli7UfcG94TbXZBlbNzEKb06iFV
 Y/rkOwDxOOI9pgfEyKi6jKHYySr019Bs4hTqy0MVqYXFMQOfEM2vdCOE+ZpuIsijXFa0
 iR0g==
X-Gm-Message-State: AOAM531f65afP/fNVoIYbvg+jZjLEz5QtOHvdwUCGHXOo0ydvyRf/xtp
 BaAH9Q2vWmp06B1n0y4UTpVzUy0xEqPpyw==
X-Google-Smtp-Source: ABdhPJzegxiyfZAo19D/4s26hJwIzazWogNxlFQob82eIVBlVBwJ3VAC22KVhBWS/mvKMiQdvxl2wA==
X-Received: by 2002:adf:dd8b:: with SMTP id x11mr28894503wrl.357.1628087134578; 
 Wed, 04 Aug 2021 07:25:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b6sm3222682wrn.9.2021.08.04.07.25.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 07:25:34 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
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
Date: Wed,  4 Aug 2021 16:25:17 +0200
Message-Id: <20210804142522.4113021-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
References: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915: Add
 i915_gem_context_is_full_ppgtt
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

v2: 0day found a testcase that I missed.

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
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 6 +++---
 4 files changed, 12 insertions(+), 5 deletions(-)

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
index d436ce7fa25c..0708b9cdeb9f 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -704,7 +704,7 @@ static int igt_ctx_exec(void *arg)
 				pr_err("Failed to fill dword %lu [%lu/%lu] with gpu (%s) [full-ppgtt? %s], err=%d\n",
 				       ndwords, dw, max_dwords(obj),
 				       engine->name,
-				       yesno(!!rcu_access_pointer(ctx->vm)),
+				       yesno(i915_gem_context_is_full_ppgtt(ctx)),
 				       err);
 				intel_context_put(ce);
 				kernel_context_close(ctx);
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

