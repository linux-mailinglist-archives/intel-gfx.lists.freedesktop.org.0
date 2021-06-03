Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 627C8399C8F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 10:28:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB31A6F44A;
	Thu,  3 Jun 2021 08:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDA7C6F44B
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 08:28:06 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id h24so8006919ejy.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 01:28:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=birOY8O+CqZv81ZE8iIciVC5E7r64gjeuicm0Fi1AVg=;
 b=jO4Arj98Qe+Vj/hmrpdOTIS0v6Otw56LjyY+GkHTRaxPtVOFuvWk4wO5yIvU2Nzr1h
 Yk+PJcUavyP0SEENZ+Z7rhdwUwK32+nZKSK7x/VmQ08b3clSjg7BNGahgogBGq6nLwum
 +1QXV8Z/5dLkI/7TBO32BydWuLS2fT5RgYqRo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=birOY8O+CqZv81ZE8iIciVC5E7r64gjeuicm0Fi1AVg=;
 b=BJMbnMAL6EwS4FRgwbsaM9sG6bBiuq7bNr79IpTA5/YNan35M3rEqb0CpElVU0eNPo
 hJRGqGBhvpCUAkeBRtE1VvynCs+Ky9Q9paKWVDwAcvPnvXpmYzFTsOgYiHBBGDghRa6B
 lFacwOIhRh7EQQLff0bTxvAGuC1LUudOq2nozMynagqSGli2AkK9SO6Nle3XV/nsIS5d
 /w2Dfmp7jQHCkO7cuOLEWSp0A8x/x0R8FF57vGWcnPs5g3/zIczAiOLG9WP4ZEZGRpmt
 ++mzs7hTRCrUTzJmXu2HnNcmV+JZqnKn5BuAPtpSd8yLlUSPWL5GNqa2TE/ov//x/dkX
 ymvA==
X-Gm-Message-State: AOAM531yOzvd5phyO6QrjmFeGzFxz1n4Ofur57Q03rx73dzX+sJJhVRn
 BIF0dr36E3uKJfaD1+3wfdXU/g==
X-Google-Smtp-Source: ABdhPJxHAIxOfP1gnldKHstun5H1abHdqHLb2X/T2JD2kAESUTgN5WNVHyV3Vu92Jqww+Vt7Kv+WGA==
X-Received: by 2002:a17:906:1848:: with SMTP id
 w8mr4611657eje.277.1622708885445; 
 Thu, 03 Jun 2021 01:28:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id di16sm1351481edb.62.2021.06.03.01.28.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Jun 2021 01:28:04 -0700 (PDT)
Date: Thu, 3 Jun 2021 10:28:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Ekstrand <jason@jlekstrand.net>
Message-ID: <YLiSk5bTpt1ZJvYr@phenom.ffwll.local>
References: <20210602164149.391653-1-jason@jlekstrand.net>
 <20210602164149.391653-5-jason@jlekstrand.net>
 <YLiRtZUuloF0qy0b@phenom.ffwll.local>
 <YLiR3CKMYjE9u4+T@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YLiR3CKMYjE9u4+T@phenom.ffwll.local>
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

On Thu, Jun 03, 2021 at 10:25:00AM +0200, Daniel Vetter wrote:
> On Thu, Jun 03, 2021 at 10:24:21AM +0200, Daniel Vetter wrote:
> > On Wed, Jun 02, 2021 at 11:41:48AM -0500, Jason Ekstrand wrote:
> > > This reverts commit 9e31c1fe45d555a948ff66f1f0e3fe1f83ca63f7.  Ever
> > > since that commit, we've been having issues where a hang in one client
> > > can propagate to another.  In particular, a hang in an app can propagate
> > > to the X server which causes the whole desktop to lock up.
> > 
> > I think we need a note to backporters here:
> > 
> > "For backporters: Please note that you _must_ have a backport of
> > https://lore.kernel.org/dri-devel/20210602164149.391653-2-jason@jlekstrand.net/
> > for otherwise backporting just this patch opens up a security bug."
> >  
> > Or something like that.
> 
> Oh also reordering the patch set so the 2 reverts which are cc: stable are
> first, then the other stuff on top that cleans up the fallout.

Oh also the longer commit message I've done would be nice to add. Or at
least link it or something like that.

https://lore.kernel.org/dri-devel/20210519101523.688398-1-daniel.vetter@ffwll.ch/

I think I mentioned this on irc, but got lost I guess.
-Daniel

> -Daniel
> 
> > -Daniel
> > 
> > > Signed-off-by: Jason Ekstrand <jason.ekstrand@intel.com>
> > > Reported-by: Marcin Slusarz <marcin.slusarz@intel.com>
> > > Cc: <stable@vger.kernel.org> # v5.6+
> > > Cc: Jason Ekstrand <jason.ekstrand@intel.com>
> > > Cc: Marcin Slusarz <marcin.slusarz@intel.com>
> > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3080
> > > Fixes: 9e31c1fe45d5 ("drm/i915: Propagate errors on awaiting already signaled fences")
> > > Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > > Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_request.c | 8 ++------
> > >  1 file changed, 2 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > > index 970d8f4986bbe..b796197c07722 100644
> > > --- a/drivers/gpu/drm/i915/i915_request.c
> > > +++ b/drivers/gpu/drm/i915/i915_request.c
> > > @@ -1426,10 +1426,8 @@ i915_request_await_execution(struct i915_request *rq,
> > >  
> > >  	do {
> > >  		fence = *child++;
> > > -		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
> > > -			i915_sw_fence_set_error_once(&rq->submit, fence->error);
> > > +		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
> > >  			continue;
> > > -		}
> > >  
> > >  		if (fence->context == rq->fence.context)
> > >  			continue;
> > > @@ -1527,10 +1525,8 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
> > >  
> > >  	do {
> > >  		fence = *child++;
> > > -		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
> > > -			i915_sw_fence_set_error_once(&rq->submit, fence->error);
> > > +		if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
> > >  			continue;
> > > -		}
> > >  
> > >  		/*
> > >  		 * Requests on the same timeline are explicitly ordered, along
> > > -- 
> > > 2.31.1
> > > 
> > 
> > -- 
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch
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
