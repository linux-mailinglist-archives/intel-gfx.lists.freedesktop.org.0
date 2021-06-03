Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA81B399C77
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 10:24:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53D056F42C;
	Thu,  3 Jun 2021 08:24:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com
 [IPv6:2a00:1450:4864:20::634])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A55D6F42C
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 08:24:25 +0000 (UTC)
Received: by mail-ej1-x634.google.com with SMTP id ci15so7921003ejc.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 01:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=o5kw+//VKIV37NgUU8wnmMDxCrt1xJBfaT2OcQb5jmY=;
 b=HwePD0yuklUKjr79BnSZIco6VX+WGTu+HoObY1IfqheNz9RFW3He0JEzFE3xSogSMH
 c5ZLoP6FaKZOCrVU0u0JYWiuzpe5sIRL/Udyunk1j1jKHDxvWr+FO/s2rURfr0HAGO89
 0VKv2sc1F1D/mzb0AgmjlL/C7qS0K3A2HD+cg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=o5kw+//VKIV37NgUU8wnmMDxCrt1xJBfaT2OcQb5jmY=;
 b=nI21FTpLp5s9qjS1JxhKiJd+160cxMZ7NVirSKRJxM+h4euBMQ2WmWWJ+7d9tSb6zG
 SeDOqBYNGSKzk5P9ZBERkNKlkesDdsdPoMDvp1sGE/6AWZAEET/TELON+wPzzL8GPSim
 sZxulgxXILMWeNH8pD0yBRDUmG3iWxN6XFB0oayeUi7NJyx5G7oTVirDqa/OjbTQ+E8B
 I2r2rqcChCLqOWfUob1Yfwy2XyIAuSBQT28OE1HZ4GdMUuEMX4vogwInWao2hwPPWnlh
 GlyfBFQPFVO8/gRW4HrdeMItiAo1QiRh5PGP9M7CEddxtzRQj8sToreraJKZk12H4Day
 WAJQ==
X-Gm-Message-State: AOAM5324MFiM6gwBw9eeDRQmSu+VSPmEK1wmlV+0s3ddp+5arhKaprcw
 JoukfxY3oCiCfjKc4FPFd4SHGQ==
X-Google-Smtp-Source: ABdhPJyoowUPQmDFu4llPYKbjkkVb3iq/NgCwmOUL6l4PJA5WX11nE+fiyjr4bx7EwbTnwVE7ck8qw==
X-Received: by 2002:a17:906:489:: with SMTP id
 f9mr19691933eja.508.1622708664167; 
 Thu, 03 Jun 2021 01:24:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r12sm1317922edv.82.2021.06.03.01.24.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Jun 2021 01:24:23 -0700 (PDT)
Date: Thu, 3 Jun 2021 10:24:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YLiRtZUuloF0qy0b@phenom.ffwll.local>
References: <20210602164149.391653-1-jason@jlekstrand.net>
 <20210602164149.391653-5-jason@jlekstrand.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210602164149.391653-5-jason@jlekstrand.net>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 4/5] Revert "drm/i915: Propagate errors on
 awaiting already signaled fences"
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
 stable@vger.kernel.org, Jason Ekstrand <jason.ekstrand@intel.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 02, 2021 at 11:41:48AM -0500, Jason Ekstrand wrote:
> This reverts commit 9e31c1fe45d555a948ff66f1f0e3fe1f83ca63f7.  Ever
> since that commit, we've been having issues where a hang in one client
> can propagate to another.  In particular, a hang in an app can propagate
> to the X server which causes the whole desktop to lock up.

I think we need a note to backporters here:

"For backporters: Please note that you _must_ have a backport of
https://lore.kernel.org/dri-devel/20210602164149.391653-2-jason@jlekstrand.net/
for otherwise backporting just this patch opens up a security bug."
 
Or something like that.
-Daniel

> Signed-off-by: Jason Ekstrand <jason.ekstrand@intel.com>
> Reported-by: Marcin Slusarz <marcin.slusarz@intel.com>
> Cc: <stable@vger.kernel.org> # v5.6+
> Cc: Jason Ekstrand <jason.ekstrand@intel.com>
> Cc: Marcin Slusarz <marcin.slusarz@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3080
> Fixes: 9e31c1fe45d5 ("drm/i915: Propagate errors on awaiting already signaled fences")
> Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_request.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 970d8f4986bbe..b796197c07722 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1426,10 +1426,8 @@ i915_request_await_execution(struct i915_request *rq,
>  
>  	do {
>  		fence = *child++;
> -		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
> -			i915_sw_fence_set_error_once(&rq->submit, fence->error);
> +		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
>  			continue;
> -		}
>  
>  		if (fence->context == rq->fence.context)
>  			continue;
> @@ -1527,10 +1525,8 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
>  
>  	do {
>  		fence = *child++;
> -		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
> -			i915_sw_fence_set_error_once(&rq->submit, fence->error);
> +		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
>  			continue;
> -		}
>  
>  		/*
>  		 * Requests on the same timeline are explicitly ordered, along
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
