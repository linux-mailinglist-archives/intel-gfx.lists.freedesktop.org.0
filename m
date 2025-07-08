Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EF8AFD63F
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 20:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A160A10E68C;
	Tue,  8 Jul 2025 18:15:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h1ln13Yb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0ED910E030;
 Tue,  8 Jul 2025 18:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751998506; x=1783534506;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=c+0qDmVnh/TKD3Qng2uU+oq7ct7kdf0jMqM5buqRAAA=;
 b=h1ln13YbvXR0tRAtUeDFl6r8bUNhYrPT19IpfJh9k5D/dA69FiJFQjbC
 8Onolfk7/4NJchf6++03uqMUqKNNH4C2u8sKZZgMBXz7gmAfFkPgqCC9Z
 py9YrGREaRLvVIdPbCi1JOzTp1Q57zpP0JtvP02Xoa+QEXccwxOFUuify
 DZ4CKSPYiBjAYbDgiPQVp+jEaGDnzkXvIb5AL38ezY29o1KpE4B4gDnGh
 o0Kq3IU40NhqYeiYCnCkVv0AwCZ5u0YXDWrsiSJE8m9cJg7j6XFZ1PSdv
 8fcpQab4/tsokBL5NSwe21tStJZPt+n3YKG0more+LpHMZXb+H+h1H8WF w==;
X-CSE-ConnectionGUID: kXb/Y9WTSiq3eEwtnZHHdA==
X-CSE-MsgGUID: VMO6+bcETwm6zjDjV02HCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="65704086"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="65704086"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 11:15:05 -0700
X-CSE-ConnectionGUID: rk8zpwg8SwecOWdSZExzFw==
X-CSE-MsgGUID: oDXTfiqBQrSXhlEEgMN32Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="154977301"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by orviesa010-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jul 2025 11:15:03 -0700
Date: Tue, 8 Jul 2025 20:15:00 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Petri Latvala <adrinael@adrinael.net>,
 Arkadiusz Hiler <arek@hiler.eu>
Subject: Re: [PATCH i-g-t v2] runner: Relax timeout reduction on soft lockup
Message-ID: <20250708181500.ibtmgnkpxzlreasz@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Petri Latvala <adrinael@adrinael.net>,
 Arkadiusz Hiler <arek@hiler.eu>
References: <20250708130437.917619-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250708130437.917619-2-janusz.krzysztofik@linux.intel.com>
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
On 2025-07-08 at 15:04:15 +0200, Janusz Krzysztofik wrote:
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
> v2: Define symbols for taint bits and use them (Kamil)
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

LGTM
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_taints.c  |  8 ++++----
>  lib/igt_taints.h  |  6 ++++++
>  runner/executor.c | 14 ++++++++++----
>  3 files changed, 20 insertions(+), 8 deletions(-)
> 
> diff --git a/lib/igt_taints.c b/lib/igt_taints.c
> index 6b36d11cba..1d238fd2af 100644
> --- a/lib/igt_taints.c
> +++ b/lib/igt_taints.c
> @@ -13,10 +13,10 @@ static const struct {
>  	int bad;
>  	const char *explanation;
>  } abort_taints[] = {
> -  { 4, 1, "TAINT_MACHINE_CHECK: Processor reported a Machine Check Exception."},
> -  { 5, 1, "TAINT_BAD_PAGE: Bad page reference or an unexpected page flags." },
> -  { 7, 1, "TAINT_DIE: Kernel has died - BUG/OOPS." },
> -  { 9, 1, "TAINT_WARN: WARN_ON has happened." },
> +  { TAINT_MACHINE_CHECK, 1, "TAINT_MACHINE_CHECK: Processor reported a Machine Check Exception."},
> +  { TAINT_BAD_PAGE,	 1, "TAINT_BAD_PAGE: Bad page reference or an unexpected page flags." },
> +  { TAINT_DIE,		 1, "TAINT_DIE: Kernel has died - BUG/OOPS." },
> +  { TAINT_WARN,		 1, "TAINT_WARN: WARN_ON has happened." },
>    { -1 }
>  };
>  
> diff --git a/lib/igt_taints.h b/lib/igt_taints.h
> index be4195c5aa..50c4cf16f8 100644
> --- a/lib/igt_taints.h
> +++ b/lib/igt_taints.h
> @@ -6,6 +6,12 @@
>  #ifndef __IGT_TAINTS_H__
>  #define __IGT_TAINTS_H__
>  
> +#define	TAINT_MACHINE_CHECK	 4
> +#define	TAINT_BAD_PAGE		 5
> +#define	TAINT_DIE		 7
> +#define	TAINT_WARN		 9
> +#define	TAINT_SOFT_LOCKUP	14
> +
>  unsigned long igt_kernel_tainted(unsigned long *taints);
>  const char *igt_explain_taints(unsigned long *taints);
>  
> diff --git a/runner/executor.c b/runner/executor.c
> index 13180a0a46..847abe481a 100644
> --- a/runner/executor.c
> +++ b/runner/executor.c
> @@ -871,10 +871,15 @@ static const char *need_to_timeout(struct settings *settings,
>  	if (settings->abort_mask & ABORT_TAINT &&
>  	    is_tainted(taints)) {
>  		/* list of timeouts that may postpone immediate kill on taint */
> -		if (settings->per_test_timeout || settings->inactivity_timeout)
> -			decrease = 10;
> -		else
> +		if (settings->per_test_timeout || settings->inactivity_timeout) {
> +			if (is_tainted(taints) == (1 << TAINT_WARN) &&
> +			    taints & (1 << TAINT_SOFT_LOCKUP))
> +				decrease = 2;
> +			else
> +				decrease = 10;
> +		} else {
>  			return "Killing the test because the kernel is tainted.\n";
> +		}
>  	}
>  
>  	if (settings->per_test_timeout != 0 &&
> @@ -1526,8 +1531,9 @@ static int monitor_output(pid_t child,
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
