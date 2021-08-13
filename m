Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 055FE3EBD5E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 22:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248AC6E8E4;
	Fri, 13 Aug 2021 20:30:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F616E8D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 20:30:47 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id w5so20440533ejq.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 13:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5RNSn0oqDG2guAp1Jqo9PqmZpUYkT/Ygh6UuvTqaVw4=;
 b=kGS3+VdvxRwHWnGu9oqTHJ0MsvkIMKkq+SaCG/+9yhOCtA72H9tZePW5jjGKfuBOMl
 FpTFe7sYvC021kqBBKLiFgUDbpP2MB2CFzAoMxQJOWKLytRnmUrX01+0XBJ+imc2eogd
 pKQU1o3O+/0JaHGvrlWRSQnkPcLVOJv8YEJYE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5RNSn0oqDG2guAp1Jqo9PqmZpUYkT/Ygh6UuvTqaVw4=;
 b=kQngCrwtKdU5GtgH/mIHLowS3C/0jIqSsdBk90j6moptcY0fbVc5N7j5/waYy9KSJl
 JGUTx/Mo3+snXogbEgx2uYkGwoGhx24y43TSgJEQpKAAXmkp49ctsiIfHSPoPGDfDT8q
 y6OMufWgpQcFkV+t5oNhdipBkIRU7rsVwMWRid2fRWBL3pU7u1Nhmn8BAUdE2c2DGDzY
 jko6gB3EdgwgO5863U6yMJHS/snCtwxIcJowPGceu7Hk92eD7L4zFqFM1LRN2t7bnV85
 66tOhGd/4Ie6dLljyQs/w2MuKSlC0j5x7Q+uowKZfOGa4na2ONilr/uVRfVakhn8LvuY
 ZNMw==
X-Gm-Message-State: AOAM531e2hK2aG+bdA7Y3uafS4LgeoKks5Lg7rtokTYbb7Ghkjarjyy3
 TOWL8Z9r6Pe/zOXW0Qs8pQ6P7A==
X-Google-Smtp-Source: ABdhPJzx8REqq3zX7SJVGBTkg+WgiZA3pAKLFub4Wvsp/CnsHdnc7Teh4Ppscfndri5N6xSd86BrHA==
X-Received: by 2002:a17:906:1412:: with SMTP id
 p18mr4198406ejc.545.1628886646310; 
 Fri, 13 Aug 2021 13:30:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y17sm1347027edv.51.2021.08.13.13.30.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 13:30:45 -0700 (PDT)
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
Date: Fri, 13 Aug 2021 22:30:29 +0200
Message-Id: <20210813203033.3179400-7-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210813203033.3179400-1-daniel.vetter@ffwll.ch>
References: <20210813203033.3179400-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/11] drm/i915: Add
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
index 7a566fb7cca4..1eec85944c1f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -1566,7 +1566,7 @@ static int get_ppgtt(struct drm_i915_file_private *file_priv,
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
index 905b1cbd22d5..40f08948f0b2 100644
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

