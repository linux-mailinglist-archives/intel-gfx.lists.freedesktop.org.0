Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E49185F4117
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 12:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D186910E54E;
	Tue,  4 Oct 2022 10:51:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 794F310E545;
 Tue,  4 Oct 2022 10:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664880697; x=1696416697;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Wf4AL/Kd9gwegdWH/d2nO8BQC2TAOjmjZOTjkmozJi8=;
 b=fHS9a01oECfj7tN4yhTlCAv8Qf19FZ3wpukxppEKmhy/f+SJ8+GpzTrZ
 VRzhnRlWy38GfnEBTLfEf+jituq4LoZ8BaUCOPAc6z9yf+Nyar4+DHkTv
 YOsn/J+XVvMyO9U8WLUBZ+mW/xs7/TRxAne1H4HZqxl3N5fzyxyeRz8At
 +AYt1yptzj95aWJGYFIs76Lqfu1LSRysKGgVju4HoDuF0PtcysndO6AVc
 Jr4+xYP+EbbCxjIvhJgvK6X69Z/qFkbgGd/WDnHSgU0mcSUgjTujoXjOf
 EeuD1HJiyhDQ6Zwym1GJ8aPkLqYmKnGIHypRPDxRmvBKneG2DisS+Pllr A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304423275"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="304423275"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:51:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="712970001"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="712970001"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.22.232])
 ([10.252.22.232])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 03:51:17 -0700
Message-ID: <1bb6c4f7-002a-2c5b-f32e-4cd8e6baa907@linux.intel.com>
Date: Tue, 4 Oct 2022 12:51:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20221003172456.97522-1-matthew.auld@intel.com>
 <20221003172456.97522-3-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20221003172456.97522-3-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 3/4] tests/i915/query: sanity check
 reported GTT alignment
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On 10/3/2022 7:24 PM, Matthew Auld wrote:
> Ensure the kernel is reporting "normal" values here, based on our
> current expectations.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   tests/i915/i915_query.c | 12 ++++++++++--
>   1 file changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
> index b92d7593..bff073d2 100644
> --- a/tests/i915/i915_query.c
> +++ b/tests/i915/i915_query.c
> @@ -581,8 +581,6 @@ static void test_query_regions_garbage_items(int fd)
>   		struct drm_i915_memory_region_info info = regions->regions[i];
>   		int j;
>   
> -		igt_assert_eq_u32(info.rsvd0, 0);
> -
>   		/*
>   		 * rsvd1[0] : probed_cpu_visible_size
>   		 * rsvd1[1] : unallocated_cpu_visible_size
> @@ -640,6 +638,8 @@ static void upload(int fd, struct igt_list_head *handles, uint32_t num_handles)
>   	free(exec);
>   }
>   
> +/** XXX: remove once we sync the uapi header */
> +#define gtt_alignment rsvd0

Nit: use page PAGE_SIZE instead of 4096 in below

Otherwise the series is Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

>   static void test_query_regions_sanity_check(int fd)
>   {
>   	struct drm_i915_query_memory_regions *regions;
> @@ -666,6 +666,11 @@ static void test_query_regions_sanity_check(int fd)
>   		struct drm_i915_gem_memory_class_instance r1 = info.region;
>   		int j;
>   
> +		if (info.gtt_alignment) {
> +			igt_assert_lte_u64(4096, info.gtt_alignment);
> +			igt_assert(is_power_of_two(info.gtt_alignment));
> +		}
> +
>   		if (r1.memory_class == I915_MEMORY_CLASS_SYSTEM) {
>   			igt_assert_eq(r1.memory_instance, 0);
>   			found_system = true;
> @@ -676,6 +681,9 @@ static void test_query_regions_sanity_check(int fd)
>   			igt_assert(info.unallocated_cpu_visible_size == 0 ||
>   				   info.unallocated_cpu_visible_size ==
>   				   info.unallocated_size);
> +
> +			igt_assert(info.gtt_alignment == 0 ||
> +				   info.gtt_alignment == 4096);
>   		} else {
>   			igt_assert(info.probed_cpu_visible_size <= info.probed_size);
>   			igt_assert(info.unallocated_size <= info.probed_size);
