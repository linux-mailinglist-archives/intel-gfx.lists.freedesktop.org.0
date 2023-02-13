Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C1E694190
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 10:43:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49FF610E507;
	Mon, 13 Feb 2023 09:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB10210E21C;
 Mon, 13 Feb 2023 09:43:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676281381; x=1707817381;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=eZ3vy+A0SkLFXWlevvFnUT86J7mm64AvGNs2W6xQG3U=;
 b=LiX3Myj9Xbw+RSkaGb/N0NdhyUYX/O33+JDki8w6q0ej+bvqrgDwYb4M
 WiJSpf7MxsWDse7g83hrAMRbgKoBuX1KKtf3WXMl/O7owQzdQ7hDkXPHO
 QtPgCy21udP0KLmrYaeLtx9HRcgpa7nFFTfY567z7QIPP1OuRRX3ziZzA
 l5BIkYRTm8QZnb2lh5uhYM8PZBkhRBMfidiZUmh2U849flF7CK5EXUyvR
 H+FGjgcUKYDTXrIATFBtBqeloA9/EqeOkTnBGU+iWZEG9aTRw5/Cq5XCe
 s7oivP4bvzjD9IBmnvq4JD1bf+tVI6CV1nVuLHfqRkJMO614+HX4X5RZH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="311215355"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="311215355"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:43:00 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="662118829"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="662118829"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.19.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:42:54 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Petri Latvala <adrinael@adrinael.net>,
 Arkadiusz Hiler <arek@hiler.eu>, Andi Shyti <andi.shyti@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Date: Mon, 13 Feb 2023 10:42:51 +0100
Message-ID: <2133289.irdbgypaU6@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <2903124.VdNmn5OnKV@jkrzyszt-mobl1.ger.corp.intel.com>
References: <20230209115039.34441-1-janusz.krzysztofik@linux.intel.com>
 <20230210112158.kydkkmcbtu2es3zu@kamilkon-desk1>
 <2903124.VdNmn5OnKV@jkrzyszt-mobl1.ger.corp.intel.com>
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

On Friday, 10 February 2023 12:56:12 CET Janusz Krzysztofik wrote:
> On Friday, 10 February 2023 12:21:58 CET Kamil Konieczny wrote:
> > Hi,
> > 
> > On 2023-02-10 at 08:53:12 +0100, Janusz Krzysztofik wrote:
> > > Hi,
> > > 
> > > On Thursday, 9 February 2023 12:50:38 CET Janusz Krzysztofik wrote:
> > > > Users reported oopses on list corruptions when using i915 perf with a
> > > > number of concurrently running graphics applications.  That indicates we
> > > > are currently missing some important tests for such scenarios.  Cover
> > > > that gap.
> > > > 
> > > > v2: drop open-race subtest for now, not capable of triggering the user
> > > >     reported bug, but triggering other bugs which I can't see any fixes
> > > >     for queued yet,
> > > >   - move the other new subtest out of tests/i915/perf.c (Ashutosh).
> > > > 
> > > > Janusz Krzysztofik (1):
> > > >   tests/gem_ctx_exec: Exercise barrier race
> > > 
> > > While still waiting for CI results (BAT results don't cover the new subtest) 
> > > I've collected results from a forced execution of the subtest in BAT scope on 
> > > trybot: https://patchwork.freedesktop.org/series/113608/#rev2
> > > 
> > > While working as expected on most platforms, the test failed on some ancient 
> > > ones instead of skipping.  I've fixed this issue and tested the fix 
> > > successfully on trybot: https://patchwork.freedesktop.org/series/113608/#rev3
> > > 
> > > I'm still waiting for your comments, if any, before I submit the fixed 
> > > version.
> > 
> > Patch looks good but as you already noticed it is blacklisted
> > and do not cause noticeable fail. Proposed solution is to move
> > it to other test or to create new one, imho one you proposed
> > 
> > igt@gem_barrier_race@remote-request
> 
> OK, since I can't point out any better existing candidate, let's create a new 
> test.  However, taking into account that we have some more variants in 
> progress which differ on the barrier rather then remote-request side 
> of workloads, and the remote-request workload will probably be common to all 
> those variants, I propose a somehow reordered test naming:
> 
> igt@gem_remote_request@barrier-race

I've decided to keep my initial igt@gem_barrier_race@remote-request naming.
Since implementation of barrier tasks list handling is intentionally racy, 
I think that's quite reasonable to have a test focused on exercising those 
race cases, and the remote-request case seems not the only one that can be
problematic.

Thanks,
Janusz


> 
> This way, we don't determine how remote requests are triggered, then we don't 
> connect the new test with perf specifically in any way, and we have plenty of 
> room for different workloads we may want to race against remote requests (be 
> it perf triggered or not).
> 
> If perf specifically requires more thorough testing, that can be handled 
> separately in a separate, perf dedicated test.
> 
> Thanks,
> Janusz
> 
> 
> > 
> > looks good.
> > 
> > Regards,
> > Kamil
> > 
> > > 
> > > Thanks,
> > > Janusz
> > > 
> > > > 
> > > >  tests/i915/gem_ctx_exec.c | 123 ++++++++++++++++++++++++++++++++++++++
> > > >  tests/meson.build         |   9 ++-
> > > >  2 files changed, 131 insertions(+), 1 deletion(-)
> > > > 
> > > > 
> > > 
> > > 
> > > 
> > > 
> > 
> 
> 
> 
> 
> 




