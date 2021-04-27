Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D2836C1FA
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 11:42:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04D706E03F;
	Tue, 27 Apr 2021 09:42:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCEDC6E05F
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 09:42:48 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id h15so6511244wre.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 02:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KT2W66edZ69XQDnQT+0+2BMR6V7WFCRJFChom7qgih8=;
 b=iJO0/C4X762UDmwUljVo/ODgrUwNOCMe4KzyjAY99fDk/tQ/ORVD6fY10cLPA7S3Gw
 nLYELzO83z+7ilu3HcMsM8JCUfqCyykUeIdIZETStWYNDaGP5E+wbhSvvCKs3nMpTjMt
 QuH5TRFsE4FGMO/EwLOgeJoVSqGaU7KJgmFpc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KT2W66edZ69XQDnQT+0+2BMR6V7WFCRJFChom7qgih8=;
 b=hxosm2fCPeA3Z8b1I56uYt4iVvN5uD6ubfU2QtvvDha29XdpFzG51PyuY3Uj0vRfL7
 0GbYzG397j1obNrXNzYvmEBNrwWfpYdsWm1ciIlOgVg132Iw5iL5eNjXJ/pPGrbwJ1mS
 BvYw1v2nX1YWlTqpn/x0VPxPNvRN1OlIXESixANxxB/3KDJ6xz+QWvDH6LouR/b608/S
 JK5k3zXFra0wprF0GW9b2x1MLp1qTSQmaRqmSotTo0RAL7Din9J6OFhcBCGq++hXTcqt
 gbjdLhzp+IKFaUP2cE91CL3DyAXQOEyF0PAwApdVKEE+LwLc8XqDKtM30U23Qrc9+OA/
 qknQ==
X-Gm-Message-State: AOAM533MHBMIHulTVOK/lwopN8VO2f0ettbkN4YuMID2mW2jolRVx89i
 Qlq270Nwwo9YH4h+XblOPwKEfQ==
X-Google-Smtp-Source: ABdhPJzNPblunvLSqteTJhoumG+bBSPJeF4q82a0Z9RhXciHzQ4oSYQPu/Mmt/aB1H/g+7WslS6iDA==
X-Received: by 2002:a5d:628e:: with SMTP id k14mr28372063wru.150.1619516567696; 
 Tue, 27 Apr 2021 02:42:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y11sm941977wmi.41.2021.04.27.02.42.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Apr 2021 02:42:47 -0700 (PDT)
Date: Tue, 27 Apr 2021 11:42:45 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YIfclRQW+tg4cEqj@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-5-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210423223131.879208-5-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 04/21] drm/i915/gem: Return void from
 context_apply_all
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

On Fri, Apr 23, 2021 at 05:31:14PM -0500, Jason Ekstrand wrote:
> None of the callbacks we use with it return an error code anymore; they
> all return 0 unconditionally.
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>

Nice.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 26 +++++++--------------
>  1 file changed, 8 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 1091cc04a242a..8a77855123cec 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -718,32 +718,25 @@ __context_engines_await(const struct i915_gem_context *ctx,
>  	return engines;
>  }
>  
> -static int
> +static void
>  context_apply_all(struct i915_gem_context *ctx,
> -		  int (*fn)(struct intel_context *ce, void *data),
> +		  void (*fn)(struct intel_context *ce, void *data),
>  		  void *data)
>  {
>  	struct i915_gem_engines_iter it;
>  	struct i915_gem_engines *e;
>  	struct intel_context *ce;
> -	int err = 0;
>  
>  	e = __context_engines_await(ctx, NULL);
> -	for_each_gem_engine(ce, e, it) {
> -		err = fn(ce, data);
> -		if (err)
> -			break;
> -	}
> +	for_each_gem_engine(ce, e, it)
> +		fn(ce, data);
>  	i915_sw_fence_complete(&e->fence);
> -
> -	return err;
>  }
>  
> -static int __apply_ppgtt(struct intel_context *ce, void *vm)
> +static void __apply_ppgtt(struct intel_context *ce, void *vm)
>  {
>  	i915_vm_put(ce->vm);
>  	ce->vm = i915_vm_get(vm);
> -	return 0;
>  }
>  
>  static struct i915_address_space *
> @@ -783,10 +776,9 @@ static void __set_timeline(struct intel_timeline **dst,
>  		intel_timeline_put(old);
>  }
>  
> -static int __apply_timeline(struct intel_context *ce, void *timeline)
> +static void __apply_timeline(struct intel_context *ce, void *timeline)
>  {
>  	__set_timeline(&ce->timeline, timeline);
> -	return 0;
>  }
>  
>  static void __assign_timeline(struct i915_gem_context *ctx,
> @@ -1842,19 +1834,17 @@ set_persistence(struct i915_gem_context *ctx,
>  	return __context_set_persistence(ctx, args->value);
>  }
>  
> -static int __apply_priority(struct intel_context *ce, void *arg)
> +static void __apply_priority(struct intel_context *ce, void *arg)
>  {
>  	struct i915_gem_context *ctx = arg;
>  
>  	if (!intel_engine_has_timeslices(ce->engine))
> -		return 0;
> +		return;
>  
>  	if (ctx->sched.priority >= I915_PRIORITY_NORMAL)
>  		intel_context_set_use_semaphores(ce);
>  	else
>  		intel_context_clear_use_semaphores(ce);
> -
> -	return 0;
>  }
>  
>  static int set_priority(struct i915_gem_context *ctx,
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
