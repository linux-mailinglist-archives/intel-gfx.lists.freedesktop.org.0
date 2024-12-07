Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E41289E7E7C
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2024 07:14:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39BE910E00B;
	Sat,  7 Dec 2024 06:14:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kNyabUX0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F59810E00B
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2024 06:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733552087; x=1765088087;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xRM2tRbmmCMZI0b9EX2ML2YdRKkobiRWHVFtcpnZIS0=;
 b=kNyabUX08xmcGG1FtlrR+Ix+CfK4qXA/NKDc8EVxu0FTCjh1S6cVq7dE
 BNGRbotfmLIBoYu0/2U6QTuU+nE7HgCHlqj+TJDjwE/e0qjZACNBL7wI0
 M9Z0wsYJGRHoM1PXE2SGmuIzaS/b2hSR7bpwpi2eU1WliGBv1fPDrNS7J
 8EwtSe6WTBzYJQL5avbbd4+x6NyIJw46F452ToAaD5V3app5tN+J55FJ9
 S5Tr/NppmqQ/s0ciI4O9kh56Eld+vYbe0sZsVbK+3IronvDAjOED28aLZ
 8ONexmiBqxjtRRdW8aQNJAjkO1aVl2ZrZ1ZsXQ+B4RgtgTcauV1FuXypp g==;
X-CSE-ConnectionGUID: ctKMkCa0QRimRffkJ8xImw==
X-CSE-MsgGUID: BtYMJgy2R/yenccmrDQXmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="44380582"
X-IronPort-AV: E=Sophos;i="6.12,215,1728975600"; d="scan'208";a="44380582"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2024 22:14:47 -0800
X-CSE-ConnectionGUID: 9VG7AzWXShavsq9FkM2FiA==
X-CSE-MsgGUID: mHOxtgR+QfSYmo/81VEx1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,215,1728975600"; d="scan'208";a="95046566"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2024 22:14:46 -0800
Date: Sat, 7 Dec 2024 08:14:42 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 chris.p.wilson@linux.intel.com
Subject: Re: [PATCH v1] drm/i915/selftest: Log throttle reasons on failure
Message-ID: <Z1Pn0hCm8qD9tO4-@black.fi.intel.com>
References: <20241205081413.1529252-1-raag.jadav@intel.com>
 <Z1McDvyOeoiVmOmd@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1McDvyOeoiVmOmd@intel.com>
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

Cc: Chris

On Fri, Dec 06, 2024 at 10:45:18AM -0500, Rodrigo Vivi wrote:
> On Thu, Dec 05, 2024 at 01:44:13PM +0530, Raag Jadav wrote:
> > Log throttle reasons on selftest failure which will be useful for
> > debugging.
> > 
> > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_rps.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > index dcef8d498919..1e0e59bc69b6 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > @@ -478,8 +478,11 @@ int live_rps_control(void *arg)
> >  			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
> >  
> >  		if (limit == rps->min_freq) {
> 
> I was going to merge this, but then I noticed that this prints only
> when the throttle moves that to our min_freq...  When PCODE throttle
> the freq, the guaranteed freq can be at any point, not necessarily
> to the minimal, so this print is not very effective in the end of the day

Makes me wonder why such a criteria at all?

Raag

> > -			pr_err("%s: GPU throttled to minimum!\n",
> > -			       engine->name);
> > +			u32 throttle = intel_uncore_read(gt->uncore,
> > +							 intel_gt_perf_limit_reasons_reg(gt));
> > +
> > +			pr_err("%s: GPU throttled to minimum frequency with reasons 0x%08x\n",
> > +			       engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> >  			show_pstate_limits(rps);
> >  			err = -ENODEV;
> >  			break;
> > -- 
> > 2.34.1
> > 
