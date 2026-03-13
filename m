Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mG7lCZEjtGl7hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 15:47:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A914E285465
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 15:47:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF6510EC43;
	Fri, 13 Mar 2026 14:47:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ncgm/nzQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 256CA10EC6D;
 Fri, 13 Mar 2026 14:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773413261; x=1804949261;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8wd7fHtewKaJm7sZq65yDpJTdQAz5VaMrQ4fl4BsB4s=;
 b=Ncgm/nzQCxE+G+TMDo6kZq3SDcgvOHcrqUuLJGBcCaoTo9Luxszpu8nl
 RvCqUKUNCd0CyI4/frH5hYD1tKpXvEA8IWxK6RWIUYSLoZoyWS/SDL1C4
 BDgWEKjqm1H//QPWYP9TLrjjPffBXaVa1gApCiVOV2VIUoeV1solEuojP
 DJ7tgMxE1s4WUm1KC1kXQyAIacQuFDjGwAvMJC7tZpcsypMuloORpE8fh
 1QPPAUQLi5+cF+VumnLpjtWD4DSqIjCGio3zShDP1BwYEQQ3I0LSIZsSe
 2R8KGEQgzBuk92aP2kjLx4FpDLzzR3HmQtqhNv9QDxiRm7kvpWrcioOGp g==;
X-CSE-ConnectionGUID: RRJ8uC5nQ4673S2mWAs0Yw==
X-CSE-MsgGUID: XBwMWjVDRvy0xP97df6KlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="74491490"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74491490"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 07:47:41 -0700
X-CSE-ConnectionGUID: Cl4grEaiTX+ojaRaNl1KlQ==
X-CSE-MsgGUID: dJhH2bEkQf+k4A+e7+ZE0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="220440088"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by orviesa010-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Mar 2026 07:47:38 -0700
Date: Fri, 13 Mar 2026 15:47:36 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v2 1/3] tests/gem_lmem_swapping: Improve
 concurrency of smem-oom helpers.
Message-ID: <20260313144736.ealtg6kr3u24vbax@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
References: <20260312181032.20485-5-janusz.krzysztofik@linux.intel.com>
 <20260312181032.20485-6-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260312181032.20485-6-janusz.krzysztofik@linux.intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[kamil.konieczny@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A914E285465
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Janusz,
On 2026-03-12 at 19:07:33 +0100, Janusz Krzysztofik wrote:

small nit about subject, imho it should have 'intel/' and dot
removed:

[PATCH i-g-t v2 1/3] tests/intel/gem_lmem_swapping: Improve concurrency of smem-oom helpers

With that fixed
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Regards,
Kamil

> The smem-oom subtests re-spawns two different memory leak helpers.  Any of
> those two may either complete or be killed before the other and not
> respawned until the other is also completed or killed.  That imbalance may
> actually affect the shape of OOM conditions, most probably intended to be
> a compound result of those two memory exhaustion activities of different
> nature.
> 
> Respawn each helper from its own loop.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_lmem_swapping.c | 27 ++++++++++++++++-----------
>  1 file changed, 16 insertions(+), 11 deletions(-)
> 
> diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
> index 77e18f1a3c..3a35318a74 100644
> --- a/tests/intel/gem_lmem_swapping.c
> +++ b/tests/intel/gem_lmem_swapping.c
> @@ -707,7 +707,7 @@ static void test_smem_oom(int i915,
>  		igt_get_total_swap_mb();
>  	const unsigned int alloc = 256 * 1024 * 1024;
>  	const unsigned int num_alloc = 1 + smem_size / (alloc >> 20);
> -	struct igt_helper_process smem_proc = {};
> +	struct igt_helper_process smem_loop[2] = {};
>  	unsigned int n;
>  	int lmem_err;
>  
> @@ -734,8 +734,8 @@ static void test_smem_oom(int i915,
>  		drm_close_driver(fd);
>  	}
>  
> -	/* smem memory hog process, respawn till the lmem process completes */
> -	igt_fork_helper(&smem_proc) {
> +	/* smem memory hog processes, respawn till the lmem process completes */
> +	igt_fork_helper(&smem_loop[0]) {
>  		while (!READ_ONCE(*lmem_done)) {
>  			igt_fork(child, 1) {
>  				for (int pass = 0; pass < num_alloc; pass++) {
> @@ -744,6 +744,16 @@ static void test_smem_oom(int i915,
>  					leak(alloc);
>  				}
>  			}
> +			/*
> +			 * Wait for grand-child process to finish or be
> +			 * killed by the oom killer, don't call
> +			 * igt_waitchildren because of the noise
> +			 */
> +			wait(NULL);
> +		}
> +	}
> +	igt_fork_helper(&smem_loop[1]) {
> +		while (!READ_ONCE(*lmem_done)) {
>  			igt_fork(child, 1) {
>  				int fd = drm_reopen_driver(i915);
>  
> @@ -754,13 +764,7 @@ static void test_smem_oom(int i915,
>  				}
>  				drm_close_driver(fd);
>  			}
> -			/*
> -			 * Wait for grand-child processes to finish or be
> -			 * killed by the oom killer, don't call
> -			 * igt_waitchildren because of the noise
> -			 */
> -			for (n = 0; n < 2; n++)
> -				wait(NULL);
> +			wait(NULL);
>  		}
>  	}
>  
> @@ -772,7 +776,8 @@ static void test_smem_oom(int i915,
>  		(*lmem_done)++;
>  	munmap(lmem_done, sizeof(*lmem_done));
>  
> -	igt_wait_helper(&smem_proc);
> +	for (n = 0; n < 2; n++)
> +		igt_wait_helper(&smem_loop[n]);
>  
>  	igt_assert_eq(lmem_err, 0);
>  }
> -- 
> 2.53.0
> 
