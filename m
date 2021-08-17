Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E985B3EEF6A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 17:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C86F6E1E8;
	Tue, 17 Aug 2021 15:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com
 [IPv6:2607:f8b0:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA0536E1E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 15:49:17 +0000 (UTC)
Received: by mail-ot1-x335.google.com with SMTP id
 v33-20020a0568300921b0290517cd06302dso12652978ott.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 08:49:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=o/vICcBtnNCU8WCMxEtqZ53lVyopyQUHS0Y7oMZDlHk=;
 b=UhoJSpe9tSN0jvaw84SmNexRBOvStkaGC05JrDa+8mVo3NK0qoYMWIKUbmltpJe+ne
 7vjCzThIxCskCU6SqruabYriXF5oFpAiNaF4x/TsZRDnFmQMDela/eddvJ2VOoWYxWbr
 ACY4oGEhLyRu2Tsb7ZEjJIFMDXXYzDmH4lVzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o/vICcBtnNCU8WCMxEtqZ53lVyopyQUHS0Y7oMZDlHk=;
 b=c3acGpp26SesTU1JwM5Pkv05T6EZu0S16VkiUAMXqeRvwzbi4CX69lJVqOd4448Uz2
 ldf8BiJAwrU0yTgtz84w/2BvnkI05jLoc4j4mMc9fH+Ln+LzIrh6MTTXlxR69XbBBXcG
 xtwiwe+5Zcu3DW9fyxUowfG/gDMVGAAjmfGJGPB5IYs52V2NHW2pl8qMQK0bBdEknTMd
 oM2qViGh/svp0cVqSqSzIMAvKrIRST34sDKKtBOu7zYLeBkcQWN2Qy0/NdQV8/Y7ecI0
 eeiK1Dr+w0NhQy/bS8B1AV68OAra4FgLC3UaLWjdp7FZYdDpGvOmequvSP8NaVmO1Tk4
 kpkA==
X-Gm-Message-State: AOAM532UkIbh8w+fMejkiJEiYWW/HTeI5eLNRjRIYbVabPqrLePHmfl2
 MhulQi3G50WFg4Rv6/p5Izd6Cj4ZM0MskF4sGkecNA==
X-Google-Smtp-Source: ABdhPJyp9wcOApUcLDRM0XxBUPJ3VVQLbhX+YyrM4l/6nQTE9p+8JdfHK1gMYd89q+ikq7CLQehFUcJ6x+mhHOqLaMA=
X-Received: by 2002:a9d:27a4:: with SMTP id c33mr3201762otb.281.1629215357057; 
 Tue, 17 Aug 2021 08:49:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210816135139.10060-1-matthew.brost@intel.com>
 <20210816135139.10060-7-matthew.brost@intel.com>
 <YRt/lynczP00iJqF@phenom.ffwll.local>
 <20210817150809.GA19163@jons-linux-dev-box>
In-Reply-To: <20210817150809.GA19163@jons-linux-dev-box>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Tue, 17 Aug 2021 17:49:05 +0200
Message-ID: <CAKMK7uHRjJ_yq9nR3ECO67VkFA=sEZ6zimxx_sSN5c9S_yXUFA@mail.gmail.com>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 06/22] drm/i915/execlists: Do not propagate
 errors to dependent fences
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

On Tue, Aug 17, 2021 at 5:13 PM Matthew Brost <matthew.brost@intel.com> wrote:
> On Tue, Aug 17, 2021 at 11:21:27AM +0200, Daniel Vetter wrote:
> > On Mon, Aug 16, 2021 at 06:51:23AM -0700, Matthew Brost wrote:
> > > Progagating errors to dependent fences is wrong, don't do it. Selftest
> > > in following patch exposes this bug.
> >
> > Please explain what "this bug" is, it's hard to read minds, especially at
> > a distance in spacetime :-)
> >
>
> Not a very good explaination.
>
> > > Fixes: 8e9f84cf5cac ("drm/i915/gt: Propagate change in error status to children on unhold")
> >
> > I think it would be better to outright revert this, instead of just
> > disabling it like this.
> >
>
> I tried revert and git did some really odd things that I couldn't
> resolve, hence the new patch.

If there's any conflict git just gives you your current code, and what
was there with the revert applied, with the block markers. Then it's
your job to manually apply that change.

Occasionally (when there's been ridiculous amounts of code movement)
it gets completely lost and puts these into very non-intuitive places.
In that case just delete it, keep the current code, and check what
change you're missing that needs to be manually reverted still. Also
sometimes there's a follow-up patch that you should revert first,
which makes the revert clean. In that case it's generally the right
thing to revert the follow-up first, and then apply your revert. Often
there's subtle functional dependencies hiding.
-Daniel

>
> > Also please cite the dma_fence error propagation revert from Jason:
> >
> > commit 93a2711cddd5760e2f0f901817d71c93183c3b87
> > Author: Jason Ekstrand <jason@jlekstrand.net>
> > Date:   Wed Jul 14 14:34:16 2021 -0500
> >
> >     Revert "drm/i915: Propagate errors on awaiting already signaled fences"
> >
> > Maybe in full, if you need the justification.
> >
>
> Will site.
>
> > > Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> > > Cc: <stable@vger.kernel.org>
> >
> > Unless "this bug" is some real world impact thing I wouldn't put cc:
> > stable on this.
>
> Got it.
>
> Matt
>
> > -Daniel
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ----
> > >  1 file changed, 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > index de5f9c86b9a4..cafb0608ffb4 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> > > @@ -2140,10 +2140,6 @@ static void __execlists_unhold(struct i915_request *rq)
> > >                     if (p->flags & I915_DEPENDENCY_WEAK)
> > >                             continue;
> > >
> > > -                   /* Propagate any change in error status */
> > > -                   if (rq->fence.error)
> > > -                           i915_request_set_error_once(w, rq->fence.error);
> > > -
> > >                     if (w->engine != rq->engine)
> > >                             continue;
> > >
> > > --
> > > 2.32.0
> > >
> >
> > --
> > Daniel Vetter
> > Software Engineer, Intel Corporation
> > http://blog.ffwll.ch



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
