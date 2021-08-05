Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC143E12C5
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Aug 2021 12:40:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5364F6E542;
	Thu,  5 Aug 2021 10:40:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11966E58A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Aug 2021 10:39:24 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id p21so7641795edi.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Aug 2021 03:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=t6X0xSeGHnONP7iwgluYKYtXmhafTFjXK9p0axMsb2M=;
 b=YF7Ffm38u6IC6vajuqIQIbfdpN86VyJI7En9DxO+h+C2fDbMSPZUn3VkJrHU5mzoJI
 wP76ql7vPB5FTeL5vTD12Hevi5UQIomdoBDZVZx9et4RBqPUe3O9V0skuqxVN6FDX42B
 TvwUBcMKRvLJQ+nj1peUdTMdYA/1/61W9cfu0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=t6X0xSeGHnONP7iwgluYKYtXmhafTFjXK9p0axMsb2M=;
 b=KaV+OUH4kH6/7fzQel+aXMjRQ6Cn0kzpLx4D1V7BIFabrfLBw/NzOqk2cVY8bowd+2
 BmlrEdsEQzRpheL2R16tlVmleT7odjx/D7AI3q0PMSvV4XnIWyEADGx4rcU049PLTAuD
 84uZaNrC0RWpC46w03Pz498tdkFizgmMrTzT/7BserO6qt7++NB93wzFX06nPRrONuXf
 mFHNFqYMYn1L4S5OgsslLlqrnuhN/ZKHijr6a+BA2w4aZC3oC2ChNsMWqY9LD2X9b3sf
 bhoaU+S9WJNN/QG9BcLxpXC4EHlBk7zEfmdb6/rtHA+g/x34GXfjp1Z0CvCwF9pS0xnn
 BivA==
X-Gm-Message-State: AOAM532O1UIlaNCNoXmCpbGNK+/JNnxv0HJnp+f1+CDiaIHYhWK153eE
 jz8PkiyZ9Cmq2o0SjD+OA3LKCbH1cGNKSQ==
X-Google-Smtp-Source: ABdhPJxMOt9H5QZccThzW+j8RgCN0wJq0gk1OOIvGfOwpu4HW6dnE1JyJKAGk1gb3JcmHocICw0cjA==
X-Received: by 2002:a05:6402:215:: with SMTP id
 t21mr5637106edv.68.1628159963321; 
 Thu, 05 Aug 2021 03:39:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j22sm1593727ejt.11.2021.08.05.03.39.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Aug 2021 03:39:22 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Date: Thu,  5 Aug 2021 12:39:10 +0200
Message-Id: <20210805103916.860853-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805103916.860853-1-daniel.vetter@ffwll.ch>
References: <20210805103916.860853-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/8] drm/i915: Rename
 i915_gem_context_get_vm_rcu to i915_gem_context_get_eb_vm
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

The important part isn't so much that this does an rcu lookup - that's
more an implementation detail, which will also be removed.

The thing that makes this different from other functions is that it's
gettting you the vm that batchbuffers will run in for that gem
context, which is either a full ppgtt stored in gem->ctx, or the ggtt.

We'll make more use of this function later on.

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
 drivers/gpu/drm/i915/gem/i915_gem_context.h           | 2 +-
 drivers/gpu/drm/i915/gem/selftests/huge_pages.c       | 4 ++--
 drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 4 ++--
 drivers/gpu/drm/i915/gt/selftest_execlists.c          | 2 +-
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c          | 2 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c         | 4 ++--
 drivers/gpu/drm/i915/selftests/i915_vma.c             | 2 +-
 7 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index 18060536b0c2..da6e8b506d96 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -155,7 +155,7 @@ i915_gem_context_vm(struct i915_gem_context *ctx)
 }
 
 static inline struct i915_address_space *
