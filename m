Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11665BC4A9A
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 13:59:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A2DF10E7E8;
	Wed,  8 Oct 2025 11:59:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EREJvJ4w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E84E10E7F2;
 Wed,  8 Oct 2025 11:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759924759; x=1791460759;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=3lP+HNAZbz2svo9Xkf9+w7S6faaoSp7rSZ5AgdadtwY=;
 b=EREJvJ4wt1aIR96ckoz/3X30zm+R/Pu7ZZmZvBVuGnuv9/9CBs60FDo5
 qEuUPi98rhyZa1EcEv3Fqbv/7oS1Si3A/g49R6QrZkactKWkmfXqLxiVg
 zwJsUkotem6HWVnduwbvJp9HikeJUhocHRSDVGqNsxw6BMS0nuY5tJW9U
 Ne1EOjodR1h176m5djx54M0+7JWqFfWUMLI6qD0J/+J4umzm5EqUGhw/h
 Er7IW3fu45vIe5DtCbNxiunjIJgOXomlilqbhjKEqNJ+/uKaR5M2nk2lq
 3zPtyq4TNjKkBqwJLXs0+y4uPYa88Y2qqCabFFBe89kTqJwurNXc7yAHK Q==;
X-CSE-ConnectionGUID: klXYJ4jESvqmTQvnpNwMWQ==
X-CSE-MsgGUID: pGap8eOGSJqIGlYtmUcgWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="79762440"
X-IronPort-AV: E=Sophos;i="6.19,323,1754982000"; d="scan'208";a="79762440"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 04:59:16 -0700
X-CSE-ConnectionGUID: +yX+slekRdiN8NXBk9ME9w==
X-CSE-MsgGUID: fC241smFT6yEdAcgOcs9nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,323,1754982000"; d="scan'208";a="184688637"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by orviesa004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2025 04:59:15 -0700
Date: Wed, 8 Oct 2025 13:59:11 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH i-g-t v2 1/5] tests/gem_eio: Skip on too few reset-resume
 cycles
Message-ID: <20251008115911.ihnnpmj33gcwsh23@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
References: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
 <20251007113910.3336564-8-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251007113910.3336564-8-janusz.krzysztofik@linux.intel.com>
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
On 2025-10-07 at 13:38:24 +0200, Janusz Krzysztofik wrote:
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
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index b65b914faf..0a00ef026e 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -409,8 +409,9 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
>  		 igt_stats_get_median(st)*1e-6,
>  		 igt_stats_get_max(st)*1e-6);
>  
> -	if (st->n_values < 9)
> -		return; /* too few for stable median */
> +	igt_require_f(st->n_values > 8,
> +		      "at least 9 resets completed for stable median calculation, %d is too few\n",

imho add 'Test needs' at begin of sentence:
		      "Test needs at least 9 resets completed for stable median calculation, %d is too few\n",

With this
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> +		      st->n_values);
>  
>  	/*
>  	 * Older platforms need to reset the display (incl. modeset to off,
> -- 
> 2.51.0
> 
