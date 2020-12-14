Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8E92D9B8F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 16:58:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53D5B6E2DF;
	Mon, 14 Dec 2020 15:58:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB41D6E2DC;
 Mon, 14 Dec 2020 15:58:06 +0000 (UTC)
IronPort-SDR: oEGHVbgu6xs81EyPuGUGjvZJvdDUzPvkIXsK0G6YH5ad4d+pl3TAHUm1c3dZP+EONQi2Y3lnAm
 4z3DLlUKrnhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="172162064"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="172162064"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:58:04 -0800
IronPort-SDR: mLEPzC1j54Y3cGsHo6T/OuMYlbX2B0a6/00d9IQgBS1Woaraz/3zbWIp/A1a2Jr1NYxjRPYKhP
 Z1JhbqG7sQ5g==
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="411297327"
Received: from yhorwitz-mobl1.ger.corp.intel.com (HELO [10.214.202.117])
 ([10.214.202.117])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 07:58:02 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20201214105123.542518-1-chris@chris-wilson.co.uk>
 <20201214105123.542518-3-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <db3f4d96-1143-168b-dfa0-f49fd856832d@linux.intel.com>
Date: Mon, 14 Dec 2020 15:57:59 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201214105123.542518-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/4] i915/gem_shrink:
 Refactor allocation sizing based on available memory
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


On 14/12/2020 10:51, Chris Wilson wrote:
> Refactor the allocation such that we utilise just enough memory pressure
> to invoke the shrinker, and just enough processes to spread across the
> CPUs and contend on the shrinker.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   tests/i915/gem_shrink.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/tests/i915/gem_shrink.c b/tests/i915/gem_shrink.c
> index 023db8c56..e8a814fe6 100644
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
> +		alloc_size = (mem_size + ncpus - 1) / ncpus / 2;

Div round up with thousands divided by small integers okay, safe on very 
old smp boxes. :)

> +		num_processes = ncpus + (mem_size / alloc_size);

Hm, now what does this add up to..

ncpus + mem_size / (mem_size / ncpus / 2) = ... ?

Regards,

Tvrtko

>   
> -		igt_info("Using %d processes and %'lluMiB per process\n",
> -			 num_processes, (long long)(alloc_size >> 20));
> +		igt_info("Using %d processes and %'"PRIu64"MiB per process\n",
> +			 num_processes, alloc_size);
>   
>   		intel_require_memory(num_processes, alloc_size,
>   				     CHECK_SWAP | CHECK_RAM);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
