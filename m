Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 181B5568264
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 11:02:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC77112B3A;
	Wed,  6 Jul 2022 09:02:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D17112B45;
 Wed,  6 Jul 2022 09:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657098166; x=1688634166;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=4oOsfBszEHnkCf/fQU0D4PwrJTghrnrvkNFqQZ0D+Uc=;
 b=Jg0bc7GoTQ+DdV6RVL0zKHJeBl23HacF/O0jxSa1p2BhRbb0VVQvzFt4
 vVud26h4snxtuRUJ6sKEiW7xnjckDIZgIx/mGJiEXdaxakwhy3w+JYois
 HJr4IZhNAuQMk9NSZwRwyauwwoUNgv40tNU4m6gLve/0g439SyhsvK8TC
 RND3kQG1a+kGp0TV/47ne9FoBCrx9ZuHJp7u/grVskOSRGQwm73tCWzFK
 AAKRvWhOtKg2lJpzHKfaDRo+RDnl5GP6aqsSBSiOn523ZWnPBSdJCvFlR
 8FP/ygtJC4KTdrzyd/+enCmRMwq604L+8UIbRxr4vKJuMCx1lyu/ibk4n w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="309236981"
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="309236981"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 02:02:45 -0700
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="650573968"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.34.23])
 ([10.252.34.23])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 02:02:41 -0700
Message-ID: <78ab7dc3-dc9c-def1-e1bc-2a3f36b9c7d5@linux.intel.com>
Date: Wed, 6 Jul 2022 11:02:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, igt-dev@lists.freedesktop.org
References: <20220705101542.116141-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220705101542.116141-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915_query: tweak the
 unallocated tracking test
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/5/2022 12:15 PM, Matthew Auld wrote:
> Make sure we always print the seed. Also make sure we use the correct
> helpers for the igt_assert when comparing values of type uint64.
>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> ---
>   tests/i915/i915_query.c | 36 +++++++++++++++++++-----------------
>   1 file changed, 19 insertions(+), 17 deletions(-)
>
> diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
> index 840b4864..4abd3edc 100644
> --- a/tests/i915/i915_query.c
> +++ b/tests/i915/i915_query.c
> @@ -784,9 +784,11 @@ static void fill_unallocated(int fd, struct drm_i915_query_item *item, int idx,
>   	struct igt_list_head handles;
>   	uint32_t num_handles;
>   	uint64_t rem, total;
> +	unsigned int seed;
>   	int id;
>   
> -	srand(time(NULL));
> +	seed = time(NULL);
> +	srand(seed);
>   
>   	IGT_INIT_LIST_HEAD(&handles);
>   
> @@ -829,28 +831,28 @@ static void fill_unallocated(int fd, struct drm_i915_query_item *item, int idx,
>   
>   	upload(fd, &handles, num_handles);
>   
> +	igt_debug("fill completed with seed=%u, cpu_access=%d, idx=%d, total=%"PRIu64"KiB, num_handles=%u\n",
> +		  seed, cpu_access, idx, total >> 10, num_handles);
> +
>   	old_info = new_info;
>   	memset(regions, 0, item->length);
>   	i915_query_items(fd, item, 1);
>   	new_info = regions->regions[idx];
>   
> -	igt_assert_lte(new_info.unallocated_size,
> -		       new_info.probed_size - total);
> -	igt_assert_lt(new_info.unallocated_size, old_info.unallocated_size);
> +	igt_assert_lte_u64(new_info.unallocated_size,
> +			   new_info.probed_size - total);
> +	igt_assert_lt_u64(new_info.unallocated_size, old_info.unallocated_size);
>   	if (new_info.probed_cpu_visible_size ==
>   	    new_info.probed_size) { /* full BAR */
> -		igt_assert_eq(new_info.unallocated_cpu_visible_size,
> -			      new_info.unallocated_size);
> +		igt_assert_eq_u64(new_info.unallocated_cpu_visible_size,
> +				  new_info.unallocated_size);
>   	} else if (cpu_access) {
> -		igt_assert_lt(new_info.unallocated_cpu_visible_size,
> -			      old_info.unallocated_cpu_visible_size);
> -		igt_assert_lte(new_info.unallocated_cpu_visible_size,
> -			       new_info.probed_cpu_visible_size - total);
> +		igt_assert_lt_u64(new_info.unallocated_cpu_visible_size,
> +				  old_info.unallocated_cpu_visible_size);
> +		igt_assert_lte_u64(new_info.unallocated_cpu_visible_size,
> +				   new_info.probed_cpu_visible_size - total);
>   	}
>   
> -	igt_debug("fill completed with idx=%d, total=%"PRIu64"KiB, num_handles=%u\n",
> -		  idx, total >> 10, num_handles);
> -
>   	igt_list_for_each_entry_safe(iter, tmp, &handles, link) {
>   		gem_close(fd, iter->handle);
>   		free(iter);
> @@ -863,11 +865,11 @@ static void fill_unallocated(int fd, struct drm_i915_query_item *item, int idx,
>   	i915_query_items(fd, item, 1);
>   	new_info = regions->regions[idx];
>   
> -	igt_assert(new_info.unallocated_size >=
> -		   old_info.unallocated_size + total);
> +	igt_assert_lt_u64(old_info.unallocated_size + total,
> +			  new_info.unallocated_size);

Hi Matt,


Shouldn't this be igt_assert_lte_u64()?

>   	if (cpu_access)
> -		igt_assert(new_info.unallocated_cpu_visible_size >=
> -			   old_info.unallocated_cpu_visible_size + total);
> +		igt_assert_lt_u64(old_info.unallocated_cpu_visible_size + total,
> +				  new_info.unallocated_cpu_visible_size);

same live above.


Nirmoy

>   }
>   
>   static void test_query_regions_unallocated(int fd)
