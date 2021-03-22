Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8727C344B27
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 17:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC316E517;
	Mon, 22 Mar 2021 16:24:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1476E517
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 16:24:52 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id bf3so20112949edb.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 09:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tkLo5MuenjfgUh7ytqosp9V6uC3O+z1QgvfQKMNJAYk=;
 b=xrgXtCkSs4DA1ISUGfJZHb7mBqJFfP2OuMuY703cAHMn99ToZ+WFbLcRlZQHYK6lq5
 Giz5yXdCwND0kY4X0gfxdqMyoJPZlCuOW2LpDWQFpNX3sTzIx2AQdyt53P2TA/DtJeWB
 yMyQT0f3rtQAtm8BR6dwvfZ47HAzbVWpOKr4zpQvgRMJ9pFfCIC92gkb/TM9Y9IrJSK0
 ecr8D7Z5MdG7cWEDCN+tIlDwEpTF+xuciwyFkAs8x/BvFrU8wiLNI7vNkOiFyjcDxfa/
 aHPiZVU1F8Jbo3vxyUIAiuE/GNAyVZTRcnydsxvbxfXeRz4MEZhk6V4BZI1aqU/aeh3s
 bkWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tkLo5MuenjfgUh7ytqosp9V6uC3O+z1QgvfQKMNJAYk=;
 b=XU6fAP/a2jvCUoCEOQlG29ZOSRZwPU7x7fHjxy8zanHBf94uaA3Uz9rn3hN+BaeRWh
 TrTF801EPsX5M5uGZ/18jzVQ3IDzy8dYIvaJjMGMe1xzLrhB6w7jrG6lDnwqEHo2If8K
 a91VgRZ4+DfzI0953XBjLSzYO5K+fF9pIw51dCY1xsZYYviLE5V8Jui+rRv95H475C6A
 1JsLeHqd2aV2Fj6duBxZS8aObn87hLMTNHe7U6nA+3ij09bgLHSqaPc+k5DK00jeey3F
 aYS2aKzOWtjvhl9ELPT8N7IH7kdkRGGHvHPAKUDFd+OzVXIb2Z81sEg7z9Y64MvA7xph
 z5BQ==
X-Gm-Message-State: AOAM533/HAUlaCccvOsqf7A9f3Y340cJlsz34HUyReQc6k9R90cdPnbE
 UzAiWZ9hRG3MVSjl90TIBoAyqhdVicW7sCsPbqW1yA==
X-Google-Smtp-Source: ABdhPJzXy64utNKQt/6CJ27Fde+kfLrEP3Sw0xwFz2nojIIdR36zXXAFZjy/pLgB66xOBspv6LJOVRLJNNlNkeq6HUE=
X-Received: by 2002:a05:6402:3047:: with SMTP id
 bu7mr356041edb.227.1616430291009; 
 Mon, 22 Mar 2021 09:24:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210319223856.2983244-1-jason@jlekstrand.net>
 <20210319223856.2983244-4-jason@jlekstrand.net>
 <7918db68-835c-b416-6187-1e62892ce5ed@linux.intel.com>
 <YFilKSbKYd+0HbCn@phenom.ffwll.local>
 <d83162e2-4b9e-c7e9-5324-6612bb9561d6@linux.intel.com>
 <CAKMK7uG0GLPu+auqDgMgD7ugvWo3E7W7DL6eALKxmp6hk-aZiA@mail.gmail.com>
 <fb406aca-1211-e1e5-b6a0-830c26d327ae@linux.intel.com>
In-Reply-To: <fb406aca-1211-e1e5-b6a0-830c26d327ae@linux.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Mon, 22 Mar 2021 11:24:39 -0500
Message-ID: <CAOFGe96uUHfktEqx6WLxOd_=msO=nKSDYj2eUKNhyruzz=EJag@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Drop the CONTEXT_CLONE API
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

Ugh... timezones.

On Mon, Mar 22, 2021 at 10:31 AM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> On 22/03/2021 14:57, Daniel Vetter wrote:
> > On Mon, Mar 22, 2021 at 3:33 PM Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> >>
> >>
> >> On 22/03/2021 14:09, Daniel Vetter wrote:
> >>> On Mon, Mar 22, 2021 at 11:22:01AM +0000, Tvrtko Ursulin wrote:
> >>>>
> >>>> On 19/03/2021 22:38, Jason Ekstrand wrote:
> >>>>> This API allows one context to grab bits out of another context upon
> >>>>> creation.  It can be used as a short-cut for setparam(getparam()) for
> >>>>> things like I915_CONTEXT_PARAM_VM.  However, it's never been used by any
> >>>>> real userspace.  It's used by a few IGT tests and that's it.  Since it
> >>>>> doesn't add any real value (most of the stuff you can CLONE you can copy
> >>>>> in other ways), drop it.
> >>>>
> >>>> No complaints to remove if it ended up unused outside IGT. Latter is a _big_
> >>>> problem though, since it is much more that a few IGT tests. So I really
> >>>> think there really needs to be an evaluation and a plan for that (we don't
> >>>> want to lose 50% of the coverage over night).

