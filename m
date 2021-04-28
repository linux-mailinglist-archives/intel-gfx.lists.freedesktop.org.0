Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E22F636D9AA
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 16:37:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D37D46E0EB;
	Wed, 28 Apr 2021 14:37:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA0936E0EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 14:37:08 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 i21-20020a05600c3555b029012eae2af5d4so9392746wmq.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 07:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vpkQVSWK2DWvopANTqJRlJwtVO8vUYwoQRHSo0nwyFU=;
 b=a+KtKd0X/Q9iGOcFGjt2IOhHY2+7+Jobxn7nP5cIogAXp5sZWwB+M6wokbtTKcFR8r
 gyojJCqJwEtalpuQoQvdiRjoWbi7UGHhISAm1KUs7kOnuz1rD0fpaWtpQuUVCELcfn7s
 c9d73M2Cnmu51ALlS33D5uzfPJLCMi56dJ/iw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vpkQVSWK2DWvopANTqJRlJwtVO8vUYwoQRHSo0nwyFU=;
 b=ZZrMOwDfp+cHM4NdveSwktwT6LQNmADj/Bfi5lc+7RgyZ6v9EIfpFxEunhKUB4SSK9
 GXtAglUMnsNBXs20jdJUAW3dVp3tgTJjta2RZMdjEZtX/aSmop9NXZ8cUw6ZiGCZpfWp
 7h+cTeTAXjQXy1eB0BiSuhjKyt10erVqXMKMLOS000DN2q94OVU5S4kM6cKMqx4v6sAh
 YkOImnW0PWTru9pQlMAPM18is7KaHG9oo4BCyuUmTCCad/qLJwDY/XeNvxJDjgG9PCmy
 bj5V2MNR10mFMgeYKDKIV5MfsL9lZ4haOLPqjLW8wwfUASEnSZKIzDGjqLCnWY/4PyJR
 JEZA==
X-Gm-Message-State: AOAM533v7PinBtVsNVrNBVwII2r1jygQtWU5gu0RPUEh25lKMOK2Ztob
 gvS1Soff5VHOStk0j4vYVPAZjEcfiEmSFw==
X-Google-Smtp-Source: ABdhPJzW/xYPrH7XD6davZYu8ZSHZiYldECgq5Vis0Pt+JGk7BS6QuE5XmZmPs7J5XAwZp2t0FrCEw==
X-Received: by 2002:a1c:2985:: with SMTP id
 p127mr31879077wmp.165.1619620627603; 
 Wed, 28 Apr 2021 07:37:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id c77sm3963776wme.37.2021.04.28.07.37.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Apr 2021 07:37:07 -0700 (PDT)
Date: Wed, 28 Apr 2021 16:37:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YIlzEejLztKalbxN@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-13-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210423223131.879208-13-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 12/21] drm/i915/gem: Add a separate
 validate_priority helper
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

On Fri, Apr 23, 2021 at 05:31:22PM -0500, Jason Ekstrand wrote:

Maybe explain that you pull this out since with the proto context there
will be two paths to set this, one for proto context, the other for
context already finalized and executing patches?

With that: Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 42 +++++++++++++--------
>  1 file changed, 27 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 941fbf78267b4..e5efd22c89ba2 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -169,6 +169,28 @@ lookup_user_engine(struct i915_gem_context *ctx,
>  	return i915_gem_context_get_engine(ctx, idx);
>  }
>  
> +static int validate_priority(struct drm_i915_private *i915,
> +			     const struct drm_i915_gem_context_param *args)
> +{
> +	s64 priority = args->value;
> +
> +	if (args->size)
> +		return -EINVAL;
> +
> +	if (!(i915->caps.scheduler & I915_SCHEDULER_CAP_PRIORITY))
> +		return -ENODEV;
> +
> +	if (priority > I915_CONTEXT_MAX_USER_PRIORITY ||
> +	    priority < I915_CONTEXT_MIN_USER_PRIORITY)
> +		return -EINVAL;
> +
> +	if (priority > I915_CONTEXT_DEFAULT_PRIORITY &&
> +	    !capable(CAP_SYS_NICE))
> +		return -EPERM;
> +
> +	return 0;
> +}
> +
>  static struct i915_address_space *
>  context_get_vm_rcu(struct i915_gem_context *ctx)
>  {
> @@ -1744,23 +1766,13 @@ static void __apply_priority(struct intel_context *ce, void *arg)
>  static int set_priority(struct i915_gem_context *ctx,
>  			const struct drm_i915_gem_context_param *args)
>  {
> -	s64 priority = args->value;
> -
> -	if (args->size)
> -		return -EINVAL;
> -
> -	if (!(ctx->i915->caps.scheduler & I915_SCHEDULER_CAP_PRIORITY))
> -		return -ENODEV;
> -
> -	if (priority > I915_CONTEXT_MAX_USER_PRIORITY ||
> -	    priority < I915_CONTEXT_MIN_USER_PRIORITY)
> -		return -EINVAL;
> +	int err;
>  
> -	if (priority > I915_CONTEXT_DEFAULT_PRIORITY &&
> -	    !capable(CAP_SYS_NICE))
> -		return -EPERM;
> +	err = validate_priority(ctx->i915, args);
> +	if (err)
> +		return err;
>  
> -	ctx->sched.priority = priority;
> +	ctx->sched.priority = args->value;
>  	context_apply_all(ctx, __apply_priority, ctx);
>  
>  	return 0;
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
