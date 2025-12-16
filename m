Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B882CC4C03
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 18:50:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB6D10E507;
	Tue, 16 Dec 2025 17:50:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="BrFqGa0v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 309D410E507
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 17:50:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4EB9D60138;
 Tue, 16 Dec 2025 17:50:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57A73C4CEF1;
 Tue, 16 Dec 2025 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1765907434;
 bh=2uCzjjwUrkoUIF3lRMX3VZNMoG4JnhBabTkxpPhQQBk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BrFqGa0vVASfHoLQi8J1mqyEXKHkXFBUU97jg8FaLfG/DrULZsEgFwvqAu0YoBm4Z
 s8hnX8g07W+S4oaRPwxauT51ywoy89hp6gPPJ2VefWJwik6rIxTQaxFmyh1rqzOeYO
 WDb3vW+gG8mixePuVUtR4fbjAeHXwVOYih3WFZgoUApWegHkK8yIsmF/wsSdF8F+pa
 0P3gDiikCg0U3sPgUQPv75SO03PfLcSiAGQiI3wQNBKOGf0QNIerBGGZhwTYnbcOCS
 1NEYzyosXHhHjWeAhr5h8289U5EuxIh1fUDCFw80/el5XFqkilzQBrvmK27LdDJESN
 xXRv4RLQGL8ZA==
Date: Tue, 16 Dec 2025 18:50:29 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com, 
 krzysztof.karas@intel.com, jani.nikula@linux.intel.com,
 krzysztof.niemiec@intel.com
Subject: Re: [PATCH v2] drm/i915/gt: use designated initializers for
 intel_gt_debugfs_file
Message-ID: <pj3clpbmzi7lfxlnv44fcanepaw6hpimaxrk7qa53gpzzvveha@bf4swa3uylpg>
References: <f662dbd6c43287ddc013fde1670653ad03d5f490.1765540658.git.sebastian.brzezinka@intel.com>
 <dektfs7tnmsyn5evuz3y6phudnqgi6eytbmwhpnlzwuxmh7qwt@hyw7zg7jrex3>
 <DEZPNV7Q1H6W.1LY5TZTH9MJZB@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DEZPNV7Q1H6W.1LY5TZTH9MJZB@intel.com>
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

Hi Sebastian,

...

> >>  	static const struct intel_gt_debugfs_file files[] = {
> >> -		{ "drpc", &drpc_fops, NULL },
> >> -		{ "frequency", &frequency_fops, NULL },
> >> -		{ "forcewake", &fw_domains_fops, NULL },
> >> -		{ "forcewake_user", &forcewake_user_fops, NULL},
> >> -		{ "llc", &llc_fops, llc_eval },
> >> -		{ "rps_boost", &rps_boost_fops, rps_eval },
> >> -		{ "perf_limit_reasons", &perf_limit_reasons_fops, perf_limit_reasons_eval },
> >> +		{ .name = "drpc", .fops = &drpc_fops },
> >> +		{ .name = "frequency", .fops = &frequency_fops },
> >> +		{ .name = "forcewake", .fops = &fw_domains_fops },
> >> +		{ .name = "forcewake_user", .fops = &forcewake_user_fops},
> >> +		{ .name = "llc", .fops = &llc_fops, .eval = llc_eval },
> >> +		{ .name = "rps_boost", .fops = &rps_boost_fops, .eval = rps_eval },
> >> +		{ .name = "perf_limit_reasons", .fops = &perf_limit_reasons_fops,
> >> +		  .eval = perf_limit_reasons_eval },
> >
> > For consistency, keep it in the same line, even if it goes over
> > 80 (or 100 (remembmer that 100 is accepted)).
> 
> ```
> -                 .eval = perf_limit_reasons_eval },
> +               { .name = "perf_limit_reasons", .fops = &perf_limit_reasons_fops, .eval = perf_limit_reasons_eval },
>         };
>  

...

> WARNING: line length of 116 exceeds 100 columns
> #21: FILE: drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c:597:
> +		{ .name = "perf_limit_reasons", .fops = &perf_limit_reasons_fops, .eval = perf_limit_reasons_eval },
> 
> total: 0 errors, 2 warnings, 9 lines checked
> ```
> 
> In this case its is 116.

Checkpatch is not the holy a law. Please remember that checkpatch
is more a recommendation and in some cases it's OK to ignore its
warnings/errors. In this case, in my view, it's more readable in
one line.

But I see you already sent the v3, so no worries, this is not a
binding comment. It also depends on your preference.

Andi
