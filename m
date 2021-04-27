Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F291936C239
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 11:58:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20CDF6E935;
	Tue, 27 Apr 2021 09:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A621F6E932
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 09:58:24 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id n2so5654330wrm.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 02:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XwXY8n/czaUq1OHTjHbFEF5ZZk0Q0pDoTELmzQRdAsw=;
 b=jtX+lEY3jIRHxAItF898AMHdWdotkWBwgc73c1CUn1+dSxtAQ9bIRjCSspFZUCSeHc
 1/yi5Qj8X+KaPCwsKkkWn83onNhxF9vWvWMxIIdSoetxW5vDh3sNZTQnoBCk8u8xbAni
 mdrfg3ymvRPdLKt6IC2FgWFQ6OKsAiKLcUB24=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XwXY8n/czaUq1OHTjHbFEF5ZZk0Q0pDoTELmzQRdAsw=;
 b=TJtLwuMLknhN8pCC9dKTua4PS6fat0YQtOY4gxb+SpyPEaIJ8O/KrwPkGHAbhjfdJd
 YG0VlrrNaVqTF3134SanGafqEc6dx+QpdP7sYD6N303GL878oZxGypiv7PpYXCscrcG9
 jIKLCCRGDiyr50qgujrpzXlCJJ0a9/xa8cufjQg0GKEK2zbTEy7FFTuYk/kdsbfulEDQ
 Z6ALYt1PjEPMyjupC+BGYKlogISNhp2IiQ+ApwVUEegVRpQIM0S9MQ5I5LlxXPorDeEv
 6L/RT0MzZ3ayCMVEYWperGHvJW+2EAabYw59s8MXN+HuG3T9n0HoYTDovWdGfsVx3w2L
 zxtg==
X-Gm-Message-State: AOAM533P20OTbfVKY22SNVjaJjx41SbqH7rrL4g33I0y3kEYH9Vm5BCJ
 mBa8O2b23YGiTjjGhIw5WlTw3g==
X-Google-Smtp-Source: ABdhPJwjQz76ax3yUhmcN9Y8y1XprHOjMqkF0jGxJlSel6Z6DXa4lmJnKkk2mZUbjMcVmtfhjokU+Q==
X-Received: by 2002:a5d:4845:: with SMTP id n5mr8466203wrs.290.1619517503410; 
 Tue, 27 Apr 2021 02:58:23 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v13sm1054124wrr.5.2021.04.27.02.58.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Apr 2021 02:58:22 -0700 (PDT)
Date: Tue, 27 Apr 2021 11:58:20 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YIfgPG+ySbH4hUH6@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-8-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210423223131.879208-8-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 07/21] drm/i915: Drop getparam support for
 I915_CONTEXT_PARAM_ENGINES
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

On Fri, Apr 23, 2021 at 05:31:17PM -0500, Jason Ekstrand wrote:
> This has never been used by any userspace except IGT and provides no
> real functionality beyond parroting back parameters userspace passed in
> as part of context creation or via setparam.  If the context is in
> legacy mode (where you use I915_EXEC_RENDER and friends), it returns
> success with zero data so it's not useful for discovering what engines
> are in the context.  It's also not a replacement for the recently
> removed I915_CONTEXT_CLONE_ENGINES because it doesn't return any of the
> balancing or bonding information.
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 77 +--------------------
>  1 file changed, 1 insertion(+), 76 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index a72c9b256723b..e8179918fa306 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1725,78 +1725,6 @@ set_engines(struct i915_gem_context *ctx,
>  	return 0;
>  }
>  
> -static int
> -get_engines(struct i915_gem_context *ctx,
> -	    struct drm_i915_gem_context_param *args)
> -{
> -	struct i915_context_param_engines __user *user;
> -	struct i915_gem_engines *e;
> -	size_t n, count, size;
> -	bool user_engines;
> -	int err = 0;
> -
> -	e = __context_engines_await(ctx, &user_engines);
> -	if (!e)
> -		return -ENOENT;
> -
> -	if (!user_engines) {
> -		i915_sw_fence_complete(&e->fence);
> -		args->size = 0;
> -		return 0;
> -	}
> -
> -	count = e->num_engines;
> -
> -	/* Be paranoid in case we have an impedance mismatch */
> -	if (!check_struct_size(user, engines, count, &size)) {
> -		err = -EINVAL;
> -		goto err_free;
> -	}
> -	if (overflows_type(size, args->size)) {
> -		err = -EINVAL;
> -		goto err_free;
> -	}
> -
> -	if (!args->size) {
> -		args->size = size;
> -		goto err_free;
> -	}
> -
> -	if (args->size < size) {
> -		err = -EINVAL;
> -		goto err_free;
> -	}
> -
> -	user = u64_to_user_ptr(args->value);
> -	if (put_user(0, &user->extensions)) {
> -		err = -EFAULT;
> -		goto err_free;
> -	}
> -
> -	for (n = 0; n < count; n++) {
> -		struct i915_engine_class_instance ci = {
> -			.engine_class = I915_ENGINE_CLASS_INVALID,
> -			.engine_instance = I915_ENGINE_CLASS_INVALID_NONE,
> -		};
> -
> -		if (e->engines[n]) {
> -			ci.engine_class = e->engines[n]->engine->uabi_class;
> -			ci.engine_instance = e->engines[n]->engine->uabi_instance;
> -		}
> -
> -		if (copy_to_user(&user->engines[n], &ci, sizeof(ci))) {
> -			err = -EFAULT;
> -			goto err_free;
> -		}
> -	}
> -
> -	args->size = size;
> -
> -err_free:
> -	i915_sw_fence_complete(&e->fence);
> -	return err;
> -}
> -
>  static int
>  set_persistence(struct i915_gem_context *ctx,
>  		const struct drm_i915_gem_context_param *args)
> @@ -2127,10 +2055,6 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
>  		ret = get_ppgtt(file_priv, ctx, args);
>  		break;
>  
> -	case I915_CONTEXT_PARAM_ENGINES:
> -		ret = get_engines(ctx, args);
> -		break;
> -
>  	case I915_CONTEXT_PARAM_PERSISTENCE:
>  		args->size = 0;
>  		args->value = i915_gem_context_is_persistent(ctx);
> @@ -2138,6 +2062,7 @@ int i915_gem_context_getparam_ioctl(struct drm_device *dev, void *data,
>  
>  	case I915_CONTEXT_PARAM_NO_ZEROMAP:
>  	case I915_CONTEXT_PARAM_BAN_PERIOD:
> +	case I915_CONTEXT_PARAM_ENGINES:
>  	case I915_CONTEXT_PARAM_RINGSIZE:

I like how this list keeps growing. Same thing as usual about "pls check
igt coverage".

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

>  	default:
>  		ret = -EINVAL;
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
