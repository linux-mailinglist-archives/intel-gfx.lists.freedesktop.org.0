Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FC4AFAEF8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 10:54:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E50610E10E;
	Mon,  7 Jul 2025 08:54:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LYV1jNiG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5AD110E10E;
 Mon,  7 Jul 2025 08:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751878469; x=1783414469;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=EN+mbgEKQIc0Pfp4POuGediyLkr0BfEdulyKeFLolG4=;
 b=LYV1jNiGiAGfu/d5rx3NPalaprxBSkxqFg0UlJfLESaMU4jaw2W0/HiH
 PtZzt5Oq/0HsY0/0nSvTviXrHf0GeafeJq/mLeSm19E4+l9dCXH4kyuQQ
 mxEGQ97pCg4lpIRFFAGVNnqYX1s2g9wWmN377fjy5JoIdOaQLt59zY62g
 83lEKXRBpJwpLcDohD+Mnbg6UAAp2PJ8fSLLmnMA3ZiNreafGTEaRJYx4
 zZWtrv2RblraFf97nDTPcZU3Q29TB37No2LLxwiFOfLoGJ24YlJMNHYxa
 zYpxWYwQml9hO8EYHfhKF5flnVPgz0iUBALYI21efTLi4l5X6XchrvziO g==;
X-CSE-ConnectionGUID: BZ7TSwxDRDiRSY2Nzc5Y/Q==
X-CSE-MsgGUID: YVXuaKHZTKCyzL6RWixw/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="65440889"
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="65440889"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 01:54:29 -0700
X-CSE-ConnectionGUID: Q/n55/QtRv67ljgdB3xoCg==
X-CSE-MsgGUID: xWbsNd2GTwmXYIN6Z5g7mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="155260450"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by fmviesa006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jul 2025 01:54:26 -0700
Date: Mon, 7 Jul 2025 10:54:24 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Petri Latvala <adrinael@adrinael.net>,
 Arkadiusz Hiler <arek@hiler.eu>
Subject: Re: [PATCH i-g-t] runner: Relax timeout reduction on soft lockup
Message-ID: <20250707085424.mltmm45tstne3vfo@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Petri Latvala <adrinael@adrinael.net>,
 Arkadiusz Hiler <arek@hiler.eu>
References: <20250704133139.676541-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250704133139.676541-2-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,
On 2025-07-04 at 15:30:35 +0200, Janusz Krzysztofik wrote:
> In case of soft lockups, it might be helpful from root cause analysis
> perspective to see if the test was still able to complete despite
> triggering the soft lockup warning, or if that soft lockup seems not
> recoverable without killing the test. For that to be possible, igt_runner
> should not kill the test too promptly if a soft lockup related kernel
> taint is detected.
> 
> On kernel taints, igt_runner now decreases per test and inactivity
> timeouts by a factor of 10.  Let it check if the taint is caused by a
> soft lockup and decrease the timeouts only by the factor of 2 in those
> cases.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  runner/executor.c | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/runner/executor.c b/runner/executor.c
> index 13180a0a46..de9d29d28d 100644
> --- a/runner/executor.c
> +++ b/runner/executor.c
> @@ -871,10 +871,14 @@ static const char *need_to_timeout(struct settings *settings,
>  	if (settings->abort_mask & ABORT_TAINT &&
>  	    is_tainted(taints)) {
>  		/* list of timeouts that may postpone immediate kill on taint */
> -		if (settings->per_test_timeout || settings->inactivity_timeout)
> -			decrease = 10;
> -		else
> +		if (settings->per_test_timeout || settings->inactivity_timeout) {
> +			if (is_tainted(taints) == (1 << 9) && taints & (1 << 14))

Looks reasonable, imho there should be #define or constants
for those (1 << 9) and (1 << 14), at least for these and maybe
also other bits.

Regards,
Kamil

> +				decrease = 2;	/* only warn + soft lockup */
> +			else
> +				decrease = 10;
> +		} else {
>  			return "Killing the test because the kernel is tainted.\n";
> +		}
>  	}
>  
>  	if (settings->per_test_timeout != 0 &&
> @@ -1526,8 +1530,9 @@ static int monitor_output(pid_t child,
>  			sigfd = -1; /* we are dying, no signal handling for now */
>  		}
>  
> +		igt_kernel_tainted(&taints);
>  		timeout_reason = need_to_timeout(settings, killed,
> -						 igt_kernel_tainted(&taints),
> +						 taints,
>  						 igt_time_elapsed(&time_last_activity, &time_now),
>  						 igt_time_elapsed(&time_last_subtest, &time_now),
>  						 igt_time_elapsed(&time_killed, &time_now),
> -- 
> 2.50.0
> 
