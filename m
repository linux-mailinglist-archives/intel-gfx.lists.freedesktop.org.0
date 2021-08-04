Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA5A3E0317
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 16:25:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09BAA6EA96;
	Wed,  4 Aug 2021 14:25:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 739F36EA96
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Aug 2021 14:25:44 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 k38-20020a05600c1ca6b029025af5e0f38bso4051008wms.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Aug 2021 07:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FtTZ4DLI7rTaokg6Ll8cLf6VYwFvx0t7nINsXuOHM1s=;
 b=UKXdP3mzokroblcox/QoRrxtU2ocCCy2DNY01uteRKzg1a5ncEpydF//vF7jBluClH
 8+9ELSs3xdX94hmW7r+d7/BLbZa3J36OCegriFdvHUWyazJGPuQAXTSFSf1ditM/Ioos
 jutPDsqgcpLqINR6cVhCP8FuoVLvxrNk7IM5k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FtTZ4DLI7rTaokg6Ll8cLf6VYwFvx0t7nINsXuOHM1s=;
 b=bpR0DoQRirJ2qhipKy20+NpWHzWyGgtTo/pFuV3XYcg3zwQv9woo84756grstKDdE9
 lrdTNpkx9AMUJQ/F0PHZo0u2OlBYejiy1THqjyiztMn6OWpLnKeqL6fA69Fpmg1FhnAV
 9m+9Dykg4VsATmpJb/JubdCWR7Hkfbxt+9IMe2nqzsZW/gg/30fwNV0DtK/BWkjAL29I
 I2ZrIXrEHcZK7SsF2u/bOGLek9iRV+GJ2gTiqUgdyvB2kd+wAb3qauYN5oUYn+KT5nfW
 kcOWL96BIjAHYXpciBnrTH2sK/hhezeJT4AtjdHj//Ex3YZelyG+bXJ6biaPv/wRGKBW
 731Q==
X-Gm-Message-State: AOAM532UX5vYjlqpM00xPp8ji6G8K7dewjKzKeiKJb8I/Pw15KOMOAjF
 wsQ1HACjp9vvzg1zLn24jMIZggM3vBI7Qg==
X-Google-Smtp-Source: ABdhPJyVhFMYhpOWt2nxZx7CELbNvjeskbO+6zQNOE64bmPvG1kjomg7CREQUAX0scfRb6POG98jPw==
X-Received: by 2002:a7b:c412:: with SMTP id k18mr3723775wmi.145.1628087142918; 
 Wed, 04 Aug 2021 07:25:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b6sm3222682wrn.9.2021.08.04.07.25.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 07:25:42 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Matthew Brost <matthew.brost@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 John Harrison <John.C.Harrison@Intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Date: Wed,  4 Aug 2021 16:25:22 +0200
Message-Id: <20210804142522.4113021-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
References: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 9/9] drm/i915: Split out
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

v2: I didn't take care of virtual engine creation and on top of that
collided pretty good with Matt's abstraction from

	commit 556120256ecd25aacea2c7e3ad11ec6584de7252
	Author: Matthew Brost <matthew.brost@intel.com>
	Date:   Mon Jul 26 17:23:16 2021 -0700

	    drm/i915/guc: GuC virtual engines

address this all by also splitting the new intel_engine_create_virtual
into a _user variant that doesn't set ce->vm.

Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: John Harrison <John.C.Harrison@Intel.com>
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
 drivers/gpu/drm/i915/gem/i915_gem_context.c   | 10 ++++-----
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  4 +++-
 .../gpu/drm/i915/gem/selftests/mock_context.c |  2 +-
 drivers/gpu/drm/i915/gt/intel_context.c       | 22 +++++++++++++++++--
 drivers/gpu/drm/i915/gt/intel_context.h       |  2 ++
 drivers/gpu/drm/i915/gt/intel_engine.h        |  4 ++++
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 21 ++++++++++++++++--
 7 files changed, 54 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 2f3cc73d4710..754b9b8d4981 100644
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
@@ -897,12 +897,12 @@ static struct i915_gem_engines *user_engines(struct i915_gem_context *ctx,
 
 		switch (pe[n].type) {
 		case I915_GEM_ENGINE_TYPE_PHYSICAL:
-			ce = intel_context_create(pe[n].engine);
+			ce = intel_context_create_user(pe[n].engine);
 			break;
 
 		case I915_GEM_ENGINE_TYPE_BALANCED:
-			ce = intel_engine_create_virtual(pe[n].siblings,
-							 pe[n].num_siblings);
+			ce = intel_engine_create_virtual_user(pe[n].siblings,
+							      pe[n].num_siblings);
 			break;
 
 		case I915_GEM_ENGINE_TYPE_INVALID:
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
 
diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
index 87579affb952..6f945e60f6d6 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine.h
@@ -279,6 +279,10 @@ intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
 	return intel_engine_has_preemption(engine);
 }
 
+struct intel_context *
+intel_engine_create_virtual_user(struct intel_engine_cs **siblings,
+				 unsigned int count);
+
 struct intel_context *
 intel_engine_create_virtual(struct intel_engine_cs **siblings,
 			    unsigned int count);
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 0d9105a31d84..34fe9dbfccba 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1879,9 +1879,10 @@ ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine, ktime_t *now)
 	return total;
 }
 
+/* for user contexts, callers must set ce->vm correctly */
 struct intel_context *
-intel_engine_create_virtual(struct intel_engine_cs **siblings,
-			    unsigned int count)
+intel_engine_create_virtual_user(struct intel_engine_cs **siblings,
+				 unsigned int count)
 {
 	if (count == 0)
 		return ERR_PTR(-EINVAL);
@@ -1893,6 +1894,22 @@ intel_engine_create_virtual(struct intel_engine_cs **siblings,
 	return siblings[0]->cops->create_virtual(siblings, count);
 }
 
+/* for kernel-internal users only, sets ce->vm to intel_gt.vm */
+struct intel_context *
+intel_engine_create_virtual(struct intel_engine_cs **siblings,
+			    unsigned int count)
+{
+	struct intel_context *ce;
+
+	ce = intel_engine_create_virtual_user(siblings, count);
+	if (IS_ERR(ce))
+		return ce;
+
+	ce->vm = i915_vm_get(siblings[0]->gt->vm);
+
+	return ce;
+}
+
 struct i915_request *
 intel_engine_execlist_find_hung_request(struct intel_engine_cs *engine)
 {
-- 
2.32.0

