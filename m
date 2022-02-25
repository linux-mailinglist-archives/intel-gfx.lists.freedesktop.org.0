Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C95DE4C6F5A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Feb 2022 15:26:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 015F810E82D;
	Mon, 28 Feb 2022 14:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A45410E193;
 Fri, 25 Feb 2022 18:25:03 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF73E11FB;
 Fri, 25 Feb 2022 10:25:02 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FE093F70D;
 Fri, 25 Feb 2022 10:25:00 -0800 (PST)
Message-ID: <5c254623-98d2-75f3-52cb-209b8de304b6@arm.com>
Date: Fri, 25 Feb 2022 18:24:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Content-Language: en-GB
To: Michael Cheng <michael.cheng@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220225032436.904942-1-michael.cheng@intel.com>
 <20220225032436.904942-2-michael.cheng@intel.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220225032436.904942-2-michael.cheng@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 28 Feb 2022 14:26:05 +0000
Subject: Re: [Intel-gfx] [PATCH v12 1/6] drm: Add arch arm64 for
 drm_clflush_virt_range
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, lucas.demarchi@intel.com,
 dri-devel@lists.freedesktop.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[ +arm64 maintainers for their awareness, which would have been a good 
thing to do from the start ]

On 2022-02-25 03:24, Michael Cheng wrote:
> Add arm64 support for drm_clflush_virt_range. caches_clean_inval_pou
> performs a flush by first performing a clean, follow by an invalidation
> operation.
> 
> v2 (Michael Cheng): Use correct macro for cleaning and invalidation the
> 		    dcache. Thanks Tvrtko for the suggestion.
> 
> v3 (Michael Cheng): Replace asm/cacheflush.h with linux/cacheflush.h
> 
> v4 (Michael Cheng): Arm64 does not export dcache_clean_inval_poc as a
> 		    symbol that could be use by other modules, thus use
> 		    caches_clean_inval_pou instead. Also this version
> 	            removes include for cacheflush, since its already
> 		    included base on architecture type.
> 
> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/drm_cache.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_cache.c b/drivers/gpu/drm/drm_cache.c
> index c3e6e615bf09..81c28714f930 100644
> --- a/drivers/gpu/drm/drm_cache.c
> +++ b/drivers/gpu/drm/drm_cache.c
> @@ -174,6 +174,11 @@ drm_clflush_virt_range(void *addr, unsigned long length)
>   
>   	if (wbinvd_on_all_cpus())
>   		pr_err("Timed out waiting for cache flush\n");
> +
> +#elif defined(CONFIG_ARM64)
> +	void *end = addr + length;
> +	caches_clean_inval_pou((unsigned long)addr, (unsigned long)end);

Why does i915 need to ensure the CPU's instruction cache is coherent 
with its data cache? Is it a self-modifying driver?

Robin.

(Note that the above is somewhat of a loaded question, and I do actually 
have half an idea of what you're trying to do here and why it won't fly, 
but I'd like to at least assume you've read the documentation of the 
function you decided was OK to use)

> +
>   #else
>   	WARN_ONCE(1, "Architecture has no drm_cache.c support\n");
>   #endif
