Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF0FCC340E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 14:36:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A166410E11B;
	Tue, 16 Dec 2025 13:35:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="uq2fj/6l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 010C010E11B
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 13:35:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DB72A6001D;
 Tue, 16 Dec 2025 13:35:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E69DCC4CEF1;
 Tue, 16 Dec 2025 13:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1765892155;
 bh=QyuqxcFKng+vuTvwkZkZc3wTzi1ZMhfrFZUBqzz7GiA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uq2fj/6lNvCYYrgnt1gFIq6O6nOLvETfOjgyGT1ojNsyGIDtiehf9VfYou4J460sK
 zcGjEzPMNeJ9m7dfY935WLKqejbJNVV6PmDCfqLIrkxBiQWnjxulrdDPwWfKkeA0kG
 wCnpssB+62XZATEkjgG/r28KCyn1+R/0nx2FkLYAz5rlXONaxvmKHLGJLkC+HxFpYR
 2y1WexfFAejSq1agZaZhySonBRsPZ1NTZ6HYbJJMIrEjXe8UTtF9wFMtvFvdmxCRIm
 ZmuXaU06S7iEfOEHhEN4uD7RlQVBi+yBiRI3qBfizhwUDJ5bqpsksLIkFgDpdRf4ze
 LwCy07aoz1s2w==
Date: Tue, 16 Dec 2025 14:35:51 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com, 
 krzysztof.karas@intel.com, jani.nikula@linux.intel.com,
 krzysztof.niemiec@intel.com
Subject: Re: [PATCH v2] drm/i915/gt: use designated initializers for
 intel_gt_debugfs_file
Message-ID: <dektfs7tnmsyn5evuz3y6phudnqgi6eytbmwhpnlzwuxmh7qwt@hyw7zg7jrex3>
References: <f662dbd6c43287ddc013fde1670653ad03d5f490.1765540658.git.sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f662dbd6c43287ddc013fde1670653ad03d5f490.1765540658.git.sebastian.brzezinka@intel.com>
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

On Fri, Dec 12, 2025 at 01:01:57PM +0100, Sebastian Brzezinka wrote:
> CONFIG_RANDSTRUCT may reorder structure fields, which makes positional
> initializers unsafe. The i915 GT debugfs tables were using positional
> initializers for `struct intel_gt_debugfs_file`, and on configs where
> the layout differs (e.g., presence/absence of the `.eval` callback),
> this can lead to fields being initialized incorrectly and trigger
> randstruct warnings such as:

nit: leave a space here.

> ```
>   drivers/gpu/drm/i915/gt/intel_gt_debugfs.c:75:51: note: randstruct:
>   casting between randomized structure pointer types (constructor)
> ```
> 
> Switch all the GT debugfs file arrays to designated initializers. This
> binds each value to the intended member regardless of structure
> reordering or optional members and removes the warning while preserving
> the intended initialization.
> 
> No functional change, only initialization style is updated.
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

...

>  	static const struct intel_gt_debugfs_file files[] = {
> -		{ "drpc", &drpc_fops, NULL },
> -		{ "frequency", &frequency_fops, NULL },
> -		{ "forcewake", &fw_domains_fops, NULL },
> -		{ "forcewake_user", &forcewake_user_fops, NULL},
> -		{ "llc", &llc_fops, llc_eval },
> -		{ "rps_boost", &rps_boost_fops, rps_eval },
> -		{ "perf_limit_reasons", &perf_limit_reasons_fops, perf_limit_reasons_eval },
> +		{ .name = "drpc", .fops = &drpc_fops },
> +		{ .name = "frequency", .fops = &frequency_fops },
> +		{ .name = "forcewake", .fops = &fw_domains_fops },
> +		{ .name = "forcewake_user", .fops = &forcewake_user_fops},
> +		{ .name = "llc", .fops = &llc_fops, .eval = llc_eval },
> +		{ .name = "rps_boost", .fops = &rps_boost_fops, .eval = rps_eval },
> +		{ .name = "perf_limit_reasons", .fops = &perf_limit_reasons_fops,
> +		  .eval = perf_limit_reasons_eval },

For consistency, keep it in the same line, even if it goes over
80 (or 100 (remembmer that 100 is accepted)).

>  	};

...

>  	static const struct intel_gt_debugfs_file files[] = {
> -		{ "guc_info", &guc_info_fops, NULL },
> -		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
> -		{ "guc_slpc_info", &guc_slpc_info_fops, &intel_eval_slpc_support},
> -		{ "guc_sched_disable_delay_ms", &guc_sched_disable_delay_ms_fops, NULL },
> -		{ "guc_sched_disable_gucid_threshold", &guc_sched_disable_gucid_threshold_fops,
> -		   NULL },
> +		{ .name = "guc_info", .fops = &guc_info_fops },
> +		{ .name = "guc_registered_contexts", .fops = &guc_registered_contexts_fops },
> +		{ .name = "guc_slpc_info", .fops = &guc_slpc_info_fops,
> +		  .eval = &intel_eval_slpc_support },

the "&" here is an error, you have the chance to fix it.

> +		{ .name = "guc_sched_disable_delay_ms", .fops = &guc_sched_disable_delay_ms_fops },
> +		{ .name = "guc_sched_disable_gucid_threshold",
> +		  .fops = &guc_sched_disable_gucid_threshold_fops },

same comment for the new lines here.

Andi

>  	};
