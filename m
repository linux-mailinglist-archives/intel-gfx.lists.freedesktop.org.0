Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F9FBE84DE
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 13:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3818010EBC4;
	Fri, 17 Oct 2025 11:24:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8R7jnHv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E0EC10EBC3;
 Fri, 17 Oct 2025 11:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760700282; x=1792236282;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mcxaF7dWf05PbhiI/kYk8vPUAmBmkbSi1hSszQ2vYmk=;
 b=B8R7jnHvCB4Sg/WUdD4T1piUXkoS2sQBItwiIYCZM51NWwEVA/6ckdwp
 XpgKuxnbiUSDu0/H3so0PQgb0z0YBJEcLrnxVAb/H2ujwDB3p2u1z8FNI
 cALNVcoOoYaUTWk6Ckcj2FPSAWzZvyn7vNYcRENWSURPyh8PMHasmQvtG
 sAPhaZV5T2KQdlkM4i056o6HT4lrdMuWOpw9q8d+XdMHfHZlHreqBhGIF
 XNQLu7z8R7frFwXUHlpFWJm76IoM1jADBBawPwyLpAV6SKLWZT7P1EW0Y
 ynKTiMQsmA1L124YzzUzRH/PujMaGxeG73pTw/P5u/a275zWZYTZ4y5f5 g==;
X-CSE-ConnectionGUID: flvJCfQbTU6ku9wkCVRHbg==
X-CSE-MsgGUID: WxYHcZcjTdC7DcUQD1YCFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62947637"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="62947637"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 04:24:41 -0700
X-CSE-ConnectionGUID: C6z5SFtVT0CXbdEWgxzA5Q==
X-CSE-MsgGUID: d9mTpHZlSFa7EP0UMZSycQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="182706294"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by orviesa008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Oct 2025 04:24:40 -0700
Date: Fri, 17 Oct 2025 13:24:37 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH i-g-t v3 2/6] tests/gem_eio: Try harder to measure median
 resume time
Message-ID: <20251017112437.sojdpstadf6phxh7@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
References: <20251015124419.66460-8-janusz.krzysztofik@linux.intel.com>
 <20251015124419.66460-10-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251015124419.66460-10-janusz.krzysztofik@linux.intel.com>
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
On 2025-10-15 at 14:39:20 +0200, Janusz Krzysztofik wrote:
> Subtests that measure time of resume after engine reset require results
> from at least 9 reset-resume cycles for reasonable calculation of a median
> value to be compared against a presumed limit.  On most Gen12+ platforms,
> as well as on some older ones like JSL, CHV, ILK or ELK, the current limit
> of 5 seconds for collecting those results occurs too short.
> 
> Raise the limit to an empirically determined value of 20 seconds and break
> the loop as soon as 9 results are collected.
> 
> v3: Use NUMER_OF_MEASURED_CYCLES_NEEDED symbol (Kamil).
> v2: Split out a change in handling of not enough measurements to a
>     separate patch (Kamil),
>   - reword commit message to be more distinct from other patches in
>     series (Kamil),
>   - reword commit message and description so they no longer state the
>     scope of the issue is limited to Gen12+, and list other (non-Gen12+)
>     platforms found also affected.
> 
> Cc: Krzysztof Karas <krzysztof.karas@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index 35291e759d..3b7a6bd209 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -930,7 +930,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
>  	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
>  
>  	igt_stats_init(&stats);
> -	igt_until_timeout(5) {
> +	igt_until_timeout(20) {
>  		const intel_ctx_t *ctx = context_create_safe(fd);
>  		igt_spin_t *hang;
>  		unsigned int i;
> @@ -979,6 +979,9 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
>  		gem_sync(fd, obj.handle);
>  		igt_spin_free(fd, hang);
>  		intel_ctx_destroy(fd, ctx);
> +
> +		if (stats.n_values >= NUMER_OF_MEASURED_CYCLES_NEEDED)
> +			break;

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

>  	}
>  	check_wait_elapsed(name, fd, &stats);
>  	igt_stats_fini(&stats);
> -- 
> 2.51.0
> 
