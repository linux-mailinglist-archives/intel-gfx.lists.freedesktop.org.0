Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6DD4BE84CF
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 13:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC92F10EBBA;
	Fri, 17 Oct 2025 11:23:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DNfifV8x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B145010EBBC;
 Fri, 17 Oct 2025 11:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760700235; x=1792236235;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=M11ymQ7JIP1huc2XWwwjf9siCZcAzzk8lsj18zZlXMs=;
 b=DNfifV8xBYRk8y+1YvHaDB2gGb61EWu5a2pJWrqzS77xQUocKAW7eHLC
 VGUsbGcHc1KJMvhm51m0thIuqE163JV7Bf84Xvn7Uyk8Wuhj30cRmyZ1F
 AM2eqDh5Yg4CnO+ScbJXcmmge7ZWy6h5UQmJI4hvAm6/mJrte/4aJ/PRI
 CM5yd4PS8clJDibxBUzkmj5QVmy6mKBd5igqwREBiW29fXEpUiNOTO81K
 pjenVibncs/4x1neL0+CrK/fvYY+MJZpqEQQr2EkMbRcpvLdzRSg7GkaK
 DWI/2P9ybFyr2PE2IsyoBINr6EPPhIebWlHW4FcVdbcfUsqNUlMcKOxjU g==;
X-CSE-ConnectionGUID: GXEpdcg9QVmgGtHro4nbbw==
X-CSE-MsgGUID: uOsJ8jo5TGOI9U4XsjSDxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73580147"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="73580147"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 04:23:55 -0700
X-CSE-ConnectionGUID: pLBBck8sQfaQAvVE3udyKQ==
X-CSE-MsgGUID: 4pz0iIk/REuj0AyOZF688Q==
X-ExtLoop1: 1
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by fmviesa003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2025 04:23:53 -0700
Date: Fri, 17 Oct 2025 13:23:51 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH i-g-t v3 1/6] tests/gem_eio: Skip on too few reset-resume
 cycles
Message-ID: <20251017112351.ikpsr3owrupfcy4e@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
References: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
 <20251015124419.66460-9-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251015124419.66460-9-janusz.krzysztofik@linux.intel.com>
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
On 2025-10-15 at 14:39:19 +0200, Janusz Krzysztofik wrote:
> Subtests that measure time of resume after engine reset compare a median
> value calculated from the measurements against a presumed limit and fail
> if the limit has been exceeded.  However, if it occurs not possible to
> collect enough measurements required for stable median value calculation,
> that condition is now ignored and success is reported, as if the measured
> time fit below the limit.
> 
> Skip if not able to collect sufficient number of time measurements.  CI
> results from slow platforms that always skip may be handled as expected
> skips.
> 
> v3: Use a symbol for minimum number of measurements (Kamil),
>   - reword skip message for its better readability (Kamil).
> 
> Cc: Krzysztof Karas <krzysztof.karas@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index b65b914faf..35291e759d 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -409,8 +409,10 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
>  		 igt_stats_get_median(st)*1e-6,
>  		 igt_stats_get_max(st)*1e-6);
>  
> -	if (st->n_values < 9)
> -		return; /* too few for stable median */
> +#define NUMER_OF_MEASURED_CYCLES_NEEDED 9
> +	igt_require_f(st->n_values >= NUMER_OF_MEASURED_CYCLES_NEEDED,
> +		      "at least %d completed resets are needed for stable median calculation, %d is too few\n",
> +		      NUMER_OF_MEASURED_CYCLES_NEEDED, st->n_values);
>  

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

>  	/*
>  	 * Older platforms need to reset the display (incl. modeset to off,
> -- 
> 2.51.0
> 
