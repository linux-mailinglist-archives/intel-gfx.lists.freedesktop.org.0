Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 249D03E031D
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 16:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 130036EA9E;
	Wed,  4 Aug 2021 14:26:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 541F36EA85
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Aug 2021 14:25:43 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id h14so2460230wrx.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Aug 2021 07:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e4GpIWEL2H3MSyASFsMc5nh7IOxuZ7y0MLkJwo2jpPY=;
 b=hzftkjo+iwl62JyMFAQ/PwORNdHBGDzg7/P5IPFsIf4XwwSzM0VYZb5d9qORnL4hFM
 vZZ7MpC5+niD9ntnhrXvJKF1edUXfyoDf/lIe/XAwLAssoTyjHcQzfnYzprqmHKoZ8ee
 a8o40ET7xTJm42knR+4gTD/JfIn0Svfx9j1uo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e4GpIWEL2H3MSyASFsMc5nh7IOxuZ7y0MLkJwo2jpPY=;
 b=pRZLukttmbbklO1jCT10VpHTOvYfFIFo6hTWwEvlxo4RoZRX1IFRUZ/1Od1fnokoVA
 5bdZbXhzSu0qj71T1LJivZyqWv9AHRPZPf8esJcxlNmAfsih31efoCKiZM8UMzsFO3fw
 +HQNp9FF60J0jGcWpxwxpFkcPPFebfT3acST76Y+LSxMbncu6g26ZnsG/Xtt7XhT1Kjy
 Ppqtw9An1hjmGv57TQPRKmu42W9bDyehk/wkj+27U5ogZ9g/IRXSUJPpEBB1xJvgPCUN
 9wjD7YkIY5KEMVWLokJejqrfbo+Vur88mHyBZ4809RgcccRT26Vd8TRfqmvciKqvNpMX
 4C9Q==
X-Gm-Message-State: AOAM531fts5PS1jOltROJvtMi9erIU4Q8u68dGCFKU4/8q+TKCTOgPd0
 Ti0Ng0UeYwvuKU4xK3empg7Ul3gH8qc/cA==
X-Google-Smtp-Source: ABdhPJx3I/t/B0toPu1PRRNiUplz0I398xweMRsTLRzNn4lLY1rQX4upsmDt5MC4HMLYVMJBvmKUVg==
X-Received: by 2002:a5d:6789:: with SMTP id v9mr29718380wru.254.1628087141824; 
 Wed, 04 Aug 2021 07:25:41 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b6sm3222682wrn.9.2021.08.04.07.25.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Aug 2021 07:25:41 -0700 (PDT)
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
Date: Wed,  4 Aug 2021 16:25:21 +0200
Message-Id: <20210804142522.4113021-9-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
References: <20210804142522.4113021-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915: Stop rcu support for
 i915_address_space
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

The full audit is quite a bit of work:

