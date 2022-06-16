Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 348A354E006
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jun 2022 13:28:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7589511A3CE;
	Thu, 16 Jun 2022 11:28:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 364 seconds by postgrey-1.36 at gabe;
 Thu, 16 Jun 2022 11:28:23 UTC
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 843A011A3CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 11:28:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id AEFA93F5BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 13:22:17 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -3.337
X-Spam-Level: 
X-Spam-Status: No, score=-3.337 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-1.228,
 T_SCC_BODY_TEXT_LINE=-0.01, URIBL_BLOCKED=0.001]
 autolearn=ham autolearn_force=no
Authentication-Results: ste-pvt-msa1.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dIg5qtmfZkm1 for <intel-gfx@lists.freedesktop.org>;
 Thu, 16 Jun 2022 13:22:16 +0200 (CEST)
Received: by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 38D003F582
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 13:22:16 +0200 (CEST)
Received: from [192.168.0.209] (unknown [192.198.151.54])
 by mail1.shipmail.org (Postfix) with ESMTPSA id D68AB362691
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jun 2022 13:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1655378536; bh=fWvqGt0qaAyh9HdHWKGRtCYG8zYf9EKIxCB4H6Ig6zI=;
 h=Date:Subject:To:References:From:In-Reply-To:From;
 b=KneZUH9PVfnknwIYUGwbfbPkBsgU3VbPAFXlOSQXq9ALj4yT3s5GsVhJMrKOyioj0
 iO/FlWpcnLmXKatcY9dYH8fx1EmpNYZL+nZVP6L98Ji7phRZxY8MVSELc6UDNBUdwQ
 FjX9zcTrWyrwlAsVGdvRQxLtqW1JzRktMJYdcXNE=
Message-ID: <8445daff-0deb-074d-cf20-264bad5532a4@shipmail.org>
Date: Thu, 16 Jun 2022 13:22:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220525184337.491763-1-matthew.auld@intel.com>
 <20220525184337.491763-3-matthew.auld@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
In-Reply-To: <20220525184337.491763-3-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 02/10] drm/i915/uapi: add
 probed_cpu_visible_size
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


On 5/25/22 20:43, Matthew Auld wrote:
> Userspace wants to know the size of CPU visible portion of device
> local-memory, and on small BAR devices the probed_size is no longer
> enough. In Vulkan, for example, it would like to know the size in bytes
> for CPU visible VkMemoryHeap. We already track the io_size for each
> region, so it's just case of plumbing that through to the region query.
Nit: so plumb that through (imperative)
>
> Testcase: igt@i915_query@query-regions-sanity-check
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Jordan Justen <jordan.l.justen@intel.com>
> Cc: Kenneth Graunke <kenneth@whitecape.org>
> Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_query.c |  6 +++
>   include/uapi/drm/i915_drm.h       | 74 +++++++++++++++++--------------
>   2 files changed, 47 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
> index 7584cec53d5d..9aa0b28aa6ee 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -496,6 +496,12 @@ static int query_memregion_info(struct drm_i915_private *i915,
>   		info.region.memory_class = mr->type;
>   		info.region.memory_instance = mr->instance;
>   		info.probed_size = mr->total;
> +
> +		if (mr->type == INTEL_MEMORY_LOCAL)
> +			info.probed_cpu_visible_size = mr->io_size;
> +		else
> +			info.probed_cpu_visible_size = mr->total;
> +
>   		info.unallocated_size = mr->avail;
>   
>   		if (__copy_to_user(info_ptr, &info, sizeof(info)))
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index de49b68b4fc8..9df419a45244 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -3207,36 +3207,6 @@ struct drm_i915_gem_memory_class_instance {
>    * struct drm_i915_memory_region_info - Describes one region as known to the
>    * driver.
>    *
> - * Note that we reserve some stuff here for potential future work. As an example
> - * we might want expose the capabilities for a given region, which could include
> - * things like if the region is CPU mappable/accessible, what are the supported
> - * mapping types etc.
> - *
> - * Note that to extend struct drm_i915_memory_region_info and struct
> - * drm_i915_query_memory_regions in the future the plan is to do the following:
> - *
> - * .. code-block:: C
> - *
> - *	struct drm_i915_memory_region_info {
> - *		struct drm_i915_gem_memory_class_instance region;
> - *		union {
> - *			__u32 rsvd0;
> - *			__u32 new_thing1;
> - *		};
> - *		...
> - *		union {
> - *			__u64 rsvd1[8];
> - *			struct {
> - *				__u64 new_thing2;
> - *				__u64 new_thing3;
> - *				...
> - *			};
> - *		};
> - *	};
> - *
> - * With this things should remain source compatible between versions for
> - * userspace, even as we add new fields.
> - *
>    * Note this is using both struct drm_i915_query_item and struct drm_i915_query.
>    * For this new query we are adding the new query id DRM_I915_QUERY_MEMORY_REGIONS
>    * at &drm_i915_query_item.query_id.
> @@ -3248,14 +3218,52 @@ struct drm_i915_memory_region_info {
>   	/** @rsvd0: MBZ */
>   	__u32 rsvd0;
>   
> -	/** @probed_size: Memory probed by the driver (-1 = unknown) */
> +	/**
> +	 * @probed_size: Memory probed by the driver (-1 = unknown)
> +	 *
> +	 * Note that it should not be possible to ever encounter a zero value
> +	 * here, also note that no current region type will ever return -1 here.
> +	 * Although for future region types, this might be a possibility. The
> +	 * same applies to the other size fields.
> +	 */
>   	__u64 probed_size;
>   
>   	/** @unallocated_size: Estimate of memory remaining (-1 = unknown) */
>   	__u64 unallocated_size;
>   
> -	/** @rsvd1: MBZ */
> -	__u64 rsvd1[8];
> +	union {
> +		/** @rsvd1: MBZ */
> +		__u64 rsvd1[8];
> +		struct {
> +			/**
> +			 * @probed_cpu_visible_size: Memory probed by the driver
> +			 * that is CPU accessible. (-1 = unknown).
> +			 *
> +			 * This will be always be <= @probed_size, and the
> +			 * remainder (if there is any) will not be CPU
> +			 * accessible.
> +			 *
> +			 * On systems without small BAR, the @probed_size will
> +			 * always equal the @probed_cpu_visible_size, since all
> +			 * of it will be CPU accessible.
> +			 *
> +			 * Note this is only tracked for
> +			 * I915_MEMORY_CLASS_DEVICE regions (for other types the
> +			 * value here will always equal the @probed_size).
> +			 *
> +			 * Note that if the value returned here is zero, then
> +			 * this must be an old kernel which lacks the relevant
> +			 * small-bar uAPI support (including
> +			 * I915_GEM_CREATE_EXT_FLAG_NEEDS_CPU_ACCESS), but on
> +			 * such systems we should never actually end up with a
> +			 * small BAR configuration, assuming we are able to load
> +			 * the kernel module. Hence it should be safe to treat
> +			 * this the same as when @probed_cpu_visible_size ==
> +			 * @probed_size.
> +			 */
> +			__u64 probed_cpu_visible_size;
> +		};
> +	};
>   };
>   
>   /**

Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>



