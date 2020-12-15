Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 078B42DAA5C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 10:47:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FECD89C27;
	Tue, 15 Dec 2020 09:47:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73ACB89C6B;
 Tue, 15 Dec 2020 09:47:11 +0000 (UTC)
IronPort-SDR: i81+jZjFzgDrsvMe39+vh86TVr6xADM68QDXxp5hqdNh1BCE9+RX8Fa77pA5fiIpqQvWFtfVor
 QSNV7Fn89eVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="193222922"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="193222922"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 01:47:10 -0800
IronPort-SDR: /KlzXjuwJVU7lbZW+s6cKXC0ruczR5oYosBR5iFpRVYzo2B4QQdDemW3pKqyStBM5rtYn4hK+m
 8dFzMUbakF1g==
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="368139401"
Received: from vmastnak-mobl1.ger.corp.intel.com (HELO [10.252.36.152])
 ([10.252.36.152])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2020 01:47:08 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201214205945.816389-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <927fdc6c-5266-94fb-a1f5-55e38300fc8c@linux.intel.com>
Date: Tue, 15 Dec 2020 09:47:06 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201214205945.816389-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_shrink: Refactor
 allocation sizing based on available memory
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/12/2020 20:59, Chris Wilson wrote:
> Refactor the allocation such that we utilise just enough memory pressure
> to invoke the shrinker, and just enough processes to spread across the
> CPUs and contend on the shrinker.
> 
> v2: Reduce over-allocation from mem_size/2 to mem_size/8, and 9
> processes per cpu.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   tests/i915/gem_shrink.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/tests/i915/gem_shrink.c b/tests/i915/gem_shrink.c
> index 023db8c56..6413d25f5 100644
> --- a/tests/i915/gem_shrink.c
> +++ b/tests/i915/gem_shrink.c
> @@ -426,6 +426,7 @@ igt_main
>   	int num_processes = 0;
>   
>   	igt_fixture {
> +		const int ncpus = sysconf(_SC_NPROCESSORS_ONLN);
>   		uint64_t mem_size = intel_get_total_ram_mb();
>   		int fd;
>   
> @@ -434,16 +435,16 @@ igt_main
>   
>   		/*
>   		 * Spawn enough processes to use all memory, but each only
> -		 * uses half the available mappable aperture ~128MiB.
> +		 * uses half of the available per-cpu memory.
>   		 * Individually the processes would be ok, but en masse
>   		 * we expect the shrinker to start purging objects,
>   		 * and possibly fail.
>   		 */
> -		alloc_size = gem_mappable_aperture_size(fd) / 2;
> -		num_processes = 1 + (mem_size / (alloc_size >> 20));
> +		alloc_size = (mem_size + ncpus - 1) / ncpus / 8;
> +		num_processes = ncpus + (mem_size / alloc_size);
>   
> -		igt_info("Using %d processes and %'lluMiB per process\n",
> -			 num_processes, (long long)(alloc_size >> 20));
> +		igt_info("Using %d processes and %'"PRIu64"MiB per process\n",
> +			 num_processes, alloc_size);
>   
>   		intel_require_memory(num_processes, alloc_size,
>   				     CHECK_SWAP | CHECK_RAM);
> 

For some reason I still find the calculation convoluted but okay.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
