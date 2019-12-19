Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2D8126E47
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 20:55:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41AA96E3E1;
	Thu, 19 Dec 2019 19:55:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D246E3E1
 for <Intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 19:55:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19638728-1500050 for multiple; Thu, 19 Dec 2019 19:55:18 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
 <20191219180019.25562-2-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20191219180019.25562-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <157678531595.6469.15465054828701963900@skylake-alporthouse-com>
Date: Thu, 19 Dec 2019 19:55:15 +0000
Subject: Re: [Intel-gfx] [RFC 1/8] drm/i915: Switch context id allocation
 directoy to xarray
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2019-12-19 18:00:12)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Idr internally uses xarray so we can use it directly which simplifies our
> code by removing the need to do external locking.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   | 51 ++++++++-----------
>  .../gpu/drm/i915/gem/selftests/mock_context.c |  3 +-
>  drivers/gpu/drm/i915/i915_drv.h               |  6 +--
>  3 files changed, 25 insertions(+), 35 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 6618c0c6506c..e5a7c6f02a47 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -780,12 +780,6 @@ void i915_gem_driver_release__contexts(struct drm_i915_private *i915)
>         flush_work(&i915->gem.contexts.free_work);
>  }
>  
> -static int context_idr_cleanup(int id, void *p, void *data)
> -{
> -       context_close(p);
> -       return 0;
> -}
> -
>  static int vm_idr_cleanup(int id, void *p, void *data)
>  {
>         i915_vm_put(p);
> @@ -793,7 +787,8 @@ static int vm_idr_cleanup(int id, void *p, void *data)
>  }
>  
>  static int gem_context_register(struct i915_gem_context *ctx,
> -                               struct drm_i915_file_private *fpriv)
> +                               struct drm_i915_file_private *fpriv,
> +                               u32 *id)
>  {
>         struct i915_address_space *vm;
>         int ret;
> @@ -811,14 +806,10 @@ static int gem_context_register(struct i915_gem_context *ctx,
>                  current->comm, pid_nr(ctx->pid));
>  
>         /* And finally expose ourselves to userspace via the idr */
> -       mutex_lock(&fpriv->context_idr_lock);
> -       ret = idr_alloc(&fpriv->context_idr, ctx, 0, 0, GFP_KERNEL);
> -       mutex_unlock(&fpriv->context_idr_lock);
> -       if (ret >= 0)
> -               goto out;
> +       ret = xa_alloc(&fpriv->context_xa, id, ctx, xa_limit_32b, GFP_KERNEL);
> +       if (ret)
> +               put_pid(fetch_and_zero(&ctx->pid));
>  
> -       put_pid(fetch_and_zero(&ctx->pid));
> -out:
>         return ret;
>  }
>  
> @@ -828,11 +819,11 @@ int i915_gem_context_open(struct drm_i915_private *i915,
>         struct drm_i915_file_private *file_priv = file->driver_priv;
>         struct i915_gem_context *ctx;
>         int err;
> +       u32 id;
>  
> -       mutex_init(&file_priv->context_idr_lock);
> -       mutex_init(&file_priv->vm_idr_lock);
> +       xa_init_flags(&file_priv->context_xa, XA_FLAGS_ALLOC);
>  
> -       idr_init(&file_priv->context_idr);
> +       mutex_init(&file_priv->vm_idr_lock);

I had a double take here, thinking "why is he removing vm_idr..."
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
