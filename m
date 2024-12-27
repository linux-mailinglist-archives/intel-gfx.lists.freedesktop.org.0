Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5601F9FD3DE
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 12:38:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D5F810E3C1;
	Fri, 27 Dec 2024 11:37:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="ofE4d0Qs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine.igalia.com [178.60.130.6])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A184710E3B2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 11:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AduVVJrA9lIbWg9SIe2KOiwZ3LPQuI2PP5us5oPkxeg=; b=ofE4d0QsR0lBpLZwhMgvq+MnLo
 AAIqnriOjut94phpD+yLYGpdK8H1YuyqVVtf/EROOvY9v1CioIRH88FVcSSjHlyUeKJF+k9qqL9sc
 Zd8bjGWb8PVc6c94YPKCfCmB+QxLaHvyi5NRqcOgk3GtVMqMG01Yu3ZDpflSdHnaU29GeRegL5/UK
 LjzAthCDrZmqU8mAbn5qrq0+B9IWCDNLqzFXd9fwMTZjxVHY8lxaqZ/GkN4+5Q3PBRcloQcQo/nmB
 fbJIqS9ae4+SPVyuXDjakDS/VG6qoZLLki9f1+hn0CnM1DH/buM2QKW8WsOhmrhVvp9hZhvzOuqUq
 ZuTNTKxQ==;
Received: from [90.241.98.187] (helo=localhost)
 by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim)
 id 1tR8fC-008EU6-TQ
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 12:37:54 +0100
From: Tvrtko Ursulin <tursulin@igalia.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Remove deadcode
Date: Fri, 27 Dec 2024 11:37:52 +0000
Message-ID: <20241227113754.25871-1-tursulin@igalia.com>
X-Mailer: git-send-email 2.47.1
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

i915_active_acquire_for_context() was added in 2020 by
commit 5d9341370f57 ("drm/i915: Export a preallocate variant of
i915_active_acquire()") but has never been used.

The last use of __i915_gem_object_is_lmem() was removed in 2021 by
commit ff20afc4cee7 ("drm/i915: Update error capture code to avoid using
the current vma state")

Remove them.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c | 23 -----------------------
 drivers/gpu/drm/i915/gem/i915_gem_lmem.h |  2 --
 drivers/gpu/drm/i915/i915_active.c       | 18 ------------------
 drivers/gpu/drm/i915/i915_active.h       |  1 -
 4 files changed, 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
index 3198b64ad7db..388f90784d8a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.c
@@ -52,29 +52,6 @@ bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
 		      mr->type == INTEL_MEMORY_STOLEN_LOCAL);
 }
 
-/**
- * __i915_gem_object_is_lmem - Whether the object is resident in
- * lmem while in the fence signaling critical path.
- * @obj: The object to check.
- *
- * This function is intended to be called from within the fence signaling
- * path where the fence, or a pin, keeps the object from being migrated. For
- * example during gpu reset or similar.
- *
- * Return: Whether the object is resident in lmem.
- */
-bool __i915_gem_object_is_lmem(struct drm_i915_gem_object *obj)
-{
-	struct intel_memory_region *mr = READ_ONCE(obj->mm.region);
-
-#ifdef CONFIG_LOCKDEP
-	GEM_WARN_ON(dma_resv_test_signaled(obj->base.resv, DMA_RESV_USAGE_BOOKKEEP) &&
-		    i915_gem_object_evictable(obj));
-#endif
-	return mr && (mr->type == INTEL_MEMORY_LOCAL ||
-		      mr->type == INTEL_MEMORY_STOLEN_LOCAL);
-}
-
 /**
  * __i915_gem_object_create_lmem_with_ps - Create lmem object and force the
  * minimum page size for the backing pages.
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
index 5a7a14e85c3f..ecd8f1a633a1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_lmem.h
@@ -19,8 +19,6 @@ i915_gem_object_lmem_io_map(struct drm_i915_gem_object *obj,
 
 bool i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
 
-bool __i915_gem_object_is_lmem(struct drm_i915_gem_object *obj);
-
 struct drm_i915_gem_object *
 i915_gem_object_create_lmem_from_data(struct drm_i915_private *i915,
 				      const void *data, size_t size);
diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 35319228bc51..0dbc4e289300 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -527,24 +527,6 @@ int i915_active_acquire(struct i915_active *ref)
 	return err;
 }
 
-int i915_active_acquire_for_context(struct i915_active *ref, u64 idx)
-{
-	struct i915_active_fence *active;
-	int err;
-
-	err = i915_active_acquire(ref);
-	if (err)
-		return err;
-
-	active = active_instance(ref, idx);
-	if (!active) {
-		i915_active_release(ref);
-		return -ENOMEM;
-	}
-
-	return 0; /* return with active ref */
-}
-
 void i915_active_release(struct i915_active *ref)
 {
 	debug_active_assert(ref);
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index 77c676ecc263..821f7c21ea9b 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -186,7 +186,6 @@ int i915_request_await_active(struct i915_request *rq,
 #define I915_ACTIVE_AWAIT_BARRIER BIT(2)
 
 int i915_active_acquire(struct i915_active *ref);
-int i915_active_acquire_for_context(struct i915_active *ref, u64 idx);
 bool i915_active_acquire_if_busy(struct i915_active *ref);
 
 void i915_active_release(struct i915_active *ref);
-- 
2.47.1

