Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB8F23EA5F
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Aug 2020 11:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 913706E996;
	Fri,  7 Aug 2020 09:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71DD56E996
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Aug 2020 09:32:21 +0000 (UTC)
IronPort-SDR: XpMURYbLFlAvx5u8tbRDdUeNKoNEtki/69WLQawYMo6dBvk+loAKT58b0zPtN/Q1Aux5z4i9Cr
 c43OWfL1z6zQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9705"; a="140628659"
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="140628659"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:32:20 -0700
IronPort-SDR: 4+4vNicRfgCgL7pfnMLY+zpaBVGtwQqNhGBYRoFTFiXDjgnImZ5u3SXtHt3CZ9W40t7y80RQQw
 5U4Khkl7/2Qw==
X-IronPort-AV: E=Sophos;i="5.75,445,1589266800"; d="scan'208";a="437852825"
Received: from walshric-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.12.98])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2020 02:32:19 -0700
MIME-Version: 1.0
In-Reply-To: <CAPM=9tx0TW1ooPb89ifN6=OAYEt8f71=cMnZJzFf_p3xOmWFfw@mail.gmail.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-34-matthew.auld@intel.com>
 <CAPM=9tzvetxhBJBOC60ydOVcTN9ujtHLCODFNwGtONTDzuzwZA@mail.gmail.com>
 <c6cd965d-9a03-10fd-517e-a44934a2b0c9@intel.com>
 <CAPM=9txaksu8brsPTHsLkQudpNLd6O1MOzG8APGTrMaoXMioqw@mail.gmail.com>
 <d7e7b910-81d0-d7b2-b426-51b0714836eb@intel.com>
 <CAPM=9tx0TW1ooPb89ifN6=OAYEt8f71=cMnZJzFf_p3xOmWFfw@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>, Matthew Auld <matthew.auld@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <159679273645.9764.6619843023434546025@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Fri, 07 Aug 2020 12:32:16 +0300
Subject: Re: [Intel-gfx] [RFC 33/60] drm/i915/lmem: support pwrite
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Dave Airlie (2020-07-20 00:52:19)
> On Thu, 16 Jul 2020 at 20:11, Matthew Auld <matthew.auld@intel.com> wrote:
> >
> > On 16/07/2020 01:43, Dave Airlie wrote:
> > > On Wed, 15 Jul 2020 at 00:35, Matthew Auld <matthew.auld@intel.com> wrote:
> > >>
> > >> On 13/07/2020 06:09, Dave Airlie wrote:
> > >>> On Fri, 10 Jul 2020 at 22:00, Matthew Auld <matthew.auld@intel.com> wrote:
> > >>>>
> > >>>> We need to add support for pwrite'ing an LMEM object.
> > >>>
> > >>> why? DG1 is a discrete GPU, these interfaces we already gross and
> > >>> overly hacky for integrated, I'd prefer not to drag them across into
> > >>> discrete land.
> > >>>
> > >>> same goes for pread.
> > >>>
> > >>> You have no legacy userspace here, userspace needs change to support
> > >>> LMEM, it can be fixed to avoid legacy ioctls paths.
> > >>
> > >> Ok, there have also been similar discussions internally in the past. I
> > >> think one of the reasons was around IGT, and how keeping the
> > >> pread/pwrite interface meant slightly less pain, also it's not much
> > >> effort to implement for LMEM. If this is a NACK, then I guess the other
> > >> idea was to somehow fallback to mmap and update IGT accordingly.
> > >
> > > I just don't think we should have internal kernel interfaces for
> > > mapping ram in the kernel address space, seems pointless, makes less
> > > sense with a discrete GPU in the mix, so yes I think NAK for
> > > pread/pwrite at least at this time.
> >
> > Ok.
> >
> > >
> > > I'd also like to see a hard no relocs policy for DG1 enforced in the kernel.
> >
> > Ok, just checking, is that the case even if we don't require extra code
> > to support it? We recently dropped the CPU reloc path completely, in
> > favour of single GPU reloc path, and so no special code is required to
> > support LMEM, it should just work. IGT of course makes heavy use of
> > relocs, so that would need an overhaul.
> 
> The GPU reloc path is optimising a path that we simply shouldn't need
> or be using.
> 
> IGT tests relocs, ripping out relocs should reduce the amount of
> testing IGT has to do and reduce CI run times. Why carry the techincal
> debt deliberately.

We still have to optimize and keep the the relocations for the older
generations, where they are used. So can't really be eliminated from
codebase as much of the code is shared.

Agreed on the benefit in the more distant future coming from dropping
the relocations, once pre-Gen12 hardware is no more.

Note that IGT also uses relocations indirectly in non-relocation-specific
testtests, so there is quite some work according to our validation team.

Wrt this RFC, as no extra code is needed, it is faster to get stack
up and running with relocations. It also keeps the changes between
iGFX and dGFX minimal, which should help debugging. So that path was
taken to get the functional RFC out as fast as possible.

Moving away from relocations in both IGT and media driver is being
discussed and worked on. See below.

> I expect the kernel team to be a bit more authorative inside Intel on
> why uAPI gets exposed and why, it seems like everytime there is an
> attempt to limit the tech debt of carrying forward unnecessary uAPIs
> there is some push back for media driver or IGT. Fix stuff and be
> harder in pushing back on carrying unneeded interfaces forward so we
> future products are less mired in pointless debt. DG1 uAPI should
> really be a chance to full review the legacy of integrated graphics +
> pre-48-bit VM interfaces and they should all be turned off for DG1 so
> that future discrete GPUs can move forward cleaner. I really shouldn't
> be the one enforcing this, the i915 team needs to be a bit
> authoritative on what is necessary to support.

The patches were sent out as RFC to collect comments. Based on the
comments, we're expediting the work to eliminate the use of relocations.

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
