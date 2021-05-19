Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C08389486
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 19:16:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 391766EE45;
	Wed, 19 May 2021 17:16:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com
 [IPv6:2607:f8b0:4864:20::235])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A5516EE46
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 17:16:15 +0000 (UTC)
Received: by mail-oi1-x235.google.com with SMTP id h9so13809867oih.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 May 2021 10:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XHK8qMEJKNTFYFzFd6RoA4EfyentocUkphGdZ4KCkHI=;
 b=MJp/pwAnVlgikEUJ8nPxwtmlZ8BiEmXiZO1xdZXQgrkgszKd9K17mYPqfj2EnOvf0/
 S4CJYQATsu9qgI7PwtF3TRQ4glyF3fiPVqPxAMa2EgtfTnqGW9rplUgJb9XZ/cxfo8FE
 OU5oawKFOqEnMt6ddv3ETTtpw4L8IOwUWjpFQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XHK8qMEJKNTFYFzFd6RoA4EfyentocUkphGdZ4KCkHI=;
 b=gsJDelrxSXppy8OMvf9RFB/o7L03C6jyMtRP+3pxl3Dh1IkboPY/TipYGWFZH6JFHd
 B5WMjU4zhZyhBnDsqx4ZE9iIehlzyjBg1PTdIQSl2BWvCpeTq3gF73Fulu+Jfk7QWUDg
 MToFJlkSgfyhTMPXe1WEUtPAZV1PjZnDs774bNL+ftrVQfxAoVS99cVspISidBJuuCec
 CkV5UGQEWpKIISaFVidjhxKJijBKKtwRDhAKHYMimnow68l5EUpGiXZrDg2rm4bVQw/6
 CKGM45HL9wULd/5jJJKWigEFwCxpGc3FMPL5I6tCSIlABgvcZt9cL4SrPtwht8yAeq7/
 neAg==
X-Gm-Message-State: AOAM533LFA2II5Kf9FdR9/5QHpqrBH8H508SC1SEDXSsbusdqx1qYm9v
 H0pcDzDAQ5bEb88CQZ+mOdyPdBlEgGxausfd6e6V2g==
X-Google-Smtp-Source: ABdhPJx1kbYG9t+VNEzF7OjTU7L/jyg2twCz2tzq/cYvpMh5TuX4pHgKVzGR5dUELETsXL/O9x9SiDB1hn5KvBjSDtc=
X-Received: by 2002:a05:6808:1142:: with SMTP id
 u2mr249040oiu.101.1621444574682; 
 Wed, 19 May 2021 10:16:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210519074323.665872-2-daniel.vetter@ffwll.ch>
 <20210519101523.688398-1-daniel.vetter@ffwll.ch>
 <CAOFGe968OKdHu9BL0hU6KWM3J5Fc6popg4GJ5kEDd-3bf4HjJw@mail.gmail.com>
In-Reply-To: <CAOFGe968OKdHu9BL0hU6KWM3J5Fc6popg4GJ5kEDd-3bf4HjJw@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 19 May 2021 19:16:03 +0200
Message-ID: <CAKMK7uFAXBU6Ot8xJkrXBVppnWi058pEyMjNOAChtepgcCKsrw@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable <stable@vger.kernel.org>, Jason Ekstrand <jason.ekstrand@intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 19, 2021 at 5:06 PM Jason Ekstrand <jason@jlekstrand.net> wrote:
>
> Once we no longer rely on error propagation, I think there's a lot we
> can rip out.

I honestly did not find that much ... what did you uncover?
-Daniel

>
> --Jason
>
> On Wed, May 19, 2021 at 5:15 AM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> >
> > From: Jason Ekstrand <jason@jlekstrand.net>
> >
> > This reverts commit 9e31c1fe45d555a948ff66f1f0e3fe1f83ca63f7.  Ever
> > since that commit, we've been having issues where a hang in one client
> > can propagate to another.  In particular, a hang in an app can propagate
> > to the X server which causes the whole desktop to lock up.
> >
> > Error propagation along fences sound like a good idea, but as your bug
> > shows, surprising consequences, since propagating errors across security
> > boundaries is not a good thing.
> >
> > What we do have is track the hangs on the ctx, and report information to
> > userspace using RESET_STATS. That's how arb_robustness works. Also, if my
> > understanding is still correct, the EIO from execbuf is when your context
> > is banned (because not recoverable or too many hangs). And in all these
> > cases it's up to userspace to figure out what is all impacted and should
> > be reported to the application, that's not on the kernel to guess and
> > automatically propagate.
> >
> > What's more, we're also building more features on top of ctx error
> > reporting with RESET_STATS ioctl: Encrypted buffers use the same, and the
> > userspace fence wait also relies on that mechanism. So it is the path
> > going forward for reporting gpu hangs and resets to userspace.
> >
> > So all together that's why I think we should just bury this idea again as
> > not quite the direction we want to go to, hence why I think the revert is
> > the right option here.Signed-off-by: Jason Ekstrand <jason.ekstrand@intel.com>
> >
> > v2: Augment commit message. Also restore Jason's sob that I
> > accidentally lost.
> >
> > Signed-off-by: Jason Ekstrand <jason.ekstrand@intel.com> (v1)
> > Reported-by: Marcin Slusarz <marcin.slusarz@intel.com>
> > Cc: <stable@vger.kernel.org> # v5.6+
> > Cc: Jason Ekstrand <jason.ekstrand@intel.com>
> > Cc: Marcin Slusarz <marcin.slusarz@intel.com>
> > Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3080
> > Fixes: 9e31c1fe45d5 ("drm/i915: Propagate errors on awaiting already signaled fences")
> > Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > ---
> >  drivers/gpu/drm/i915/i915_request.c | 8 ++------
> >  1 file changed, 2 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > index 970d8f4986bb..b796197c0772 100644
> > --- a/drivers/gpu/drm/i915/i915_request.c
> > +++ b/drivers/gpu/drm/i915/i915_request.c
> > @@ -1426,10 +1426,8 @@ i915_request_await_execution(struct i915_request *rq,
> >
> >         do {
> >                 fence = *child++;
> > -               if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
> > -                       i915_sw_fence_set_error_once(&rq->submit, fence->error);
> > +               if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
> >                         continue;
> > -               }
> >
> >                 if (fence->context == rq->fence.context)
> >                         continue;
> > @@ -1527,10 +1525,8 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
> >
> >         do {
> >                 fence = *child++;
> > -               if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
> > -                       i915_sw_fence_set_error_once(&rq->submit, fence->error);
> > +               if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
> >                         continue;
> > -               }
> >
> >                 /*
> >                  * Requests on the same timeline are explicitly ordered, along
> > --
> > 2.31.0
> >



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