You should look at my IGT patch set.  I'm not deleting any tests
except those that explicitly test the clone API.  All the other tests
which use cloning to save a few lines when constructing new contexts
are updated to not require the cloning API.

> >>>>> There is one thing that this API allows you to clone which you cannot
> >>>>> clone via getparam/setparam: timelines.  However, timelines are an
> >>>>> implementation detail of i915 and not really something that needs to be
> >>>>
> >>>> Not really true timelines are i915 implementation detail. They are in fact a
> >>>> dma-fence context:seqno concept, nothing more that than. I think you are
> >>>> probably confusing struct intel_timeline with the timeline wording in the
> >>>> uapi. Former is i915 implementation detail, but context:seqno are truly
> >>>> userspace timelines.
> >>>
> >>> I think you're both saying the same thing and talking a bit past each
> >>> another.
> >>>
> >>> Yes the timeline is just a string of dma_fence, that's correct. Now
> >>> usually if you submit batches with execbuf, we have 3 ways to synchronize
> >>> concurrent submission: implicit sync, sync_file and drm_syncob. They all
> >>> map to different needs in different protocols/render apis.

Right.  We've always had the concept that everything submitted to
given HW context happens in-order.  As Daniel said below, allowing
out-of-order execution on a single HW context would be a bit nuts
because HW contexts are, by definition, stateful.  What this API adds
is a way to do in-order synchronization across multiple HW contexts
which is both new and unnecessary given the other primitives
available.

> >>> Now in one additional case the kernel makes sure that batchbuffers are
> >>> ordered, and that's when you submit them to the same hw ctx. Because
> >>> there's only 1 hw context and you really can't have batchbuffers run on
> >>> that single hw context out of order. That's what the timeline object we
> >>> talk about here is. But that largely is an internal implementation detail,
> >>> which happens to also use most/all the same infrastructure as the
> >>> dma_fence uapi pieces above.
> >>>
> >>> Now the internal implementation detail leaking here is that we exposed
> >>> this to userspace, without there being any need for this. What Jason
> >>> implements with syncobj in the next patch is essentially what userspace
> >>> should have been using for cross-engine sync. media userspace doesn't care
> >>> about interop with winsys/client apis, so they equally could have used
> >>> implicit sync or sync_file here (which I think is the solution now for the
> >>> new uapi prepped internally), since they all are about equally powerful
> >>> for stringing batchbuffers together.
> >>
> >> Are you saying we exposed a single timeline of execution per hw context
> >> via the single timeline flag?!
> >
> > Nope.
> >
> >> Timelines of execution were always exposed. Any "engine" (ring
> >> previously) in I915_EXEC_RING_MASK was a single timeline of execution.
> >> It is completely the same with engine map engines, which are also
> >> different indices into I915_EXEC_RING_MASK space.
> >>
> >> Userspace was aware of these timelines forever as well. Media was
> >> creating multiple contexts to have multiple timelines (so parallelism).
> >> Everyone knew that engine-hopping submissions needs to be either
> >> implicitly or explicitly synchronised, etc.
> >
> > Yup, I think we're saying the same thing here.
> >
> >> So I really don't see that we have leaked timelines as a concept *now*.
> >> What the patch has exposed to userspace is a new way to sync between
> >> timelines and nothing more.
> >
> > We've leaked it as something you can now share across hw context.
>
> Okay so we agree on most things but apparently have different
> definitions of what it means to leak internal implementation details.

I said it was a "leak" because, from my git archeology, the best I
could find for justification of doing it this way was that we already
have a timeline object so why not expose it.  Same for the
SINGLE_TIMELINE flag.  Is a "timeline" really an internal concept?
No, not really.  It's pretty standard.  But intel_timeline is an
internal thing and, while this doesn't give userspace an actual handle
to it, it gives it more visibility than needed, IMO.

--Jason


> While at the same time proof that we haven't leaked the internal
> implementation details is that Jason was able to implement the single
> timeline flag with a drm syncobj at the execbuf top level. (Well mostly,
> ignoring the probably inconsequential difference of one vs multiple
> fence contexts.)
>
> > Which is possible because of how it's internally implemented (I think
> > load balancer relies on that), but not really a synchronization
>
> Virtual engine is a single timeline by definition and it is still that
> regardless of the implementation details (execlists or GuC, in both
> cases it is a single hardware context and a single timeline).
>
> > primitive we want to export as such to userspace. We have other
> > interfaces and concepts for that.
>
> Yes, that is the only point to argue IMO. We can say it wasn't needed
> and should have been avoided, but I still maintain we can't really say
> we leaked anything backend specific to userspace via it.
>
> Regards,
>
> Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
