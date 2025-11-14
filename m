Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B772C5DFA3
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 16:48:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ACCF10EABB;
	Fri, 14 Nov 2025 15:48:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GGPr6JQA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 074C710EAB8;
 Fri, 14 Nov 2025 15:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763135331; x=1794671331;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=W385REQrZvo7TmWHVA5yzVbX5cCysKEx63TN5ts6Rqo=;
 b=GGPr6JQAqBUmDlC+f7weFPeJkRbL6hIvVSg2Eni3GCvXmTTmzoEv1Gk8
 pGmxkbM+0ZKbDjqzdxqJ72uUu6E4VI7mNdp9LoCTDZ8b29Z9XTrcAl9hd
 R3beKtF0Ork+H8/6YFrYhQwQDc+t6pZwr26h1oaPguLz7Dovyi8yR8WlT
 RSO/BpuJ2snz2MBU/2/U1n7j5lVO3E3Y1GCp33frCSG4VsNd/xpscP5xt
 HlWjdQDBYVJ1bz4jhJ9/UIv+CKj9/CIKZCnfwqG0jUJ1+/l7gKf2LL7Z0
 YBhGiC+HgglZD9HgehbyHskFEuPhj0KkI2syHfRkL6UCNWmMm9vN7xe6H A==;
X-CSE-ConnectionGUID: OymC8HTbTtyHqxo3qjysGA==
X-CSE-MsgGUID: fhbyGt1FT2uYKjfwAkYovA==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="64234631"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="64234631"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 07:48:51 -0800
X-CSE-ConnectionGUID: Q+8CQ5Z4RbeJxOUptpeRPw==
X-CSE-MsgGUID: fyqPcQy0QvG+pneqxoU1Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="189631261"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by orviesa009-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Nov 2025 07:48:48 -0800
Date: Fri, 14 Nov 2025 16:48:46 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Petri Latvala <adrinael@adrinael.net>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Subject: Re: [PATCH i-g-t] tests/gem_lmem_swapping: Run smem-oom helper loop
 in background
Message-ID: <20251114154846.jizy46464j5yeuuo@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Petri Latvala <adrinael@adrinael.net>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
References: <20251112104913.701052-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251112104913.701052-2-janusz.krzysztofik@linux.intel.com>
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
On 2025-11-12 at 11:48:55 +0100, Janusz Krzysztofik wrote:

before merge please insert 'intel/' prefix after 'tests/':

[PATCH i-g-t] tests/intel/gem_lmem_swapping: Run smem-oom helper loop in background

Regards,
Kamil

> The smem-oom subtest forks SMEM helper processes from a loop run in the
> main process.  That loop is supposed to be terminated only when exit
> handler of a formerly forked LMEM process signals completion.  However,
> since the subtest arranges OOM conditions, the LMEM process may get killed
> and never signal its completion.  When that happens, the subtest may keep
> respawning SMEM helpers indefinitely and complete only when killed, e.g.,
> by igt_runner on per-test timeout expiration.
> 
> Instead of waiting form completion of the loop of the SMEM helpers, run
> the loop in background and wait for completion of the LMEM process.  Also,
> take care of signaling the SMEM helper processes about LMEM process
> completion in case it has got killed and hasn't had a chance to do that
> itself.
> 
> This patch addresses timeout results reported to the below mentioned
> upstream issue.  Other failures (incomplete / dmesg-warn / crash) may
> need additional patches, but let's fix those timeouts first to get a more
> clear picture.
> 
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_lmem_swapping.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
> index 8e0dac42d8..45bd94adbb 100644
> --- a/tests/intel/gem_lmem_swapping.c
> +++ b/tests/intel/gem_lmem_swapping.c
> @@ -678,6 +678,7 @@ static void test_smem_oom(int i915,
>  	const unsigned int num_alloc = 1 + smem_size / (alloc >> 20);
>  	struct igt_helper_process smem_proc = {};
>  	unsigned int n;
> +	int lmem_err;
>  
>  	lmem_done = mmap(0, sizeof(*lmem_done), PROT_WRITE,
>  			 MAP_SHARED | MAP_ANON, -1, 0);
> @@ -703,8 +704,8 @@ static void test_smem_oom(int i915,
>  	}
>  
>  	/* smem memory hog process, respawn till the lmem process completes */
> -	while (!READ_ONCE(*lmem_done)) {
> -		igt_fork_helper(&smem_proc) {
> +	igt_fork_helper(&smem_proc) {
> +		while (!READ_ONCE(*lmem_done)) {
>  			igt_fork(child, 1) {
>  				for (int pass = 0; pass < num_alloc; pass++) {
>  					if (READ_ONCE(*lmem_done))
> @@ -730,11 +731,19 @@ static void test_smem_oom(int i915,
>  			for (n = 0; n < 2; n++)
>  				wait(NULL);
>  		}
> -		igt_wait_helper(&smem_proc);
>  	}
> -	munmap(lmem_done, sizeof(*lmem_done));
> +
>  	/* Reap exit status of the lmem process */
> -	igt_waitchildren();
> +	lmem_err = __igt_waitchildren();
> +
> +	/* Make sure SMEM helpers stop even when the LMEM process gets killed */
> +	if (lmem_err)
> +		(*lmem_done)++;
> +	munmap(lmem_done, sizeof(*lmem_done));
> +
> +	igt_wait_helper(&smem_proc);
> +
> +	igt_assert_eq(lmem_err, 0);
>  }
>  
>  #define dynamic_lmem_subtest(reg, regs, subtest_name...) \
> -- 
> 2.51.1
> 
