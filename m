Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC573793EA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 18:33:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140BC6E88B;
	Mon, 10 May 2021 16:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com
 [IPv6:2607:f8b0:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE0366E89C
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 16:33:45 +0000 (UTC)
Received: by mail-oi1-x234.google.com with SMTP id v22so11437669oic.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 09:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aZ1/lrBzcsC4yxUtl80iyoqmPNE3kjTyP4JmZS1sjZ0=;
 b=bEDr16RIcfJKsmNqT2hAf9+QfyipeUDD0xs8XqvmIa7axE8+vS+o+5NF4jTTbqsOpT
 dbkyuisLnZn9CFFDeKWoQ35evLJxezfg2zEV2KSMbWnbPzoZppr3YzKFngnMptYGLh1d
 UC1y5BuVowbZLX47yn4iAk2eSDXEwvja9IYdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aZ1/lrBzcsC4yxUtl80iyoqmPNE3kjTyP4JmZS1sjZ0=;
 b=K5L2gvHI9L0U0w1pJHgLzyjMa96G01OfwLnpyDb90I9Dn57LB1ToRt0Ul8BUBI+N8Q
 rHoSH5LyaL4tFSiagzhVBh4Zf3sji9NtHmCVqO0Bn/rKUkp0dI1gIq6A6Xekh+90qbJw
 H6u4kFlQDm4aKxNZULB0iGo5Vcl0qduMfs2NEYQkVOx1Xezoehy2XrfzVvkUsV6Cw3Pt
 VkpJGPGhswm3p94JIKVjXLjSnbPFrQ1P9GiUxwx5Qx6CmQlyZoulPsw1vLZXDi1Js0t8
 7zTQ5Hwq9O63x9QHqxlMAZn4BTzWIGh69AglFS07Nyd+wjwTk3vEwshX4pACxSHyt8TW
 B5kg==
X-Gm-Message-State: AOAM533x13rjMNCEONHsjpwpwU4YO4soktjFOnUlYmtR0XrnwN9sz3W7
 V4oYvp8cEM49eHEzXZyIJjrhKXYfMJRAQc6rkcdQAQ==
X-Google-Smtp-Source: ABdhPJwT0pM1FOLv+e+1kzHvDGZJ6TU+Tqh3X4x2qTE0gP6N/N6Fclfwtn+ioQwQ6Vi3RJKNSUfr3L9cAkzVIK/ij2g=
X-Received: by 2002:aca:df87:: with SMTP id
 w129mr18753892oig.128.1620664425046; 
 Mon, 10 May 2021 09:33:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <d22437bd-8bb6-d7cb-c017-89cdc7da560d@free.fr>
 <17953669798.2817.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
 <546e4ee4-9aa4-1967-cdcb-a561cac582ef@free.fr>
In-Reply-To: <546e4ee4-9aa4-1967-cdcb-a561cac582ef@free.fr>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 10 May 2021 18:33:33 +0200
Message-ID: <CAKMK7uETcM38sjPYJLdxpGcZcx=tHdGUPe0WTgnGoZfPQvEJFQ@mail.gmail.com>
To: Martin Peres <martin.peres@free.fr>
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Jason Ekstrand <jason.ekstrand@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 10, 2021 at 3:55 PM Martin Peres <martin.peres@free.fr> wrote:
>
> On 10/05/2021 02:11, Jason Ekstrand wrote:
> > On May 9, 2021 12:12:36 Martin Peres <martin.peres@free.fr> wrote:
> >
> >> Hi,
> >>
> >> On 06/05/2021 22:13, Matthew Brost wrote:
> >>> Basic GuC submission support. This is the first bullet point in the
> >>> upstreaming plan covered in the following RFC [1].
> >>>
> >>> At a very high level the GuC is a piece of firmware which sits between
> >>> the i915 and the GPU. It offloads some of the scheduling of contexts
> >>> from the i915 and programs the GPU to submit contexts. The i915
> >>> communicates with the GuC and the GuC communicates with the GPU.
> >>
> >> May I ask what will GuC command submission do that execlist won't/can't
> >> do? And what would be the impact on users? Even forgetting the troubled
> >> history of GuC (instability, performance regression, poor level of user
> >> support, 6+ years of trying to upstream it...), adding this much code
> >> and doubling the amount of validation needed should come with a
> >> rationale making it feel worth it... and I am not seeing here. Would you
> >> mind providing the rationale behind this work?
> >>
> >>>
> >>> GuC submission will be disabled by default on all current upstream
> >>> platforms behind a module parameter - enable_guc. A value of 3 will
> >>> enable submission and HuC loading via the GuC. GuC submission should
> >>> work on all gen11+ platforms assuming the GuC firmware is present.
> >>
> >> What is the plan here when it comes to keeping support for execlist? I
> >> am afraid that landing GuC support in Linux is the first step towards
> >> killing the execlist, which would force users to use proprietary
> >> firmwares that even most Intel engineers have little influence over.
> >> Indeed, if "drm/i915/guc: Disable semaphores when using GuC scheduling"
> >> which states "Disable semaphores when using GuC scheduling as semaphores
> >> are broken in the current GuC firmware." is anything to go by, it means
> >> that even Intel developers seem to prefer working around the GuC
> >> firmware, rather than fixing it.
> >
> > Yes, landing GuC support may be the first step in removing execlist
> > support. The inevitable reality is that GPU scheduling is coming and
> > likely to be there only path in the not-too-distant future. (See also
> > the ongoing thread with AMD about fences.) I'm not going to pass
> > judgement on whether or not this is a good thing.  I'm just reading the
> > winds and, in my view, this is where things are headed for good or ill.
> >
> > In answer to the question above, the answer to "what do we gain from
> > GuC?" may soon be, "you get to use your GPU."  We're not there yet and,
> > again, I'm not necessarily advocating for it, but that is likely where
> > things are headed.
>
> This will be a sad day, especially since it seems fundamentally opposed
> with any long-term support, on top of taking away user freedom to
> fix/tweak their system when Intel won't.
>
> > A firmware-based submission model isn't a bad design IMO and, aside from
> > the firmware freedom issues, I think there are actual advantages to the
> > model. Immediately, it'll unlock a few features like parallel submission
> > (more on that in a bit) and long-running compute because they're
> > implemented in GuC and the work to implement them properly in the
> > execlist scheduler is highly non-trivial. Longer term, it may (no
> > guarantees) unlock some performance by getting the kernel out of the way.
>
> Oh, I definitely agree with firmware-based submission model not being a
> bad design. I was even cheering for it in 2015. Experience with it made
> me regret that deeply since :s
>
> But with the DRM scheduler being responsible for most things, I fail to
> see what we could offload in the GuC except context switching (like
> every other manufacturer). The problem is, the GuC does way more than
> just switching registers in bulk, and if the number of revisions of the
> GuC is anything to go by, it is way too complex for me to feel
> comfortable with it.

We need to flesh out that part of the plan more, but we're not going
to use drm scheduler for everything. It's only to handle the dma-fence
legacy side of things, which means:
- timeout handling for batches that take too long
- dma_fence dependency sorting/handling
- boosting of context from display flips (currently missing, needs to
be ported from drm/i915)

The actual round-robin/preempt/priority handling is still left to the
backend, in this case here the fw. So there's large chunks of
code/functionality where drm/scheduler wont be involved in, and like
Jason says: The hw direction winds definitely blow in the direction
that this is all handled in hw.

> >> In the same vein, I have another concern related to the impact of GuC on
> >> Linux's stable releases. Let's say that in 3 years, a new application
> >> triggers a bug in command submission inside the firmware. Given that the
> >> Linux community cannot patch the GuC firmware, how likely is it that
> >> Intel would release a new GuC version? That would not be necessarily
> >> such a big problem if newer versions of the GuC could easily be
> >> backported to this potentially-decade-old Linux version, but given that
> >> the GuC seems to have ABI-breaking changes on a monthly cadence (we are
> >> at major version 60 *already*? :o), I would say that it is
> >> highly-unlikely that it would not require potentially-extensive changes
> >> to i915 to make it work, making the fix almost impossible to land in the
> >> stable tree... Do you have a plan to mitigate this problem?
> >>
> >> Patches like "drm/i915/guc: Disable bonding extension with GuC
> >> submission" also make me twitch, as this means the two command
> >> submission paths will not be functionally equivalent, and enabling GuC
> >> could thus introduce a user-visible regression (one app used to work,
> >> then stopped working). Could you add in the commit's message a proof
> >> that this would not end up being a user regression (in which case, why
> >> have this codepath to begin with?).
> >
> > I'd like to address this one specifically as it's become something of a
> > speciality of mine the past few weeks. The current bonded submission
> > model is bad. It provides a plethora of ways for a client to back itself
> > into a corner and doesn't actually provide the guarantees the media
> > driver needs for its real-time high-resolution decode. It's bad enough
> > we're seriously considering ripping it out, backwards compatibility or
> > not. The good news is that very little that your average desktop user
> > does depends on it: basically just real-time >4K video decode.
> >
> > The new parallel submit API is much better and should be the path
> > forward. (We should have landed parallel submit the first time around.)
> > It isn't full of corners and does let us provides actual parallel
> > execution guarantees. It also gives the scheduler the information it
> > needs to reliably provide those guarantees. >
> > If we need to support the parallel submit API with the execlist
> > back-end, that's totally possible. The choice to only implement the
> > parallel submit API with GuC is a pragmatic one. We're trying to get
> > upstream back on it's feet and get all the various up-and-coming bits of
> > hardware enabled. Enabling the new API in the execlist back-end makes
> > that pipeline longer.
>
> I feel your pain, and wish you all the best to get GEM less complex
> and more manageable.
>
> So, if I understood correctly, the plan is just to regress 4K+ video
> decoding for people who do not enable GuC scheduling, or did not also
> update to a recent-enough media driver that would support this new
> interface? If it is indeed only for over 4K videos, then whatever. If it
> is 4K, it starts being a little bad, assuming graceful fallback to
> CPU-based decoding. What's the test plan for this patch then? The patch
> in its current form is definitely not making me confident.

Only if they don't scream loudly enough. If someone screams loud
enough we'll bite the bullet and enable the new interface on execlist
backend.

Cheers, Daniel

> >> Finally, could you explain why IGT tests need to be modified to work the
> >> GuC [1], and how much of the code in this series is covered by
> >> existing/upcoming tests? I would expect a very solid set of tests to
> >> minimize the maintenance burden, and enable users to reproduce potential
> >> issues found in this new codepath (too many users run with enable_guc=3,
> >> as can be seen on Google[2]).
> >
> > The IGT changes, as I understand them, are entirely around switching to
> > the new parallel submit API. There shouldn't be a major effect to most
> > users.
>
> Right, this part I followed, but failed to connect it to the GuC...
> because I couldn't see why it would be needed (execlist requiring a lot
> more work).
>
> I sincerely wish for the GuC to stay away from upstream because of the
> above concerns (which are yet to be addressed), but if Intel were to
> push forward with the plan to drop execlist, I can foresee a world of
> trouble for users... That is of course unless the GuC were to be open
> sourced, with people outside of Intel able to sign their own builds or
> run unsigned. Failing that, let's hope the last 6 years were just a bad
> start, and the rapid climb in major version of the GuC will magically
> stop! I hope execlists will remain at feature parity with the GuC when
> possible... but deplore the increase in validation needs which will only
> hurt users in the end.
>
> Thanks for your honest answer,
> Martin
>
> >
> > --Jason



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
