Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5B87A1D9A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 13:42:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51BEC10E177;
	Fri, 15 Sep 2023 11:42:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BF1510E177;
 Fri, 15 Sep 2023 11:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694778147; x=1726314147;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=swkUw3ZxWbMr7oYWRdoj7HABr6PTso8QO0jq7anWpV8=;
 b=jLKTVdQzexN+6PbdRqe3GK7ZwWat7Ret6SQYVg+FbwwwDVOh0bJmvoos
 zqJESpZJTAeB3RakffBiysKe99+JFZDfMJJFTEy4CXz8keUGOhQp1BVBl
 vXaD3d+uUI5UGnlJlJmeGHMxfVKxbyLRv+ApfXDPTrpIwvHJ4GSpBGsaR
 RZTy+W3SHtoL9wV08SYUxwzLsAn8JLVZVhX2t73Po9EQa/Yh390RKjwvc
 +9QAjX6A3KoWsIvhp07Qy1KS7+6nreDs2bxFoylzU2E5+ak9qD9VasT2R
 qpBQAtmL5GR1fmH92t+ffRUgcMs+txqvDxWsPQE8dbOvkiqvxR3NnaQSa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="364273873"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="364273873"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 04:42:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="888205362"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="888205362"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 04:41:43 -0700
Received: from maurocar-mobl2 (unknown [10.252.9.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 7D169580DC7;
 Fri, 15 Sep 2023 04:42:16 -0700 (PDT)
Date: Fri, 15 Sep 2023 13:42:13 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230915134213.12acd997@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-35-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-35-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 16/17] lib/kunit: Strip
 "_test" or "_kunit" suffix from subtest names
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Isabella Basso <isabbasso@riseup.net>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri,  8 Sep 2023 14:32:50 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> If a user (an IGT test) doesn't provide a subtest name when calling
> igt_kunit() then we now use the requested kernel module name as IGT
> subtest name.  Since names of kunit test modules usually end with a
> "_test" or "_kunit" suffix, those parts of the names don't carry any
> useful information.  Strip those suffixes from IGT subtest names.

LGTM.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c | 26 ++++++++++++++++++++++----
>  tests/drm_mm.c | 42 +++++++++++++++++++++---------------------
>  2 files changed, 43 insertions(+), 25 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 46a6f81e73..ddd5499f5e 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -944,8 +944,29 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
>  	if (igt_ktest_init(&tst, module_name) != 0)
>  		return;
>  
> -	igt_fixture
> +	/*
> +	 * If the caller (an IGT test) provides no subtest name then we
> +	 * take the module name, drop the trailing "_test" or "_kunit"
> +	 * suffix, if any, and use the result as our IGT subtest name.
> +	 */
> +	if (!name) {
> +		name = strdup(module_name);
> +		if (name) {
> +			char *suffix = strstr(name, "_test");
> +
> +			if (!suffix)
> +				suffix = strstr(name, "_kunit");
> +
> +			if (suffix)
> +				*suffix = '\0';
> +		}
> +	}
> +
> +	igt_fixture {
> +		igt_require(name);
> +
>  		igt_require(igt_ktest_begin(&tst) == 0);
> +	}
>  
>  	/*
>  	 * We need to use igt_subtest here, as otherwise it may crash with:
> @@ -954,9 +975,6 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
>  	 * proper namespace for dynamic subtests, with is required for CI
>  	 * and for documentation.
>  	 */
> -	if (name == NULL)
> -		name = module_name;
> -
>  	igt_subtest_with_dynamic(name)
>  		__igt_kunit(&tst, opts);
>  
> diff --git a/tests/drm_mm.c b/tests/drm_mm.c
> index 9a8b3f3fcb..e6ba224745 100644
> --- a/tests/drm_mm.c
> +++ b/tests/drm_mm.c
> @@ -29,123 +29,123 @@
>   * Feature: mapping
>   * Run type: FULL
>   *
> - * SUBTEST: drm_mm_test
> + * SUBTEST: drm_mm
>   *
> - * SUBTEST: drm_mm_test@align
> + * SUBTEST: drm_mm@align
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@align32
> + * SUBTEST: drm_mm@align32
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@align64
> + * SUBTEST: drm_mm@align64
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@bottomup
> + * SUBTEST: drm_mm@bottomup
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@color
> + * SUBTEST: drm_mm@color
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@color_evict
> + * SUBTEST: drm_mm@color_evict
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@color_evict_range
> + * SUBTEST: drm_mm@color_evict_range
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@debug
> + * SUBTEST: drm_mm@debug
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@evict
> + * SUBTEST: drm_mm@evict
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@evict_range
> + * SUBTEST: drm_mm@evict_range
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@frag
> + * SUBTEST: drm_mm@frag
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@highest
> + * SUBTEST: drm_mm@highest
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@init
> + * SUBTEST: drm_mm@init
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@insert
> + * SUBTEST: drm_mm@insert
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@insert_range
> + * SUBTEST: drm_mm@insert_range
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@lowest
> + * SUBTEST: drm_mm@lowest
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@replace
> + * SUBTEST: drm_mm@replace
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@reserve
> + * SUBTEST: drm_mm@reserve
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@sanitycheck
> + * SUBTEST: drm_mm@sanitycheck
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
>   * Test category: GEM_Legacy
>   *
> - * SUBTEST: drm_mm_test@topdown
> + * SUBTEST: drm_mm@topdown
>   * Category: Infrastructure
>   * Description: drm_mm range manager SW validation
>   * Functionality: DRM memory mangemnt
