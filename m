Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FAD36D58F
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 12:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE626EB0D;
	Wed, 28 Apr 2021 10:16:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 367BD6EB0C
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 10:16:07 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 f15-20020a05600c4e8fb029013f5599b8a9so6816206wmq.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 03:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uOe+N+c5K6O3uq5CbTn5rAb8QuLRjU8n5kOdij1gBug=;
 b=M4HeYxuM89a7YgEKBWnwMZWFLL8q1Ba0yoLDdeEQ7Q46HtvGgBFY/kQUaKWAuQ42bk
 fU4B8kSBScZvy24gFLNOt6kyePI5iYNI9YDgDLbPuVM6nWemnUwaHaLw76YsbpdsKtoB
 x34jzyTi1YhL+ZEMlS0T4hTbu7qSPkTa5L/Lg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uOe+N+c5K6O3uq5CbTn5rAb8QuLRjU8n5kOdij1gBug=;
 b=ko3nakj5IV3li5sdvKqpFZma4T1a0NeU3QFuNIkOD4Z8ddfylhGbjXRX5srpRyjDZc
 EGex0i9QmmTdhKnclgPzD8fC7EzW6Tok6bVXRwsFLzHH1St2Y3Ka5L1fiEborXKXMkDo
 NGLP883GhmQfcgfR3rzSNM5sHREa3m6NKBzBVXj62vEqgmvvh6BUWURyagh77HuHjhB8
 47cFtaN5Yabx+AADiMq9ADHCapnZhCTau1GK8va7pDfLqzEuXgORg+PBkfqINkfT181O
 5298rBR1yPlFgRhP4lFtGlaCbDRhzxdK13dX2vGIRbCRFV9873/wTladKjABDz+N94Rw
 +tYQ==
X-Gm-Message-State: AOAM532YLMUiKj2RA53OjjmRbLd+xu9yMqkr4dzklgr3fji55PQOt1Pu
 EqQPeeU6euOTbovJw6Hs8zoVMg==
X-Google-Smtp-Source: ABdhPJze9tAmYWkN9PpjByBDUhstnKFzTfm01HJwTR4FBIbRiPMNOLxTx49dRjUhYC8OI2AZIj5klQ==
X-Received: by 2002:a7b:c4da:: with SMTP id g26mr5701526wmk.43.1619604965986; 
 Wed, 28 Apr 2021 03:16:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h10sm7722715wrt.40.2021.04.28.03.16.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Apr 2021 03:16:05 -0700 (PDT)
Date: Wed, 28 Apr 2021 12:16:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YIk14zVfa8Mw4rUF@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-10-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210423223131.879208-10-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 09/21] drm/i915/gem: Disallow creating
 contexts with too many engines
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

On Fri, Apr 23, 2021 at 05:31:19PM -0500, Jason Ekstrand wrote:
> There's no sense in allowing userspace to create more engines than it
> can possibly access via execbuf.
> 
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 5f8d0faf783aa..ecb3bf5369857 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -1640,11 +1640,10 @@ set_engines(struct i915_gem_context *ctx,
>  		return -EINVAL;
>  	}
>  
> -	/*
> -	 * Note that I915_EXEC_RING_MASK limits execbuf to only using the
> -	 * first 64 engines defined here.
> -	 */
>  	num_engines = (args->size - sizeof(*user)) / sizeof(*user->engines);

Maybe add a comment like /* RING_MASK has not shift, so can be used
directly here */ since I had to check that :-)

Same story about igt testcases needed, just to be sure.

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> +	if (num_engines > I915_EXEC_RING_MASK + 1)
> +		return -EINVAL;
> +
>  	set.engines = alloc_engines(num_engines);
>  	if (!set.engines)
>  		return -ENOMEM;
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
