Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB15D3D5730
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 12:11:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393E16E8AE;
	Mon, 26 Jul 2021 10:11:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 242E66E8AE;
 Mon, 26 Jul 2021 10:11:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="191791556"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="191791556"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 03:11:55 -0700
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="634003900"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 03:11:53 -0700
Date: Mon, 26 Jul 2021 15:43:45 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20210726101345.GB20437@intel.com>
References: <20210708122554.1874987-1-matthew.auld@intel.com>
 <20210708122554.1874987-2-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708122554.1874987-2-matthew.auld@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/3] tests/i915_query:
 extract query_garbage_items
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-07-08 at 13:25:53 +0100, Matthew Auld wrote:
> We should be able to re-use this for other queries.

LGTM

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> ---
>  tests/i915/i915_query.c | 46 ++++++++++++++++++++++++-----------------
>  1 file changed, 27 insertions(+), 19 deletions(-)
> 
> diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
> index 29b938e9..34965841 100644
> --- a/tests/i915/i915_query.c
> +++ b/tests/i915/i915_query.c
> @@ -92,7 +92,8 @@ static void test_query_garbage(int fd)
>  	i915_query_items_err(fd, &item, 1, EINVAL);
>  }
>  
> -static void test_query_garbage_items(int fd)
> +static void test_query_garbage_items(int fd, int query_id, int min_item_size,
> +				     int sizeof_query_item)
>  {
>  	struct drm_i915_query_item items[2];
>  	struct drm_i915_query_item *items_ptr;
> @@ -103,7 +104,7 @@ static void test_query_garbage_items(int fd)
>  	 * Subject to change in the future.
>  	 */
>  	memset(items, 0, sizeof(items));
> -	items[0].query_id = DRM_I915_QUERY_TOPOLOGY_INFO;
> +	items[0].query_id = query_id;
>  	items[0].flags = 42;
>  	i915_query_items(fd, items, 1);
>  	igt_assert_eq(items[0].length, -EINVAL);
> @@ -113,10 +114,10 @@ static void test_query_garbage_items(int fd)
>  	 * one is properly processed.
>  	 */
>  	memset(items, 0, sizeof(items));
> -	items[0].query_id = DRM_I915_QUERY_TOPOLOGY_INFO;
> +	items[0].query_id = query_id;
>  	items[1].query_id = ULONG_MAX;
>  	i915_query_items(fd, items, 2);
> -	igt_assert_lte(MIN_TOPOLOGY_ITEM_SIZE, items[0].length);
> +	igt_assert_lte(min_item_size, items[0].length);
>  	igt_assert_eq(items[1].length, -EINVAL);
>  
>  	/*
> @@ -126,16 +127,16 @@ static void test_query_garbage_items(int fd)
>  	 */
>  	memset(items, 0, sizeof(items));
>  	items[0].query_id = ULONG_MAX;
> -	items[1].query_id = DRM_I915_QUERY_TOPOLOGY_INFO;
> +	items[1].query_id = query_id;
>  	i915_query_items(fd, items, 2);
>  	igt_assert_eq(items[0].length, -EINVAL);
> -	igt_assert_lte(MIN_TOPOLOGY_ITEM_SIZE, items[1].length);
> +	igt_assert_lte(min_item_size, items[1].length);
>  
>  	/* Test a couple of invalid data pointer in query item. */
>  	memset(items, 0, sizeof(items));
> -	items[0].query_id = DRM_I915_QUERY_TOPOLOGY_INFO;
> +	items[0].query_id = query_id;
>  	i915_query_items(fd, items, 1);
> -	igt_assert_lte(MIN_TOPOLOGY_ITEM_SIZE, items[0].length);
> +	igt_assert_lte(min_item_size, items[0].length);
>  
>  	items[0].data_ptr = 0;
>  	i915_query_items(fd, items, 1);
> @@ -145,14 +146,13 @@ static void test_query_garbage_items(int fd)
>  	i915_query_items(fd, items, 1);
>  	igt_assert_eq(items[0].length, -EFAULT);
>  
> -
>  	/* Test an invalid query item length. */
>  	memset(items, 0, sizeof(items));
> -	items[0].query_id = DRM_I915_QUERY_TOPOLOGY_INFO;
> -	items[1].query_id = DRM_I915_QUERY_TOPOLOGY_INFO;
> -	items[1].length = sizeof(struct drm_i915_query_topology_info) - 1;
> +	items[0].query_id = query_id;
> +	items[1].query_id = query_id;
> +	items[1].length = sizeof_query_item - 1;
>  	i915_query_items(fd, items, 2);
> -	igt_assert_lte(MIN_TOPOLOGY_ITEM_SIZE, items[0].length);
> +	igt_assert_lte(min_item_size, items[0].length);
>  	igt_assert_eq(items[1].length, -EINVAL);
>  
>  	/*
> @@ -162,9 +162,9 @@ static void test_query_garbage_items(int fd)
>  	 * has been removed from our address space.
>  	 */
>  	items_ptr = mmap(0, 4096, PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0);
> -	items_ptr[0].query_id = DRM_I915_QUERY_TOPOLOGY_INFO;
> +	items_ptr[0].query_id = query_id;
>  	i915_query_items(fd, items_ptr, 1);
> -	igt_assert_lte(MIN_TOPOLOGY_ITEM_SIZE, items_ptr[0].length);
> +	igt_assert_lte(min_item_size, items_ptr[0].length);
>  	munmap(items_ptr, 4096);
>  	i915_query_items_err(fd, items_ptr, 1, EFAULT);
>  
> @@ -173,7 +173,7 @@ static void test_query_garbage_items(int fd)
>  	 * the kernel errors out with EFAULT.
>  	 */
>  	items_ptr = mmap(0, 4096, PROT_WRITE, MAP_PRIVATE | MAP_ANON, -1, 0);
> -	items_ptr[0].query_id = DRM_I915_QUERY_TOPOLOGY_INFO;
> +	items_ptr[0].query_id = query_id;
>  	igt_assert_eq(0, mprotect(items_ptr, 4096, PROT_READ));
>  	i915_query_items_err(fd, items_ptr, 1, EFAULT);
>  	munmap(items_ptr, 4096);
> @@ -186,12 +186,20 @@ static void test_query_garbage_items(int fd)
>  	memset(items_ptr, 0, 8192);
>  	n_items = 8192 / sizeof(struct drm_i915_query_item);
>  	for (i = 0; i < n_items; i++)
> -		items_ptr[i].query_id = DRM_I915_QUERY_TOPOLOGY_INFO;
> +		items_ptr[i].query_id = query_id;
>  	mprotect(((uint8_t *)items_ptr) + 4096, 4096, PROT_READ);
>  	i915_query_items_err(fd, items_ptr, n_items, EFAULT);
>  	munmap(items_ptr, 8192);
>  }
>  
> +static void test_query_topology_garbage_items(int fd)
> +{
> +	test_query_garbage_items(fd,
> +				 DRM_I915_QUERY_TOPOLOGY_INFO,
> +				 MIN_TOPOLOGY_ITEM_SIZE,
> +				 sizeof(struct drm_i915_query_topology_info));
> +}
> +
>  /*
>   * Allocate more on both sides of where the kernel is going to write and verify
>   * that it writes only where it's supposed to.
> @@ -738,9 +746,9 @@ igt_main
>  	igt_subtest("query-garbage")
>  		test_query_garbage(fd);
>  
> -	igt_subtest("query-garbage-items") {
> +	igt_subtest("query-topology-garbage-items") {
>  		igt_require(query_topology_supported(fd));
> -		test_query_garbage_items(fd);
> +		test_query_topology_garbage_items(fd);
>  	}
>  
>  	igt_subtest("query-topology-kernel-writes") {
> -- 
> 2.26.3
> 
> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
