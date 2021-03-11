Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A21883378A6
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:01:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5C556EE33;
	Thu, 11 Mar 2021 16:01:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 225FA6EE33
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:01:50 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id u16so2503789wrt.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 08:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6PUsVpGph36284eeRK5/psG4ebBX4nn/izAO0rHcc4U=;
 b=hpPgHTWBaVyNOFFTSWYVZMjf19TcHlvdRyjSTRmh0MFiHhAGvJtB+ZoseD7Vfi3D2p
 oeA9vNGnyvVQJCbuxzp3WK0CgOFDuK76TWwKtFOKxD0paGbMlzh6XLhEj2aI7w7jMN1L
 gwzQ5NYhtr9ttUbUI3gRxnYFXMRfh/fXAvtMA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6PUsVpGph36284eeRK5/psG4ebBX4nn/izAO0rHcc4U=;
 b=NopoQOjlvkEOrvFBKeW2xYSZ/nb13wQbhApI2TV6HWj40duzpRWIOy2TQUOj+Wd2NY
 UbdFAPARP+WdCCdgop1g0kIDx2aM2V33g8ST29eAFOTr9KIaxRgbRWbVw561WOTNxOTT
 LU67Kcqy3ADNVkpKzBGCY4dRtcckDLtTabo8BK0hzu2a9kIqDiVZOvtpLVumU9/sc3qT
 psPv9A11xxehsDrV4OJoqaCJqtx1FbvSkmMwlZ7DyM69RjgCulUBDIRRZTD8LE3+4y9L
 Tr1xrk4kLwiOdC1PptplMEi01T//NYqr6IrH5iCJF9kUfdnVHgkNlhpMYicczgi/O5JG
 P+8A==
X-Gm-Message-State: AOAM53072KMQYY0XpxEah5pvPXm8eS/W5J1c+A4Avlomwl2Tsf6ZUJ2K
 ZeI2wE/R8DPLo0mn7y80farVEA==
X-Google-Smtp-Source: ABdhPJzhXdJi5PgNzvG48cxc6tOHXnRSOX3KF1zUl83bpJcKnXMggcaYT5VRZzd9/qfDlM+cAa2Wew==
X-Received: by 2002:adf:d0c9:: with SMTP id z9mr9775543wrh.396.1615478508855; 
 Thu, 11 Mar 2021 08:01:48 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id l4sm4448134wrt.60.2021.03.11.08.01.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 08:01:48 -0800 (PST)
Date: Thu, 11 Mar 2021 17:01:46 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YEo+6uvS7d0hh6nz@phenom.ffwll.local>
References: <20210305170546.56472-1-jason.ekstrand@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305170546.56472-1-jason.ekstrand@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915: Propagate errors on
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
Cc: Jason Ekstrand <jason.ekstrand@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 05, 2021 at 11:05:46AM -0600, Jason Ekstrand wrote:
> This reverts commit 9e31c1fe45d555a948ff66f1f0e3fe1f83ca63f7.  Ever
> since that commit, we've been having issues where a hang in one client
> can propagate to another.  In particular, a hang in an app can propagate
> to the X server which causes the whole desktop to lock up.
> 
> Signed-off-by: Jason Ekstrand <jason.ekstrand@intel.com>
> Reported-by: Marcin Slusarz <marcin.slusarz@intel.com>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3080
> Fixes: 9e31c1fe45d5 ("drm/i915: Propagate errors on awaiting already signaled fences")

Yeah I suggested to just go with the revert, so I guess on my to give you
the explainer to be added to the commit message.

Error propagation along fences sound like a good idea, but as your bug
shows, surprising consequences, since propagating errors across security
boundaries is not a good thing.

What we do have is track the hangs on the ctx, and report information to
userspace using RESET_STATS. That's how arb_robustness works. Also, if my
understanding is still correct, the EIO from execbuf is when your context
is banned (because not recoverable or too many hangs). And in all these
cases it's up to userspace to figure out what is all impacted and should
be reported to the application, that's not on the kernel to guess and
automatically propagate.

What's more, we're also building more features on top of ctx error
reporting with RESET_STATS ioctl: Encrypted buffers use the same, and the
userspace fence wait also relies on that mechanism. So it is the path
going forward for reporting gpu hangs and resets to userspace.

So all together that's why I think we should just bury this idea again as
not quite the direction we want to go to, hence why I think the revert is
the right option here.

Maybe quote the entire above thing in the commit message, if it makes some
sense?

Cheers, Daniel
> ---
>  drivers/gpu/drm/i915/i915_request.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index e7b4c4bc41a64..870d6083bb57e 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -1232,10 +1232,8 @@ i915_request_await_execution(struct i915_request *rq,
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
> @@ -1333,10 +1331,8 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
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
> 2.29.2
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
