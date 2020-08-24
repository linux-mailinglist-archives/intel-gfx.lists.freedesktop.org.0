Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D40424FB84
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 12:33:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAC776E1D5;
	Mon, 24 Aug 2020 10:33:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 146896E1D3;
 Mon, 24 Aug 2020 10:33:23 +0000 (UTC)
IronPort-SDR: jUIhf+KR0cv7txXAY2Tazrh+s9Ogu7q4Q6G3gG1AU4M5GVcpE9Dl/FlZB4Lli1AePq561wxQMt
 UDWLRyt8QAPw==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="155857454"
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="155857454"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 03:33:22 -0700
IronPort-SDR: m7rxdrMILTLVNvFfLh/n0fZm17UKi/Mj/G3TRxwYZzdE6Z6qNhXMWNdyb6bl1VcOegsNWzTc29
 D2TKcusG6fww==
X-IronPort-AV: E=Sophos;i="5.76,348,1592895600"; d="scan'208";a="322173025"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 03:33:20 -0700
Message-ID: <23653a2345a447d0b50c64a9c307ca14d54e7232.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Petri Latvala <petri.latvala@intel.com>
Date: Mon, 24 Aug 2020 12:33:17 +0200
In-Reply-To: <20200824092650.GG7444@platvala-desk.ger.corp.intel.com>
References: <20200821153807.18613-1-janusz.krzysztofik@linux.intel.com>
 <159803163552.16198.17489156056346233245@emeril.freedesktop.org>
 <3a286dc2f27ed0961b0e0246f8102f21a93b42c6.camel@linux.intel.com>
 <20200824092650.GG7444@platvala-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgdGVz?=
 =?utf-8?q?ts/core=5Fhotunplug=3A_Fixes_and_enhancements_=28rev4=29?=
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Petri,

On Mon, 2020-08-24 at 12:26 +0300, Petri Latvala wrote:
> On Mon, Aug 24, 2020 at 10:42:10AM +0200, Janusz Krzysztofik wrote:
> > On Fri, 2020-08-21 at 17:40 +0000, Patchwork wrote:
> > > Patch Details
> > > Series:	tests/core_hotunplug: Fixes and enhancements (rev4)
> > > URL:	https://patchwork.freedesktop.org/series/79671/
> > > State:	failure
> > > Details:	https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4901/index.html
> > > CI Bug Log - changes from CI_DRM_8913_full -> IGTPW_4901_full
> > > Summary
> > > FAILURE
> > > 
> > > Serious unknown changes coming with IGTPW_4901_full absolutely need to be
> > > verified manually.
> > > 
> > > If you think the reported changes have nothing to do with the changes
> > > introduced in IGTPW_4901_full, please notify your bug team to allow them
> > > to document this new failure mode, which will reduce false positives in CI.
> > > 
> > > External URL: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4901/index.html
> > > 
> > > Possible new issues
> > > Here are the unknown changes that may have been introduced in IGTPW_4901_full:
> > > 
> > > IGT changes
> > > Possible regressions
> > > {igt@core_hotunplug@hotrebind-lateclose} (NEW):
> > > 
> > > shard-snb: NOTRUN -> FAIL
> > > 
> > > shard-glk: NOTRUN -> FAIL
> > > 
> > > shard-kbl: NOTRUN -> FAIL
> > 
> > This is an existing but formerly not reported GPU hang driver issue
> > exhibited by the test, not a regression.  The issue needs to be fixed
> > in the driver for the test to succeed.  As one can see from CI reports,
> > the test succesfuly recovers from that condition and subsequent tests
> > are not affected.
> >   
> > > {igt@core_hotunplug@hotunbind-lateclose} (NEW):
> > > 
> > > shard-hsw: NOTRUN -> INCOMPLETE +3 similar issues
> > 
> > This is a known driver issue, already reported by igt@device
> > _reset@unbind-reset-rebind.  This test shows clearly that the issue has
> > nothing to do with device reset, only with driver unbind-rebind cycle. 
> > The driver needs to be fixed for the kernel warning not be triggered
> > and the tests succeed.
> 
> Is there an ETA for the driver fix?

Not that I know of.  I'll have a look at it.

Thanks,
Janusz

> 
> > I think the *bind* subtests in their current shape are perfectly ready
> > for inclusion in CI runs.
> 
> Agreed otherwise, except for the known incomplete. Introducing new
> incompletes without a fix in sight is real bad.
> 
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
