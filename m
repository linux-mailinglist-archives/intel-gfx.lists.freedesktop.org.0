Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D9A3C6272
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 20:11:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3718189D5E;
	Mon, 12 Jul 2021 18:11:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com
 [IPv6:2607:f8b0:4864:20::c2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3353A89D5F
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 18:11:15 +0000 (UTC)
Received: by mail-oo1-xc2e.google.com with SMTP id
 r14-20020a4ad4ce0000b029024b4146e2f5so4737991oos.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 11:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+QO4INOTqhdjGTYROtavDrnEP72ahp48ExTmQRK6sqk=;
 b=YMVUVFWuShd49ey3My5Lyw3Qm+BbFdE2n+gQ+0bnyDDB7iXFRfnGOjox0FxGvMcm11
 kRGw5mvtsVW4woRE0G4djcQ7JOoaLWpeNG5XeMM+/vaPd+U3XmH5JozS4vJgQqt2CkoI
 ZJkWG/iON0bB6E4lPtWhI9AKUQR0ObrLfr4/0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+QO4INOTqhdjGTYROtavDrnEP72ahp48ExTmQRK6sqk=;
 b=Nu7U9M3oRPb5BNvzMR3/nVhxA0vP8xtqqvcZ/P2fOKT6vI9yoZv3R7g7P6MrA9LAnD
 aT4+o8szK0HtYMVEAvZS7tPkXnirpu8LLXWIs77KM8LKUi5hVxh7r0cAbO3vkZpcKH/i
 mmcb0bdAsdO8ThHh0ZROWmITQ+NhTaKui+dxQckVMrSkGl1Tp+/GnrMhSp9JPZVAysLv
 wRT03oDTIwi5xqzea8/6hOe0arWoOoOAEQB1AIYAR6g24SAPBtdx2JX+x+R5yHagEW2o
 xeGLx9u6uQWC277XxVpUC/8vwfNB0Y9EysUeTWDvC7N8FyrzVirJWZtpr5BV6EL0vOY5
 Qh2Q==
X-Gm-Message-State: AOAM5335fEZH9jf8y3X+2V/yzO1ZcZw5yNtnriiAeTAyxWtw9Oz9PILP
 ETiIDqlm+i1HJx7oxaCIzQ6DT8RuhsPSsHgjNCApng==
X-Google-Smtp-Source: ABdhPJxUcGKGruJdOKzf+zD4Ve6UwQ5C1/YwtwNqUFkZtYHzP31XtezXQwF0m5Y1eo+qzcca8g/QDja5xAZOG0T3yTU=
X-Received: by 2002:a4a:8802:: with SMTP id d2mr395463ooi.28.1626113474404;
 Mon, 12 Jul 2021 11:11:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-17-matthew.brost@intel.com>
 <8d056c1a-dc4a-baed-1664-0f86db9e7c5c@intel.com>
 <20210710030010.GA187079@DUT030-TGLY.fm.intel.com>
 <2b80175b-3ead-d219-ef77-d3f3bcc4835f@intel.com>
In-Reply-To: <2b80175b-3ead-d219-ef77-d3f3bcc4835f@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 12 Jul 2021 20:11:02 +0200
Message-ID: <CAKMK7uE4etmfjeax0awwHxtF=-PnqCWrsof2pKpeWoaNUk+rJg@mail.gmail.com>
To: John Harrison <john.c.harrison@intel.com>
Subject: Re: [Intel-gfx] [PATCH 16/47] drm/i915/guc: Disable engine barriers
 with GuC during unpin
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 12, 2021 at 7:57 PM John Harrison <john.c.harrison@intel.com> wrote:
>
> On 7/9/2021 20:00, Matthew Brost wrote:
> > On Fri, Jul 09, 2021 at 03:53:29PM -0700, John Harrison wrote:
> >> On 6/24/2021 00:04, Matthew Brost wrote:
> >>> Disable engine barriers for unpinning with GuC. This feature isn't
> >>> needed with the GuC as it disables context scheduling before unpinning
> >>> which guarantees the HW will not reference the context. Hence it is
> >>> not necessary to defer unpinning until a kernel context request
> >>> completes on each engine in the context engine mask.
> >>>
> >>> Cc: John Harrison <john.c.harrison@intel.com>
> >>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> >>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/gt/intel_context.c    |  2 +-
> >>>    drivers/gpu/drm/i915/gt/intel_context.h    |  1 +
> >>>    drivers/gpu/drm/i915/gt/selftest_context.c | 10 ++++++++++
> >>>    3 files changed, 12 insertions(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.c b/drivers/gpu/drm/i915/gt/intel_context.c
> >>> index 1499b8aace2a..7f97753ab164 100644
> >>> --- a/drivers/gpu/drm/i915/gt/intel_context.c
> >>> +++ b/drivers/gpu/drm/i915/gt/intel_context.c
> >>> @@ -80,7 +80,7 @@ static int intel_context_active_acquire(struct intel_context *ce)
> >>>     __i915_active_acquire(&ce->active);
> >>> -   if (intel_context_is_barrier(ce))
> >>> +   if (intel_context_is_barrier(ce) || intel_engine_uses_guc(ce->engine))
> >>>             return 0;
> >> Would be better to have a scheduler flag to say whether barriers are
> >> required or not. That would prevent polluting front end code with back end
> >> details.
> >>
> > I guess an engine flag is slightly better but I still don't love that
> > as we have to test if the context is a barrier (kernel context) and then
> > call a function that is basically backend specific after. IMO we really
> > need to push all of this to a vfunc. If you really want me to make this
> > an engine flag I can, but in the end it just seems like that will
> > trash the code (adding an engine flag just to remove it). I think this
> > is just a clean up we write down, and figure out a bit later as nothing
> > is functionally wrong + quite clear that it is something that should be
> > cleaned up.
> >
> > Matt
> Flag, vfunc, whatever. I just mean that it would be better to abstract
> it out in some manner. Maybe a flag/vfunc on the ce object? That way it
> would swallow the 'ignore kernel contexts' test as well. But yes,
> probably best to add it to the todo list and move on as it is not going
> to be a two minute quick fix. I've added a comment to the Jira, so...

The plan is:
- merge guc backend
- convert over to drm/scheduler as a proper interface between higher
levels and the scheduler backend
- shovel as much as reasonable of the execlist specifics into the
execlist backend

Right now our frontend code is essentially designed to assume the
execlist backend is the true way to build a scheduler, and everything
else is a special case. We can't reasonable fix this by sprinkling
lots of vfuns all over the place, and hence we imo shouldn't try, at
least not until the big picture is in much better shape.
-Daniel

> Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
>
>
> >
> >> John.
> >>
> >>
> >>>     /* Preallocate tracking nodes */
> >>> diff --git a/drivers/gpu/drm/i915/gt/intel_context.h b/drivers/gpu/drm/i915/gt/intel_context.h
> >>> index 8a7199afbe61..a592a9605dc8 100644
> >>> --- a/drivers/gpu/drm/i915/gt/intel_context.h
> >>> +++ b/drivers/gpu/drm/i915/gt/intel_context.h
> >>> @@ -16,6 +16,7 @@
> >>>    #include "intel_engine_types.h"
> >>>    #include "intel_ring_types.h"
> >>>    #include "intel_timeline_types.h"
> >>> +#include "uc/intel_guc_submission.h"
> >>>    #define CE_TRACE(ce, fmt, ...) do {                                      \
> >>>     const struct intel_context *ce__ = (ce);                        \
> >>> diff --git a/drivers/gpu/drm/i915/gt/selftest_context.c b/drivers/gpu/drm/i915/gt/selftest_context.c
> >>> index 26685b927169..fa7b99a671dd 100644
> >>> --- a/drivers/gpu/drm/i915/gt/selftest_context.c
> >>> +++ b/drivers/gpu/drm/i915/gt/selftest_context.c
> >>> @@ -209,7 +209,13 @@ static int __live_active_context(struct intel_engine_cs *engine)
> >>>      * This test makes sure that the context is kept alive until a
> >>>      * subsequent idle-barrier (emitted when the engine wakeref hits 0
> >>>      * with no more outstanding requests).
> >>> +    *
> >>> +    * In GuC submission mode we don't use idle barriers and we instead
> >>> +    * get a message from the GuC to signal that it is safe to unpin the
> >>> +    * context from memory.
> >>>      */
> >>> +   if (intel_engine_uses_guc(engine))
> >>> +           return 0;
> >>>     if (intel_engine_pm_is_awake(engine)) {
> >>>             pr_err("%s is awake before starting %s!\n",
> >>> @@ -357,7 +363,11 @@ static int __live_remote_context(struct intel_engine_cs *engine)
> >>>      * on the context image remotely (intel_context_prepare_remote_request),
> >>>      * which inserts foreign fences into intel_context.active, does not
> >>>      * clobber the idle-barrier.
> >>> +    *
> >>> +    * In GuC submission mode we don't use idle barriers.
> >>>      */
> >>> +   if (intel_engine_uses_guc(engine))
> >>> +           return 0;
> >>>     if (intel_engine_pm_is_awake(engine)) {
> >>>             pr_err("%s is awake before starting %s!\n",
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
