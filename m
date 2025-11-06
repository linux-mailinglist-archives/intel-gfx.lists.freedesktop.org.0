Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FCEC3B280
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 14:18:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EC9A10E8BA;
	Thu,  6 Nov 2025 13:18:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MbqGBY8h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10A8D10E8B1;
 Thu,  6 Nov 2025 13:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762435137; x=1793971137;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eG42LuezVAJhiRCoLsiCOy0GU4Ods4xOMnqnjamJeAU=;
 b=MbqGBY8h9l/16NYBbNhYPKrAWNGHmDA19yvwSc9u8i1PyFsp2DKVtruE
 oYhvbSRJmpRGZ6ydPyp33WgPy7ebINQBT5zvzwzSEIFuuAjf6QIe5VOI4
 f8M1TElAsW+V9gIl191kbzOu26KMhxbTQuWNA4OxKzWSLI/hzWADeZXH7
 fo/eWr0HL1+qvLPCAls0bKVXvxZ/0FASBkCuTti4BRHPn+OuiKLDApUI6
 NNSAjAGoh8uQTKsjz4d06hGEmYvJYObBUv6jy2uAiXHhDHXLiEeqfv+Tr
 TD0EAn5DEuXqjaxTyvWUUpaMZCN+PVHYXe2/FW2SjQocQL0kRCIdm7sEl w==;
X-CSE-ConnectionGUID: dcxVjGmoSMazHCtPFx+mJQ==
X-CSE-MsgGUID: cxRHVZ8ITkux44WGOHMNrw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="87199499"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="87199499"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:18:57 -0800
X-CSE-ConnectionGUID: mQ2wvDmGSo+3yKtQjAAPbA==
X-CSE-MsgGUID: GlyJGNwIQAa8UuK0cxfcJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="192924822"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.73])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 05:18:53 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Petri Latvala <adrinael@adrinael.net>,
 Zbigniew =?UTF-8?B?S2VtcGN6ecWEc2tp?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Subject: Re: [PATCH i-g-t] tests/gem_lmem_swapping: Suppress output from
 killed oom helpers
Date: Thu, 06 Nov 2025 14:18:51 +0100
Message-ID: <2264332.C4sosBPzcN@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20251104164225.473297-2-janusz.krzysztofik@linux.intel.com>
References: <20251104164225.473297-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Sorry for responding to myself, but some self-criticism is needed.

On Tuesday, 4 November 2025 17:42:19 CET Janusz Krzysztofik wrote:
> Dynamic sub-subtests of smem-oom subtest spawn smem memory hog helper
> processes which are expected to be killed by OOM killer.  When that
> happens, a default IGT signal helper inherited from its parent process is
> now executed inside the helper process.  That leads to a dynamic sub-
> subtest CRASH result message sent to stdout, followed by a parent subtest
> SUCCESS result message.  Meanwhile, processing of the dynamic sub-subtest
> that spawned that helper still continues, and then another set of result
> messages is submitted on its completion.  As a consequence, ambiguous
> results from that dynamic sub-subtests and its parent subtest are detected
> and reported by igt_runner, even if an error code returned by the helper
> is ignored.
> 
> Shut those redundant messages up by installing a custom signal handler
> that just exists the helper process when killed by the OOM killer, without
> reporting any IGT results or executing any IGT exit handlers.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_lmem_swapping.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
> index 8e0dac42d8..5e11092c04 100644
> --- a/tests/intel/gem_lmem_swapping.c
> +++ b/tests/intel/gem_lmem_swapping.c
> @@ -668,6 +668,11 @@ static void smem_oom_exit_handler(int sig)
>  	(*lmem_done)++;
>  }
>  
> +static void smem_oom_helper_sig_handler(int sig)
> +{
> +	_exit(0);
> +}
> +
>  static void test_smem_oom(int i915,
>  			  const intel_ctx_t *ctx,
>  			  struct drm_i915_memory_region_info *region)
> @@ -706,6 +711,8 @@ static void test_smem_oom(int i915,
>  	while (!READ_ONCE(*lmem_done)) {
>  		igt_fork_helper(&smem_proc) {
>  			igt_fork(child, 1) {
> +				signal(SIGBUS, smem_oom_helper_sig_handler);
> +
>  				for (int pass = 0; pass < num_alloc; pass++) {
>  					if (READ_ONCE(*lmem_done))
>  						break;
> @@ -715,6 +722,8 @@ static void test_smem_oom(int i915,
>  			igt_fork(child, 1) {
>  				int fd = drm_reopen_driver(i915);
>  
> +				signal(SIGBUS, smem_oom_helper_sig_handler);

While this patch looked to me like resolving the issue when I test tested it, 
SIGBUS is not a direct indication of a process being killed by OOM killer.  
More deep analysis is needed.  Please forget this patch.

Thanks,
Janusz

> +
>  				for (int pass = 0; pass < num_alloc; pass++) {
>  					if (READ_ONCE(*lmem_done))
>  						break;
> 




