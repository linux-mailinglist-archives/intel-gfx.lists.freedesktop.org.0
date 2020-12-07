Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F49C2D11B0
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 14:18:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2D576E843;
	Mon,  7 Dec 2020 13:18:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F2E96E843;
 Mon,  7 Dec 2020 13:18:04 +0000 (UTC)
IronPort-SDR: TMoLM4wfeaMISL2MVebrDMHCcxVGeKkw9VghhfuGZoYxLX1gA/Uc0a02giAKhn2LIb6khFPY4n
 +BRTWMqR3Tzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="152937616"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="152937616"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 05:18:04 -0800
IronPort-SDR: 8SQ87E7IBFGziobdIW8UUR+6EwxTmYcKVAmCbZ/1pCMfhw7t39a/Yg8n7J+URy1eeOSbZVRCxf
 2qD89nH2+tKg==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="363136590"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 05:18:02 -0800
Message-ID: <dff0b4454ea993547427fdf94c6ee54677b4c0f6.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Petri Latvala <petri.latvala@intel.com>
Date: Mon, 07 Dec 2020 14:18:00 +0100
In-Reply-To: <20201207130951.GK7444@platvala-desk.ger.corp.intel.com>
References: <20201204195007.10215-1-janusz.krzysztofik@linux.intel.com>
 <20201207130951.GK7444@platvala-desk.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] runner: Don't kill a test on taint
 if watching timeouts
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
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2020-12-07 at 15:09 +0200, Petri Latvala wrote:
> On Fri, Dec 04, 2020 at 08:50:07PM +0100, Janusz Krzysztofik wrote:
> > We may still be interested in results of a test even if it has tainted
> > the kernel.  On the other hand, we need to kill the test on taint if no
> > other means of killing it on a jam is active.
> > 
> > If abort on both kernel taint or a timeout is requested, decrease all
> > potential timeouts significantly while the taint is detected instead of
> > aborting immediately.  However, report the taint as the reason of the
> > abort if a timeout decreased by the taint expires.
> > 
> > v2: Fix missing show_kernel_task_state() lost on rebase conflict
> >     resolution (Chris - thanks!)
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> 
> The effects of this is that we sometimes now get more logs from a test
> at the cost of it not directly showing up as an incomplete. We would
> still get the igt@runner@aborted result for it so overall we still
> catch tainting cases.
> 
> Chris's comments have been clarified off-list not to mean directly
> opposing this patch, so
> 
> 
> Reviewed-by: Petri Latvala <petri.latvala@intel.com>

Thanks, pushed.

Janusz

> 
> 
> 
> > ---
> >  runner/executor.c | 26 ++++++++++++++++++++------
> >  1 file changed, 20 insertions(+), 6 deletions(-)
> > 
> > diff --git a/runner/executor.c b/runner/executor.c
> > index 1688ae41d..faf272d85 100644
> > --- a/runner/executor.c
> > +++ b/runner/executor.c
> > @@ -726,6 +726,8 @@ static const char *need_to_timeout(struct settings *settings,
> >  				   double time_since_kill,
> >  				   size_t disk_usage)
> >  {
> > +	int decrease = 1;
> > +
> >  	if (killed) {
> >  		/*
> >  		 * Timeout after being killed is a hardcoded amount
> > @@ -753,20 +755,32 @@ static const char *need_to_timeout(struct settings *settings,
> >  	}
> >  
> >  	/*
> > -	 * If we're configured to care about taints, kill the
> > -	 * test if there's a taint.
> > +	 * If we're configured to care about taints,
> > +	 * decrease timeouts in use if there's a taint,
> > +	 * or kill the test if no timeouts have been requested.
> >  	 */
> >  	if (settings->abort_mask & ABORT_TAINT &&
> > -	    is_tainted(taints))
> > -		return "Killing the test because the kernel is tainted.\n";
> > +	    is_tainted(taints)) {
> > +		/* list of timeouts that may postpone immediate kill on taint */
> > +		if (settings->per_test_timeout || settings->inactivity_timeout)
> > +			decrease = 10;
> > +		else
> > +			return "Killing the test because the kernel is tainted.\n";
> > +	}
> >  
> >  	if (settings->per_test_timeout != 0 &&
> > -	    time_since_subtest > settings->per_test_timeout)
> > +	    time_since_subtest > settings->per_test_timeout / decrease) {
> > +		if (decrease > 1)
> > +			return "Killing the test because the kernel is tainted.\n";
> >  		return show_kernel_task_state("Per-test timeout exceeded. Killing the current test with SIGQUIT.\n");
> > +	}
> >  
> >  	if (settings->inactivity_timeout != 0 &&
> > -	    time_since_activity > settings->inactivity_timeout)
> > +	    time_since_activity > settings->inactivity_timeout / decrease ) {
> > +		if (decrease > 1)
> > +			return "Killing the test because the kernel is tainted.\n";
> >  		return show_kernel_task_state("Inactivity timeout exceeded. Killing the current test with SIGQUIT.\n");
> > +	}
> >  
> >  	if (disk_usage_limit_exceeded(settings, disk_usage))
> >  		return "Disk usage limit exceeded.\n";
> > -- 
> > 2.21.1
> > 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
