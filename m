Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FC336D5C7
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 12:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EDFB6E08A;
	Wed, 28 Apr 2021 10:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D87C6E08E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 10:27:41 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 a22-20020a05600c2256b0290142870824e9so2350981wmm.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 03:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=UqWIQEo2ISG2YbntxG4VDqsNdsTJRz+EP3ztYwpOKqg=;
 b=QoxoGHfsGu/iAKgHdK4HVK/ix0osYct+ejhxBa5m7s6hnv1FfGhfXmuoAIth7Qg7tu
 4vp2DW2RJgdyrBfqAUvJNd24drbtZ64w636mS8lEr5Opvl3IUskLmjpchVXjkSk95n8N
 nllCx+fIGSykl6CzY2rwfNZIo5+TrkChQtUZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UqWIQEo2ISG2YbntxG4VDqsNdsTJRz+EP3ztYwpOKqg=;
 b=fmWrXwJ+FMh5HS/UKF40Wd9SdPjJl2WYlhYIVajSUw25DF3JjXGkCt9P9Gp03RMYa/
 wxNt4Ts115moag3LgrtHLpYcycnm5U5pi6C0kAmAxFx8YHJXsBJLR7dXB+g65T0S5AM9
 pWKsqOD0P6sEWUh7XsqZhxZ84D0y4ezw7UeUVphkIy1G09pe0Vg47IrydwaZtUxqSy4T
 pbEPLkpGEs8yTqUONCJ0wBRp8xQz7rutr9MSWo/aBllfVBusdp1WBn8lj+jt6hy3Qxq6
 gwNcVH9dipJWvPFPgXE3tnLvhERZ02W+LsZIxoubydiA3pJUgKwbx8z2e8Qo9ch+uyC4
 2AOw==
X-Gm-Message-State: AOAM531dSl1Y4OS0hl1xo/Bo9yL1QyReu8vaF19B+XCbXieq9XpNyKWV
 2InBFY/g3u8cVdP2zYWMiJ4raUrCENwbZA==
X-Google-Smtp-Source: ABdhPJz8MloVYLB2dO4kddPzJxe1xCBp+4SnZrUsj6oamcfsBW/kv7dvZstxBe1u+cbPMmUEbH1sNA==
X-Received: by 2002:a1c:55ca:: with SMTP id j193mr3651617wmb.58.1619605660197; 
 Wed, 28 Apr 2021 03:27:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s16sm5661395wmh.11.2021.04.28.03.27.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Apr 2021 03:27:39 -0700 (PDT)
Date: Wed, 28 Apr 2021 12:27:37 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YIk4mcKOjRUKuHVB@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-12-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210423223131.879208-12-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 11/21] drm/i915: Stop manually RCU banging
 in reset_stats_ioctl
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 23, 2021 at 05:31:21PM -0500, Jason Ekstrand wrote:
> As far as I can tell, the only real reason for this is to avoid taking a
> reference to the i915_gem_context.  The cost of those two atomics
> probably pales in comparison to the cost of the ioctl itself so we're
> really not buying ourselves anything here.  We're about to make context
> lookup a tiny bit more complicated, so let's get rid of the one hand-
> rolled case.

I think the historical reason here is that i965_brw checks this before
every execbuf call, at least for arb_robustness contexts with the right
flag. But we've fixed that hotpath problem by adding non-recoverable
contexts. The kernel will tell you now automatically, for proper userspace
at least (I checked iris and anv, assuming I got it correct), and
reset_stats ioctl isn't a hot path worth micro-optimizing anymore.

With that bit of more context added to the commit message:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 13 ++++---------
>  drivers/gpu/drm/i915/i915_drv.h             |  8 +-------
>  2 files changed, 5 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index ecb3bf5369857..941fbf78267b4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -2090,16 +2090,13 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
>  	struct drm_i915_private *i915 = to_i915(dev);
>  	struct drm_i915_reset_stats *args = data;
>  	struct i915_gem_context *ctx;
> -	int ret;
>  
>  	if (args->flags || args->pad)
>  		return -EINVAL;
>  
> -	ret = -ENOENT;
> -	rcu_read_lock();
> -	ctx = __i915_gem_context_lookup_rcu(file->driver_priv, args->ctx_id);
> +	ctx = i915_gem_context_lookup(file->driver_priv, args->ctx_id);
>  	if (!ctx)
> -		goto out;
> +		return -ENOENT;
>  
>  	/*
>  	 * We opt for unserialised reads here. This may result in tearing
> @@ -2116,10 +2113,8 @@ int i915_gem_context_reset_stats_ioctl(struct drm_device *dev,
>  	args->batch_active = atomic_read(&ctx->guilty_count);
>  	args->batch_pending = atomic_read(&ctx->active_count);
>  
> -	ret = 0;
> -out:
> -	rcu_read_unlock();
> -	return ret;
> +	i915_gem_context_put(ctx);
> +	return 0;
>  }
>  
>  /* GEM context-engines iterator: for_each_gem_engine() */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 0b44333eb7033..8571c5c1509a7 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1840,19 +1840,13 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
>  
>  struct dma_buf *i915_gem_prime_export(struct drm_gem_object *gem_obj, int flags);
>  
> -static inline struct i915_gem_context *
> -__i915_gem_context_lookup_rcu(struct drm_i915_file_private *file_priv, u32 id)
> -{
> -	return xa_load(&file_priv->context_xa, id);
> -}
> -
>  static inline struct i915_gem_context *
>  i915_gem_context_lookup(struct drm_i915_file_private *file_priv, u32 id)
>  {
>  	struct i915_gem_context *ctx;
>  
>  	rcu_read_lock();
> -	ctx = __i915_gem_context_lookup_rcu(file_priv, id);
> +	ctx = xa_load(&file_priv->context_xa, id);
>  	if (ctx && !kref_get_unless_zero(&ctx->ref))
>  		ctx = NULL;
>  	rcu_read_unlock();
> -- 
> 2.31.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
