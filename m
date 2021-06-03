Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D641E399C7A
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 10:25:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0769E6F445;
	Thu,  3 Jun 2021 08:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF2206F44B
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 08:25:03 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id jt22so7969890ejb.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 01:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pLB0AHNkPuC0xacQMQ49Xc5Eg0xlyzXKx/dWT+EAjyA=;
 b=FXs8XDFwZVGSsCZEwOlQugxQWNSYWAmKcyerO9/CxGuTuQQr+1TFgaRiGhkciLm2np
 dzuzOe7xqtbz89U/L5NNqJLP3IfZNEdf1M4Gwy3v/Hka0zLcVaHeSJf9aV6ag7b2xvSV
 pYAmkSnq6uBOJUj7GXITQV7pcoHvua54eNsXE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pLB0AHNkPuC0xacQMQ49Xc5Eg0xlyzXKx/dWT+EAjyA=;
 b=Fr/C1hYidok1EgGpI539YriRZRvNjfvCIShiFKHXb+MaZ1Et2M5ARSjE+l29iaoDoF
 2tGdfupPMq02TTK+y4doDodSABjh8Druu6PMfFHoORujJKTl4g2LcPm7TlK+DZSnl8LM
 nimATmp+hqkKpOT73iyTh5pYv9jkOigjSac0I6cThRB3nNSc7CsRj0MVC+LJWlmVKZJa
 UUr4JrKSxQgM0TaAf65qY6omGddMHmGvwefVENhu7KmCaUBAwqZ8oTHMjdv2aHstafgT
 7JrchNYXQPwhCPw0IxJjXYkh5kXkz9mexMkS4bUN08gDZCfljUsGsAqoSv/M+6rn6Urx
 iQgg==
X-Gm-Message-State: AOAM531FbvK/KQomWhBJLf07QwNDXmjzKRpxMw1c4tzOEUyqKO+cesh2
 aW6zMF/1zzAIWhp9RReC1XDosQ==
X-Google-Smtp-Source: ABdhPJx/2UdPhdQe8d0TR3Zs2+ONOrz7OP88w0jJxl9puFX31DuatOZsoOLqg6mED9dlKhOlA0W/lw==
X-Received: by 2002:a17:906:1986:: with SMTP id
 g6mr37805723ejd.265.1622708702421; 
 Thu, 03 Jun 2021 01:25:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id b15sm1321252ede.66.2021.06.03.01.25.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Jun 2021 01:25:02 -0700 (PDT)
Date: Thu, 3 Jun 2021 10:25:00 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YLiR3CKMYjE9u4+T@phenom.ffwll.local>
References: <20210602164149.391653-1-jason@jlekstrand.net>
 <20210602164149.391653-5-jason@jlekstrand.net>
 <YLiRtZUuloF0qy0b@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YLiRtZUuloF0qy0b@phenom.ffwll.local>
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

On Thu, Jun 03, 2021 at 10:24:21AM +0200, Daniel Vetter wrote:
> On Wed, Jun 02, 2021 at 11:41:48AM -0500, Jason Ekstrand wrote:
> > This reverts commit 9e31c1fe45d555a948ff66f1f0e3fe1f83ca63f7.  Ever
> > since that commit, we've been having issues where a hang in one client
> > can propagate to another.  In particular, a hang in an app can propagate
> > to the X server which causes the whole desktop to lock up.
> 
> I think we need a note to backporters here:
> 
> "For backporters: Please note that you _must_ have a backport of
> https://lore.kernel.org/dri-devel/20210602164149.391653-2-jason@jlekstrand.net/
> for otherwise backporting just this patch opens up a security bug."
>  
> Or something like that.

Oh also reordering the patch set so the 2 reverts which are cc: stable are
first, then the other stuff on top that cleans up the fallout.
-Daniel

> -Daniel
> 
> > Signed-off-by: Jason Ekstrand <jason.ekstrand@intel.com>
> > Reported-by: Marcin Slusarz <marcin.slusarz@intel.com>
> > Cc: <stable@vger.kernel.org> # v5.6+
> > Cc: Jason Ekstrand <jason.ekstrand@intel.com>
> > Cc: Marcin Slusarz <marcin.slusarz@intel.com>
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3080
> > Fixes: 9e31c1fe45d5 ("drm/i915: Propagate errors on awaiting already signaled fences")
> > Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_request.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 970d8f4986bbe..b796197c07722 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -1426,10 +1426,8 @@ i915_request_await_execution(struct i915_request *rq,
> >  
> >  	do {
> >  		fence = *child++;
> > -		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
> > -			i915_sw_fence_set_error_once(&rq->submit, fence->error);
> > +		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
> >  			continue;
> > -		}
> >  
> >  		if (fence->context == rq->fence.context)
> >  			continue;
> > @@ -1527,10 +1525,8 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
> >  
> >  	do {
> >  		fence = *child++;
> > -		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
> > -			i915_sw_fence_set_error_once(&rq->submit, fence->error);
> > +		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
> >  			continue;
> > -		}
> >  
> >  		/*
> >  		 * Requests on the same timeline are explicitly ordered, along
> > -- 
> > 2.31.1
> > 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