-i915_gem_context_get_vm_rcu(struct i915_gem_context *ctx)
+i915_gem_context_get_eb_vm(struct i915_gem_context *ctx)
 {
 	struct i915_address_space *vm;
 
diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
index a094f3ce1a90..6c68fe26bb32 100644
--- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
+++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
@@ -1456,7 +1456,7 @@ static int igt_tmpfs_fallback(void *arg)
 	struct i915_gem_context *ctx = arg;
 	struct drm_i915_private *i915 = ctx->i915;
 	struct vfsmount *gemfs = i915->mm.gemfs;
-	struct i915_address_space *vm = i915_gem_context_get_vm_rcu(ctx);
+	struct i915_address_space *vm = i915_gem_context_get_eb_vm(ctx);
 	struct drm_i915_gem_object *obj;
 	struct i915_vma *vma;
 	u32 *vaddr;
@@ -1512,7 +1512,7 @@ static int igt_shrink_thp(void *arg)
 {
 	struct i915_gem_context *ctx = arg;
 	struct drm_i915_private *i915 = ctx->i915;
-	struct i915_address_space *vm = i915_gem_context_get_vm_rcu(ctx);
+	struct i915_address_space *vm = i915_gem_context_get_eb_vm(ctx);
 	struct drm_i915_gem_object *obj;
 	struct i915_gem_engines_iter it;
 	struct intel_context *ce;
diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
index 8eb5050f8cb3..d436ce7fa25c 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
@@ -1528,7 +1528,7 @@ static int write_to_scratch(struct i915_gem_context *ctx,
 
 	intel_gt_chipset_flush(engine->gt);
 
-	vm = i915_gem_context_get_vm_rcu(ctx);
+	vm = i915_gem_context_get_eb_vm(ctx);
 	vma = i915_vma_instance(obj, vm, NULL);
 	if (IS_ERR(vma)) {
 		err = PTR_ERR(vma);
@@ -1607,7 +1607,7 @@ static int read_from_scratch(struct i915_gem_context *ctx,
 	if (GRAPHICS_VER(i915) >= 8) {
 		const u32 GPR0 = engine->mmio_base + 0x600;
 
-		vm = i915_gem_context_get_vm_rcu(ctx);
+		vm = i915_gem_context_get_eb_vm(ctx);
 		vma = i915_vma_instance(obj, vm, NULL);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
index f12ffe797639..b3863abc51f5 100644
--- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
+++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
@@ -3493,7 +3493,7 @@ static int smoke_submit(struct preempt_smoke *smoke,
 	if (batch) {
 		struct i915_address_space *vm;
 
-		vm = i915_gem_context_get_vm_rcu(ctx);
+		vm = i915_gem_context_get_eb_vm(ctx);
 		vma = i915_vma_instance(batch, vm, NULL);
 		i915_vm_put(vm);
 		if (IS_ERR(vma))
diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 08f011f893b2..6023c418ee8a 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -117,7 +117,7 @@ static struct i915_request *
 hang_create_request(struct hang *h, struct intel_engine_cs *engine)
 {
 	struct intel_gt *gt = h->gt;
-	struct i915_address_space *vm = i915_gem_context_get_vm_rcu(h->ctx);
+	struct i915_address_space *vm = i915_gem_context_get_eb_vm(h->ctx);
 	struct drm_i915_gem_object *obj;
 	struct i915_request *rq = NULL;
 	struct i915_vma *hws, *vma;
diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
index f843a5040706..2d60a5a5b065 100644
--- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
+++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
@@ -1300,7 +1300,7 @@ static int exercise_mock(struct drm_i915_private *i915,
 	if (!ctx)
 		return -ENOMEM;
 
-	vm = i915_gem_context_get_vm_rcu(ctx);
+	vm = i915_gem_context_get_eb_vm(ctx);
 	err = func(vm, 0, min(vm->total, limit), end_time);
 	i915_vm_put(vm);
 
@@ -1848,7 +1848,7 @@ static int igt_cs_tlb(void *arg)
 		goto out_unlock;
 	}
 
-	vm = i915_gem_context_get_vm_rcu(ctx);
+	vm = i915_gem_context_get_eb_vm(ctx);
 	if (i915_is_ggtt(vm))
 		goto out_vm;
 
diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/i915/selftests/i915_vma.c
index dd0607254a95..79ba72da0813 100644
--- a/drivers/gpu/drm/i915/selftests/i915_vma.c
+++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
@@ -118,7 +118,7 @@ static int create_vmas(struct drm_i915_private *i915,
 				struct i915_vma *vma;
 				int err;
 
-				vm = i915_gem_context_get_vm_rcu(ctx);
+				vm = i915_gem_context_get_eb_vm(ctx);
 				vma = checked_vma_instance(obj, vm, NULL);
 				i915_vm_put(vm);
 				if (IS_ERR(vma))
-- 
2.32.0

