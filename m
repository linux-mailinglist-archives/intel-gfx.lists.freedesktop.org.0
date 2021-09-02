Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 300BD3FEF51
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 16:21:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB9EE6E584;
	Thu,  2 Sep 2021 14:21:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8BB6E57E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 14:21:13 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 c8-20020a7bc008000000b002e6e462e95fso1595400wmb.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Sep 2021 07:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aicGjQCq4hoQj0Pwr4gmkc4Rzf2SYCedRgM9Xo0hAuE=;
 b=DKMxs+McR2tpA4ylDfx2sSneZzhQf2ebCddNIwJzIDYxvZrsp+P9QwWC9dC/valKgP
 FSpVYMHRGf/JCDjSUi5So9dVO/Krce1vX6zN7D9JfXZGMoaEWT8+V+rfpxf/E3CflCkY
 8qnGp/Hc4qnYVvNKIbsh3uFCjOVV8F6Uj5Jok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aicGjQCq4hoQj0Pwr4gmkc4Rzf2SYCedRgM9Xo0hAuE=;
 b=XMkrNaXHyxR0f546xWc0PNo0EqeJMwWA+puk/6sdH5BW+9UBljgqMc5ZKxUAuKEd2q
 jZYH/igEMKOuyw7TXMzTq1ipnr14nlBynDm38QxzMueE+K+CfD9D+g2YD5SJCC+0CvE2
 1NuET1IWomQoHt4EoilJyhRVwoC4jcON5/Eau2N5yu2CfCp4aA1io9SS0D72nHthFZce
 iJuWK0PpIJY2jUaQaBavkpxJyskepg9telzNCLtB0kRamscktKDb0pmsWo7bRBV4klG/
 zJmQN1qA0N9nmTsy4pf6qjCmV+g+i4YSSN8pjklTwvJMcFbXIARWQO1BtCz/jQ2+ub4Q
 ziVQ==
X-Gm-Message-State: AOAM533EfENxEcCCgjtBCrYSOZfGfUPlIU1U6wUiUp3Ua5OyMiC1s9uA
 BDbGKSIJrq0TvTIoZ5PEKTScQA==
X-Google-Smtp-Source: ABdhPJwQjlZGw+6qaEa4N3ArS5t33EoSEaTA+JEBA3DouVR13LN3pFp6Vow2vSCr0Ww/RFYGNh7Xrw==
X-Received: by 2002:a7b:ce93:: with SMTP id q19mr3494189wmj.7.1630592472283;
 Thu, 02 Sep 2021 07:21:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l2sm1841811wmi.1.2021.09.02.07.21.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Sep 2021 07:21:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Jon Bloomfield <jon.bloomfield@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Dave Airlie <airlied@redhat.com>, Jason Ekstrand <jason@jlekstrand.net>
Date: Thu,  2 Sep 2021 16:20:51 +0200
Message-Id: <20210902142057.929669-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
References: <20210902142057.929669-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/11] drm/i915: Rename
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

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
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
index 4d2758718d21..fc7fb33a3a52 100644
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
index 2c1ed32ca5ac..8be23e0f9306 100644
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
2.33.0

