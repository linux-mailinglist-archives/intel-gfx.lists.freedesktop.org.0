Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE7059547C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 10:06:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 302C410FBCA;
	Tue, 16 Aug 2022 08:06:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F317610F9E7;
 Tue, 16 Aug 2022 08:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660637187; x=1692173187;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=E03Vgf1OmQkJqA2JgpZh1bbYZR5fOIQNsf/TC57P/og=;
 b=BqgrNwXFQwVnLTtRx4a+uyXC3tuL1tfe782exERCihnYSopromYcq6Nm
 C/9AssJDXIQGvs1aOqXk+P9+oNJHEWw3ITBDswT4KR7+GxmTjgo56tEUh
 IMiBrYEuK64jkuyZWcBLLnQWiq9iNZHOEvZsUAnb0anUdqPCt2nNEMFQK
 6A4uJzUMhBXESy2921HO2JOLxSaL98HZd+0MuNKemt6KQG5V08m6YZcht
 kue+1ABykDprJKEiUpDFOMl5UApbXOUMk2iGFj9yq+bfAcAFU5XEUDGVo
 6Wrx11LYHffYPZaO3pe3npMPrx53ucjaOj+25Y21sDboAIruJ6HC8hjAa g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="292153654"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="292153654"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 01:06:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="635796309"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.51.235])
 ([10.252.51.235])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 01:06:24 -0700
Message-ID: <4dbb4795-f38b-4c15-9d66-c077c2a0ac42@linux.intel.com>
Date: Tue, 16 Aug 2022 10:06:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220809102638.146913-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220809102638.146913-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/gem_lmem_swapping: add some
 coverage for big objects
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LGTM Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 8/9/2022 12:26 PM, Matthew Auld wrote:
> Everything we are testing here unfortunately fits within one packet (8M)
> which means we have zero coverage when we need to split the copy over
> multiple packets (including the aux CCS state).
>
> v2:
>   - Add some coverage for 2G objects, just to see if something blows up
>     with overflowing int. (Ram)
>   - Just make TEST_RANDOM use bigger sizes to ensure we get coverage of
>     objects that require splitting the copy into multiple packets.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> ---
>   tests/i915/gem_lmem_swapping.c | 18 ++++++++++++++++--
>   1 file changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
> index 1a4f4ca5..cccdb319 100644
> --- a/tests/i915/gem_lmem_swapping.c
> +++ b/tests/i915/gem_lmem_swapping.c
> @@ -63,6 +63,7 @@ struct params {
>   #define TEST_ENGINES	(1 << 4)
>   #define TEST_MULTI	(1 << 5)
>   #define TEST_CCS	(1 << 6)
> +#define TEST_MASSIVE	(1 << 7)
>   	unsigned int flags;
>   	unsigned int seed;
>   	bool oom_test;
> @@ -477,8 +478,8 @@ static void fill_params(int i915, struct params *params,
>   {
>   	const int swap_mb = /* For lmem, swap is total of smem + swap. */
>   		igt_get_total_ram_mb() + igt_get_total_swap_mb();
> -	const unsigned int size = 1 << 20;
>   	const int max_swap_pct = 75;
> +	unsigned int size;
>   	/*
>   	 * In random mode, add 85% hard limit to use system memory.
>   	 * noticed that 88.8% can trigger OOM on some system.
> @@ -487,12 +488,23 @@ static void fill_params(int i915, struct params *params,
>   	int spill_mb;
>   	uint32_t handle;
>   
> +	size = 1 << 20;
> +	if (flags & TEST_MASSIVE)
> +		size = 1u << 31;
> +
>   	if (flags & TEST_RANDOM) {
>   		params->size.min = 4096;
>   		handle = create_bo(i915, &params->size.min, &region->region,
>   				   do_oom_test);
>   		gem_close(i915, handle);
> -		params->size.max = 2 * size + params->size.min;
> +		/*
> +		 * Big enough to ensure we need to split the copy (both the
> +		 * actual pages and aux CCS state) into multiple packets. Also
> +		 * larger enough to ensure we get a mix of 64K and 2M GTT pages
> +		 * (1G GTT pages are still missing from the kernel).
> +		 */
> +		params->size.max = (1ul << 24) + size + params->size.min;
> +		size = params->size.max;
>   	} else {
>   		params->size.min = size;
>   		params->size.max = size;
> @@ -733,6 +745,8 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>   		unsigned int flags;
>   	} *test, tests[] = {
>   		{ "basic", 0 },
> +		{ "massive",  TEST_MASSIVE }, /* check for (int) overflows */
> +		{ "massive-random",  TEST_RANDOM | TEST_MASSIVE },
>   		{ "random", TEST_RANDOM },
>   		{ "random-engines", TEST_RANDOM | TEST_ENGINES },
>   		{ "heavy-random", TEST_RANDOM | TEST_HEAVY },
