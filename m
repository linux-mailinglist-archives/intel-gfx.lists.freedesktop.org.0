Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 081E09EAB11
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 09:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098B010E823;
	Tue, 10 Dec 2024 08:53:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ICdhUhwy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81C7010E823
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 08:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733820796; x=1765356796;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=E1kLQUoEOLHBwni99nWmMisADj9SR4vzS1KB/2QCtQQ=;
 b=ICdhUhwyrrTAR+KMSOcJwPhjPc6ZYDGCP0lkYidWQsPN6sz2ZkEfeUiT
 DxV7JpI6F61Zfa0edpHhR+a5b1sUMjzcvvmiqA1+NhelFYyhEeiTmw5bG
 1wZYdngbZfE64dJcw7JAuIoX7qwH8XIsfckBothUuBNviP/c8ZG54X+88
 mmfBQm5a1j1VXpamwPQPsKDXg1nWI6+VZS2nW5rN99p/G16rTgIpJFywU
 VWV3isZfq/yRuFMgB+TSO5EHOQxq3SaXnHMjHit46G86z32CRTqo58JSD
 ugcmsCwtOuQ3Kh2oWGJJdzli/scrqMvR6kWAiF5ImUWWO+vntuNiqktNA Q==;
X-CSE-ConnectionGUID: KiPQGg+zS3W+Msj2yWtG9g==
X-CSE-MsgGUID: kQuMOpk7TbG6pfUlsJtxmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34205844"
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="34205844"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 00:53:15 -0800
X-CSE-ConnectionGUID: vE8iBRQLSpu7cnxZsU/b5A==
X-CSE-MsgGUID: Tl8KDoe2RLyDw5yZ+8rpWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,222,1728975600"; d="scan'208";a="99402871"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 00:53:13 -0800
Date: Tue, 10 Dec 2024 10:53:10 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 chris.p.wilson@linux.intel.com
Subject: Re: [PATCH v1] drm/i915/selftest: Log throttle reasons on failure
Message-ID: <Z1gBdqXSCpJVjRmh@black.fi.intel.com>
References: <20241205081413.1529252-1-raag.jadav@intel.com>
 <Z1McDvyOeoiVmOmd@intel.com> <Z1Pn0hCm8qD9tO4-@black.fi.intel.com>
 <Z1cat34KiCX8U-gP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1cat34KiCX8U-gP@intel.com>
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

On Mon, Dec 09, 2024 at 11:28:39AM -0500, Rodrigo Vivi wrote:
> On Sat, Dec 07, 2024 at 08:14:42AM +0200, Raag Jadav wrote:
> > Cc: Chris
> > 
> > On Fri, Dec 06, 2024 at 10:45:18AM -0500, Rodrigo Vivi wrote:
> > > On Thu, Dec 05, 2024 at 01:44:13PM +0530, Raag Jadav wrote:
> > > > Log throttle reasons on selftest failure which will be useful for
> > > > debugging.
> > > > 
> > > > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/selftest_rps.c | 7 +++++--
> > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > > index dcef8d498919..1e0e59bc69b6 100644
> > > > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > > @@ -478,8 +478,11 @@ int live_rps_control(void *arg)
> > > >  			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
> > > >  
> > > >  		if (limit == rps->min_freq) {
> > > 
> > > I was going to merge this, but then I noticed that this prints only
> > > when the throttle moves that to our min_freq...  When PCODE throttle
> > > the freq, the guaranteed freq can be at any point, not necessarily
> > > to the minimal, so this print is not very effective in the end of the day
> > 
> > Makes me wonder why such a criteria at all?
> 
> very good question...
> Perhaps we need to revamp entirely this selftest or kill it?

Depends. Do we qualify throttling as a failure?
If yes, we'll keep hitting this every now and then.
If no, then just dropping this condition might be enough.

Raag

> > > > -			pr_err("%s: GPU throttled to minimum!\n",
> > > > -			       engine->name);
> > > > +			u32 throttle = intel_uncore_read(gt->uncore,
> > > > +							 intel_gt_perf_limit_reasons_reg(gt));
> > > > +
> > > > +			pr_err("%s: GPU throttled to minimum frequency with reasons 0x%08x\n",
> > > > +			       engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> > > >  			show_pstate_limits(rps);
> > > >  			err = -ENODEV;
> > > >  			break;
> > > > -- 
> > > > 2.34.1
> > > > 
