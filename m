Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 798223E4A1E
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 18:40:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BB0F89BBD;
	Mon,  9 Aug 2021 16:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79E0F89BBD
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Aug 2021 16:39:56 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id f5so6493969wrm.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 09:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8faB0MU8Ihpl1PKr54RPKnhlyzucSb3b0BfELJ1JB8s=;
 b=aIoemLbz1txnOkLKtxgbQsIZspzNEy7LUpIdD9AjVAKpQNEBRiduuGeuviY4+RZe7t
 KuorGrPw8eOcoOj0IdY/9eVg5Ozw0S7B9Jpk0uNOBOby1auRcrWHIIOb7qW60D/Mx18o
 Ddbl+AG786ilmVNrF4dzFqyPwvhULbuzdwNmw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8faB0MU8Ihpl1PKr54RPKnhlyzucSb3b0BfELJ1JB8s=;
 b=HWH4JGOhSeRhShuuYUd8B7C9+wbIp/2PvsHDF12kx65sB71En4HFjb73bllDJ59djt
 lpLEMramDnoRcInvU75XPWttiYVleEQk206sz5UpsASqZRHYjFg5gVBqwyknBseaY7Zy
 REZMCNhpbVYyuuG7ripXJ/YgNQyWJgv0k5YyJ+S0RYzASlfyByWKgdOTicQQDHyOx925
 ZzgYWGbJOxveH/PNaOq2VQepU0otaxyV5Rz5eVKQhICRLDe7+9sH+l4YDUXB2+r+5JJq
 SC4WEs5Ju7ejO8fshmrqMdqJb7WdYhoy2LYe8qfCfE3nw/d2vuKyDiu+vpF2GiGN8Rca
 hGqA==
X-Gm-Message-State: AOAM532+QycgtKw/MEdEf1qkSOmi7lHhkvzHmEpijNKBZa346dWeLJdh
 dD+fD8MHq9fHPZu9S68qhyvw6Q==
X-Google-Smtp-Source: ABdhPJxyGrMXvCaHCzqGxEuGHkCMHVzDR0SXkirCSFiD+ZcINLXd3EaxDJQeFZw/R9eGSGio3DxPzQ==
X-Received: by 2002:adf:ef4b:: with SMTP id c11mr25792115wrp.35.1628527195035; 
 Mon, 09 Aug 2021 09:39:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o24sm9749wmm.37.2021.08.09.09.39.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 09:39:54 -0700 (PDT)
Date: Mon, 9 Aug 2021 18:39:52 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <YRFaWKbqSvQ7LD/s@phenom.ffwll.local>
References: <20210803222943.27686-1-matthew.brost@intel.com>
 <20210803222943.27686-40-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210803222943.27686-40-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 39/46] drm/i915: Force parallel contexts to
 use copy engine for reloc
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 03, 2021 at 03:29:36PM -0700, Matthew Brost wrote:
> Submitting to a subset of hardware contexts is not allowed, so use the
> copy engine for GPU relocations when using a parallel context.
> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Luckily I just pushed the patches to delete all this, so you can too.
-Daniel

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index b224b28530d1..b6143973ac67 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1386,7 +1386,8 @@ static int __reloc_gpu_alloc(struct i915_execbuffer *eb,
>  	if (err)
>  		goto err_unmap;
>  
> -	if (engine == eb->context->engine) {
> +	if (engine == eb->context->engine &&
> +	    !intel_context_is_parallel(eb->context)) {
>  		rq = i915_request_create(eb->context);
>  	} else {
>  		struct intel_context *ce = eb->reloc_context;
> @@ -1483,7 +1484,8 @@ static u32 *reloc_gpu(struct i915_execbuffer *eb,
>  		if (eb_use_cmdparser(eb))
>  			return ERR_PTR(-EWOULDBLOCK);
>  
> -		if (!reloc_can_use_engine(engine)) {
> +		if (!reloc_can_use_engine(engine) ||
> +		    intel_context_is_parallel(eb->context)) {
>  			engine = engine->gt->engine_class[COPY_ENGINE_CLASS][0];
>  			if (!engine)
>  				return ERR_PTR(-ENODEV);
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
