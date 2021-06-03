Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F024239994F
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 06:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0FC06F399;
	Thu,  3 Jun 2021 04:47:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com
 [IPv6:2607:f8b0:4864:20::32d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 864726E075
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 04:47:40 +0000 (UTC)
Received: by mail-ot1-x32d.google.com with SMTP id
 i12-20020a05683033ecb02903346fa0f74dso4603537otu.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Jun 2021 21:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9oWE3iAQInCQja2YS7KckQsB+OO3TSDbTXZpJvc/uyY=;
 b=I+HuhUl7su6y9tVmZ/5CHjkqTTZmzuzgfOijYY6f2hKQ2at8UjGMPCHCq0SqFhCAPr
 2iSWiCRWotW/i5FTK1aeI7eJcVOyXqHTpVTEQ2gKwoU0X50JWOHw3h2Im6/jHLoQQU8H
 Y8IzBa8+21oMTeyaUcqXZEKvPv1gUOIGfLHPI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9oWE3iAQInCQja2YS7KckQsB+OO3TSDbTXZpJvc/uyY=;
 b=Yub6DTDEBUx3uT1KSoqN+6ywbFAJYR2UNKAj8SXlW4V6KQbBlV5euPyo0MJkUsdMwy
 BncG+eaCEiC9c9GMfuJT1BGyBXKIALHk+9TuLc/7J21LAGbCWLBCdlfPexllMMlDYqDN
 TdF04XgcI37fDYbpOVKkzTduyq7TmpXbcC6qfnusYIEV8ih4o51s6a4SsoJ3EBK2/xo6
 Mz4H4g/r5avCxd6E8A+HbH3eIVlVFyiA4qkqX5Jr7miNox+XNuhYOjvKqzkeWpWs4U+p
 Pmk9X5DR11YlTWzTWsx4eEKPKjfT5p1eN7tP3hGfriMMU//0GRDwKWyj4AaMAr68WEn2
 0lOw==
X-Gm-Message-State: AOAM5326mHvx+q+DJ0lMFzFtZAivaePZTh6VOO1fHXA/FFBkoZzFaaKA
 6xh6bf/8+5OGUVZZfH3vhUlirkC7xWZCaKTnKrum+A==
X-Google-Smtp-Source: ABdhPJwgJBZcpLhwLCdB7LaiZmCG5+wnv1EK2mLq58JEEBDik/lg22q9FTkamOErqA0Hcrxh7CTqYozV98BlLkuhfv0=
X-Received: by 2002:a9d:27a4:: with SMTP id c33mr27928955otb.281.1622695658552; 
 Wed, 02 Jun 2021 21:47:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <de3965d8-d997-5685-0399-646d8823a27f@linux.intel.com>
 <20210525164504.GA9971@sdutt-i7>
 <d76ab0ec-4f0c-19ed-adaa-ed227af63c0e@linux.intel.com>
 <CAKMK7uHT2mPTyX9QiTBFP2Lt28vV3JcJLPAx_hMdTtyLJ=DZ2g@mail.gmail.com>
 <20210603034100.GA7593@sdutt-i7>
In-Reply-To: <20210603034100.GA7593@sdutt-i7>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 3 Jun 2021 06:47:27 +0200
Message-ID: <CAKMK7uF-SjHPBG6qyt0yc2fA35zy2=r-Ls_QtTtKPdKdBm=J4w@mail.gmail.com>
To: Matthew Brost <matthew.brost@intel.com>, 
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH 00/97] Basic GuC submission support in
 the i915
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
Cc: Jason Ekstrand <jason.ekstrand@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 3, 2021 at 5:48 AM Matthew Brost <matthew.brost@intel.com> wrote:
>
> On Wed, Jun 02, 2021 at 08:57:02PM +0200, Daniel Vetter wrote:
> > On Wed, Jun 2, 2021 at 5:27 PM Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> > > On 25/05/2021 17:45, Matthew Brost wrote:
> > > > On Tue, May 25, 2021 at 11:32:26AM +0100, Tvrtko Ursulin wrote:
> > > >>   * Context pinning code with it's magical two adds, subtract and cmpxchg is
> > > >> dodgy as well.
> > > >
> > > > Daniele tried to remove this and it proved quite difficult + created
> > > > even more races in the backend code. This was prior to the pre-pin and
> > > > post-unpin code which makes this even more difficult to fix as I believe
> > > > these functions would need to be removed first. Not saying we can't
> > > > revisit this someday but I personally really like it - it is a clever
> > > > way to avoid reentering the pin / unpin code while asynchronous things
> > > > are happening rather than some complex locking scheme. Lastly, this code
> > > > has proved incredibly stable as I don't think we've had to fix a single
> > > > thing in this area since we've been using this code internally.
> > >
> > > Pretty much same as above. The code like:
> > >
> > > static inline void __intel_context_unpin(struct intel_context *ce)
> > > {
> > >         if (!ce->ops->sched_disable) {
> > >                 __intel_context_do_unpin(ce, 1);
> > >         } else {
> > >                 while (!atomic_add_unless(&ce->pin_count, -1, 1)) {
> > >                         if (atomic_cmpxchg(&ce->pin_count, 1, 2) == 1) {
> > >                                 ce->ops->sched_disable(ce);
> > >                                 break;
> > >                         }
> > >                 }
> > >         }
> > > }
> > >
> > > That's pretty much impenetrable for me and the only thing I can think of
> > > here is **ALARM** must be broken! See what others think..
>
> Yea, probably should add a comment:
>
> /*
>  * If the context has the sched_disable function, it isn't safe to unpin
>  * until this function completes. This function is allowed to complete
>  * asynchronously too. To avoid this function from being entered twice
>  * and move ownership of the unpin to this function's completion, adjust
>  * the pin count to 2 before it is entered. When this function completes
>  * the context can call intel_context_sched_unpin which decrements the
>  * pin count by 2 potentially resulting in an unpin.
>  *
>  * A while loop is needed to ensure the atomicity of the pin count. e.g.
>  * The below if / else statement has a race:
>  *
>  * if (atomic_cmpxchg(&ce->pin_count, 1, 2) == 1)
>  *      ce->ops->sched_disable(ce);
>  * else
>  *      atomic_dec(ce, 1);
>  *
>  * Two threads could simultaneously fail the if clause resulting in the
>  * pin_count going to 0 with scheduling enabled + the context pinned.
>  */
>
> >
> > pin_count is a hand-rolled mutex, except not actually a real one, and
> > it's absolutely hiliarous in it's various incarnations (there's one
> > each on i915_vm, vma, obj and probably a few more).
> >
> > Not the worst one I've seen by far in the code we've merged already.
> > Minimally this needs a comment here and in the struct next to
> > @pin_count to explain where all this is abused, which would already
> > make it better than most of the in-tree ones.
> >
> > As part of the ttm conversion we have a plan to sunset the "pin_count
> > as a lock" stuff, depending how bad that goes we might need to split
> > up the task for each struct that has such a pin_count.
> >
>
> Didn't know that with the TTM rework this value might go away. If that
> is truely the direction I don't see the point in reworking this now. It
> 100% works and with a comment I think it can be understood what it is
> doing.

Well not go away, but things will change. Currently the various
->pin_count sprinkled all over the place have essentially two uses
- pinning stuff long term (scanout, ctxs, anything that stays pinned
after the ioctl is done essentially)
- short-term lock-like construct

There's going to be two changes:
- The short-term pins will be replaced by dma_resv_lock/unlock pairs
- the locking rules for long-term pins will change, because we'll
require that you must hold dma_resv_lock for unpinning. So no more
atomic_t, also no more races for final unpins vs cleanup work

Also now that you've explained the why for this dance, especially the
async part: Since the new unpin will hold dma_resv_lock, we can
create&attach dma_fence for tracking async completion which then the
next operation can wait on.

The awkward state we have right now is that there's a lot of places
where we require the unpin to be done locklessly with these atomic
tricks, so there's going to be quite some surgery involved all over
the code.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
