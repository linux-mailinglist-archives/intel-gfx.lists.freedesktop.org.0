Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A207B48D1F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 14:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BD2910E4EE;
	Mon,  8 Sep 2025 12:15:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; secure) header.d=estudante.ufscar.br header.i=@estudante.ufscar.br header.b="BL8dS3pP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4386810E4F0
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 12:15:55 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id
 98e67ed59e1d1-329e47dfa3eso3837365a91.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Sep 2025 05:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=estudante.ufscar.br; s=google; t=1757333755; x=1757938555;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=tVCPVj5njtynUOjkUxjJArQSh1kyV84oddG8Myhc4a8=;
 b=BL8dS3pP3Fak+jdJAk34ydutuNRaAvm9Jyy1Uy0ufPZnHf1khhlxH7mIYfv05WlvMU
 m/s9eezenfnJD2kuLM7G6I4giOTJCDLLohK27kgYc0V7iblbCHLcLTY5+gsUhms+QbWG
 5WxZf9k1MEWqvdNoBon/ezyia28ILwv7h1FZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757333755; x=1757938555;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=tVCPVj5njtynUOjkUxjJArQSh1kyV84oddG8Myhc4a8=;
 b=ra4zsEy0SIeEAE3KIxwF4IFhkJE5w/Th4zSrw30w00E3Ob+1utSoN6mrGyUyllZe5y
 e4EQnabNwtauz9fjlFLZW+JfooAerB6Dr/eg9MF0WCvEf7Q9c2zYiIt0J8fyaacj5LIw
 iE0rPNB0eizNsf7dMY8a1tENJoTrERSm9kDWXRZ6b135rWW/+heTz3Mkb/nLRY/abitQ
 Sl9xvFniQiwBBrToT3BU5pR9bo1GKPPaMoJCbQ3Sj5o1DNP644kl9VVSnAHANOlX6drF
 zH8UZAmr7/1f1rTSyandFfO7sv7TxDJio7pOHUrCHyZMR4+bvhUewwTpH/4H1A929j6I
 buJA==
X-Gm-Message-State: AOJu0Yzg/YieaXz3NkIKf1F3wrbQB7qkO0lGcF7gZJTD3TXFPTpDpEwY
 d63t2wUcTyo9abXnWbbTHjRAFp92SafUs+1+F1qEnYVf71QzczqSS2KzgsJB3gXSHFCq5gulRuB
 txv5br6z/zQ==
X-Gm-Gg: ASbGncsg1n19xSAvudWeLkpxYkEF2NZvaNSzqsmVznXqsg7LzyFPkPDbwTrgrkni3nn
 7o69NLzBSVLYVlRIA7Ja8M07DU9OtbfPc9qeRYLdgK/afUaxzXU69KEbeez4njtqe51xPpAOJQq
 3ck4bD0BRyFXBilzgYGiJ3XuuhUW4HhMx90c/7Y8s6K0/DoOdPKl6dDv0d739OMj5oER/OAZrkk
 PiZC1YdBtp5gALLz50Uu/3Fd04D6OXBU/vUrYzjoSc53afSrfa4cUj8gSbWLW16JKTkfnq9YVDB
 TOkU8ijNxx8GusNJ+2QLcAbkem/xxJxoPUE3JABuIxW8Ay9K7S8Sq8ahLsXV7MBrZD2f5CyBSUd
 EpvFCZM0lcRGA6wxnCwnEf5omuGkWVfsZjEKT4aoyiJ3K1H33cK5PjQ==
X-Google-Smtp-Source: AGHT+IHcdFJ/SHBUIU1K+3TWC9r0YXXFfhS169vt/Llhvl8vtRPo2owXX6mfvho6PcJPlW+tHUrrYQ==
X-Received: by 2002:a17:90b:278d:b0:328:acc:da37 with SMTP id
 98e67ed59e1d1-32d43f04ffamr9955206a91.5.1757333754692; 
 Mon, 08 Sep 2025 05:15:54 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:4a5:943d::1709])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-772306a1870sm28345188b3a.75.2025.09.08.05.15.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Sep 2025 05:15:54 -0700 (PDT)
From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
To: rodrigo.vivi@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 tursulin@ursulin.net
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mairacanal@riseup.net, Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Subject: [PATCH 5/9 v4] drm/i915/gem: Clean-up outdated struct_mutex comments
Date: Mon,  8 Sep 2025 09:15:13 -0400
Message-ID: <20250908131518.36625-6-luiz.mello@estudante.ufscar.br>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250908131518.36625-1-luiz.mello@estudante.ufscar.br>
References: <20250908131518.36625-1-luiz.mello@estudante.ufscar.br>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

The struct_mutex will be removed from the DRM subsystem, as it was a
legacy BKL that was only used by i915 driver. After review, it was
concluded that its usage was no longer necessary

