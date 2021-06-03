Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B47539A490
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 17:29:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A9E6F4AF;
	Thu,  3 Jun 2021 15:29:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2b.google.com (mail-yb1-xb2b.google.com
 [IPv6:2607:f8b0:4864:20::b2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B9366F4B1
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Jun 2021 15:29:08 +0000 (UTC)
Received: by mail-yb1-xb2b.google.com with SMTP id i4so9414328ybe.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Jun 2021 08:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+qmChvkUqLl5eiHvAygjqmUTJgz8BfnTf0lgkePYOmM=;
 b=tyUTOaHNBnOwMuEDBregOohrJanvW1ShWtRY8DANSyfHZj5thC9vU/65uK/mJlnA8J
 kv+JGyWwqYA+5DzXZawqxBkAMlgI0kcVHvOQo4EWXZRoPialUBO/cyh6O8Sq9krX7f/9
 ogA7dbQ5BgKgIh/vWY0cfAJkybk3x8Bw9K+WYUYwVnlEGiCHuEtJt2lcqhdy9C8Fbml1
 wJyac1g3rAVHc+JCyYsdu23z7aEGCGb91h2LIKh/6bI8nCGmQJdTHS2CmDiBeq3+sEEL
 xlOgvsRj3+OAhTKPIp27gw4oawft4nw9UJ1iR6KIT9PjsbjZbXXPLHLF/WMdMHnD7aJ/
 /4pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+qmChvkUqLl5eiHvAygjqmUTJgz8BfnTf0lgkePYOmM=;
 b=dcad90fvB86cu1RICyZYjm+I/nmP917kpoXegrMkCwOqyWa0UVorfSD9Zl6ksiadnE
 jrajPB6a7xZZssnGMXaWWh821fWRu3315Sf66Q+Ozh1bx5Fqw15Ou/YAJuKPP4LFuk5Y
 IiznHS8EDd5kjIPhNlIUpvmnbBHP8fJm42pMj5BA6KGzYtp4MfeNsCjkNy1TLF50h2E/
 9l7pJ4/XODsOR+vKw01Wlc9V3esUnpjj0PvpNPEnH8Uo1q3ByQn9pcFKm9gPI/iHPXzc
 CZ1rNp4NYqljT8ra8gj47+ZpiMQQYV9EbPOPR7wp1gCoe2Z6xX7zBCl1s0x7EVcE0UwV
 B8KA==
X-Gm-Message-State: AOAM531IYoWGEh9l5hebjQ96tWtT7DHmorN4Bl+J5AJkOOjovGdyRQGQ
 WWPMoHgdsmmD3yDuTCT983FfgkgIQwwxdji25mxoGA==
X-Google-Smtp-Source: ABdhPJwNpJChX+SmEXLtlJPn/FHzt84CXrubZ5MRG4B8F6iW5QGbMPG8x4eF90iqgwIJMolo+f5j8CNTtV+vEFZSaOs=
X-Received: by 2002:a25:81c5:: with SMTP id n5mr719557ybm.323.1622734147322;
 Thu, 03 Jun 2021 08:29:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210602164149.391653-1-jason@jlekstrand.net>
 <20210602164149.391653-5-jason@jlekstrand.net>
 <YLiRtZUuloF0qy0b@phenom.ffwll.local> <YLiR3CKMYjE9u4+T@phenom.ffwll.local>
 <YLiSk5bTpt1ZJvYr@phenom.ffwll.local>
In-Reply-To: <YLiSk5bTpt1ZJvYr@phenom.ffwll.local>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 3 Jun 2021 10:28:56 -0500
Message-ID: <CAOFGe94Syp5JPv4+i7aOaPLOSYgdvaL7J0v0kAQ5Z7P+jHFJtw@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel GFX <intel-gfx@lists.freedesktop.org>, stable <stable@vger.kernel.org>,
 Jason Ekstrand <jason.ekstrand@intel.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 3, 2021 at 3:28 AM Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Thu, Jun 03, 2021 at 10:25:00AM +0200, Daniel Vetter wrote:
> > On Thu, Jun 03, 2021 at 10:24:21AM +0200, Daniel Vetter wrote:
> > > On Wed, Jun 02, 2021 at 11:41:48AM -0500, Jason Ekstrand wrote:
> > > > This reverts commit 9e31c1fe45d555a948ff66f1f0e3fe1f83ca63f7.  Ever
> > > > since that commit, we've been having issues where a hang in one client
> > > > can propagate to another.  In particular, a hang in an app can propagate
> > > > to the X server which causes the whole desktop to lock up.
> > >
> > > I think we need a note to backporters here:
> > >
> > > "For backporters: Please note that you _must_ have a backport of
> > > https://lore.kernel.org/dri-devel/20210602164149.391653-2-jason@jlekstrand.net/
> > > for otherwise backporting just this patch opens up a security bug."

Done.

> > > Or something like that.
> >
> > Oh also reordering the patch set so the 2 reverts which are cc: stable are
> > first, then the other stuff on top that cleans up the fallout.

Done.

> Oh also the longer commit message I've done would be nice to add. Or at
> least link it or something like that.
>
> https://lore.kernel.org/dri-devel/20210519101523.688398-1-daniel.vetter@ffwll.ch/
>
> I think I mentioned this on irc, but got lost I guess.

Drp.  I thought I'd gotten that but I guess I failed.  Fixed now.

> -Daniel
>
> > -Daniel
> >
> > > -Daniel
> > >
> > > > Signed-off-by: Jason Ekstrand <jason.ekstrand@intel.com>
> > > > Reported-by: Marcin Slusarz <marcin.slusarz@intel.com>
> > > > Cc: <stable@vger.kernel.org> # v5.6+
> > > > Cc: Jason Ekstrand <jason.ekstrand@intel.com>
> > > > Cc: Marcin Slusarz <marcin.slusarz@intel.com>
> > > > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/3080
> > > > Fixes: 9e31c1fe45d5 ("drm/i915: Propagate errors on awaiting already signaled fences")
> > > > Signed-off-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> > > > Reviewed-by: Jon Bloomfield <jon.bloomfield@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_request.c | 8 ++------
> > > >  1 file changed, 2 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> > > > index 970d8f4986bbe..b796197c07722 100644
> > > > --- a/drivers/gpu/drm/i915/i915_request.c
> > > > +++ b/drivers/gpu/drm/i915/i915_request.c
> > > > @@ -1426,10 +1426,8 @@ i915_request_await_execution(struct i915_request *rq,
> > > >
> > > >   do {
> > > >           fence = *child++;
> > > > -         if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
> > > > -                 i915_sw_fence_set_error_once(&rq->submit, fence->error);
> > > > +         if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
> > > >                   continue;
> > > > -         }
> > > >
> > > >           if (fence->context == rq->fence.context)
> > > >                   continue;
> > > > @@ -1527,10 +1525,8 @@ i915_request_await_dma_fence(struct i915_request *rq, struct dma_fence *fence)
> > > >
> > > >   do {
> > > >           fence = *child++;
> > > > -         if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
> > > > -                 i915_sw_fence_set_error_once(&rq->submit, fence->error);
> > > > +         if (test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
> > > >                   continue;
> > > > -         }
> > > >
> > > >           /*
> > > >            * Requests on the same timeline are explicitly ordered, along
> > > > --
> > > > 2.31.1
> > > >
> > >
> > > --
> > > Daniel Vetter
> > > Software Engineer, Intel Corporation
> > > http://blog.ffwll.ch
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
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
