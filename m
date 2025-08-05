Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FE3B1B319
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 14:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F1710E663;
	Tue,  5 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fyHZFFDt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F41C10E663
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Aug 2025 12:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754395792; x=1785931792;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LgA33NCzQ/hWL8axsZxuDjABkPbnpBplsrg7D3yZgVA=;
 b=fyHZFFDtogtl1zyb/9nW7ZebZt4pKtlM3hQnDo/GaTxkLW+UuTcziqbz
 1tb1s7MB3IJcsRGo94hgPWzHUsVZvyq8rYAi5TpHZTxGr0Pl5yiVVczVm
 73Ai5Uh2o+75dlaiyS3Oc/R7j1L0kNJYJUjplgXK7C6cj7HVWgVa7bO1f
 Ixz4EFaKDIGfvJ5oTcfYgr99TwHgzca1MqYbK6cqg7/ViuVcqjy78Mnhn
 RfZvxPj5lpkdelFnudqZav7KtxejIN3URmYMgW8wggaQalrtz8//yGCj4
 VsyjUtZYvTWvOgrN2pWfkrtxkT9ZfqZ7o8bR5sA4FbfeJOshmi9YeH/H4 g==;
X-CSE-ConnectionGUID: blbrAajFTlmRBOT0O8urqg==
X-CSE-MsgGUID: aCRHta1cS6CEa/4pg/v1GQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56768993"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56768993"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 05:09:52 -0700
X-CSE-ConnectionGUID: 8i8OGlv1RyOUmoTWE8I8SQ==
X-CSE-MsgGUID: FYacvF0yR16E4ixliVk0dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163731239"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 05:09:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Ensure sleep calculations in
 wait_for_freq() do not use negative value of timeout_ms
In-Reply-To: <o6umy6rqbsdgfqig22k5wqxr5awohf2dwcropgs2rxuqbme7ku@3f56co6tlk4i>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <o6umy6rqbsdgfqig22k5wqxr5awohf2dwcropgs2rxuqbme7ku@3f56co6tlk4i>
Date: Tue, 05 Aug 2025 15:09:46 +0300
Message-ID: <5963b8713d45a543d5d35f43d3478ed9643a566b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 05 Aug 2025, Krzysztof Karas <krzysztof.karas@intel.com> wrote:
> wait_for_freq() allows timeout_ms to be negative to pass it down
> to msecs_to_jiffies(). If the argument to the latter function is
> indeed negative, then MAX_JIFFY_OFFSET is returned from it.
>
> However, later in the wait_for_freq()'s "do while" loop,
> "timeout_ms" is used to calculate a new value for "sleep", which
> is a plain integer. While "sleep" being negative does not lead
> to erroneous behavior, as the "sleep" is cast to unsigned type
> in usleep_range(), it does not seem intentional.
>
> Change the type of "sleep" variable to unsigned and ensure it
> does not use "timeout_ms", when it is a negative value in the
> calculations.

That's an elaborate explanation for a case that never
occurs. wait_for_freq() is used in three places with fixed timeout
values.

What's the real reason for the change?

BR,
Jani.


>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 73bc91c6ea07..20ec7c0c94dc 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -152,7 +152,7 @@ static u8 wait_for_freq(struct intel_rps *rps, u8 freq, int timeout_ms)
>  {
>  	u8 history[64], i;
>  	unsigned long end;
> -	int sleep;
> +	unsigned int sleep;
>  
>  	i = 0;
>  	memset(history, freq, sizeof(history));
> @@ -180,7 +180,7 @@ static u8 wait_for_freq(struct intel_rps *rps, u8 freq, int timeout_ms)
>  
>  		usleep_range(sleep, 2 * sleep);
>  		sleep *= 2;
> -		if (sleep > timeout_ms * 20)
> +		if (sleep > timeout_ms * 20 && timeout_ms > 0)
>  			sleep = timeout_ms * 20;
>  	} while (1);
>  }
> -- 
> 2.34.1

-- 
Jani Nikula, Intel
