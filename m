Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FA533D156
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 11:04:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B87B16E2D5;
	Tue, 16 Mar 2021 10:04:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com
 [IPv6:2a00:1450:4864:20::32c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 146226E2D5
 for <Intel-gfx@lists.freedesktop.org>; Tue, 16 Mar 2021 10:04:01 +0000 (UTC)
Received: by mail-wm1-x32c.google.com with SMTP id
 t5-20020a1c77050000b029010e62cea9deso1107847wmi.0
 for <Intel-gfx@lists.freedesktop.org>; Tue, 16 Mar 2021 03:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=AjNIIXXc9kw7IpQYi/9nz9kltyUVE4ODH1NPE4xMP4c=;
 b=dBQwwkqoUg3yp52u8S0zLkDsqAVZZuUguiQt01bi7R6Vc3tWiNDVGwbBlopH/YHcEu
 pbsw4x1oeW4mkZBWhhmnN4hp7BSo3/cwZW4a3wpvmDaFpEng7cdMZHpnlwSRLLlLbPNu
 g9ykpkTrTikN7HGrtG4kRP8GUzsynG/nYeRCk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=AjNIIXXc9kw7IpQYi/9nz9kltyUVE4ODH1NPE4xMP4c=;
 b=DegRXhLgjwhxroRVCqQLwp1nC0NvfzTINe2xBa1KZZ79TtUADyKiPMmnkZo0BYVsGE
 8NOLIPENG1ZRkO2Y7SQBFZwpg3RNsGLFFMChKy7LhCwmAdRIeDa37jmEgAZVYH2bSLrx
 bJvnwQAYRcZaMlpQ0k9PfjO6vF+AzUTzsFCZrfxTQFxzcMqEGvGDNZdLu71PEaEfo5y+
 usxZtI0I7c1bcXPmdnEPqWpU632OHJzAxALMyh7FSiHRx6aSpIyU18YmRhQG3zvquRtt
 kEGIrU95AYNN5UZtFxCZoVaAIQag5zplVwDOeRzpF9SVRh620ZCeWafvYOIe0+KMMmEO
 5pQw==
X-Gm-Message-State: AOAM531F900+YWTaoLwbZmsV/wPkMbT2E8On8NAIkLBBW1e4/GjDB40e
 6fdbWj0fdOLJY0ZIdycCEyTVjw==
X-Google-Smtp-Source: ABdhPJxFWxaL0pi4xFp6V/Sf9h9eUzm8q1OZgQs9odtTasF/DGrGUm2qXbyWk5huR63yPJv7P3EtIw==
X-Received: by 2002:a1c:bc06:: with SMTP id m6mr3863801wmf.18.1615889039799;
 Tue, 16 Mar 2021 03:03:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j4sm2486353wmo.10.2021.03.16.03.03.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 03:03:59 -0700 (PDT)
Date: Tue, 16 Mar 2021 11:03:57 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YFCCjWJbRdY0/D82@phenom.ffwll.local>
References: <20210312154622.1767865-1-tvrtko.ursulin@linux.intel.com>
 <20210312154622.1767865-7-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210312154622.1767865-7-tvrtko.ursulin@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [RFC 6/6] drm/i915: Allow configuring default
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

On Fri, Mar 12, 2021 at 03:46:22PM +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Module parameter is added (request_timeout_ms) to allow configuring the
> default request/fence expiry.
> 
> Default value is inherited from CONFIG_DRM_I915_REQUEST_TIMEOUT.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>

Yeah I think this makes sense for debugging and testing (e.g. in igt we
can crank down the timeout to make stuff fail real fast, could help with
runtime on some tests).

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Cheers, Daniel

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 8 +++++---
>  drivers/gpu/drm/i915/i915_params.c          | 5 +++++
>  drivers/gpu/drm/i915/i915_params.h          | 1 +
>  3 files changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 21c0176e27a0..1dae5e2514a9 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -866,7 +866,7 @@ static void __set_default_fence_expiry(struct i915_gem_context *ctx)
>  		return;
>  
>  	/* Default expiry for user fences. */
> -	ret = __set_watchdog(ctx, CONFIG_DRM_I915_REQUEST_TIMEOUT * 1000);
> +	ret = __set_watchdog(ctx, i915->params.request_timeout_ms * 1000);
>  	if (ret)
>  		drm_notice(&i915->drm,
>  			   "Failed to configure default fence expiry! (%d)",
> @@ -1442,13 +1442,15 @@ __set_watchdog(struct i915_gem_context *ctx, unsigned long timeout_us)
>  static int set_watchdog(struct i915_gem_context *ctx,
>  			struct drm_i915_gem_context_param *args)
>  {
> +	struct drm_i915_private *i915 = ctx->i915;
> +
>  	if (args->size)
>  		return -EINVAL;
>  
>  	/* Disallow disabling or configuring longer watchdog than default. */
> -	if (IS_ACTIVE(CONFIG_DRM_I915_REQUEST_TIMEOUT) &&
> +	if (i915->params.request_timeout_ms &&
>  	    (!args->value ||
> -	     args->value > CONFIG_DRM_I915_REQUEST_TIMEOUT * 1000))
> +	     args->value > i915->params.request_timeout_ms * 1000))
>  		return -EPERM;
>  
>  	return __set_watchdog(ctx, args->value);
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
