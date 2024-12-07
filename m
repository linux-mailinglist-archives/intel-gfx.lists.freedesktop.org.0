Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 812989E7E89
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2024 07:22:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12C0410E0F6;
	Sat,  7 Dec 2024 06:22:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GIrr8DqF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA4F10E0F6
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2024 06:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733552529; x=1765088529;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/nAxvB9okK7pqsgY+6NkI9FNUEGant1Nd6k5cMAPPKY=;
 b=GIrr8DqFjQZWiR9vAmxJ5BiPQe0JyWhTRHZxTvD7KXApJAxNSb56JtrS
 Faa+rm8OAIz2jK0xKVY7J95cZJzkb8oQlAtQAhPxbyuMLniFpZ3l87Bz4
 vMTpG1UPN4GUkoA02fNHiIN7JaDyYN+vSKwawc6cTanzyHhni4wkd0Rxy
 RyWMMkiPSk1IpI7oGkL3t0ZI/TIXQ31Qkc3nJUqyzz95Cjuw6aJyZAkOQ
 UatNeXXTuYu+s5vC5MBGP9Vu4V1P/nKLA/g8YTz7jJKlXaymmFW18tfQf
 zH0ZR0b6Mw6qydU3MiyRVlRr/2CakiejcW/9qhumkxuaDHvJChvWtyhlY Q==;
X-CSE-ConnectionGUID: ZJQ99ebySLiuPNxzqkCHfw==
X-CSE-MsgGUID: xSjdNHnPRsOudK97B67nog==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="44587705"
X-IronPort-AV: E=Sophos;i="6.12,215,1728975600"; d="scan'208";a="44587705"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2024 22:22:08 -0800
X-CSE-ConnectionGUID: KtgdBenfRtCO82JE6lL8+A==
X-CSE-MsgGUID: Bmjzn26HQRel4RrSA8kYjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,215,1728975600"; d="scan'208";a="99408057"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2024 22:22:07 -0800
Date: Sat, 7 Dec 2024 08:22:03 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: "Anirban, Sk" <sk.anirban@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, badal.nilawar@intel.com,
 karthik.poosa@intel.com, anshuman.gupta@intel.com
Subject: Re: [PATCH v2] drm/i915/selftests: Add delay to stabilize frequency
 in live_rps_power
Message-ID: <Z1Ppixu7zLqp7Mqf@black.fi.intel.com>
References: <20241203061114.2790448-1-sk.anirban@intel.com>
 <8734j559jc.fsf@intel.com>
 <261f6705-665e-4226-8fc7-b62ae95b7be1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <261f6705-665e-4226-8fc7-b62ae95b7be1@intel.com>
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

On Thu, Dec 05, 2024 at 12:07:53PM +0530, Anirban, Sk wrote:
> On 03-12-2024 16:16, Jani Nikula wrote:
> > On Tue, 03 Dec 2024, Sk Anirban <sk.anirban@intel.com> wrote:
> > > Add delays to allow frequency stabilization before power measurement
> > > to fix sporadic power conservation issues in live_rps_power test.
> > Looks like band-aid. What's the root cause?
> 
> In some cases, we have observed that the power consumption at the minimum
> frequency is greater than at the maximum frequency. This is likely due to
> the actual frequency not settling. The issue is sporadic, and to address
> this, we are adding a delay after setting the freq and before measuring the
> power.

Why not use wait_for_freq()?

Raag

> > > v2:
> > >    - Move delay to respective function (Badal)
> > > 
> > > Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/gt/selftest_rps.c | 1 +
> > >   1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > index dcef8d498919..c207a4fb03bf 100644
> > > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > @@ -1125,6 +1125,7 @@ static u64 measure_power(struct intel_rps *rps, int *freq)
> > >   static u64 measure_power_at(struct intel_rps *rps, int *freq)
> > >   {
> > >   	*freq = rps_set_check(rps, *freq);
> > > +	msleep(100);
> > >   	return measure_power(rps, freq);
> > >   }
