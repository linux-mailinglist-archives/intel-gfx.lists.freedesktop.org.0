Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F5E33D174
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 11:11:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8372A6E2EF;
	Tue, 16 Mar 2021 10:10:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21B796E2DE
 for <Intel-gfx@lists.freedesktop.org>; Tue, 16 Mar 2021 10:10:58 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id l12so10135043wry.2
 for <Intel-gfx@lists.freedesktop.org>; Tue, 16 Mar 2021 03:10:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2gx8zIVYCIpY0xxbRUU9yWimiwGtSpw+ocTput7RaB0=;
 b=NvpzHsJ/OGzC1M5KGxTHZ6u1YzDsZ9RJssXli7s2zF7ivzfQyjBv/GQeDDd1RWt1z9
 bgr2Y/taUDnb/q4b3h5vZRN126w/lnY/glvlnEL56YZm8mJ91n/7EO0Okj8LQXIMqCIu
 IwIVTLSc2VwrnGuR2E1bbyF71zcwR+/6/6qb8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2gx8zIVYCIpY0xxbRUU9yWimiwGtSpw+ocTput7RaB0=;
 b=YDRoQNy9sNasUajt26ALLt+HV9U0kqex9oagrql8lkygHW6S2F+cPY/+sLSrlge911
 yd3uK7NOvXdGjrCzwZIjA+g3zFqVC/5XCrURyZpVIbxDPO7PmTBVUiSrFmEOa1aNktZZ
 hhDQa971NsUjCW1gsuL3fEo14TGubsl87jmJeVca6ehstl0YMfh7Hz+M4WiRSmYBQ1i2
 I331IoDeOKCtGGZFntoXGiCLniNK34Vh0SWgkPHKk2yf3FAqHL6F3YRozeVt21CYMNDQ
 ELcNx8DGUsNq5patsd7i+2020SV9PU7JiLZAv6hXs9+XhtwX5GuF9p4slPkwTf64d+lG
 kSEQ==
X-Gm-Message-State: AOAM531wfGBDB+Vkbx0FvFWvsND2w6MwOruCq9q6+vveEIfBKItGorHO
 qmJmQr3JvB4794bJkBu0vmfD/1qI23VMsCHt
X-Google-Smtp-Source: ABdhPJzO97T2EF4lWbUrs3BmsvFFXCbViOFB5o/byQPRHxKkxRrDv4TwNSmWP2bq2naF7pBRpUyu/A==
X-Received: by 2002:adf:9d82:: with SMTP id p2mr4080466wre.234.1615889456768; 
 Tue, 16 Mar 2021 03:10:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n23sm22367338wra.71.2021.03.16.03.10.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 03:10:56 -0700 (PDT)
Date: Tue, 16 Mar 2021 11:10:54 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YFCELgxgfy70w68A@phenom.ffwll.local>
References: <20210312154622.1767865-1-tvrtko.ursulin@linux.intel.com>
 <20210312154622.1767865-6-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312154622.1767865-6-tvrtko.ursulin@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [RFC 5/6] drm/i915: Fail too long user submissions
 by default
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, Intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 12, 2021 at 03:46:21PM +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> A new Kconfig option CONFIG_DRM_I915_REQUEST_TIMEOUT is added, defaulting
> to 10s, and this timeout is applied to _all_ contexts using the previously
> added watchdog facility.
> 
> Result of this is that any user submission will simply fail after this
> time, either causing a reset (for non-preemptable) or incomplete results.
> 
> This can have an effect that workloads which used to work fine will
> suddenly start failing.
> 
> When the default expiry is active userspace will not be allowed to
> decrease the timeout using the context param setting.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>

I think this should explain that it will break long running compute
workloads, and that maybe the modparam in the next patch can paper over
that until we've implemented proper long running compute workload support
in upstream. Which is unfortunately still some ways off.

Otherwise makes all sense to me. Maybe if you want also copy some of the
discussion from your cover letter into this commit message, and think
there's some good stuff there.
-Daniel

> ---
>  drivers/gpu/drm/i915/Kconfig.profile        |  8 ++++
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 47 ++++++++++++++++++---
>  2 files changed, 48 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
> index 35bbe2b80596..55e157ffff73 100644
> --- a/drivers/gpu/drm/i915/Kconfig.profile
> +++ b/drivers/gpu/drm/i915/Kconfig.profile
> @@ -1,3 +1,11 @@
> +config DRM_I915_REQUEST_TIMEOUT
> +	int "Default timeout for requests (ms)"
> +	default 10000 # milliseconds
> +	help
> +	  ...
> +
> +	  May be 0 to disable the timeout.
> +
>  config DRM_I915_FENCE_TIMEOUT
>  	int "Timeout for unsignaled foreign fences (ms, jiffy granularity)"
>  	default 10000 # milliseconds
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 32b05af4fc8f..21c0176e27a0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -854,6 +854,25 @@ static void __assign_timeline(struct i915_gem_context *ctx,
>  	context_apply_all(ctx, __apply_timeline, timeline);
>  }
>  
> +static int
> +__set_watchdog(struct i915_gem_context *ctx, unsigned long timeout_us);
> +
> +static void __set_default_fence_expiry(struct i915_gem_context *ctx)
> +{
> +	struct drm_i915_private *i915 = ctx->i915;
> +	int ret;
> +
> +	if (!IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT))
> +		return;
> +
> +	/* Default expiry for user fences. */
> +	ret = __set_watchdog(ctx, CONFIG_DRM_I915_REQUEST_TIMEOUT * 1000);
> +	if (ret)
> +		drm_notice(&i915->drm,
> +			   "Failed to configure default fence expiry! (%d)",
> +			   ret);
> +}
> +
>  static struct i915_gem_context *
>  i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
>  {
> @@ -898,6 +917,8 @@ i915_gem_create_context(struct drm_i915_private *i915, unsigned int flags)
>  		intel_timeline_put(timeline);
>  	}
>  
> +	__set_default_fence_expiry(ctx);
> +
>  	trace_i915_context_create(ctx);
>  
>  	return ctx;
> @@ -1404,23 +1425,35 @@ static int __apply_watchdog(struct intel_context *ce, void *timeout_us)
>  	return intel_context_set_watchdog_us(ce, (uintptr_t)timeout_us);
>  }
>  
> -static int set_watchdog(struct i915_gem_context *ctx,
> -			struct drm_i915_gem_context_param *args)
> +static int
> +__set_watchdog(struct i915_gem_context *ctx, unsigned long timeout_us)
>  {
>  	int ret;
>  
> -	if (args->size)
> -		return -EINVAL;
> -
>  	ret = context_apply_all(ctx, __apply_watchdog,
> -				(void *)(uintptr_t)args->value);
> +				(void *)(uintptr_t)timeout_us);
>  
>  	if (!ret)
> -		ctx->watchdog.timeout_us = args->value;
> +		ctx->watchdog.timeout_us = timeout_us;
>  
>  	return ret;
>  }
>  
> +static int set_watchdog(struct i915_gem_context *ctx,
> +			struct drm_i915_gem_context_param *args)
> +{
> +	if (args->size)
> +		return -EINVAL;
> +
> +	/* Disallow disabling or configuring longer watchdog than default. */
> +	if (IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) &&
> +	    (!args->value ||
> +	     args->value > CONFIG_DRM_I915_REQUEST_TIMEOUT * 1000))
> +		return -EPERM;
> +
> +	return __set_watchdog(ctx, args->value);
> +}
> +
>  static int __get_ringsize(struct intel_context *ce, void *arg)
>  {
>  	long sz;
> -- 
> 2.27.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
