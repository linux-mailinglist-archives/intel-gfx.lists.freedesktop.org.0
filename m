Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A6837AABF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 17:32:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D7126EA62;
	Tue, 11 May 2021 15:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1994E6EA61;
 Tue, 11 May 2021 15:32:12 +0000 (UTC)
IronPort-SDR: 6zpk4QnNmYZj0U2YnyCzope1H1rn8YufpHjyFEuEqxZdMELnlMrNS1RvvqziUZGDFUuVj/Lyur
 1nSgrOsrebVw==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="199523566"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="199523566"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 08:32:05 -0700
IronPort-SDR: 8sfC+Z6+bnyqO83x/6R1oWRvX/IGrNUOhbpXAlaXMgOzFX68AkJIbi7GQ8o6xDiTSIWxw0XLDZ
 JcnJsiNpEgqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="434601130"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 11 May 2021 08:32:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 11 May 2021 08:32:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 11 May 2021 08:32:03 -0700
Received: from fmsmsx610.amr.corp.intel.com ([10.18.126.90]) by
 fmsmsx610.amr.corp.intel.com ([10.18.126.90]) with mapi id 15.01.2106.013;
 Tue, 11 May 2021 08:32:03 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Martin Peres <martin.peres@free.fr>, Daniel Vetter <daniel@ffwll.ch>
Thread-Topic: [RFC PATCH 00/97] Basic GuC submission support in the i915
Thread-Index: AQHXQqmdeMs8Pc67x0q3ztXPF3PEcarb3OcAgABkeICAAPbxAIAALCSAgAEEnAD///Xm4A==
Date: Tue, 11 May 2021 15:26:59 +0000
Deferred-Delivery: Tue, 11 May 2021 15:25:07 +0000
Message-ID: <d382a41cacbc44ee96b9602f3473b5c0@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <d22437bd-8bb6-d7cb-c017-89cdc7da560d@free.fr>
 <17953669798.2817.c6988b7ea6112e3e892765a0d4287e0c@jlekstrand.net>
 <546e4ee4-9aa4-1967-cdcb-a561cac582ef@free.fr>
 <CAKMK7uETcM38sjPYJLdxpGcZcx=tHdGUPe0WTgnGoZfPQvEJFQ@mail.gmail.com>
 <08c22bc8-aa35-43d2-ad4c-7f489dfc585b@free.fr>
In-Reply-To: <08c22bc8-aa35-43d2-ad4c-7f489dfc585b@free.fr>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
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
 dri-devel <dri-devel@lists.freedesktop.org>, "Ekstrand,
 Jason" <jason.ekstrand@intel.com>, "Vetter, Daniel" <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Martin Peres <martin.peres@free.fr>
