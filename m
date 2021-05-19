Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F25388D7D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 14:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B166ED8F;
	Wed, 19 May 2021 12:05:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FB146ED84;
 Wed, 19 May 2021 12:05:37 +0000 (UTC)
IronPort-SDR: UGgyu7W5PuNVQFvsmibxnrTpCAUoUSDHCjmW0OR9juuPHhKiohJc8NEe2Moerjl+hsW2tOdDmy
 AGQVsFwv6ljg==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="264873636"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="264873636"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 05:05:36 -0700
IronPort-SDR: mwjsS4lLfopwoxsgFPD1hWageFxeIpFblxTUCUf2No6qtOSWfKn4pXNtckxbGWodLgvsssgdhG
 VhuPc/yzHAWQ==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="544532710"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 05:05:34 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1ljKyh-00069Q-CN; Wed, 19 May 2021 15:07:07 +0300
Date: Wed, 19 May 2021 15:07:07 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <YKT/a7zAG3PIN37W@platvala-desk.ger.corp.intel.com>
References: <20210511165117.428062-1-matthew.auld@intel.com>
 <CAM0jSHO6RD=w2TDAxRsr9=Hqabj=U4kya_bwEcC_MKw0t+hncA@mail.gmail.com>
 <YKTRVpuWOT/gsHdh@platvala-desk.ger.corp.intel.com>
 <CAM0jSHPN3TSkum54F6sHYaGHCpdEvu27j1zaVPx5_mWzg=UeRQ@mail.gmail.com>
 <YKTwKjkUM7nhKmlD@platvala-desk.ger.corp.intel.com>
 <CAM0jSHMi3YFfyQkh8hqeCGr4DRGB=BfY+38dUZnVaynmABDtvw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHMi3YFfyQkh8hqeCGr4DRGB=BfY+38dUZnVaynmABDtvw@mail.gmail.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 00/12] DG1/LMEM uAPI basics
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
Cc: igt-dev@lists.freedesktop.org,
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 19, 2021 at 12:36:17PM +0100, Matthew Auld wrote:
> On Wed, 19 May 2021 at 12:00, Petri Latvala <petri.latvala@intel.com> wrote:
> >
> > On Wed, May 19, 2021 at 11:45:17AM +0100, Matthew Auld wrote:
> > > On Wed, 19 May 2021 at 09:49, Petri Latvala <petri.latvala@intel.com> wrote:
> > > >
> > > > On Wed, May 19, 2021 at 09:13:37AM +0100, Matthew Auld wrote:
> > > > > On Tue, 11 May 2021 at 17:52, Matthew Auld <matthew.auld@intel.com> wrote:
> > > > > >
> > > > > > Just the really basic stuff, which unlocks adding more interesting testcases
> > > > > > later, like gem_lmem_swapping.
> > > > > >
> > > > > > On the kernel side we landed the uAPI bits[1] behind CONFIG_BROKEN, which is
> > > > > > already enabled in CI builds, so it should be possible to get some more BAT
> > > > > > testing(outside of just the selftests) on DG1 to the point where we can start to
> > > > > > exercise the LMEM paths with the new bits of uAPI.
> > > > > >
> > > > > > [1] https://patchwork.freedesktop.org/series/89648/
> > > > >
> > > > > Petri, any thoughts on this series? As an initial step we just need
> > > > > some way to start exercising the new bits of uAPI, and from that we
> > > > > can add more interesting test cases.
> > > >
> > > > This series is in a confused state. First there's the addition of
> > > > local definitions and ioctl tokens, then they are replaced with the
> > > > proper stuff...
> > >
> > > Yeah, I think that's how it is internally. Maybe the idea with that
> > > was to somehow land the igt changes first, before the kernel stuff
> > > potentially landed? I can clean this up and just start with the proper
> > > stuff.
> > >
> > > >
> > > > When this was starting to get developed the idea was to avoid icky
> > > > cases that break _testing_. Not tests, testing. Remember when engine
> > > > discovery was being developed and we had cases where for_each_engine
> > > > loop didn't progress, causing stuff like
> > > >
> > > > for_each_engine(...)
> > > >  igt_subtest(...)
> > > >
> > > > to never enter a subtest?
> > > >
> > > > Pushing for stubbing memory regions ultimately wanted to avoid cases
> > > > where for_each_combination(memregions) breaks test enumeration.
> > > >
> > > > It all boils down to: Can that break? Can we have cases where the
> > > > query gives garbage? Can it give two million smem regions? Can it give
> > > > 0 regions, or -1 regions? And what happens then?
> > >
> > > On integrated platforms it can only return one region: smem. If we
> > > somehow don't have a smem region then the i915 module load would have
> > > failed, since we must have been unable to populate the
> > > i915->mm.regions. On DG1 we just get the extra lmem region, and for Xe
> > > HP multi-tile we get a few more lmem regions, but again if we can't
> > > populate the i915->mm.regions with the required regions then we fail
> > > driver init. The only "optional" region is stolen memory, but for that
> > > we don't expose it to userspace.
> > >
> > > The query will fail on !CONFIG_BROKEN kernels though, where it just
> > > returns -ENODEV, or of course some other error if the user provided an
> > > invalid query.
> >
> > Behaviour between success/failure is business as usual. The danger in
> > the initial discussions for this was token value overloading or such,
> > stuff like IGT thinking it's calling DRM_IOCTL_DISTANCE_TO_LUNCHTIME
> > but that value was meanwhile taken by
> > DRM_IOCTL_HALT_AND_CATCH_FIRE. Of course the query change is not a new
> > ioctl but is value mismatch a possibility in a theoretical worst case
> > and how does the breakage show in testing?
> 
> Hmm, do you mean if we decide to change the uAPI before dropping the
> CONFIG_BROKEN? That's for sure a possibility.

Yes. For ioctl numbers the realistic scenario is that someone else
takes over the value but that's not the case here for the query
token...


> Maybe we can do something like the prelim thing?
> 
> /** XXX: these are subject to change, hence leaving some holes */
> I915_GEM_CREATE_EXT_MEMORY_REGIONS 0xff
> DRM_I915_QUERY_MEMORY_REGIONS 0xff
> 
> That way, if we do need to change anything here we can add the new
> version(using the lowest available value at the time) and also keep
> the old version which should be backwards compat, then migrate igt
> over to the new and then drop the old from the kernel? And then at
> some point also drop CONFIG_BROKEN once the uAPI is final?
> 
> I think it should be the case that all other related values are
> effectively namespaced within that.

That might be overkill for this if the only real danger is the query
token having the wrong meaning, and that value being fully in i915
control.

After mulling back and forth I'm ready to slap an A-b on this series
after the cleanup mentioned above.


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
