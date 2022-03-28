Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B63334E9324
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591BA10E5FA;
	Mon, 28 Mar 2022 11:18:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D428510E5F5;
 Mon, 28 Mar 2022 11:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648466310; x=1680002310;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yJAkSNCTOPoTsDpnRAoa8QM0Y9kyINrQjG3Fa1iHgFs=;
 b=LQK6TVlY/sIq5ZS2UrGkzl4T3/TtTFTfgoamkXXfTjZf8Fr7Od3j3RCZ
 hk22HFChcMxTCRyPcKjPv8uxrkIv/KDZiL9o+yX8U5uEm0yTB1NlS0qLL
 YC5jwJAYf6VcJfMdre8ZrQ6eikJFJ2B4UTuL64wBQLZ+nXkvHLvE8Zotl
 fQzcGtyIXtnGb4+I/FdyHlMLf6o1rwha7sKuZ1tbcaxgXQKR82rFHn82S
 HHiHl9z8btLAU3jlSPshojSGAoAsuwostlTjWwSH+NPX9yGRImTXoYj7Q
 rT1LuCVwXMolX0ohGpNQerqMf6cUPLVLJ1YvmEBxz5ejHYgRxnmSAZRYC A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="257802365"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="257802365"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:18:30 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="553876822"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.72.90])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:18:28 -0700
Received: from platvala by thrakatuluk with local (Exim 4.94.2)
 (envelope-from <petri.latvala@intel.com>)
 id 1nYnNx-0004LX-2p; Mon, 28 Mar 2022 14:18:09 +0300
Date: Mon, 28 Mar 2022 14:18:09 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <YkGZcTZHHcF781Zz@platvala-desk.ger.corp.intel.com>
References: <20220328100859.13550-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220328100859.13550-1-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH i-g-t v3] tests/gem_lmem_swapping: limit
 lmem to 4G
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 CQ Tang <cq.tang@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 28, 2022 at 11:08:59AM +0100, Matthew Auld wrote:
> From: CQ Tang <cq.tang@intel.com>
> 
> On some systems lmem can be as large as 16G, which seems to trigger
> various CI timeouts, and in the best case just takes a long time. For
> the purposes of the test we should be able to limit to 4G, without any
> big loss in coverage.
> 
> v2:
>  - No need to try again without the modparam; if it's not supported it
>    will still load the driver just fine.
> v3(Petri):
>  - Add a helpful debug print in case the kernel is missing support for
>    the lmem_size modparam.
> 
> Signed-off-by: CQ Tang <cq.tang@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
> Cc: Petri Latvala <petri.latvala@intel.com>
> Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  tests/i915/gem_lmem_swapping.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_lmem_swapping.c b/tests/i915/gem_lmem_swapping.c
> index 31644bcd..6cf1acec 100644
> --- a/tests/i915/gem_lmem_swapping.c
> +++ b/tests/i915/gem_lmem_swapping.c
> @@ -526,11 +526,20 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>  
>  	igt_fixture {
>  		struct intel_execution_engine2 *e;
> +		char *tmp;
>  
> -		i915 = drm_open_driver(DRIVER_INTEL);
> +		igt_i915_driver_unload();
> +		igt_assert_eq(igt_i915_driver_load("lmem_size=4096"), 0);
> +
> +		i915 = __drm_open_driver(DRIVER_INTEL);
>  		igt_require_gem(i915);
>  		igt_require(gem_has_lmem(i915));
>  
> +		tmp = __igt_params_get(i915, "lmem_size");
> +		if (!tmp)
> +			igt_info("lmem_size modparam not supported on this kernel. Continuing with full lmem size. This may result in CI timeouts.");
> +		free(tmp);

Newline at the end missing. With that added,
Reviewed-by: Petri Latvala <petri.latvala@intel.com>

> +
>  		regions = gem_get_query_memory_regions(i915);
>  		igt_require(regions);
>  
> @@ -556,6 +565,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>  		intel_ctx_destroy(i915, ctx);
>  		free(regions);
>  		close(i915);
> +		igt_i915_driver_unload();
>  	}
>  
>  	igt_exit();
> -- 
> 2.34.1
> 