This patch updates various comments in the i915/gem and i915/gt
codebase to either remove or clarify references to struct_mutex, in
order to prevent future misunderstandings.

* i915_gem_execbuffer.c: Replace reference to struct_mutex with
  vm->mutex, as noted in the eb_reserve() function, which states that
  vm->mutex handles deadlocks.
* i915_gem_object.c: Change struct_mutex by
  drm_i915_gem_object->vma.lock. i915_gem_object_unbind() in i915_gem.c
  states that this lock is who actually protects the unbind.
* i915_gem_shrinker.c: The correct lock is actually i915->mm.obj, as
  already documented in its declaration.
* i915_gem_wait.c: The existing comment already mentioned that
  struct_mutex was no longer necessary. Updated to refer to a generic
  global lock instead.
* intel_reset_types.h: Cleaned up the comment text. Updated to refer to
  a generic global lock instead.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c     | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c   | 4 ++--
 drivers/gpu/drm/i915/gem/i915_gem_wait.c       | 8 ++++----
 drivers/gpu/drm/i915/gt/intel_reset_types.h    | 2 +-
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index f243f8a5215d..39c7c32e1e74 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -182,7 +182,7 @@ enum {
  * the object. Simple! ... The relocation entries are stored in user memory
  * and so to access them we have to copy them into a local buffer. That copy
  * has to avoid taking any pagefaults as they may lead back to a GEM object
- * requiring the struct_mutex (i.e. recursive deadlock). So once again we split
+ * requiring the vm->mutex (i.e. recursive deadlock). So once again we split
  * the relocation into multiple passes. First we try to do everything within an
  * atomic context (avoid the pagefaults) which requires that we never wait. If
  * we detect that we may wait, or if we need to fault, then we have to fallback
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
index 1f38e367c60b..478011e5ecb3 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
@@ -459,8 +459,8 @@ static void i915_gem_free_object(struct drm_gem_object *gem_obj)
 	atomic_inc(&i915->mm.free_count);
 
 	/*
-	 * Since we require blocking on struct_mutex to unbind the freed
-	 * object from the GPU before releasing resources back to the
+	 * Since we require blocking on drm_i915_gem_object->vma.lock to unbind
+	 * the freed object from the GPU before releasing resources back to the
 	 * system, we can not do that directly from the RCU callback (which may
 	 * be a softirq context), but must instead then defer that work onto a
 	 * kthread. We use the RCU callback rather than move the freed object
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
index b81e67504bbe..7a3e74a6676e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
@@ -170,7 +170,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 	 * Also note that although these lists do not hold a reference to
 	 * the object we can safely grab one here: The final object
 	 * unreferencing and the bound_list are both protected by the
-	 * dev->struct_mutex and so we won't ever be able to observe an
+	 * i915->mm.obj_lock and so we won't ever be able to observe an
 	 * object on the bound_list with a reference count equals 0.
 	 */
 	for (phase = phases; phase->list; phase++) {
@@ -185,7 +185,7 @@ i915_gem_shrink(struct i915_gem_ww_ctx *ww,
 
 		/*
 		 * We serialize our access to unreferenced objects through
-		 * the use of the struct_mutex. While the objects are not
+		 * the use of the obj_lock. While the objects are not
 		 * yet freed (due to RCU then a workqueue) we still want
 		 * to be able to shrink their pages, so they remain on
 		 * the unbound/bound list until actually freed.
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 991666fd9f85..54829801d3f7 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -217,10 +217,10 @@ static unsigned long to_wait_timeout(s64 timeout_ns)
  *
  * The wait ioctl with a timeout of 0 reimplements the busy ioctl. With any
  * non-zero timeout parameter the wait ioctl will wait for the given number of
- * nanoseconds on an object becoming unbusy. Since the wait itself does so
- * without holding struct_mutex the object may become re-busied before this
- * function completes. A similar but shorter * race condition exists in the busy
- * ioctl
+ * nanoseconds on an object becoming unbusy. Since the wait occurs without
+ * holding a global or exclusive lock the object may become re-busied before
+ * this function completes. A similar but shorter * race condition exists
+ * in the busy ioctl
  */
 int
 i915_gem_wait_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
diff --git a/drivers/gpu/drm/i915/gt/intel_reset_types.h b/drivers/gpu/drm/i915/gt/intel_reset_types.h
index 4f5fd393af6f..ee4eb574a219 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_reset_types.h
@@ -20,7 +20,7 @@ struct intel_reset {
 	 * FENCE registers).
 	 *
 	 * #I915_RESET_ENGINE[num_engines] - Since the driver doesn't need to
-	 * acquire the struct_mutex to reset an engine, we need an explicit
+	 * acquire a global lock to reset an engine, we need an explicit
 	 * flag to prevent two concurrent reset attempts in the same engine.
 	 * As the number of engines continues to grow, allocate the flags from
 	 * the most significant bits.
-- 
2.50.1

