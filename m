Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E42B036EEBC
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 19:19:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CC356F3FD;
	Thu, 29 Apr 2021 17:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B30B6F3FE
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 17:19:16 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id k14so17765664wrv.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 10:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rxagbRG1JgkcQC2Cqq0fFSrtFa7citKOxKlTLvnjLE0=;
 b=Cp2F/7UG+KFtYrzm+ZiyGpYINkhslMV7IJayaGjppfzFdL7CK3UfgP8dECNVKrn8wP
 767KqC5mLg0kWk8MiSAUqv/7miiO60oAHuiqTfl2c7fzLwUeZ/AHs4Ujxaq+Cgvc7jW5
 eMvorSIotNomyTy65jRBxZhFVX3/vlgpLef3I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rxagbRG1JgkcQC2Cqq0fFSrtFa7citKOxKlTLvnjLE0=;
 b=bbFsfQ6Cr9CbdZexL6+LVh01SnApr1eJzN5Sn3oqOIPr2Xogetw8JhVuGdNsV1Z7Bd
 ko5Pgrr8C5LLV2UsG86Ya3cQPwlS5C/ouHQse+3nzaXZVS9gvSSu8CWMSEk7dbM/duu1
 xZd7Y0DOCsS85bcehW/IeHNSAX/w0pyK8GDrWf+uNnwvmQY8AohGXXBUezfHUb0/dy9p
 4cOzaVP74NSlSS8OpFY5YOVdv3c+Kni+4Nk/78ofTIeX3fkUXk4LX1khL0jTGmq60rh8
 IdXR+M4GnPWNCQtb91SIqNBGReeZrOOkaFXNu9zBXxqIAu3MuOQnY0lbiamO8zDvA8+Q
 Nr9g==
X-Gm-Message-State: AOAM530BiT6xZa8wCRHNNALKylgEclsb9D2O+8sHFk7NjXRAN4QwyijJ
 LSvFJ9nkboMnKD7Oc1KFYnxeyw==
X-Google-Smtp-Source: ABdhPJwC3sXBoXf0OmNwke0ns4Y6r2s0Xs4pxEQIFPkwrqGPY0/HexkxoJR9MgdEHyfDR+Ss1JGA+Q==
X-Received: by 2002:a05:6000:8b:: with SMTP id
 m11mr991892wrx.224.1619716755237; 
 Thu, 29 Apr 2021 10:19:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n2sm845022wmb.32.2021.04.29.10.19.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Apr 2021 10:19:14 -0700 (PDT)
Date: Thu, 29 Apr 2021 19:19:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YIrqkMRz04Ng5cc4@phenom.ffwll.local>
References: <20210423223131.879208-1-jason@jlekstrand.net>
 <20210423223131.879208-21-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210423223131.879208-21-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 20/21] i915/gem/selftests: Assign the VM at
 context creation in igt_shared_ctx_exec
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

On Fri, Apr 23, 2021 at 05:31:30PM -0500, Jason Ekstrand wrote:
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>

Maybe spend a few words on explaining why in these two selftest patches
instead of letting me guess :-)
-Daniel

> ---
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> index 76029d7143f6c..76dd5cfe11b3c 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_context.c
> @@ -813,16 +813,12 @@ static int igt_shared_ctx_exec(void *arg)
>  			struct i915_gem_context *ctx;
>  			struct intel_context *ce;
>  
> -			ctx = kernel_context(i915, NULL);
> +			ctx = kernel_context(i915, ctx_vm(parent));
>  			if (IS_ERR(ctx)) {
>  				err = PTR_ERR(ctx);
>  				goto out_test;
>  			}
>  
> -			mutex_lock(&ctx->mutex);
> -			__assign_ppgtt(ctx, ctx_vm(parent));
> -			mutex_unlock(&ctx->mutex);
> -
>  			ce = i915_gem_context_get_engine(ctx, engine->legacy_idx);
>  			GEM_BUG_ON(IS_ERR(ce));
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
