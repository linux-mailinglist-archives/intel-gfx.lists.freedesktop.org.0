Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EFF403210
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 03:09:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D58296E0EA;
	Wed,  8 Sep 2021 01:09:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C4F76E0EA
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Sep 2021 01:09:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="207468403"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="207468403"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 18:09:35 -0700
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="503308688"
Received: from nvishwa1-desk.sc.intel.com (HELO nvishwa1-DESK) ([172.25.29.76])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 18:09:34 -0700
Date: Tue, 7 Sep 2021 18:10:00 -0700
From: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210908011000.GM11424@nvishwa1-DESK>
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-12-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20210830121006.2978297-12-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 11/19] drm/i915: Remove resv from i915_vma
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

On Mon, Aug 30, 2021 at 02:09:58PM +0200, Maarten Lankhorst wrote:
>It's just an alias to vma->obj->base.resv, no need to duplicate it.

Looks good to me.
Reviewed-by: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>

>
>Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>---
> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 4 ++--
> drivers/gpu/drm/i915/i915_vma.c                | 9 ++++-----
> drivers/gpu/drm/i915/i915_vma.h                | 6 +++---
> drivers/gpu/drm/i915/i915_vma_types.h          | 1 -
> 4 files changed, 9 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>index 4f10a81befd1..6832b255294e 100644
>--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>@@ -975,7 +975,7 @@ static int eb_validate_vmas(struct i915_execbuffer *eb)
> 		}
>
> 		if (!(ev->flags & EXEC_OBJECT_WRITE)) {
>-			err = dma_resv_reserve_shared(vma->resv, 1);
>+			err = dma_resv_reserve_shared(vma->obj->base.resv, 1);
> 			if (err)
> 				return err;
> 		}
>@@ -2121,7 +2121,7 @@ static int eb_parse(struct i915_execbuffer *eb)
> 		goto err_trampoline;
> 	}
>
>-	err = dma_resv_reserve_shared(shadow->resv, 1);
>+	err = dma_resv_reserve_shared(shadow->obj->base.resv, 1);
> 	if (err)
> 		goto err_trampoline;
>
>diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
>index ad5d52b33eb6..36db641e863e 100644
>--- a/drivers/gpu/drm/i915/i915_vma.c
>+++ b/drivers/gpu/drm/i915/i915_vma.c
>@@ -116,7 +116,6 @@ vma_create(struct drm_i915_gem_object *obj,
> 	vma->vm = i915_vm_get(vm);
> 	vma->ops = &vm->vma_ops;
> 	vma->obj = obj;
>-	vma->resv = obj->base.resv;
> 	vma->size = obj->base.size;
> 	vma->display_alignment = I915_GTT_MIN_ALIGNMENT;
>
>@@ -1032,7 +1031,7 @@ int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
> 	GEM_BUG_ON(!i915_vma_is_ggtt(vma));
>
> #ifdef CONFIG_LOCKDEP
>-	WARN_ON(!ww && dma_resv_held(vma->resv));
>+	WARN_ON(!ww && dma_resv_held(vma->obj->base.resv));
> #endif
>
> 	do {
>@@ -1249,17 +1248,17 @@ int i915_vma_move_to_active(struct i915_vma *vma,
> 			intel_frontbuffer_put(front);
> 		}
>
>-		dma_resv_add_excl_fence(vma->resv, &rq->fence);
>+		dma_resv_add_excl_fence(vma->obj->base.resv, &rq->fence);
> 		obj->write_domain = I915_GEM_DOMAIN_RENDER;
> 		obj->read_domains = 0;
> 	} else {
> 		if (!(flags & __EXEC_OBJECT_NO_RESERVE)) {
>-			err = dma_resv_reserve_shared(vma->resv, 1);
>+			err = dma_resv_reserve_shared(vma->obj->base.resv, 1);
> 			if (unlikely(err))
> 				return err;
> 		}
>
>-		dma_resv_add_shared_fence(vma->resv, &rq->fence);
>+		dma_resv_add_shared_fence(vma->obj->base.resv, &rq->fence);
> 		obj->write_domain = 0;
> 	}
>
>diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
>index 1ba82bf863a5..0b11c188f749 100644
>--- a/drivers/gpu/drm/i915/i915_vma.h
>+++ b/drivers/gpu/drm/i915/i915_vma.h
>@@ -225,16 +225,16 @@ static inline void __i915_vma_put(struct i915_vma *vma)
> 	kref_put(&vma->ref, i915_vma_release);
> }
>
>-#define assert_vma_held(vma) dma_resv_assert_held((vma)->resv)
>+#define assert_vma_held(vma) dma_resv_assert_held((vma)->obj->base.resv)
>
> static inline void i915_vma_lock(struct i915_vma *vma)
> {
>-	dma_resv_lock(vma->resv, NULL);
>+	dma_resv_lock(vma->obj->base.resv, NULL);
> }
>
> static inline void i915_vma_unlock(struct i915_vma *vma)
> {
>-	dma_resv_unlock(vma->resv);
>+	dma_resv_unlock(vma->obj->base.resv);
> }
>
> int __must_check
>diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915/i915_vma_types.h
>index 995b502d7e5d..47573ed2d11f 100644
>--- a/drivers/gpu/drm/i915/i915_vma_types.h
>+++ b/drivers/gpu/drm/i915/i915_vma_types.h
>@@ -177,7 +177,6 @@ struct i915_vma {
> 	const struct i915_vma_ops *ops;
>
> 	struct drm_i915_gem_object *obj;
>-	struct dma_resv *resv; /** Alias of obj->resv */
>
> 	struct sg_table *pages;
> 	void __iomem *iomap;
>-- 
>2.32.0
>
