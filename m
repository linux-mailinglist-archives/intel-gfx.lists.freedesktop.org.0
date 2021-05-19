Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EEC388C3E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 13:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E35F56ED12;
	Wed, 19 May 2021 11:00:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF5416ED12;
 Wed, 19 May 2021 11:00:31 +0000 (UTC)
IronPort-SDR: 7L/YCzP1zeAtFmeIR8WHUdsA1HOqnCgQfCxmK820x4SHTtHzvuzvKBSG/0wE3k3V3ccednP1e3
 mq75+Cw2aMNw==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="200642243"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="200642243"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 04:00:31 -0700
IronPort-SDR: vv/LJ8BOo6CeHKLZ0RUnC6sJLFcwUz/Q0+AP7JWSXO3RB0Iwqh+KNLnhuNb7yh9p8uIXm++3wO
 zn+J7uTS2KFQ==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="474354124"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 04:00:29 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1ljJxi-00063w-Dg; Wed, 19 May 2021 14:02:02 +0300
Date: Wed, 19 May 2021 14:02:02 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <YKTwKjkUM7nhKmlD@platvala-desk.ger.corp.intel.com>
References: <20210511165117.428062-1-matthew.auld@intel.com>
 <CAM0jSHO6RD=w2TDAxRsr9=Hqabj=U4kya_bwEcC_MKw0t+hncA@mail.gmail.com>
 <YKTRVpuWOT/gsHdh@platvala-desk.ger.corp.intel.com>
 <CAM0jSHPN3TSkum54F6sHYaGHCpdEvu27j1zaVPx5_mWzg=UeRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHPN3TSkum54F6sHYaGHCpdEvu27j1zaVPx5_mWzg=UeRQ@mail.gmail.com>
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

On Wed, May 19, 2021 at 11:45:17AM +0100, Matthew Auld wrote:
> On Wed, 19 May 2021 at 09:49, Petri Latvala <petri.latvala@intel.com> wrote:
> >
> > On Wed, May 19, 2021 at 09:13:37AM +0100, Matthew Auld wrote:
> > > On Tue, 11 May 2021 at 17:52, Matthew Auld <matthew.auld@intel.com> wrote:
> > > >
> > > > Just the really basic stuff, which unlocks adding more interesting testcases
> > > > later, like gem_lmem_swapping.
> > > >
> > > > On the kernel side we landed the uAPI bits[1] behind CONFIG_BROKEN, which is
> > > > already enabled in CI builds, so it should be possible to get some more BAT
> > > > testing(outside of just the selftests) on DG1 to the point where we can start to
> > > > exercise the LMEM paths with the new bits of uAPI.
> > > >
> > > > [1] https://patchwork.freedesktop.org/series/89648/
> > >
> > > Petri, any thoughts on this series? As an initial step we just need
> > > some way to start exercising the new bits of uAPI, and from that we
> > > can add more interesting test cases.
> >
> > This series is in a confused state. First there's the addition of
> > local definitions and ioctl tokens, then they are replaced with the
> > proper stuff...
> 
> Yeah, I think that's how it is internally. Maybe the idea with that
> was to somehow land the igt changes first, before the kernel stuff
> potentially landed? I can clean this up and just start with the proper
> stuff.
> 
> >
> > When this was starting to get developed the idea was to avoid icky
> > cases that break _testing_. Not tests, testing. Remember when engine
> > discovery was being developed and we had cases where for_each_engine
> > loop didn't progress, causing stuff like
> >
> > for_each_engine(...)
> >  igt_subtest(...)
> >
> > to never enter a subtest?
> >
> > Pushing for stubbing memory regions ultimately wanted to avoid cases
> > where for_each_combination(memregions) breaks test enumeration.
> >
> > It all boils down to: Can that break? Can we have cases where the
> > query gives garbage? Can it give two million smem regions? Can it give
> > 0 regions, or -1 regions? And what happens then?
> 
> On integrated platforms it can only return one region: smem. If we
> somehow don't have a smem region then the i915 module load would have
> failed, since we must have been unable to populate the
> i915->mm.regions. On DG1 we just get the extra lmem region, and for Xe
> HP multi-tile we get a few more lmem regions, but again if we can't
> populate the i915->mm.regions with the required regions then we fail
> driver init. The only "optional" region is stolen memory, but for that
> we don't expose it to userspace.
> 
> The query will fail on !CONFIG_BROKEN kernels though, where it just
> returns -ENODEV, or of course some other error if the user provided an
> invalid query.

Behaviour between success/failure is business as usual. The danger in
the initial discussions for this was token value overloading or such,
stuff like IGT thinking it's calling DRM_IOCTL_DISTANCE_TO_LUNCHTIME
but that value was meanwhile taken by
DRM_IOCTL_HALT_AND_CATCH_FIRE. Of course the query change is not a new
ioctl but is value mismatch a possibility in a theoretical worst case
and how does the breakage show in testing?


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
