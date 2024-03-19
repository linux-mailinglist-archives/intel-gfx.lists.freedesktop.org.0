Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D6B8804BE
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 19:25:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A07010F5E5;
	Tue, 19 Mar 2024 18:25:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JhneJndf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E7EE10F51F;
 Tue, 19 Mar 2024 18:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710872754; x=1742408754;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RQJU0H17prx6PUEvQvssteZhfDTLNTxcJ2U8vFoU1bU=;
 b=JhneJndfFfrzlMidJsynWY3GMGrn7RBEfgDXPFfeh4HgU+NpPYXZvOD5
 KYiJ7QtTLBZrFdZh84P1xjgEXNzv6aOhAt9pnLvJL8LYhO/UPjXsvIIya
 QprCfAWieN5a4I2c0uAOuUoH13extpWelpWAEBj6GXmdqZFiaFgEcEl/o
 q2MsXEKvlmEftZdhDEcpp+wqdCqK5DH5264WFN3rQvRzsVqSTNk4NP39D
 thnDsYFaAa17C07QgBACa8EeiLkg5GUVAEGMTNi6XsowhwI//XHkifU6S
 DceIv+DKEs6uK4Osn/FIENBykR7d5MgoahYTRKLeKtul3q3YKnoj1Pp3E A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5642900"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5642900"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 11:25:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="14294546"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orviesa006-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 Mar 2024 11:25:51 -0700
Date: Tue, 19 Mar 2024 19:25:48 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH i-g-t v3 1/5] lib/kunit: Store igt_ktap_results pointer
 in a central location
Message-ID: <20240319182548.cdctiog4p7itpvbi@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20240318103534.701693-7-janusz.krzysztofik@linux.intel.com>
 <20240318103534.701693-8-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240318103534.701693-8-janusz.krzysztofik@linux.intel.com>
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
On 2024-03-18 at 11:13:27 +0100, Janusz Krzysztofik wrote:
> To give more freedom to future enhancements of KUnit library (legacy path
> excluded) in using IGT fails and skips, maintain a pointer to struct
> igt_ktap_results, allocated by several functions, in a single central
> location, and free it from a closing igt_fixture section before return.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_kmod.c | 35 ++++++++++++++++++++---------------
>  1 file changed, 20 insertions(+), 15 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index b4b8848983..ca20012a97 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -1207,10 +1207,10 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
>  static bool kunit_get_tests(struct igt_list_head *tests,
>  			    struct igt_ktest *tst,
>  			    const char *suite,
> -			    const char *opts)
> +			    const char *opts,
> +			    struct igt_ktap_results **ktap)
>  {
>  	struct igt_ktap_result *r, *rn;
> -	struct igt_ktap_results *ktap;
>  	unsigned long taints;
>  	int flags, err;
>  
> @@ -1236,14 +1236,15 @@ static bool kunit_get_tests(struct igt_list_head *tests,
>  	igt_skip_on(modprobe(tst->kmod, opts));
>  	igt_skip_on(igt_kernel_tainted(&taints));
>  
> -	ktap = igt_ktap_alloc(tests);
> -	igt_require(ktap);
> +	*ktap = igt_ktap_alloc(tests);
> +	igt_require(*ktap);
>  
>  	do
> -		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, ktap);
> +		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, *ktap);
>  	while (err == -EINPROGRESS);
>  
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(*ktap);
> +	*ktap = NULL;
>  
>  	igt_skip_on_f(err,
>  		      "KTAP parser failed while getting a list of test cases\n");
> @@ -1261,12 +1262,12 @@ static void __igt_kunit(struct igt_ktest *tst,
>  			const char *subtest,
>  			const char *suite,
>  			const char *opts,
> -			struct igt_list_head *tests)
> +			struct igt_list_head *tests,
> +			struct igt_ktap_results **ktap)
>  {
>  	struct modprobe_data modprobe = { tst->kmod, opts, 0, pthread_self(), };
>  	char *suite_name = NULL, *case_name = NULL;
>  	struct igt_ktap_result *t, *r = NULL;
> -	struct igt_ktap_results *ktap;
>  	pthread_mutexattr_t attr;
>  	IGT_LIST_HEAD(results);
>  	int ret = -EINPROGRESS;
> @@ -1274,8 +1275,8 @@ static void __igt_kunit(struct igt_ktest *tst,
>  
>  	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
>  
> -	ktap = igt_ktap_alloc(&results);
> -	igt_require(ktap);
> +	*ktap = igt_ktap_alloc(&results);
> +	igt_require(*ktap);
>  
>  	igt_list_for_each_entry(t, tests, link) {
>  		igt_dynamic_f("%s%s%s",
> @@ -1302,7 +1303,7 @@ static void __igt_kunit(struct igt_ktest *tst,
>  				igt_assert(igt_list_empty(&results));
>  				igt_assert_eq(ret, -EINPROGRESS);
>  				ret = kunit_kmsg_result_get(&results, &modprobe,
> -							    tst->kmsg, ktap);
> +							    tst->kmsg, *ktap);
>  				igt_fail_on(igt_list_empty(&results));
>  
>  				r = igt_list_first_entry(&results, r, link);
> @@ -1324,7 +1325,7 @@ static void __igt_kunit(struct igt_ktest *tst,
>  					ret = kunit_kmsg_result_get(&results,
>  								    &modprobe,
>  								    tst->kmsg,
> -								    ktap);
> +								    *ktap);
>  					igt_fail_on(igt_list_empty(&results));
>  				}
>  
> @@ -1404,7 +1405,8 @@ static void __igt_kunit(struct igt_ktest *tst,
>  		}
>  	}
>  
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(*ktap);
> +	*ktap = NULL;
>  
>  	igt_skip_on(modprobe.err);
>  	igt_skip_on(igt_kernel_tainted(&taints));
> @@ -1427,6 +1429,7 @@ static void __igt_kunit(struct igt_ktest *tst,
>  void igt_kunit(const char *module_name, const char *suite, const char *opts)
>  {
>  	struct igt_ktest tst = { .kmsg = -1, };
> +	struct igt_ktap_results *ktap = NULL;
>  	const char *subtest = suite;
>  	IGT_LIST_HEAD(tests);
>  
> @@ -1475,15 +1478,17 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
>  		 *	 LTS kernels not capable of using KUnit filters for
>  		 *	 listing test cases in KTAP format, with igt_require.
>  		 */
> -		if (!kunit_get_tests(&tests, &tst, suite, opts))
> +		if (!kunit_get_tests(&tests, &tst, suite, opts, &ktap))
>  			__igt_kunit_legacy(&tst, subtest, opts);
>  		else
> -			__igt_kunit(&tst, subtest, suite, opts, &tests);
> +			__igt_kunit(&tst, subtest, suite, opts, &tests, &ktap);
>  	}
>  
>  	igt_fixture {
>  		char *suite_name = NULL, *case_name = NULL;
>  
> +		igt_ktap_free(ktap);
> +
>  		kunit_results_free(&tests, &suite_name, &case_name);
>  
>  		igt_ktest_end(&tst);
> -- 
> 2.43.0
> 