> Sent: Tuesday, May 11, 2021 1:06 AM
> To: Daniel Vetter <daniel@ffwll.ch>
> Cc: Jason Ekstrand <jason@jlekstrand.net>; Brost, Matthew
> <matthew.brost@intel.com>; intel-gfx <intel-gfx@lists.freedesktop.org>;
> dri-devel <dri-devel@lists.freedesktop.org>; Ursulin, Tvrtko
> <tvrtko.ursulin@intel.com>; Ekstrand, Jason <jason.ekstrand@intel.com>;
> Ceraolo Spurio, Daniele <daniele.ceraolospurio@intel.com>; Bloomfield, Jon
> <jon.bloomfield@intel.com>; Vetter, Daniel <daniel.vetter@intel.com>;
> Harrison, John C <john.c.harrison@intel.com>
> Subject: Re: [RFC PATCH 00/97] Basic GuC submission support in the i915
> 
> On 10/05/2021 19:33, Daniel Vetter wrote:
> > On Mon, May 10, 2021 at 3:55 PM Martin Peres <martin.peres@free.fr>
> wrote:
> >>
> >> On 10/05/2021 02:11, Jason Ekstrand wrote:
> >>> On May 9, 2021 12:12:36 Martin Peres <martin.peres@free.fr> wrote:
> >>>
> >>>> Hi,
> >>>>
> >>>> On 06/05/2021 22:13, Matthew Brost wrote:
> >>>>> Basic GuC submission support. This is the first bullet point in the
> >>>>> upstreaming plan covered in the following RFC [1].
> >>>>>
> >>>>> At a very high level the GuC is a piece of firmware which sits between
> >>>>> the i915 and the GPU. It offloads some of the scheduling of contexts
> >>>>> from the i915 and programs the GPU to submit contexts. The i915
> >>>>> communicates with the GuC and the GuC communicates with the
> GPU.
> >>>>
> >>>> May I ask what will GuC command submission do that execlist
> won't/can't
> >>>> do? And what would be the impact on users? Even forgetting the
> troubled
> >>>> history of GuC (instability, performance regression, poor level of user
> >>>> support, 6+ years of trying to upstream it...), adding this much code
> >>>> and doubling the amount of validation needed should come with a
> >>>> rationale making it feel worth it... and I am not seeing here. Would you
> >>>> mind providing the rationale behind this work?
> >>>>
> >>>>>
> >>>>> GuC submission will be disabled by default on all current upstream
> >>>>> platforms behind a module parameter - enable_guc. A value of 3 will
> >>>>> enable submission and HuC loading via the GuC. GuC submission
> should
> >>>>> work on all gen11+ platforms assuming the GuC firmware is present.
> >>>>
> >>>> What is the plan here when it comes to keeping support for execlist? I
> >>>> am afraid that landing GuC support in Linux is the first step towards
> >>>> killing the execlist, which would force users to use proprietary
> >>>> firmwares that even most Intel engineers have little influence over.
> >>>> Indeed, if "drm/i915/guc: Disable semaphores when using GuC
> scheduling"
> >>>> which states "Disable semaphores when using GuC scheduling as
> semaphores
> >>>> are broken in the current GuC firmware." is anything to go by, it means
> >>>> that even Intel developers seem to prefer working around the GuC
> >>>> firmware, rather than fixing it.
> >>>
> >>> Yes, landing GuC support may be the first step in removing execlist
> >>> support. The inevitable reality is that GPU scheduling is coming and
> >>> likely to be there only path in the not-too-distant future. (See also
> >>> the ongoing thread with AMD about fences.) I'm not going to pass
> >>> judgement on whether or not this is a good thing.  I'm just reading the
> >>> winds and, in my view, this is where things are headed for good or ill.
> >>>
> >>> In answer to the question above, the answer to "what do we gain from
> >>> GuC?" may soon be, "you get to use your GPU."  We're not there yet
> and,
> >>> again, I'm not necessarily advocating for it, but that is likely where
> >>> things are headed.
> >>
> >> This will be a sad day, especially since it seems fundamentally opposed
> >> with any long-term support, on top of taking away user freedom to
> >> fix/tweak their system when Intel won't.
> >>
> >>> A firmware-based submission model isn't a bad design IMO and, aside
> from
> >>> the firmware freedom issues, I think there are actual advantages to the
> >>> model. Immediately, it'll unlock a few features like parallel submission
> >>> (more on that in a bit) and long-running compute because they're
> >>> implemented in GuC and the work to implement them properly in the
> >>> execlist scheduler is highly non-trivial. Longer term, it may (no
> >>> guarantees) unlock some performance by getting the kernel out of the
> way.
> >>
> >> Oh, I definitely agree with firmware-based submission model not being a
> >> bad design. I was even cheering for it in 2015. Experience with it made
> >> me regret that deeply since :s
> >>
> >> But with the DRM scheduler being responsible for most things, I fail to
> >> see what we could offload in the GuC except context switching (like
> >> every other manufacturer). The problem is, the GuC does way more than
> >> just switching registers in bulk, and if the number of revisions of the
> >> GuC is anything to go by, it is way too complex for me to feel
> >> comfortable with it.
> >
> > We need to flesh out that part of the plan more, but we're not going
> > to use drm scheduler for everything. It's only to handle the dma-fence
> > legacy side of things, which means:
> > - timeout handling for batches that take too long
> > - dma_fence dependency sorting/handling
> > - boosting of context from display flips (currently missing, needs to
> > be ported from drm/i915)
> >
> > The actual round-robin/preempt/priority handling is still left to the
> > backend, in this case here the fw. So there's large chunks of
> > code/functionality where drm/scheduler wont be involved in, and like
> > Jason says: The hw direction winds definitely blow in the direction
> > that this is all handled in hw.
> 
> The plan makes sense for a SRIOV-enable GPU, yes.
> 
> However, if the GuC is actually helping i915, then why not open source
> it and drop all the issues related to its stability? Wouldn't it be the
> perfect solution, as it would allow dropping execlist support for newer
> HW, and it would eliminate the concerns about maintenance of stable
> releases of Linux?

That the major version of the FW is high is not due to bugs - Bugs don't trigger major version bumps anyway. Only interface changes increment the major version, and we do add features, to keep it relevant to the evolving hardware and OS landscape. When only Windows used GuC there was no reason not to minimize interface creep - GuC and KMD are released as an atomic bundle on Windows. With Linux, this is no longer the case, and has not been for some time.

We have been using GuC as the sole mechanism for submission on Windows since Gen8, and it has proven very reliable. This is in large part because it is simple, and designed from day 1 as a cohesive solution alongside the hardware.

Will there be bugs in the future? Of course. It's a new i915 backend. There are bugs in the execlist backend too, and the runlist backend, and the majority of real-world software ever written. But the i915 GuC backend is way simpler than execlist, much easier to understand, and therefore much easier to maintain. It's a net win for i915 and Linux.

Jon
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
