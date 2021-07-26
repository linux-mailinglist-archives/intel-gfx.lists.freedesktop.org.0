Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACAD3D58C6
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 13:46:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDF9C88CFA;
	Mon, 26 Jul 2021 11:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB76F6E82F;
 Mon, 26 Jul 2021 11:46:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10056"; a="199452993"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="199452993"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 04:46:44 -0700
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="661823490"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.205])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 04:46:43 -0700
Date: Mon, 26 Jul 2021 17:18:35 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <20210726114833.GC20437@intel.com>
References: <20210708122554.1874987-1-matthew.auld@intel.com>
 <20210708122554.1874987-3-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210708122554.1874987-3-matthew.auld@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/3] tests/i915_query: add
 some sanity checking around regions query
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

On 2021-07-08 at 13:25:54 +0100, Matthew Auld wrote:
> Ensure if we feed garbage into DRM_I915_QUERY_MEMORY_REGIONS it does
> indeed fail as expected. Also add some asserts for the invariants with
> the probed regions, for example we should always have at least system
> memory.
LGTM.

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> ---
>  tests/i915/i915_query.c | 127 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 127 insertions(+)
> 
> diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
> index 34965841..78bd4a2b 100644
> --- a/tests/i915/i915_query.c
> +++ b/tests/i915/i915_query.c
> @@ -33,6 +33,10 @@ IGT_TEST_DESCRIPTION("Testing the i915 query uAPI.");
>   */
>  #define MIN_TOPOLOGY_ITEM_SIZE (sizeof(struct drm_i915_query_topology_info) + 3)
>  
> +/* All devices should have at least one region. */
> +#define MIN_REGIONS_ITEM_SIZE (sizeof(struct drm_i915_query_memory_regions) + \
> +			       sizeof(struct drm_i915_memory_region_info))
> +
>  static int
>  __i915_query(int fd, struct drm_i915_query *q)
>  {
> @@ -491,6 +495,119 @@ test_query_topology_known_pci_ids(int fd, int devid)
>  	free(topo_info);
>  }
>  
> +static bool query_regions_supported(int fd)
> +{
> +	struct drm_i915_query_item item = {
> +		.query_id = DRM_I915_QUERY_MEMORY_REGIONS,
> +	};
> +
> +	return __i915_query_items(fd, &item, 1) == 0 && item.length > 0;
> +}
> +
> +static void test_query_regions_garbage_items(int fd)
> +{
> +	struct drm_i915_query_memory_regions *regions;
> +	struct drm_i915_query_item item;
> +	int i;
> +
> +	test_query_garbage_items(fd,
> +				 DRM_I915_QUERY_MEMORY_REGIONS,
> +				 MIN_REGIONS_ITEM_SIZE,
> +				 sizeof(struct drm_i915_query_memory_regions));
> +
> +	memset(&item, 0, sizeof(item));
> +	item.query_id = DRM_I915_QUERY_MEMORY_REGIONS;
> +	i915_query_items(fd, &item, 1);
> +	igt_assert(item.length > 0);
> +
> +	regions = calloc(1, item.length);
> +	item.data_ptr = to_user_pointer(regions);
> +
> +	/* Bogus; in-MBZ */
> +	for (i = 0; i < ARRAY_SIZE(regions->rsvd); i++) {
> +		regions->rsvd[i] = 0xdeadbeaf;
> +		i915_query_items(fd, &item, 1);
> +		igt_assert_eq(item.length, -EINVAL);
> +		regions->rsvd[i] = 0;
> +	}
> +
> +	i915_query_items(fd, &item, 1);
> +	igt_assert(regions->num_regions);
> +	igt_assert(item.length > 0);
> +
> +	/* Bogus; out-MBZ */
> +	for (i = 0; i < regions->num_regions; i++) {
> +		struct drm_i915_memory_region_info info = regions->regions[i];
> +		int j;
> +
> +		igt_assert_eq_u32(info.rsvd0, 0);
> +
> +		for (j = 0; j < ARRAY_SIZE(info.rsvd1); j++)
> +			igt_assert_eq_u32(info.rsvd1[j], 0);
> +	}
> +
> +	/* Bogus; kernel is meant to set this */
> +	regions->num_regions = 1;
> +	i915_query_items(fd, &item, 1);
> +	igt_assert_eq(item.length, -EINVAL);
> +	regions->num_regions = 0;
> +
> +	free(regions);
> +}
> +
> +static void test_query_regions_sanity_check(int fd)
> +{
> +	struct drm_i915_query_memory_regions *regions;
> +	struct drm_i915_query_item item;
> +	bool found_system;
> +	int i;
> +
> +	memset(&item, 0, sizeof(item));
> +	item.query_id = DRM_I915_QUERY_MEMORY_REGIONS;
> +	i915_query_items(fd, &item, 1);
> +	igt_assert(item.length > 0);
> +
> +	regions = calloc(1, item.length);
> +
> +	item.data_ptr = to_user_pointer(regions);
> +	i915_query_items(fd, &item, 1);
> +
> +	/* We should always have at least one region */
> +	igt_assert(regions->num_regions);
> +
> +	found_system = false;
> +	for (i = 0; i < regions->num_regions; i++) {
> +		struct drm_i915_gem_memory_class_instance r1 =
> +			regions->regions[i].region;
> +		int j;
> +
> +		if (r1.memory_class == I915_MEMORY_CLASS_SYSTEM) {
> +			igt_assert_eq(r1.memory_instance, 0);
> +			found_system = true;
> +		}
> +
> +		igt_assert(r1.memory_class == I915_MEMORY_CLASS_SYSTEM ||
> +			   r1.memory_class == I915_MEMORY_CLASS_DEVICE);
> +
> +		for (j = 0; j < regions->num_regions; j++) {
> +			struct drm_i915_gem_memory_class_instance r2 =
> +				regions->regions[j].region;
> +
> +			if (i == j)
> +				continue;
> +
> +			/* All probed class:instance pairs must be unique */
> +			igt_assert(!(r1.memory_class == r2.memory_class &&
> +				     r1.memory_instance == r2.memory_instance));
> +		}
> +	}
> +
> +	/* All devices should at least have system memory */
> +	igt_assert(found_system);
> +
> +	free(regions);
> +}
> +
>  static bool query_engine_info_supported(int fd)
>  {
>  	struct drm_i915_query_item item = {
> @@ -779,6 +896,16 @@ igt_main
>  		test_query_topology_known_pci_ids(fd, devid);
>  	}
>  
> +	igt_subtest("query-regions-garbage-items") {
> +		igt_require(query_regions_supported(fd));
> +		test_query_regions_garbage_items(fd);
> +	}
> +
> +	igt_subtest("query-regions-sanity-check") {
> +		igt_require(query_regions_supported(fd));
> +		test_query_regions_sanity_check(fd);
> +	}
> +
>  	igt_subtest_group {
>  		igt_fixture {
>  			igt_require(query_engine_info_supported(fd));
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
