Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 358FE3C5E5D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 16:30:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DF9F89C59;
	Mon, 12 Jul 2021 14:30:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5DF689C59
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 14:30:08 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 g8-20020a1c9d080000b02901f13dd1672aso102053wme.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 07:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=U5FC4uEOVeCgfw9G9+Mil/6xk11LgKqumjzzkqV6EcQ=;
 b=eucSbXLiLXym7C732rtWiQeoa6jyLto21wkA6D38coT+vhZVQ/FHgFc4HZkIvasFWF
 HW4K2ngw2hXrz1JeIld4SALUGnSCb9IwK/BA2d6I+mIeViHGkdk7BK4ZS+WVdTuUXsvs
 LugcZDtjFK85JHbuPH6jHE/1sLdTWgvTr9v6Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=U5FC4uEOVeCgfw9G9+Mil/6xk11LgKqumjzzkqV6EcQ=;
 b=Q/bHRrOOSgrJQa8iDhVvzvOUWVNYHb4exUb1JHi8Px1N6BTjc09dz0GIuuIOV2DdVg
 CHVdEON74qNJsjFg+YMGcW1E/3yenEJlcdhqVYs/XXRbryds9ZH78P/MlOVm6o63Un49
 7rHWk8oDDZnkW7ygcpVcX5nUJT8u+GbcOUD1NW1TV0mwr92YLSLhYqazaFLKdhTkMqQa
 hW7t95oWMjRfBOfKPHOpGJY5CCJT9HIVNZo9yVHEZGccPGb4cgCzfQCF/I65YSb9JzrZ
 gsf/phLqwMrTs/GLKZwDzdMVJZHKulmNdGMWsusWUIO3ZiSwgDJdGU6xng27fKxYzbCr
 6dUQ==
X-Gm-Message-State: AOAM531G5MFEaj6WPn1B5j6fYIF3r2+4cVTD/Q8FUH9PveBDBBwRaRLg
 WlbPdrbPp2YishajWtxrNIfMPQ==
X-Google-Smtp-Source: ABdhPJxJhIgyCB9Qh6AgwgiVcvQalU3aaChJsIH7a2JlJRzOMBTPw+3lM0ztijrutZrUIw6mCIsLuw==
X-Received: by 2002:a1c:4e18:: with SMTP id g24mr8723899wmh.175.1626100207307; 
 Mon, 12 Jul 2021 07:30:07 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t11sm14547418wrz.7.2021.07.12.07.30.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 07:30:06 -0700 (PDT)
Date: Mon, 12 Jul 2021 16:30:04 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YOxR7Dzlxzs8jCBa@phenom.ffwll.local>
References: <20210710212447.785288-1-jason@jlekstrand.net>
 <20210710212447.785288-2-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210710212447.785288-2-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Don't allow setting
 I915_CONTEXT_PARAM_VM twice
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jul 10, 2021 at 04:24:46PM -0500, Jason Ekstrand wrote:
> Allowing setting it multiple times brings no real utility to the API, no
> userspace relies on it, and it does make i915 a tiny bit more
> complicated.  Let's disallow it for now unless someone comes up with a
> compelling reason to support it.

Maybe mention this is for symmetry with other proto ctx set_param
operations, like set_engines.

> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 7d6f52d8a8012..5853737cc79f3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -319,7 +319,6 @@ static int set_proto_ctx_vm(struct drm_i915_file_private *fpriv,
>  			    const struct drm_i915_gem_context_param *args)
>  {
>  	struct drm_i915_private *i915 = fpriv->dev_priv;
> -	struct i915_address_space *vm;
>  
>  	if (args->size)
>  		return -EINVAL;
> @@ -327,17 +326,16 @@ static int set_proto_ctx_vm(struct drm_i915_file_private *fpriv,
>  	if (!HAS_FULL_PPGTT(i915))
>  		return -ENODEV;
>  
> +	if (pc->vm)
> +		return -EINVAL;
> +
>  	if (upper_32_bits(args->value))
>  		return -ENOENT;
>  
> -	vm = i915_gem_vm_lookup(fpriv, args->value);
> -	if (!vm)
> +	pc->vm = i915_gem_vm_lookup(fpriv, args->value);
> +	if (!pc->vm)
>  		return -ENOENT;
>  
> -	if (pc->vm)
> -		i915_vm_put(pc->vm);
> -	pc->vm = vm;
> -
>  	return 0;
>  }
>  
> -- 
> 2.31.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
