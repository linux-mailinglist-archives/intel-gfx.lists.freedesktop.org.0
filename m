Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC33393571
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 20:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4A7B6F49B;
	Thu, 27 May 2021 18:31:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA176F495
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 18:31:24 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id x7so786625wrt.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 11:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=aDxqQ9WiFH4xQVdAZTWGoERm5NM6kp6n2oMJTxk1IQc=;
 b=gezh5mb9Gv0lFKJNWuq6YloMvUSh8IItIkFVNshqdtjRoEBPz1dS+ifsbf+Bp3EQVJ
 gFKrl3Ceb3PKduYp/0aA+vtK1kmL06ii6JftitqdWcGGb6ohHTWpDZ8d/AfXrLwYbKmS
 QbmtOOblQYsC4wM5CYSA74PXyHdZWjILnJXIc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=aDxqQ9WiFH4xQVdAZTWGoERm5NM6kp6n2oMJTxk1IQc=;
 b=MVzIJZNCGT2ogR4Dxd8SLdNFSzLEC4XjXhrt63uN2FuGAyZ5AeBDXQrwxo+VsLhog9
 F4cR35f4DMrPO+gdsAaOO+U15/tN6vnknE84KigffddTWTOJhYTDKVWTsOUC2lGRRsd5
 mJK36DcHe4K7o9yFdOgj3xolVpwPPjlnvwcdWeGJ8gVUXrlKxN2LCUM9jknIioA4iqLs
 3YDAF6MhIwFtUsJPzO5SBmoXR3VBpVcDcVRxeBM1Ayji+bBOpuPe9uh5YmtvWjTLV4DD
 r7yY+qU2s5MD8wxcyNoa0eQh5OGDwRt46C2W9f2llphzC47CGfR2mMARAUHbqLvWidEf
 8vEg==
X-Gm-Message-State: AOAM5312cSNnu1h7+2W06YnSBUBRZO1bkqHlC9DGk1oKzNuZFywLHA9Q
 2wnNPMOgC0tYkMu+1IPruwiFzw==
X-Google-Smtp-Source: ABdhPJwHYqKWfeskHw2OIqBpB+zlshG/eBmxgisGdhsTASHM9vnRDjm4Z+rq7oOtSmv2tKKIR3jx+Q==
X-Received: by 2002:a5d:50c7:: with SMTP id f7mr4923573wrt.189.1622140282917; 
 Thu, 27 May 2021 11:31:22 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b13sm11558231wmj.40.2021.05.27.11.31.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 11:31:22 -0700 (PDT)
Date: Thu, 27 May 2021 20:31:20 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YK/leG45kvVHayN7@phenom.ffwll.local>
References: <20210527162650.1182544-1-jason@jlekstrand.net>
 <20210527162650.1182544-21-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210527162650.1182544-21-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 20/29] drm/i915/gem: Make an alignment check
 more sensible
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

On Thu, May 27, 2021 at 11:26:41AM -0500, Jason Ekstrand wrote:
> What we really want to check is that size of the engines array, i.e.
> args->size - sizeof(*user) is divisible by the element size, i.e.
> sizeof(*user->engines) because that's what's required for computing the
> array length right below the check.  However, we're currently not doing
> this and instead doing a compile-time check that sizeof(*user) is
> divisible by sizeof(*user->engines) and avoiding the subtraction.  As
> far as I can tell, the only reason for the more confusing pair of checks
> is to avoid a single subtraction of a constant.
> 
> The other thing the BUILD_BUG_ON might be trying to implicitly check is
> that offsetof(user->engines) == sizeof(*user) and we don't have any
> weird padding throwing us off.  However, that's not the check it's doing
> and it's not even a reliable way to do that check.
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>

Yeah a non-dense compiler should be able to figure this out, plus
set_engines isn't a hotpath.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 12a148ba421b6..cf7c281977a3e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1758,9 +1758,8 @@ set_engines(struct i915_gem_context *ctx,
>  		goto replace;
>  	}
>  
> -	BUILD_BUG_ON(!IS_ALIGNED(sizeof(*user), sizeof(*user->engines)));
>  	if (args->size < sizeof(*user) ||
> -	    !IS_ALIGNED(args->size, sizeof(*user->engines))) {
> +	    !IS_ALIGNED(args->size -  sizeof(*user), sizeof(*user->engines))) {
>  		drm_dbg(&i915->drm, "Invalid size for engine array: %d\n",
>  			args->size);
>  		return -EINVAL;
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
