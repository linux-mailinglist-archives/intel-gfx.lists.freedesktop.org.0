Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BE63A12E0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 13:38:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E53189DAB;
	Wed,  9 Jun 2021 11:38:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 798A489DAB
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 11:38:27 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id o3so6729227wri.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 04:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=iXLOT4HpkRnXA3BScmSNSfBZBkgXlMLY+0JVUM9/+Ig=;
 b=QMshYTPnl2lc4MPP+3sedPi5250XoxuMBaq8gmiP3qXMHZBVi3xOd2UQ/o6R/HaywW
 SdrpUN/Q/aAcUkuiPFLscc1nK1NEP0uQQgyIL3aVponpmiwv0FswDaaD5bNmsN1oWSOA
 IHqBf/g+3Uip52VboBtspeYjXT6rZmGlEc30Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iXLOT4HpkRnXA3BScmSNSfBZBkgXlMLY+0JVUM9/+Ig=;
 b=Z1ny2rMouUCIDPTfKS83/YtwVzFK1/wmTFkzPmMH7c2HmWKDQOotOKl8kqfVSTl7q4
 xYvM0lDa7ZSkvDluY8WdkUAXKz4bRXxz4o4R5AkqJXHQG6IE5Wyy2ybUCW4/SwWvuHgr
 ABW6bHWSK2wiAiImjxjvtaayX18tuI53/8bOjB7c2AHyMA9uCf/0EAh2TMfjInQR7rux
 eTLLT22B9bi3BSkKx4LO+T7LJ8DigQzXWt3dmGicJ2sc/i8XjJgWCeC6FrB2rWGbPL3g
 HUftOBPcTzyAY5pYoM74V7caT7GKCKRuphVsBoWlRcFHQ4NI1py8ZgDBUuvRTfR8zMyC
 QpwQ==
X-Gm-Message-State: AOAM530XhHdvPyj3ZTepmNhqIRsNB9Zk3pFOabtrRyVDnpKqXkf6baSy
 UPBaj+lAKlNVJPPyBMbEnBWT7EQv/isoFQ==
X-Google-Smtp-Source: ABdhPJzSbzUOB7fTYE/m83FZ4Tj/2W0p2P5PAm8iPeuGXCOpfByRgHfnefYZIBjZPFb+Ju4CUeHCiQ==
X-Received: by 2002:a5d:64ec:: with SMTP id g12mr27955703wri.137.1623238706075; 
 Wed, 09 Jun 2021 04:38:26 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u2sm22939242wrn.38.2021.06.09.04.38.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 04:38:25 -0700 (PDT)
Date: Wed, 9 Jun 2021 13:38:23 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YMCoLxxWCYgXxE84@phenom.ffwll.local>
References: <20210609043613.102962-1-jason@jlekstrand.net>
 <20210609043613.102962-31-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210609043613.102962-31-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 30/31] drm/i915: Finalize contexts in
 GEM_CONTEXT_CREATE on version 13+
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

On Tue, Jun 08, 2021 at 11:36:12PM -0500, Jason Ekstrand wrote:
> All the proto-context stuff for context creation exists to allow older
> userspace drivers to set VMs and engine sets via SET_CONTEXT_PARAM.
> Drivers need to update to use CONTEXT_CREATE_EXT_* for this going
> forward.  Force the issue by blocking the old mechanism on any future
> hardware generations.
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>

With that static added here (same ofc holds for the other one 0day
spotted):

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

But also I think an ack from Jon Bloomfield here would be needed, plus Cc
Carl Zhang and Micheal Mrozek to get their acks too pls.

Also I'm assuming you've tested this with your igt changes (change the
condition to GFX_VER > 11 in a trybot run) and it all works?
-Daniel


> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 33 +++++++++++++++------
>  1 file changed, 24 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index d3c9c42dcae4d..5312142daa0c0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1994,9 +1994,22 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
>  			goto err_pc;
>  	}
>  
> -	ret = proto_context_register(ext_data.fpriv, ext_data.pc, &id);
> -	if (ret < 0)
> -		goto err_pc;
> +	if (GRAPHICS_VER(i915) > 12) {
> +		struct i915_gem_context *ctx;
> +
> +		ctx = i915_gem_create_context(i915, ext_data.pc);
> +		if (IS_ERR(ctx)) {
> +			ret = PTR_ERR(ctx);
> +			goto err_pc;
> +		}
> +
> +		proto_context_close(ext_data.pc);
> +		gem_context_register(ctx, ext_data.fpriv, id);
> +	} else {
> +		ret = proto_context_register(ext_data.fpriv, ext_data.pc, &id);
> +		if (ret < 0)
> +			goto err_pc;
> +	}
>  
>  	args->ctx_id = id;
>  	drm_dbg(&i915->drm, "HW context %d created\n", args->ctx_id);
> @@ -2179,15 +2192,17 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
>  	mutex_lock(&file_priv->proto_context_lock);
>  	ctx = __context_lookup(file_priv, args->ctx_id);
>  	if (!ctx) {
> -		/* FIXME: We should consider disallowing SET_CONTEXT_PARAM
> -		 * for most things on future platforms.  Clients should be
> -		 * using CONTEXT_CREATE_EXT_PARAM instead.
> -		 */
>  		pc = xa_load(&file_priv->proto_context_xa, args->ctx_id);
> -		if (pc)
> +		if (pc) {
> +			/* Contexts should be finalized inside
> +			 * GEM_CONTEXT_CREATE starting with graphics
> +			 * version 13.
> +			 */
> +			WARN_ON(GRAPHICS_VER(file_priv->dev_priv) > 12);
>  			ret = set_proto_ctx_param(file_priv, pc, args);
> -		else
> +		} else {
>  			ret = -ENOENT;
> +		}
>  	}
>  	mutex_unlock(&file_priv->proto_context_lock);
>  
> -- 
> 2.31.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
