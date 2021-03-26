Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E75349DC1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 01:25:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4D1C6EE6B;
	Fri, 26 Mar 2021 00:25:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 641776E108
 for <Intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 00:25:35 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id v11so3999585wro.7
 for <Intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 17:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=S/RUiFmh7V+PoKkjgt1cusXMGd2gA07gS3MqT7ryX7c=;
 b=ITq0zjdcEe/ACb95eMyKwgljquOghrdw82x/mm9aNUMFACwLqBGmXS3fMXduw5CyzD
 opbj4ujUIscfAalQA2JeX0pkB0vQrzjiUiFmtX6kLYPgs0VFlj+kS2pXTzRp7CXVCcZp
 uT15Im+vHy+Rg65nn7vzRisadE5iE9dJDJz8Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=S/RUiFmh7V+PoKkjgt1cusXMGd2gA07gS3MqT7ryX7c=;
 b=kpPg6HNXHm722E3885aBOtwj7aOA8jWFT+HR8h+jmOexvZTv/qQz1zRw8mooSLSjlL
 eVzzEwyDqgYHZ/s6fs+APLUOqjHlZfVCBJLoVkhk3lkhwsi/Nwwt6PMBSjjJZRFFxCrU
 uLh0J5EKC+kWO5Lqzz0WQvL5fCW8mXtJBAr0iMK9C6ls0BCpxI8kxALOMvTJZXoheTad
 qfqrJPse9t/PHSfmS8cy1LcfEzY6PdtP1JLA7jdm365Xq8p3+n6oM3q+xORZPMhkk3L0
 npFBtUyVJKLfHayjL0tcJtGGTUbpG05NltCGiKG74uVo0ANUmvLVYACsEIHTakRi+Njy
 ke7Q==
X-Gm-Message-State: AOAM53080EKjl3RHiziITw1klyVmlkQbcHmLXI+9BSUIj5IQ40f5yq4q
 KydmxeKKSyvXdGtqH2LwfqGV6w==
X-Google-Smtp-Source: ABdhPJwN388BAdafFw9S0MsnPX1RfpZKKpUrvIVmywnWBiwFZJaZcFpmBIqzw3WfFnwiC3kMAh8Lfg==
X-Received: by 2002:a5d:604b:: with SMTP id j11mr2462759wrt.424.1616718334064; 
 Thu, 25 Mar 2021 17:25:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c131sm8722637wma.37.2021.03.25.17.25.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Mar 2021 17:25:33 -0700 (PDT)
Date: Fri, 26 Mar 2021 01:25:31 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YF0p++UNk4R6d+G6@phenom.ffwll.local>
References: <20210324121335.2307063-1-tvrtko.ursulin@linux.intel.com>
 <20210324121335.2307063-8-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210324121335.2307063-8-tvrtko.ursulin@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH 7/7] drm/i915: Allow configuring default
 request expiry via modparam
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

On Wed, Mar 24, 2021 at 12:13:35PM +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Module parameter is added (request_timeout_ms) to allow configuring the
> default request/fence expiry.
> 
> Default value is inherited from CONFIG_DRM_I915_REQUEST_TIMEOUT.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Entire series merged, thanks for the patches.
-Daniel

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 5 +++--
>  drivers/gpu/drm/i915/i915_params.c          | 5 +++++
>  drivers/gpu/drm/i915/i915_params.h          | 1 +
>  3 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 33ff1a6a7724..0e8f0476e01f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -845,11 +845,12 @@ static void __set_default_fence_expiry(struct i915_gem_context *ctx)
>  	struct drm_i915_private *i915 = ctx->i915;
>  	int ret;
>  
> -	if (!IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT))
> +	if (!IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) ||
> +	    !i915->params.request_timeout_ms)
>  		return;
>  
>  	/* Default expiry for user fences. */
> -	ret = __set_watchdog(ctx, CONFIG_DRM_I915_REQUEST_TIMEOUT * 1000);
> +	ret = __set_watchdog(ctx, i915->params.request_timeout_ms * 1000);
>  	if (ret)
>  		drm_notice(&i915->drm,
>  			   "Failed to configure default fence expiry! (%d)",
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 6939634e56ed..0320878d96b0 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -197,6 +197,11 @@ i915_param_named_unsafe(fake_lmem_start, ulong, 0400,
>  	"Fake LMEM start offset (default: 0)");
>  #endif
>  
> +#if CONFIG_DRM_I915_REQUEST_TIMEOUT
> +i915_param_named_unsafe(request_timeout_ms, uint, 0600,
> +			"Default request/fence/batch buffer expiration timeout.");
> +#endif
> +
>  static __always_inline void _print_param(struct drm_printer *p,
>  					 const char *name,
>  					 const char *type,
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index 48f47e44e848..34ebb0662547 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -72,6 +72,7 @@ struct drm_printer;
>  	param(int, enable_dpcd_backlight, -1, 0600) \
>  	param(char *, force_probe, CONFIG_DRM_I915_FORCE_PROBE, 0400) \
>  	param(unsigned long, fake_lmem_start, 0, 0400) \
> +	param(unsigned int, request_timeout_ms, CONFIG_DRM_I915_REQUEST_TIMEOUT, 0600) \
>  	/* leave bools at the end to not create holes */ \
>  	param(bool, enable_hangcheck, true, 0600) \
>  	param(bool, load_detect_test, false, 0600) \
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
