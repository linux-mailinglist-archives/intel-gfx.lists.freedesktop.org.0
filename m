Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABEE2CED9F
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 12:57:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1B856E139;
	Fri,  4 Dec 2020 11:57:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C31886E139;
 Fri,  4 Dec 2020 11:57:33 +0000 (UTC)
IronPort-SDR: eorlnBNk+pGYAA461fBfrdms1bcE3fdP/SgkA8090caKU0jY5Z7IYkYl3N/bJSUJluNb9n4itz
 mXHHtfFiYSZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="152616808"
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="152616808"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 03:57:32 -0800
IronPort-SDR: GQ0wrqq62++MAM7i4zXzAOdq24Pqu3jKwdbb3VBBpdOdkmnCJ8Dq/x/NpJ24tlo8Qwrh6olBPD
 0pHudmPrUdZA==
X-IronPort-AV: E=Sophos;i="5.78,392,1599548400"; d="scan'208";a="540669089"
Received: from jkrzyszt-desk.ger.corp.intel.com ([172.22.244.18])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2020 03:57:31 -0800
Message-ID: <2711b57e2144391febf0e638ed86533f9969c183.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 04 Dec 2020 12:57:29 +0100
In-Reply-To: <20201204115138.6656-1-janusz.krzysztofik@linux.intel.com>
References: <20201204115138.6656-1-janusz.krzysztofik@linux.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] runner: Don't kill a test on taint if
 watching timeouts
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Submitted with incorrect address of i915 list out of top of my head in
Cc:, sorry.

Janusz
 

On Fri, 2020-12-04 at 12:51 +0100, Janusz Krzysztofik wrote:
> We may still be interested in results of a test even if it has tainted
> the kernel.  On the other hand, we need to kill the test on taint if no
> other means of killing it on a jam is active.
> 
> If abort on both kernel taint or a timeout is requested, decrease all
> potential timeouts significantly while the taint is detected instead of
> aborting immediately.  However, report the taint as the reason of the
> abort if a timeout decreased by the taint expires.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  runner/executor.c | 30 ++++++++++++++++++++++--------
>  1 file changed, 22 insertions(+), 8 deletions(-)
> 
> diff --git a/runner/executor.c b/runner/executor.c
> index 1688ae41d..e39d8a73b 100644
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
> -		return show_kernel_task_state("Per-test timeout exceeded. Killing the current test with SIGQUIT.\n");
> +	    time_since_subtest > settings->per_test_timeout / decrease) {
> +		if (decrease > 1)
> +			return "Killing the test because the kernel is tainted.\n";
> +		return "Per-test timeout exceeded. Killing the current test with SIGQUIT.\n";
> +	}
>  
>  	if (settings->inactivity_timeout != 0 &&
> -	    time_since_activity > settings->inactivity_timeout)
> -		return show_kernel_task_state("Inactivity timeout exceeded. Killing the current test with SIGQUIT.\n");
> +	    time_since_activity > settings->inactivity_timeout / decrease ) {
> +		if (decrease > 1)
> +			return "Killing the test because the kernel is tainted.\n";
> +		return "Inactivity timeout exceeded. Killing the current test with SIGQUIT.\n";
> +	}
>  
>  	if (disk_usage_limit_exceeded(settings, disk_usage))
>  		return "Disk usage limit exceeded.\n";

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
