Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 255483889B5
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 10:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68A236E40D;
	Wed, 19 May 2021 08:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F2906E40D;
 Wed, 19 May 2021 08:49:01 +0000 (UTC)
IronPort-SDR: 4fjdvE/pFKqWWyCGKV4kzZrM9OVIdoUcd8JLh2xjQIRMIS71rjiEGrFg2zUPlycXU+F63Sd1vY
 qlip9Y8ybLBA==
X-IronPort-AV: E=McAfee;i="6200,9189,9988"; a="188054284"
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="188054284"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 01:48:59 -0700
IronPort-SDR: 5kHrgnyIaWhFfd5CAqJx47a8b89iC82IQKMMFQ7sZxpurF66V9Q3RUeefx+Pz45AgPDdZEEPt+
 ruImxi8yCNjQ==
X-IronPort-AV: E=Sophos;i="5.82,312,1613462400"; d="scan'208";a="394337219"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 01:48:58 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94)
 (envelope-from <petri.latvala@intel.com>)
 id 1ljHuQ-0005ux-RC; Wed, 19 May 2021 11:50:30 +0300
Date: Wed, 19 May 2021 11:50:30 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <YKTRVpuWOT/gsHdh@platvala-desk.ger.corp.intel.com>
References: <20210511165117.428062-1-matthew.auld@intel.com>
 <CAM0jSHO6RD=w2TDAxRsr9=Hqabj=U4kya_bwEcC_MKw0t+hncA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM0jSHO6RD=w2TDAxRsr9=Hqabj=U4kya_bwEcC_MKw0t+hncA@mail.gmail.com>
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

On Wed, May 19, 2021 at 09:13:37AM +0100, Matthew Auld wrote:
> On Tue, 11 May 2021 at 17:52, Matthew Auld <matthew.auld@intel.com> wrote:
> >
> > Just the really basic stuff, which unlocks adding more interesting testcases
> > later, like gem_lmem_swapping.
> >
> > On the kernel side we landed the uAPI bits[1] behind CONFIG_BROKEN, which is
> > already enabled in CI builds, so it should be possible to get some more BAT
> > testing(outside of just the selftests) on DG1 to the point where we can start to
> > exercise the LMEM paths with the new bits of uAPI.
> >
> > [1] https://patchwork.freedesktop.org/series/89648/
> 
> Petri, any thoughts on this series? As an initial step we just need
> some way to start exercising the new bits of uAPI, and from that we
> can add more interesting test cases.

This series is in a confused state. First there's the addition of
local definitions and ioctl tokens, then they are replaced with the
proper stuff...

When this was starting to get developed the idea was to avoid icky
cases that break _testing_. Not tests, testing. Remember when engine
discovery was being developed and we had cases where for_each_engine
loop didn't progress, causing stuff like

for_each_engine(...)
 igt_subtest(...)

to never enter a subtest?

Pushing for stubbing memory regions ultimately wanted to avoid cases
where for_each_combination(memregions) breaks test enumeration.

It all boils down to: Can that break? Can we have cases where the
query gives garbage? Can it give two million smem regions? Can it give
0 regions, or -1 regions? And what happens then?

Is it just gem_create_ext that's hiding behind CONFIG_BROKEN or also
the querying?


-- 
Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
