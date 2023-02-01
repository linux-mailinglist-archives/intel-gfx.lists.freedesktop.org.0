Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEBF686ABF
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 16:51:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1529E10E420;
	Wed,  1 Feb 2023 15:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 648C010E420;
 Wed,  1 Feb 2023 15:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675266695; x=1706802695;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9I73zYPfgFLvO8thPfoov4XdliJ/MsrKAPBCrona9mk=;
 b=TpPSJ9XKUZlbwyisiAM/n0ed7qq6uCLGuKPV+VqQJAviaSynynNIrj8F
 a1pveFz8a9GI6ql/U+XLbbQ6ZEku1HTn1nKcJ3+ulJkrDQgY9vuqcMvSb
 sV+Uex7StGIF9AaxXqhI/sQ4dLP5egmtDBz6/jteCW7K1b8dO6gGvRXwM
 xdaxuGEO1gkp7A354vXttobnPm+dhtX23C+aoMgLkA1gzTpelV2FuxrxQ
 uW1BC+7JdMCTB0yS8Lb2J13dDr7N2pusv7vAKim7is+vu3qQPBctkWS4x
 uDLvzOAj6yP3LSUhMKllHU+1D5FlUfTCGZW3GLa75eTFL9+laEnRusZVK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="414388082"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="414388082"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 07:51:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="695395205"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="695395205"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.5.197])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 07:51:31 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Wed, 01 Feb 2023 16:51:27 +0100
Message-ID: <4458915.LvFx2qVVIh@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <877cx2v9dp.wl-ashutosh.dixit@intel.com>
References: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
 <1949047.usQuhbGJ8B@jkrzyszt-mobl1.ger.corp.intel.com>
 <877cx2v9dp.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 0/2] tests/i915/perf: Add
 stress / race exercises
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
Cc: igt-dev@lists.freedesktop.org, Arkadiusz Hiler <arek@hiler.eu>,
 intel-gfx@lists.freedesktop.org, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ashutosh,

On Tuesday, 31 January 2023 19:36:50 CET Dixit, Ashutosh wrote:
> On Tue, 31 Jan 2023 09:36:30 -0800, Janusz Krzysztofik wrote:
> >
> > Since Chris' subtest didn't help in triggering the list corruption, I've
> > developed a new subtest that can do it.  Since it is almost identical to the
> > one Chris added, I decided to reuse his code, then add my new subtest to perf
> > as well.  But maybe you are right that my subtest better fits to another test.
> > not perf.  I'll think this over.
> >
> > I hope this clarifies things for you.
> 
> Thanks Janusz. Of course the test is valid but because it is not triggering
> bugs in perf perhaps it is better added to a different IGT file. Maybe
> gem_ctx_persistence? Maybe perf is also ok. Anyway something to think
> about.

I raised this point on today's IGT workroup meeting, asking for opinion.  
Since the new subtests depend on perf, we agreed that what needs to be done 
first is to provide an IGT library with perf helpers.  As soon as it is 
available, other tests can use it if needed.  Since I'm not familiar with 
perf, and I have other tasks in my queue, I've no time to spend on learning 
perf and working on that library.  Then, for now I'll keep the new subtests 
inside the perf test.  We can move them elsewhere at a later time, when the 
library is ready.

Thanks,
Janusz

> 
> Thanks.
> --
> Ashutosh
> 




