Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C30253DDCC8
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Aug 2021 17:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28AC16E5D1;
	Mon,  2 Aug 2021 15:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBBE46E5BE
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Aug 2021 15:48:46 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id x90so25078612ede.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 Aug 2021 08:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xnFhsaWbpNd7jmcNOusLf7Sor6qoIC+KJN8nEKG3F8A=;
 b=GSWP3cNlrzEiN2OkMmuDx5EtpKCuq8IJXgyF6JaUeSiff9nDvKHOf/I5s3SNOqdPBE
 zdNTGNQBKaQQUYQAMvFcV5wkOG3oPC6K3Cg+zNfwudUQliH+IClhgCrHIjPBwK+OGONy
 R9N1lzuzv0vkdLoRs56DzSk1BfFeGQDuVFg/Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xnFhsaWbpNd7jmcNOusLf7Sor6qoIC+KJN8nEKG3F8A=;
 b=Wjxb6y/KUNYlk+A+oMuogBWm0nu6LjX0l5T4hhIEaDud7k+WbQJQ7uAHbMThDbv5tk
 8kgj/Pyk415IpCbPfL1PXxVDi35xdRE6Af42hCD3sSLmNnUQ0DQLaEIuSsQ0z/HnbOm8
 JYhGVc/cL+RpEJdSaqzdqX99nA7Uln1UAtD3UHcCje5/ls2mrnUCAfkrCFPMn1Snq0aT
 UArw+iRfTn/4/qyP7dRadlAF+uRX5AHkk5EgukQt22aR/m8J8I/MDu/q73cTgEVyJtxs
 Un5Miknpe0R6xm13+CWDhokW0jL0lvFm72BnJwSm9W26KzpZI5SSNMRYUziwZDlw/oyM
 aouQ==
X-Gm-Message-State: AOAM531npW2MnB672p4++yc7l9lFIwh8bSeZ59XUD8tRLkj5OCIAjY+F
 8d5BPtLVuukaOu1i3wZ5wMo3eQ==
X-Google-Smtp-Source: ABdhPJytyKD8uNRmrq8OTAuY6w6kEsldgqv3zAzJ6eq7+OE8xUIOj4wwejSc1gFLscEs6DT6SQvZDA==
X-Received: by 2002:a05:6402:42c7:: with SMTP id
 i7mr19800385edc.161.1627919325471; 
 Mon, 02 Aug 2021 08:48:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id m20sm5064020edv.67.2021.08.02.08.48.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Aug 2021 08:48:45 -0700 (PDT)
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
Date: Mon,  2 Aug 2021 17:48:06 +0200
Message-Id: <20210802154806.3710472-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210802154806.3710472-1-daniel.vetter@ffwll.ch>
References: <20210802154806.3710472-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915: Split out
 intel_context_create_user
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

There's quite a fundamental difference between userspace contexts, and
kernel contexts. Latter all share intel_gt->vm, former get their vm
from gem_ctx->vm (on full ppgtt at least).

By splitting context creation for userspace from kernel-internal ones
we can make this all a bit more strict and WARN_ON if there's a vm
already set in intel_context_set_gem().

