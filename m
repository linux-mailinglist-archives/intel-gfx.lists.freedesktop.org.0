Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F31C953E181
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jun 2022 10:06:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5361129C2;
	Mon,  6 Jun 2022 08:06:26 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1779911299F;
 Mon,  6 Jun 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654502785; x=1686038785;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=nMUA001uTuKKmPDAPFR2yngqyULxn7vsj2HpPjoQzOk=;
 b=GGlK7a2YUY/RArBOrPXVaI9xoBhoqcyMr3nTCiGsmrjgnX8Sz0N2JpqK
 XryjNh+yU72c7BqB8yn/EzbGZElv2Cflz7l3Wxubovb3IbbFCrEGhIxri
 ATysXXhMKocdZQAg356F3sdX1vIt/QxDqhySJrlrUSoHZRDGmYK4xFhqb
 2c1aCfavgU+PgGfwNzBsFzka86s3VPjRMlsowSNF+eM88+U3dfPajqhLX
 zUwUvw8GVe1Ld/Gj+4rwLNXlzRGraEVZqqAhYYNR1rx1Jp5viUeNPjFQ2
 2OT8lJc9W6F/d4QBQst3p2UzrxyKH60O7RbpbH++7ZF699Xvui11Wnsni A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10369"; a="256473585"
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="256473585"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2022 01:06:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,280,1647327600"; d="scan'208";a="583507235"
Received: from mmis-mobl.ger.corp.intel.com (HELO localhost) ([10.213.30.148])
 by fmsmga007-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2022 01:06:23 -0700
Date: Mon, 6 Jun 2022 10:06:21 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <Yp21fUojunr++dhc@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-GFX@lists.freedesktop.org,
 John Harrison <John.C.Harrison@intel.com>
References: <20220603162552.2254187-1-John.C.Harrison@Intel.com>
 <20220603162552.2254187-3-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220603162552.2254187-3-John.C.Harrison@Intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v5 i-g-t 2/3] tests/i915/query:
 Add descriptions to existing tests
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
Cc: Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2022-06-03 at 09:25:51 -0700, John.C.Harrison@Intel.com wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
> 
> None of the query tests had a description. So make some up.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> ---

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

>  tests/i915/i915_query.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/tests/i915/i915_query.c b/tests/i915/i915_query.c
> index 246a979af72a..35a91d245ec1 100644
> --- a/tests/i915/i915_query.c
> +++ b/tests/i915/i915_query.c
> @@ -923,34 +923,41 @@ igt_main
>  		devid = intel_get_drm_devid(fd);
>  	}
>  
> +	igt_describe("Test reponse to an invalid query call");
>  	igt_subtest("query-garbage")
>  		test_query_garbage(fd);
>  
> +	igt_describe("Test response to invalid DRM_I915_QUERY_TOPOLOGY_INFO query");
>  	igt_subtest("query-topology-garbage-items") {
>  		igt_require(query_topology_supported(fd));
>  		test_query_topology_garbage_items(fd);
>  	}
>  
> +	igt_describe("Guardband test for DRM_I915_QUERY_TOPOLOGY_INFO query");
>  	igt_subtest("query-topology-kernel-writes") {
>  		igt_require(query_topology_supported(fd));
>  		test_query_topology_kernel_writes(fd);
>  	}
>  
> +	igt_describe("Verify DRM_I915_QUERY_TOPOLOGY_INFO query fails when it is not supported");
>  	igt_subtest("query-topology-unsupported") {
>  		igt_require(!query_topology_supported(fd));
>  		test_query_topology_unsupported(fd);
>  	}
>  
> +	igt_describe("Compare new DRM_I915_QUERY_TOPOLOGY_INFO query with legacy (sub)slice getparams");
>  	igt_subtest("query-topology-coherent-slice-mask") {
>  		igt_require(query_topology_supported(fd));
>  		test_query_topology_coherent_slice_mask(fd);
>  	}
>  
> +	igt_describe("More compare new DRM_I915_QUERY_TOPOLOGY_INFO query with legacy (sub)slice getparams");
>  	igt_subtest("query-topology-matches-eu-total") {
>  		igt_require(query_topology_supported(fd));
>  		test_query_topology_matches_eu_total(fd);
>  	}
>  
> +	igt_describe("Verify DRM_I915_QUERY_TOPOLOGY_INFO query against hardcoded known values for certain platforms");
>  	igt_subtest("query-topology-known-pci-ids") {
>  		igt_require(query_topology_supported(fd));
>  		igt_require(IS_HASWELL(devid) || IS_BROADWELL(devid) ||
> @@ -959,16 +966,19 @@ igt_main
>  		test_query_topology_known_pci_ids(fd, devid);
>  	}
>  
> +	igt_describe("Test DRM_I915_QUERY_GEOMETRY_SUBSLICES query");
>  	igt_subtest("test-query-geometry-subslices") {
>  		igt_require(query_geometry_subslices_supported(fd));
>  		test_query_geometry_subslices(fd);
>  	}
>  
> +	igt_describe("Dodgy returned data tests for DRM_I915_QUERY_MEMORY_REGIONS");
>  	igt_subtest("query-regions-garbage-items") {
>  		igt_require(query_regions_supported(fd));
>  		test_query_regions_garbage_items(fd);
>  	}
>  
> +	igt_describe("Basic tests for DRM_I915_QUERY_MEMORY_REGIONS");
>  	igt_subtest("query-regions-sanity-check") {
>  		igt_require(query_regions_supported(fd));
>  		test_query_regions_sanity_check(fd);
> @@ -979,9 +989,11 @@ igt_main
>  			igt_require(query_engine_info_supported(fd));
>  		}
>  
> +		igt_describe("Negative tests for DRM_I915_QUERY_ENGINE_INFO");
>  		igt_subtest("engine-info-invalid")
>  			engines_invalid(fd);
>  
> +		igt_describe("Positive tests for DRM_I915_QUERY_ENGINE_INFO");
>  		igt_subtest("engine-info")
>  			engines(fd);
>  	}
> -- 
> 2.36.0
> 