- i915_dpt has very simple lifetime (somehow we create a display pagetable vm
  per object, so its _very_ simple, there's only ever a single vma in there),
  and uses i915_vm_close(), which internally does a i915_vm_put(). No rcu.

  Aside: wtf is i915_dpt doing in the intel_display.c garbage collector as a new
  feature, instead of added as a separate file with some clean-ish interface.

  Also, i915_dpt unfortunately re-introduces some coding patterns from
  pre-dma_resv_lock conversion times.

- i915_gem_proto_ctx is fully refcounted and no rcu, all protected by
  fpriv->proto_context_lock.

- i915_gem_context is itself rcu protected, and that might leak to anything it
  points at. Before

	commit cf977e18610e66e48c31619e7e0cfa871be9eada
	Author: Chris Wilson <chris@chris-wilson.co.uk>
	Date:   Wed Dec 2 11:21:40 2020 +0000

	    drm/i915/gem: Spring clean debugfs

  and

	commit db80a1294c231b6ac725085f046bb2931e00c9db
	Author: Chris Wilson <chris@chris-wilson.co.uk>
	Date:   Mon Jan 18 11:08:54 2021 +0000

	    drm/i915/gem: Remove per-client stats from debugfs/i915_gem_objects

  we had a bunch of debugfs files that relied on rcu protecting everything, but
  those are gone now. The main one was removed even earlier with

  There doesn't seem to be anything left that's actually protecting
  stuff now that the ctx->vm itself is invariant. See

	commit ccbc1b97948ab671335e950271e39766729736c3
	Author: Jason Ekstrand <jason@jlekstrand.net>
	Date:   Thu Jul 8 10:48:30 2021 -0500

	    drm/i915/gem: Don't allow changing the VM on running contexts (v4)

  Note that we drop the vm refcount before the final release of the gem context
  refcount, so this is all very dangerous even without rcu. Note that aside from
  later on creating new engines (a defunct feature) and debug output we're never
  looked at gem_ctx->vm for anything functional, hence why this is ok.
  Fingers crossed.

  Preceeding patches removed all vestiges of rcu use from gem_ctx->vm
  derferencing to make it clear it's really not used.

  The gem_ctx->rcu protection was introduced in

	commit a4e7ccdac38ec8335d9e4e2656c1a041c77feae1
	Author: Chris Wilson <chris@chris-wilson.co.uk>
	Date:   Fri Oct 4 14:40:09 2019 +0100

	    drm/i915: Move context management under GEM

  The commit message is somewhat entertaining because it fails to
  mention this fact completely, and compensates that by an in-commit
  changelog entry that claims that ctx->vm is protected by ctx->mutex.
  Which was the case _before_ this commit, but no longer after it.

- intel_context holds a full reference. Unfortunately intel_context is also rcu
  protected and the reference to the ->vm is dropped before the
  rcu barrier - only the kfree is delayed. So again we need to check
  whether that leaks anywhere on the intel_context->vm. RCU is only
  used to protect intel_context sitting on the breadcrumb lists, which
  don't look at the vm anywhere, so we are fine.

  Nothing else relies on rcu protection of intel_context and hence is
  fully protected by the kref refcount alone, which protects
  intel_context->vm in turn.

  The breadcrumbs rcu usage was added in

	commit c744d50363b714783bbc88d986cc16def13710f7
	Author: Chris Wilson <chris@chris-wilson.co.uk>
	Date:   Thu Nov 26 14:04:06 2020 +0000

	    drm/i915/gt: Split the breadcrumb spinlock between global and contexts

  its parent commit added the intel_context rcu protection:

	commit 14d1eaf08845c534963c83f754afe0cb14cb2512
	Author: Chris Wilson <chris@chris-wilson.co.uk>
	Date:   Thu Nov 26 14:04:05 2020 +0000

	    drm/i915/gt: Protect context lifetime with RCU

  given some credence to my claim that I've actually caught them all.

- drm_i915_gem_object's shares_resv_from pointer has a full refcount to the
  dma_resv, which is a sub-refcount that's released after the final
  i915_vm_put() has been called. Safe.

  Aside: Maybe we should have a struct dma_resv_shared which is just dma_resv +
  kref as a stand-alone thing. It's a pretty useful pattern which other drivers
  might want to copy.

  For a bit more context see

	commit 4d8151ae5329cf50781a02fd2298a909589a5bab
	Author: Thomas Hellström <thomas.hellstrom@linux.intel.com>
	Date:   Tue Jun 1 09:46:41 2021 +0200

	    drm/i915: Don't free shared locks while shared

- the fpriv->vm_xa was relying on rcu_read_lock for lookup, but that
  was updated in a prep patch too to just be a spinlock-protected
  lookup.

- intel_gt->vm is set at driver load in intel_gt_init() and released
  in intel_gt_driver_release(). There seems to be some issue that
  in some error paths this is called twice, but otherwise no rcu to be
  found anywhere. This was added in the below commit, which
  unfortunately doesn't explain why this complication exists.

	commit e6ba76480299a0d77c51d846f7467b1673aad25b
	Author: Chris Wilson <chris@chris-wilson.co.uk>
	Date:   Sat Dec 21 16:03:24 2019 +0000

	    drm/i915: Remove i915->kernel_context

  The proper fix most likely for this is to start using drmm_ at large
  scale, but that's also huge amounts of work.

- i915_vma->vm is some real pain, because rcu is rcu protected, at
  least in the vma lookup in the context lookup cache in
  eb_lookup_vma(). This was added in

	commit 4ff4b44cbb70c269259958cbcc48d7b8a2cb9ec8
	Author: Chris Wilson <chris@chris-wilson.co.uk>
	Date:   Fri Jun 16 15:05:16 2017 +0100

	    drm/i915: Store a direct lookup from object handle to vma

  This was changed to a radix tree from the hashtable in, but with the
  locking unchanged, in

	commit d1b48c1e7184d9bc4ae6d7f9fe2eed9efed11ffc
	Author: Chris Wilson <chris@chris-wilson.co.uk>
	Date:   Wed Aug 16 09:52:08 2017 +0100

	    drm/i915: Replace execbuf vma ht with an idr

  In

	commit 93159e12353c2a47e5576d642845a91fa00530bf
	Author: Chris Wilson <chris@chris-wilson.co.uk>
	Date:   Mon Mar 23 09:28:41 2020 +0000

	    drm/i915/gem: Avoid gem_context->mutex for simple vma lookup

  the locking was changed from dev->struct_mutex to rcu, which added
  the requirement to rcu protect i915_vma. Somehow this was missed in
  review (or I'm completely blind).

  Irrespective of all that the vma lookup cache rcu_read_lock grabs a
  full reference of the vma and the rcu doesn't leak further. So no
  impact on i915_address_space from that.

  I have not found any other rcu use for i915_vma, but given that it
  seems broken I also didn't bother to do a careful in-depth audit.

Alltogether there's nothing left in-tree anymore which requires that a
pointer deref to an i915_address_space is safe undre rcu_read_lock
only.

rcu protection of i915_address_space was introduced in

commit b32fa811156328aea5a3c2ff05cc096490382456
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Thu Jun 20 19:37:05 2019 +0100

    drm/i915/gtt: Defer address space cleanup to an RCU worker

by mixing up a bugfixing (i915_address_space needs to be released from
a worker) with enabling rcu support. The commit message also seems
somewhat confused, because it talks about cleanup of WC pages
requiring sleep, while the code and linked bugzilla are about a
requirement to take dev->struct_mutex (which yes sleeps but it's a
much more specific problem). Since final kref_put can be called from
pretty much anywhere (including hardirq context through the
scheduler's i915_active cleanup) we need a worker here. Hence that
part must be kept.

Ideally all these reclaim workers should have some kind of integration
with our shrinkers, but for some of these it's rather tricky. Anyway,
that's a preexisting condition in the codeebase that we wont fix in
this patch here.

We also remove the rcu_barrier in ggtt_cleanup_hw added in

commit 60a4233a4952729089e4df152e730f8f4d0e82ce
Author: Chris Wilson <chris@chris-wilson.co.uk>
Date:   Mon Jul 29 14:24:12 2019 +0100

    drm/i915: Flush the i915_vm_release before ggtt shutdown

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
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 1 -
 drivers/gpu/drm/i915/gt/intel_gtt.c  | 6 +++---
 drivers/gpu/drm/i915/gt/intel_gtt.h  | 2 +-
 3 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index de3ac58fceec..8d71f67926f1 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -727,7 +727,6 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
 
 	atomic_set(&ggtt->vm.open, 0);
 
-	rcu_barrier(); /* flush the RCU'ed__i915_vm_release */
 	flush_workqueue(ggtt->vm.i915->wq);
 
 	mutex_lock(&ggtt->vm.mutex);
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
index e137dd32b5b8..a0c2b952aa57 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
@@ -155,7 +155,7 @@ void i915_vm_resv_release(struct kref *kref)
 static void __i915_vm_release(struct work_struct *work)
 {
 	struct i915_address_space *vm =
-		container_of(work, struct i915_address_space, rcu.work);
+		container_of(work, struct i915_address_space, release_work);
 
 	vm->cleanup(vm);
 	i915_address_space_fini(vm);
@@ -171,7 +171,7 @@ void i915_vm_release(struct kref *kref)
 	GEM_BUG_ON(i915_is_ggtt(vm));
 	trace_i915_ppgtt_release(vm);
 
-	queue_rcu_work(vm->i915->wq, &vm->rcu);
+	queue_work(vm->i915->wq, &vm->release_work);
 }
 
 void i915_address_space_init(struct i915_address_space *vm, int subclass)
@@ -185,7 +185,7 @@ void i915_address_space_init(struct i915_address_space *vm, int subclass)
 	if (!kref_read(&vm->resv_ref))
 		kref_init(&vm->resv_ref);
 
-	INIT_RCU_WORK(&vm->rcu, __i915_vm_release);
+	INIT_WORK(&vm->release_work, __i915_vm_release);
 	atomic_set(&vm->open, 1);
 
 	/*
diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
index bc7153018ebd..5b539bd7645d 100644
--- a/drivers/gpu/drm/i915/gt/intel_gtt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
@@ -213,7 +213,7 @@ struct i915_vma_ops {
 
 struct i915_address_space {
 	struct kref ref;
-	struct rcu_work rcu;
+	struct work_struct release_work;
 
 	struct drm_mm mm;
 	struct intel_gt *gt;
-- 
2.32.0

