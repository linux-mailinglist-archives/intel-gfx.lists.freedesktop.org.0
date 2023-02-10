Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB83691E1A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 12:22:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B9710E0B9;
	Fri, 10 Feb 2023 11:22:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3775F10E0F1;
 Fri, 10 Feb 2023 11:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676028124; x=1707564124;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gVXPqJXA73h8pzvY1iQThVDLI8hQMX77GUFM/eQR/W4=;
 b=Wkibcd26h7l++BscwxzQne1UgqmfurY3DXszRfhBfhbOKCLoPgq4LA3R
 YGQo78NvEljggRCupOA0HB5IAw9BAm1SvSrqdgdVa0/6WII32+2vqPc22
 TtvECAny6SLdIjDexjuKYdnzQr6Kzgaxsauh8cmllWduObNecGSWrpaoK
 Amz1ClcN+2doP4d9EWr0K6YcleRNqkYcluFCy1/8iUoYhXNAgLy8v/5T2
 hkQ9R8HOcpDXwAWFdz3eQ0nf12PnET8yXAVJg4Kv9SFLuBRAD7vkHUB0u
 RiTMDf2lxqSRPYbfyndqDNnhrGRR+GA/t21B/Sk7X0mDEMYKZxN5eRsFN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="314041824"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="314041824"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 03:22:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="996928755"
X-IronPort-AV: E=Sophos;i="5.97,286,1669104000"; d="scan'208";a="996928755"
Received: from barcinsk-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.16.80])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 03:22:00 -0800
Date: Fri, 10 Feb 2023 12:21:58 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230210112158.kydkkmcbtu2es3zu@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Petri Latvala <adrinael@adrinael.net>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Arkadiusz Hiler <arek@hiler.eu>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230209115039.34441-1-janusz.krzysztofik@linux.intel.com>
 <38094681.10thIPus4b@jkrzyszt-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <38094681.10thIPus4b@jkrzyszt-mobl1.ger.corp.intel.com>
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
Cc: Arkadiusz Hiler <arek@hiler.eu>, intel-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 2023-02-10 at 08:53:12 +0100, Janusz Krzysztofik wrote:
> Hi,
> 
> On Thursday, 9 February 2023 12:50:38 CET Janusz Krzysztofik wrote:
> > Users reported oopses on list corruptions when using i915 perf with a
> > number of concurrently running graphics applications.  That indicates we
> > are currently missing some important tests for such scenarios.  Cover
> > that gap.
> > 
> > v2: drop open-race subtest for now, not capable of triggering the user
> >     reported bug, but triggering other bugs which I can't see any fixes
> >     for queued yet,
> >   - move the other new subtest out of tests/i915/perf.c (Ashutosh).
> > 
> > Janusz Krzysztofik (1):
> >   tests/gem_ctx_exec: Exercise barrier race
> 
> While still waiting for CI results (BAT results don't cover the new subtest) 
> I've collected results from a forced execution of the subtest in BAT scope on 
> trybot: https://patchwork.freedesktop.org/series/113608/#rev2
> 
> While working as expected on most platforms, the test failed on some ancient 
> ones instead of skipping.  I've fixed this issue and tested the fix 
> successfully on trybot: https://patchwork.freedesktop.org/series/113608/#rev3
> 
> I'm still waiting for your comments, if any, before I submit the fixed 
> version.

Patch looks good but as you already noticed it is blacklisted
and do not cause noticeable fail. Proposed solution is to move
it to other test or to create new one, imho one you proposed

igt@gem_barrier_race@remote-request

looks good.

Regards,
Kamil

> 
> Thanks,
> Janusz
> 
> > 
> >  tests/i915/gem_ctx_exec.c | 123 ++++++++++++++++++++++++++++++++++++++
> >  tests/meson.build         |   9 ++-
> >  2 files changed, 131 insertions(+), 1 deletion(-)
> > 
> > 
> 
> 
> 
> 
