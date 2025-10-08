Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F71BC4B9E
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 14:14:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28DE710E7F2;
	Wed,  8 Oct 2025 12:14:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N+9TDRa2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 925A610E0F2;
 Wed,  8 Oct 2025 12:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759925692; x=1791461692;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=2WM76FSqnaf2O5fRTZElnJg7MjQxExC/tlGTKlN5Ms4=;
 b=N+9TDRa2rUkvEHy2+yxezdabULpuXps97uo+PT0eYiYiXa5XRcMmK0Sx
 i22aJ1MAuyWVlEhj/ziL4Ug6uWzNIu41/Q7uEeRRRV//gQxSAEPYm7OgO
 4AcLsLK50nZTTKdwJxUfZbGus8ocq+rtrxT88RxMSUO3DzlmSwiHLAdpv
 i4gtq8TzCadD/WdqWVJ6Ty46B9QwssS+KrCJyme26wzuRI89nNuPE3/o7
 N7RGov7CcxjA7zARB8UbftuGtmh/eFBwG3HCK0jp02CmT78Qd3dUgcXNw
 2kOE9rOa3fN0le0dZsk5WJBSxpqJDUcq8ZEGUEe8TVrgIfWggOgnEMMBm A==;
X-CSE-ConnectionGUID: 3TKUF0S/RvyTmh+1kKZa0Q==
X-CSE-MsgGUID: onwKr6pgQR6dwE+wShnwMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="72375808"
X-IronPort-AV: E=Sophos;i="6.19,323,1754982000"; d="scan'208";a="72375808"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 05:14:51 -0700
X-CSE-ConnectionGUID: rwuIitFAQi6hf+f46qTYNA==
X-CSE-MsgGUID: lDFacY3bTbKNHiB+J1pj/w==
X-ExtLoop1: 1
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by fmviesa003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2025 05:14:49 -0700
Date: Wed, 8 Oct 2025 14:14:47 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH i-g-t v2 2/5] tests/gem_eio: Try harder to measure median
 resume time
Message-ID: <20251008121447.wbteg7amzhgdoe63@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
References: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
 <20251007113910.3336564-9-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251007113910.3336564-9-janusz.krzysztofik@linux.intel.com>
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
On 2025-10-07 at 13:38:25 +0200, Janusz Krzysztofik wrote:
> Subtests that measure time of resume after engine reset require results
> from at least 9 reset-resume cycles for reasonable calculation of a median
> value to be compared against a presumed limit.  On most Gen12+ platforms,
> as well as on some older ones like JSL, CHV, ILK or ELK, the current limit
> of 5 seconds for collecting those results occurs too short.
> 
> Raise the limit to an empirically determined value of 20 seconds and break
> the loop as soon as 9 results are collected.
> 
> v2: Split out a change in handling of not enough measurements to a
>     separate patch (Kamil),
>   - reword commit message to be more distinct from other patches in
>     series (Kamil),
>   - reword commit message and description so they no longer state the
>     scope of the issue is limited to Gen12+, and list other (non-Gen12+)
>     platforms found also affected.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index 0a00ef026e..79dcef8fa6 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -929,7 +929,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
>  	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
>  
>  	igt_stats_init(&stats);
> -	igt_until_timeout(5) {
> +	igt_until_timeout(20) {

What I wanted here was actually (in pseudocode):

mtime = gen < 5 || gen >= 12 ? 20 : 5;

	igt_until_timeout(mtime) {

>  		const intel_ctx_t *ctx = context_create_safe(fd);
>  		igt_spin_t *hang;
>  		unsigned int i;
> @@ -978,6 +978,9 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
>  		gem_sync(fd, obj.handle);
>  		igt_spin_free(fd, hang);
>  		intel_ctx_destroy(fd, ctx);
> +
> +		if (stats.n_values > 8)

Can it be a define as it is used in other places, for example:
#define NUMER_OF_MEASURED_CYCLES_NEEDED 9

so you will use it elsewhere, and here it will be:

		if (stats.n_values >= NUMER_OF_MEASURED_CYCLES_NEEDED)
			break;

>  	}
>  	check_wait_elapsed(name, fd, &stats);

I did give you r-b for patch 1/5 but I am not sure how
reliable are measurements, should it be an assert instead of skip?
Maybe function check_wait_elapsed() should return bool to tell if
median is ready, and in each place subtests itself decide if it
should skip or assert? Up to you.

Regards,
Kamil

>  	igt_stats_fini(&stats);
> -- 
> 2.51.0
> 
