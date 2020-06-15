Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2661F9A30
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 16:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83F1689128;
	Mon, 15 Jun 2020 14:31:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBB8089128
 for <Intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 14:31:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21502458-1500050 for multiple; Mon, 15 Jun 2020 15:30:36 +0100
MIME-Version: 1.0
In-Reply-To: <20200615140928.27336-1-tvrtko.ursulin@linux.intel.com>
References: <20200615140928.27336-1-tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159223143519.2981.2404611553306232536@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 15 Jun 2020 15:30:35 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove redundant
 i915_request_await_object in blit clears
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-06-15 15:09:28)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> One i915_request_await_object is enough and we keep the one under the
> object lock so it is final.
> 
> At the same time move async clflushing setup under the same locked
> section and consolidate common code into a helper function.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
> ---
>  .../gpu/drm/i915/gem/i915_gem_object_blt.c    | 35 +++++++------------
>  1 file changed, 13 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> index f457d7130491..7d8b396e265a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> @@ -126,6 +126,17 @@ void intel_emit_vma_release(struct intel_context *ce, struct i915_vma *vma)
>         intel_engine_pm_put(ce->engine);
>  }
>  
> +static int
> +move_obj_to_gpu(struct drm_i915_gem_object *obj,
> +               struct i915_request *rq,
> +               bool write)
> +{
> +       if (obj->cache_dirty & ~obj->cache_coherent)
> +               i915_gem_clflush_object(obj, 0);
> +
> +       return i915_request_await_object(rq, obj, write);
> +}
> +
>  int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
>                              struct intel_context *ce,
>                              u32 value)
> @@ -143,12 +154,6 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
>         if (unlikely(err))
>                 return err;
>  
> -       if (obj->cache_dirty & ~obj->cache_coherent) {
> -               i915_gem_object_lock(obj);
> -               i915_gem_clflush_object(obj, 0);
> -               i915_gem_object_unlock(obj);
> -       }
> -
>         batch = intel_emit_vma_fill_blt(ce, vma, value);
>         if (IS_ERR(batch)) {
>                 err = PTR_ERR(batch);
> @@ -165,10 +170,6 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
>         if (unlikely(err))
>                 goto out_request;
>  
> -       err = i915_request_await_object(rq, obj, true);
> -       if (unlikely(err))
> -               goto out_request;
> -
>         if (ce->engine->emit_init_breadcrumb) {
>                 err = ce->engine->emit_init_breadcrumb(rq);
>                 if (unlikely(err))
> @@ -176,7 +177,7 @@ int i915_gem_object_fill_blt(struct drm_i915_gem_object *obj,
>         }
>  
>         i915_vma_lock(vma);
> -       err = i915_request_await_object(rq, vma->obj, true);
> +       err = move_obj_to_gpu(vma->obj, rq, true);
>         if (err == 0)
>                 err = i915_vma_move_to_active(vma, rq, EXEC_OBJECT_WRITE);
>         i915_vma_unlock(vma);

Ah, but here it's also the wrong side of init_breadcrumb.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
