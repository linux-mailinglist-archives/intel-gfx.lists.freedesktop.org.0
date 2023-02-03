Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1B568A3E0
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 21:59:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C671B10E8FB;
	Fri,  3 Feb 2023 20:59:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF8110E8E6;
 Fri,  3 Feb 2023 20:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675457957; x=1706993957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KTWxV6Cjp7LPI4eB8fvPqgDTBBCGm7IUEJaLnEyDJxQ=;
 b=n2Oq66tnbg2Red0ZU3kv07miqUpCn+QdmnTH7/fkxH8BArqkXiJ5+Y+r
 0Ep5vDr9DNVt7on6jWrrKYVsaHwgmnIxruT19O5j0m7xtvZWTNrvhWVyH
 GOI0DsceU3eG6tztbZvB6+m7JiESDJBglp2P7Wq2uKbCB8GkG/3DOGayI
 G2aFeS6xycddPQZWvb0tnLbNcY96UnoJHCQDR5+uRAgbIGz6tiVvIC0Qf
 aXX1CvoZb8JZ6tl0AbzFjeyt86BVJwk6pGpfqCAk7jacYV7RepXG8UnkB
 Vjs9RuLgRRPtUVKeW1lx6jh10WrqobBAT3A0sqdjgnIdqdKQ35m3tAUt8 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="356197534"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="356197534"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 12:59:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10610"; a="808479376"
X-IronPort-AV: E=Sophos;i="5.97,271,1669104000"; d="scan'208";a="808479376"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.17.142])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 12:59:08 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Date: Fri, 03 Feb 2023 21:59:05 +0100
Message-ID: <1780744.TLkxdtWsSY@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <Y91ews5O6nHf+2EX@orsosgc001.jf.intel.com>
References: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
 <Y91ews5O6nHf+2EX@orsosgc001.jf.intel.com>
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

Hi Umesh,

Thanks for taking a look.

On Friday, 3 February 2023 20:21:38 CET Umesh Nerlige Ramappa wrote:
> On Tue, Jan 31, 2023 at 10:17:29AM +0100, Janusz Krzysztofik wrote:
> >Users reported oopses on list corruptions when using i915 perf with a
> >number of concurrently running graphics applications.  That indicates we
> >are currently missing some important tests for such scenarios.  Cover
> >that gap.
> 
> Any bug ids that were filed for the issue? 

Yes, https://gitlab.freedesktop.org/drm/intel/issues/6333.

> Also what were the parameters 
> passed to perf OA when the issues were reported? This could help 
> actually root cause the issue and have a test closer to the actual use 
> case.

Root cause has been already identified, and it lays not in perf, only in 
barriers handling code, see https://patchwork.freedesktop.org/series/113636/ 
(submitted to trybot so far, soon to the public list).

Thanks,
Janusz

> 
> Regards,
> Umesh
> >
> >Chris Wilson (1):
> >  i915/perf: Stress opening of new perf streams against existing
> >    contexts
> >
> >Janusz Krzysztofik (1):
> >  tests/i915/perf: Exercise barrier race
> >
> > tests/i915/perf.c | 111 ++++++++++++++++++++++++++++++++++++++++++++++
> > 1 file changed, 111 insertions(+)
> >
> 




