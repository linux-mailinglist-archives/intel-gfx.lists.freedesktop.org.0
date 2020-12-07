Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 484FF2D1166
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 14:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA1A789B95;
	Mon,  7 Dec 2020 13:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3111389B84;
 Mon,  7 Dec 2020 13:09:56 +0000 (UTC)
IronPort-SDR: +1buwRlKQX/jFCqpeYCLcM/OIw284V9E67NVvLdv0im2VD/eMK36DBtjDcyWH00rH2zVJLruIa
 xtcOFp8lNVkw==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="235295407"
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="235295407"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 05:09:55 -0800
IronPort-SDR: LWf+X87Xa/ITyD69jUcPYuI57vKZ9RAtjFoM+w22o3YSjh9VzskPXAD8F2dBYpG8eFyJfJWRjB
 eqjCwc6yp7Ow==
X-IronPort-AV: E=Sophos;i="5.78,399,1599548400"; d="scan'208";a="407137111"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2020 05:09:54 -0800
Received: from platvala by thrakatuluk with local (Exim 4.92)
 (envelope-from <petri.latvala@intel.com>)
 id 1kmGH1-0007hq-SR; Mon, 07 Dec 2020 15:09:51 +0200
Date: Mon, 7 Dec 2020 15:09:51 +0200
From: Petri Latvala <petri.latvala@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20201207130951.GK7444@platvala-desk.ger.corp.intel.com>
References: <20201204195007.10215-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201204195007.10215-1-janusz.krzysztofik@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Fri, Dec 04, 2020 at 08:50:07PM +0100, Janusz Krzysztofik wrote:
> We may still be interested in results of a test even if it has tainted
> the kernel.  On the other hand, we need to kill the test on taint if no
> other means of killing it on a jam is active.
> 
> If abort on both kernel taint or a timeout is requested, decrease all
> potential timeouts significantly while the taint is detected instead of
> aborting immediately.  However, report the taint as the reason of the
> abort if a timeout decreased by the taint expires.
> 
> v2: Fix missing show_kernel_task_state() lost on rebase conflict
>     resolution (Chris - thanks!)
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>


The effects of this is that we sometimes now get more logs from a test
at the cost of it not directly showing up as an incomplete. We would
still get the igt@runner@aborted result for it so overall we still
catch tainting cases.

Chris's comments have been clarified off-list not to mean directly
opposing this patch, so


Reviewed-by: Petri Latvala <petri.latvala@intel.com>



> ---
>  runner/executor.c | 26 ++++++++++++++++++++------
>  1 file changed, 20 insertions(+), 6 deletions(-)
> 
> diff --git a/runner/executor.c b/runner/executor.c
> index 1688ae41d..faf272d85 100644
> --- a/runner/executor.c
> +++ b/runner/executor.c
> @@ -726,6 +726,8 @@ static const char *need_to_timeout(struct settings *settings,
>  				   double time_since_kill,
>  				   size_t disk_usage)
>  {
> +	int decrease = 1;
> +
>  	if (killed) {
>  		/*
>  		 * Timeout after being killed is a hardcoded amount
> @@ -753,20 +755,32 @@ static const char *need_to_timeout(struct settings *settings,
>  	}
>  
>  	/*
> -	 * If we're configured to care about taints, kill the
> -	 * test if there's a taint.
> +	 * If we're configured to care about taints,
> +	 * decrease timeouts in use if there's a taint,
> +	 * or kill the test if no timeouts have been requested.
>  	 */
>  	if (settings->abort_mask & ABORT_TAINT &&
> -	    is_tainted(taints))
> -		return "Killing the test because the kernel is tainted.\n";
> +	    is_tainted(taints)) {
> +		/* list of timeouts that may postpone immediate kill on taint */
> +		if (settings->per_test_timeout || settings->inactivity_timeout)
> +			decrease = 10;
> +		else
> +			return "Killing the test because the kernel is tainted.\n";
> +	}
>  
>  	if (settings->per_test_timeout != 0 &&
> -	    time_since_subtest > settings->per_test_timeout)
> +	    time_since_subtest > settings->per_test_timeout / decrease) {
> +		if (decrease > 1)
> +			return "Killing the test because the kernel is tainted.\n";
>  		return show_kernel_task_state("Per-test timeout exceeded. Killing the current test with SIGQUIT.\n");
> +	}
>  
>  	if (settings->inactivity_timeout != 0 &&
> -	    time_since_activity > settings->inactivity_timeout)
> +	    time_since_activity > settings->inactivity_timeout / decrease ) {
> +		if (decrease > 1)
> +			return "Killing the test because the kernel is tainted.\n";
>  		return show_kernel_task_state("Inactivity timeout exceeded. Killing the current test with SIGQUIT.\n");
> +	}
>  
>  	if (disk_usage_limit_exceeded(settings, disk_usage))
>  		return "Disk usage limit exceeded.\n";
> -- 
> 2.21.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
