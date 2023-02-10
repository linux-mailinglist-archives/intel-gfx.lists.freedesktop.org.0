Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C76C691EB3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 12:56:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0C1410ECF7;
	Fri, 10 Feb 2023 11:56:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 945B810E1D5;
 Fri, 10 Feb 2023 11:56:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676030180; x=1707566180;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=XmXleW3NIEsFbUHVIJ10sGkfqEG/Dc3xmRhe8LgpdDg=;
 b=XsQ7CaAd3/A+6vFi2lmpsxDu6Dgs/zD84he9orWKFDGVWnjyL+oVbAD3
 ZQu3zRwhv2b60/9Y0e0oFCswAUKQOoEC8QWEEcfPry2UkjakWANA3waLn
 JqIUxobMKh8NvZK0QBU+NpF4IQTKsmixjCtxhvHwlWfv35Mvjx3wMu0Fw
 6alVWk6R5AC9L0u6U/Ani819XPeccxI1nB1gsSJaQi64AAPV2X8N3+zxK
 84OmIhdjXTvJ01NFGnkkeFj/F1iRoIrbEYqhPWG4rAD9K0zLv1zt9TnLy
 eXFYnCKhjtuXdDP/D0Vwmb9+j/Tw6Hob3wkylp1krYWPC8NxaJnjm9+s7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="395006939"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="395006939"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 03:56:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="645603732"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="645603732"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.0.158])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 03:56:15 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Petri Latvala <adrinael@adrinael.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Arkadiusz Hiler <arek@hiler.eu>, Andi Shyti <andi.shyti@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 10 Feb 2023 12:56:12 +0100
Message-ID: <2903124.VdNmn5OnKV@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230210112158.kydkkmcbtu2es3zu@kamilkon-desk1>
References: <20230209115039.34441-1-janusz.krzysztofik@linux.intel.com>
 <38094681.10thIPus4b@jkrzyszt-mobl1.ger.corp.intel.com>
 <20230210112158.kydkkmcbtu2es3zu@kamilkon-desk1>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 0/1] tests/i915/perf: Add stress /
 race exercises
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

On Friday, 10 February 2023 12:21:58 CET Kamil Konieczny wrote:
> Hi,
> 
> On 2023-02-10 at 08:53:12 +0100, Janusz Krzysztofik wrote:
> > Hi,
> > 
> > On Thursday, 9 February 2023 12:50:38 CET Janusz Krzysztofik wrote:
> > > Users reported oopses on list corruptions when using i915 perf with a
> > > number of concurrently running graphics applications.  That indicates we
> > > are currently missing some important tests for such scenarios.  Cover
> > > that gap.
> > > 
> > > v2: drop open-race subtest for now, not capable of triggering the user
> > >     reported bug, but triggering other bugs which I can't see any fixes
> > >     for queued yet,
> > >   - move the other new subtest out of tests/i915/perf.c (Ashutosh).
> > > 
> > > Janusz Krzysztofik (1):
> > >   tests/gem_ctx_exec: Exercise barrier race
> > 
> > While still waiting for CI results (BAT results don't cover the new subtest) 
> > I've collected results from a forced execution of the subtest in BAT scope on 
> > trybot: https://patchwork.freedesktop.org/series/113608/#rev2
> > 
> > While working as expected on most platforms, the test failed on some ancient 
> > ones instead of skipping.  I've fixed this issue and tested the fix 
> > successfully on trybot: https://patchwork.freedesktop.org/series/113608/#rev3
> > 
> > I'm still waiting for your comments, if any, before I submit the fixed 
> > version.
> 
> Patch looks good but as you already noticed it is blacklisted
> and do not cause noticeable fail. Proposed solution is to move
> it to other test or to create new one, imho one you proposed
> 
> igt@gem_barrier_race@remote-request

OK, since I can't point out any better existing candidate, let's create a new 
test.  However, taking into account that we have some more variants in 
progress which differ on the barrier rather then remote-request side 
of workloads, and the remote-request workload will probably be common to all 
those variants, I propose a somehow reordered test naming:

igt@gem_remote_request@barrier-race

This way, we don't determine how remote requests are triggered, then we don't 
connect the new test with perf specifically in any way, and we have plenty of 
room for different workloads we may want to race against remote requests (be 
it perf triggered or not).

If perf specifically requires more thorough testing, that can be handled 
separately in a separate, perf dedicated test.

Thanks,
Janusz


> 
> looks good.
> 
> Regards,
> Kamil
> 
> > 
> > Thanks,
> > Janusz
> > 
> > > 
> > >  tests/i915/gem_ctx_exec.c | 123 ++++++++++++++++++++++++++++++++++++++
> > >  tests/meson.build         |   9 ++-
> > >  2 files changed, 131 insertions(+), 1 deletion(-)
> > > 
> > > 
> > 
> > 
> > 
> > 
> 




