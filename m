Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E17E53A52C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jun 2022 14:36:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A09A010E247;
	Wed,  1 Jun 2022 12:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E2E710E18E;
 Wed,  1 Jun 2022 12:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654086998; x=1685622998;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=B/vBgUOHGDnNOqrma6O+IAt+0bqdIfZswbfZcRcKZwQ=;
 b=H5RrM6dAAkYlRpQVIIZd91sqvXdy9NtY3dnQxjrkhMnvNVzEzA0g9mRb
 1ldcL3LWX4lJa5x2SCF21k0V8oQljNHhj3W20blRdn75M3QumIux3kM3+
 xuoF7PuUZoKjcT+PtlAMzPBSyhldmo4oKBjSTkxbbUlTBbW7RN+Vsg6yn
 6LqGO2SkR/moTa4sbAWBjUdtRfpKap1Urwy1Q4zXS2BYfMHaMHWPhb1Ya
 gWqhKSZApfHUTyZMARd1L+GU5+/6EW9UC6vLmi6sVMzMXZlqa3TGGbN1Z
 p4Igp4n2TMjOGWPjpmHf2Hh/3u1UpUrPXCHLD6bPf1hAWrin2fhJX84B4 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="273139756"
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="273139756"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 05:36:37 -0700
X-IronPort-AV: E=Sophos;i="5.91,268,1647327600"; d="scan'208";a="576914455"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.251.213.124])
 ([10.251.213.124])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2022 05:36:34 -0700
Message-ID: <bd0637c7-f55e-3e1a-4463-699c9760584d@linux.intel.com>
Date: Wed, 1 Jun 2022 14:36:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220525184337.491763-1-matthew.auld@intel.com>
 <20220525184337.491763-3-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
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
Cc: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Kenneth Graunke <kenneth@whitecape.org>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Acked-by: Nirmoy Das <nirmoy.das@intel.com>

On 5/25/2022 8:43 PM, Matthew Auld wrote:
> Userspace wants to know the size of CPU visible portion of device
> local-memory, and on small BAR devices the probed_size is no longer
> enough. In Vulkan, for example, it would like to know the size in bytes
> for CPU visible VkMemoryHeap. We already track the io_size for each
> region, so it's just case of plumbing that through to the region query.
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
