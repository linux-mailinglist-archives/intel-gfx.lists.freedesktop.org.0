Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA299875580
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Mar 2024 18:48:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 238AF10F57D;
	Thu,  7 Mar 2024 17:48:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="As0JgFJm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E96B710F506;
 Thu,  7 Mar 2024 17:48:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709833715; x=1741369715;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=XJDNYkaQ1nwimIN8Y03MLcK4Uc2s8oovVgKMLY575Nk=;
 b=As0JgFJmb0cS2lKXFcgG3q5G1mXe8rZZ9tFSBkYyqjmHmIxUi1YASq0r
 n0V27Pw1Y9Vl4O0AcIXqgwZKUn5EnNzfAWfiHPlOH4+5ZsWQfsAK9iInR
 /yHA/CaigjSWysy0etJF8GZ0ACeXhh2dM8CJWvhEz+7lJA9bleTAcPrJ0
 ns6b7XrIUOm4hyCDFl+jZCodO73YKHiNAeYGSzGO4YR2NV/DZcDgfXltq
 PSNJqo0jaxcQgP987JfZVqCEHicA3zVb3fcA7QTZoDAW2Fpd92jVk6AK/
 FveU0MGQFDnp/Txm+kxWFCe0Uk1hmkdLCrLnS930j1Iy21PUEbvzRlXEY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="29964354"
X-IronPort-AV: E=Sophos;i="6.07,107,1708416000"; d="scan'208";a="29964354"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 09:48:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,107,1708416000"; d="scan'208";a="14849560"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orviesa004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Mar 2024 09:48:33 -0800
Date: Thu, 7 Mar 2024 18:48:14 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH i-g-t v2 2/2] lib/kunit: Minimize code duplication
Message-ID: <20240307174814.kalq3rg2qka4yg7r@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20240227151128.16802-4-janusz.krzysztofik@linux.intel.com>
 <20240227151128.16802-6-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240227151128.16802-6-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,
On 2024-02-27 at 16:10:42 +0100, Janusz Krzysztofik wrote:
> A new helper has been introduced recently, used for fetching KTAP results
> of a single test case.  Since that helper is called for that purpose
> only after the test module is loaded with all other test cases filtered
> out, its actual implementation is as simple as collecting all results from
> a single KTAP report, no matter how many test suites and test cases it
> covers.  Then, it's a good candidate for reuse in other scenarios when a
> single KTAP report is handled, e.g., when we collect a list of test cases
> from a single test suite or test module.  Go for it.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_kmod.c | 15 ++-------------
>  1 file changed, 2 insertions(+), 13 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index e9e00ac5b2..86cf50d5b7 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -1177,9 +1177,8 @@ static bool kunit_get_tests(struct igt_list_head *tests,
>  			    const char *opts)
>  {
>  	struct igt_ktap_result *r, *rn;
> -	struct igt_ktap_results *ktap;
>  	unsigned long taints;
> -	int flags, err;
> +	int flags;
>  
>  	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
>  
> @@ -1203,17 +1202,7 @@ static bool kunit_get_tests(struct igt_list_head *tests,
>  	igt_skip_on(modprobe(tst->kmod, opts));
>  	igt_skip_on(igt_kernel_tainted(&taints));
>  
> -	ktap = igt_ktap_alloc(tests);
> -	igt_require(ktap);
> -
> -	do
> -		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, ktap);
> -	while (err == -EINPROGRESS);
> -
> -	igt_ktap_free(ktap);
> -
> -	igt_skip_on_f(err,
> -		      "KTAP parser failed while getting a list of test cases\n");
> +	igt_skip_on(kunit_get_results(tests, tst->kmsg));
>  
>  	igt_list_for_each_entry_safe(r, rn, tests, link)
>  		igt_require_f(r->code == IGT_EXIT_SKIP,
> -- 
> 2.43.0
> 
