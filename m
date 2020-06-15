Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCFC1F9CE9
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2020 18:17:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 161056E3B8;
	Mon, 15 Jun 2020 16:17:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB7306E3B5
 for <Intel-gfx@lists.freedesktop.org>; Mon, 15 Jun 2020 16:17:10 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21503762-1500050 for multiple; Mon, 15 Jun 2020 17:16:50 +0100
MIME-Version: 1.0
In-Reply-To: <20200615151449.32605-1-tvrtko.ursulin@linux.intel.com>
References: <20200615140928.27336-1-tvrtko.ursulin@linux.intel.com>
 <20200615151449.32605-1-tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159223781010.2981.3500655964984382451@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 15 Jun 2020 17:16:50 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Remove redundant
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

Quoting Tvrtko Ursulin (2020-06-15 16:14:49)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> One i915_request_await_object is enough and we keep the one under the
> object lock so it is final.
> 
> At the same time move async clflushing setup under the same locked
> section and consolidate common code into a helper function.
> 
> v2:
>  * Emit initial breadcrumbs after aways are set up. (Chris)

s/aways/awaits/
 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
> ---
>  .../gpu/drm/i915/gem/i915_gem_object_blt.c    | 52 ++++++++-----------
>  1 file changed, 21 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c b/drivers/gpu/drm/i915/gem/i915_gem_object_blt.c
> index f457d7130491..bfdb32d46877 100644
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

* shrug, I prefer to think in terms of vma, but even vma are unlikely to
be the final form here.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