All this is only possible because gem_ctx cannot chance their VM
anymore since

        commit ccbc1b97948ab671335e950271e39766729736c3
        Author: Jason Ekstrand <jason@jlekstrand.net>
        Date:   Thu Jul 8 10:48:30 2021 -0500

            drm/i915/gem: Don't allow changing the VM on running contexts (v4)

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
 drivers/gpu/drm/i915/gem/i915_gem_context.c   |  6 ++---
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  4 +++-
 .../gpu/drm/i915/gem/selftests/mock_context.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_context.c       | 22 +++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_context.h       |  2 ++
 5 files changed, 29 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 2f3cc73d4710..13358e6749d9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -746,7 +746,7 @@ static int intel_context_set_gem(struct intel_context *ce,
 
 	ce->ring_size = SZ_16K;
 
-	i915_vm_put(ce->vm);
+	WARN_ON(ce->vm);
 	ce->vm = i915_gem_context_get_eb_vm(ctx);
 
 	if (ctx->sched.priority >= I915_PRIORITY_NORMAL &&
@@ -856,7 +856,7 @@ static struct i915_gem_engines *default_engines(struct i915_gem_context *ctx,
 		GEM_BUG_ON(engine->legacy_idx >= I915_NUM_ENGINES);
 		GEM_BUG_ON(e->engines[engine->legacy_idx]);
 
-		ce = intel_context_create(engine);
+		ce = intel_context_create_user(engine);
 		if (IS_ERR(ce)) {
 			err = ERR_CAST(ce);
 			goto free_engines;
@@ -897,7 +897,7 @@ static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
 
 		switch (pe[n].type) {
 		case I915_GEM_ENGINE_TYPE_PHYSICAL:
-			ce = intel_context_create(pe[n].engine);
+			ce = intel_context_create_user(pe[n].engine);
 			break;
 
 		case I915_GEM_ENGINE_TYPE_BALANCED:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index bdf2b5785a81..54de94433365 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -30,15 +30,17 @@
 
 struct eb_vma {
 	struct i915_vma *vma;
+	struct drm_i915_gem_object *obj;
 	unsigned int flags;
 
+	u32 handle;
+
 	/** This vma's place in the execbuf reservation list */
 	struct drm_i915_gem_exec_object2 *exec;
 	struct list_head bind_link;
 	struct list_head reloc_link;
 
 	struct hlist_node node;
-	u32 handle;
 };
 
 enum {
diff --git a/drivers/gpu/drm/i915/gem/selftests/mock_context.c b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
index fee070df1c97..e5efda1058a3 100644
--- a/drivers/gpu/drm/i915/gem/selftests/mock_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/mock_context.c
@@ -124,7 +124,7 @@ live_context_for_engine(struct intel_engine_cs *engine, struct file *file)
 		return ctx;
 	}
 
-	ce = intel_context_create(engine);
+	ce = intel_context_create_user(engine);
 	if (IS_ERR(ce)) {
 		__free_engines(engines, 0);
 		return ERR_CAST(ce);
diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
index 745e84c72c90..9e33efb594dd 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.c
+++ b/drivers/gpu/drm/i915/gt/intel_context.c
@@ -34,6 +34,23 @@ void intel_context_free(struct intel_context *ce)
 	call_rcu(&ce->rcu, rcu_context_free);
 }
 
+/* for user contexts, callers must set ce->vm correctly */
+struct intel_context *
+intel_context_create_user(struct intel_engine_cs *engine)
+{
+	struct intel_context *ce;
+
+	ce = intel_context_alloc();
+	if (!ce)
+		return ERR_PTR(-ENOMEM);
+
+	intel_context_init(ce, engine);
+
+	trace_intel_context_create(ce);
+	return ce;
+}
+
+/* for kernel-internal users only, sets ce->vm to intel_gt.vm */
 struct intel_context *
 intel_context_create(struct intel_engine_cs *engine)
 {
@@ -44,6 +61,8 @@ intel_context_create(struct intel_engine_cs *engine)
 		return ERR_PTR(-ENOMEM);
 
 	intel_context_init(ce, engine);
+	ce->vm = i915_vm_get(engine->gt->vm);
+
 	trace_intel_context_create(ce);
 	return ce;
 }
@@ -368,6 +387,7 @@ static int sw_fence_dummy_notify(struct i915_sw_fence *sf,
 	return NOTIFY_DONE;
 }
 
+/* callers must set ce->vm for user or kernel vm as needed */
 void
 intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 {
@@ -384,8 +404,6 @@ intel_context_init(struct intel_context *ce, struct intel_engine_cs *engine)
 
 	ewma_runtime_init(&ce->runtime.avg);
 
-	ce->vm = i915_vm_get(engine->gt->vm);
-
 	/* NB ce->signal_link/lock is used under RCU */
 	spin_lock_init(&ce->signal_lock);
 	INIT_LIST_HEAD(&ce->signals);
diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
index c41098950746..a80018d53a36 100644
--- a/drivers/gpu/drm/i915/gt/intel_context.h
+++ b/drivers/gpu/drm/i915/gt/intel_context.h
@@ -34,6 +34,8 @@ void intel_context_fini(struct intel_context *ce);
 void i915_context_module_exit(void);
 int i915_context_module_init(void);
 
+struct intel_context *
+intel_context_create_user(struct intel_engine_cs *engine);
 struct intel_context *
 intel_context_create(struct intel_engine_cs *engine);
 
-- 
2.32.0

