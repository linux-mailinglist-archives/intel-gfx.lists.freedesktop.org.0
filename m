Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E628804D8
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 19:30:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE0910FC5B;
	Tue, 19 Mar 2024 18:30:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AnScT0hI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA8CB10FC5B;
 Tue, 19 Mar 2024 18:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710873046; x=1742409046;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QhGzyn2RyINszG+Mr2i+2E/doPIrxeFYCq/NICE2A8M=;
 b=AnScT0hIp8RcJxNtuFvfnHCgvKVRXNvbsInzjJHMqqW/eH2OaACzxvFS
 1yNWsVCkxAneRiwsL2QWCGeVdJRFbDZH98jLWF5kuNf3L3hdZySDtghyw
 AaILbvsLPTduguL20U0IgRlanhQn/JTASKvvfVsIasxoG30YMjrwbMpHO
 Nb+xw7IF9owwY0+iMY1vIjb66woyhHPWhNnlzo5KdFeWjQz/WbrssDCjo
 3xxTp9ix3u84UQIdp/oOv0p6dj0UbMmTe3OdtUIGbCztOSW3Fu2eMOC3D
 sFfJo47kJRNqSqhIj5OcbnXYA3c9mUPa7MWuljJScOk2f5+DjPXEYAlsn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="6372570"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="6372570"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 11:30:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="44988820"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 11:30:43 -0700
Date: Tue, 19 Mar 2024 19:30:40 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH i-g-t v3 2/5] lib/kunit: Let igt_ktap_free() take care of
 pointer reset
Message-ID: <20240319183040.xljhpgtursfgltc4@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20240318103534.701693-7-janusz.krzysztofik@linux.intel.com>
 <20240318103534.701693-9-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240318103534.701693-9-janusz.krzysztofik@linux.intel.com>
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
On 2024-03-18 at 11:13:28 +0100, Janusz Krzysztofik wrote:
> Users who store a pointer to struct igt_ktap_results, obtained from
> igt_ktap_alloc(), in a central location and then call igt_ktap_free() when
> no longer needed, now have to reset that pointer to NULL to avoid double
> free on final cleanup.  For their convenience, teach igt_ktap_free() to
> accept that location as an argument and reset the pointer after freeing
> the structure.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

LGTM,
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_kmod.c              | 12 +++++-------
>  lib/igt_ktap.c              |  5 +++--
>  lib/igt_ktap.h              |  2 +-
>  lib/tests/igt_ktap_parser.c | 24 ++++++++++++------------
>  4 files changed, 21 insertions(+), 22 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index ca20012a97..8a6824ea7e 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -1094,7 +1094,7 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
>  
>  	if (igt_debug_on(pthread_create(&modprobe.thread, NULL,
>  					modprobe_task, &modprobe))) {
> -		igt_ktap_free(ktap);
> +		igt_ktap_free(&ktap);
>  		igt_skip("Failed to create a modprobe thread\n");
>  	}
>  
> @@ -1197,7 +1197,7 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
>  		break;
>  	}
>  
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	igt_skip_on(modprobe.err);
>  	igt_skip_on(igt_kernel_tainted(&taints));
> @@ -1243,8 +1243,7 @@ static bool kunit_get_tests(struct igt_list_head *tests,
>  		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, *ktap);
>  	while (err == -EINPROGRESS);
>  
> -	igt_ktap_free(*ktap);
> -	*ktap = NULL;
> +	igt_ktap_free(ktap);
>  
>  	igt_skip_on_f(err,
>  		      "KTAP parser failed while getting a list of test cases\n");
> @@ -1405,8 +1404,7 @@ static void __igt_kunit(struct igt_ktest *tst,
>  		}
>  	}
>  
> -	igt_ktap_free(*ktap);
> -	*ktap = NULL;
> +	igt_ktap_free(ktap);
>  
>  	igt_skip_on(modprobe.err);
>  	igt_skip_on(igt_kernel_tainted(&taints));
> @@ -1487,7 +1485,7 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
>  	igt_fixture {
>  		char *suite_name = NULL, *case_name = NULL;
>  
> -		igt_ktap_free(ktap);
> +		igt_ktap_free(&ktap);
>  
>  		kunit_results_free(&tests, &suite_name, &case_name);
>  
> diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> index aa7ea84476..300fb2bb5a 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -310,7 +310,8 @@ struct igt_ktap_results *igt_ktap_alloc(struct igt_list_head *results)
>  	return ktap;
>  }
>  
> -void igt_ktap_free(struct igt_ktap_results *ktap)
> +void igt_ktap_free(struct igt_ktap_results **ktap)
>  {
> -	free(ktap);
> +	free(*ktap);
> +	*ktap = NULL;
>  }
> diff --git a/lib/igt_ktap.h b/lib/igt_ktap.h
> index c422636bfc..7684e859b3 100644
> --- a/lib/igt_ktap.h
> +++ b/lib/igt_ktap.h
> @@ -41,6 +41,6 @@ struct igt_ktap_results;
>  
>  struct igt_ktap_results *igt_ktap_alloc(struct igt_list_head *results);
>  int igt_ktap_parse(const char *buf, struct igt_ktap_results *ktap);
> -void igt_ktap_free(struct igt_ktap_results *ktap);
> +void igt_ktap_free(struct igt_ktap_results **ktap);
>  
>  #endif /* IGT_KTAP_H */
> diff --git a/lib/tests/igt_ktap_parser.c b/lib/tests/igt_ktap_parser.c
> index 6357bdf6a5..8c2d16080d 100644
> --- a/lib/tests/igt_ktap_parser.c
> +++ b/lib/tests/igt_ktap_parser.c
> @@ -45,7 +45,7 @@ static void ktap_list(void)
>  	igt_assert_eq(igt_ktap_parse("    ok 4 test_case_4 # SKIP\n", ktap), -EINPROGRESS);
>  	igt_assert_eq(igt_ktap_parse("ok 3 test_suite_3\n", ktap), 0);
>  
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	igt_assert_eq(igt_list_length(&results), 8);
>  
> @@ -107,7 +107,7 @@ static void ktap_results(void)
>  	igt_assert_eq(igt_ktap_parse("    ok 1 test_case\n", ktap), -EINPROGRESS);
>  	igt_assert_eq(igt_ktap_parse("not ok 1 test_suite\n", ktap), 0);
>  
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	igt_assert_eq(igt_list_length(&results), 2);
>  
> @@ -162,7 +162,7 @@ static void ktap_success(void)
>  	igt_assert_eq(igt_ktap_parse("not ok 1 test_suite\n", ktap), 0);
>  	igt_assert_eq(igt_list_length(&results), 2);
>  
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	result = igt_list_last_entry(&results, result, link);
>  	igt_list_del(&result->link);
> @@ -186,48 +186,48 @@ static void ktap_top_version(void)
>  	ktap = igt_ktap_alloc(&results);
>  	igt_require(ktap);
>  	igt_assert_eq(igt_ktap_parse("1..1\n", ktap), -EPROTO);
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	ktap = igt_ktap_alloc(&results);
>  	igt_require(ktap);
>  	/* TODO: change to -EPROTO as soon as related workaround is dropped */
>  	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRESS);
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	ktap = igt_ktap_alloc(&results);
>  	igt_require(ktap);
>  	igt_assert_eq(igt_ktap_parse("    # Subtest: test_suite\n", ktap), -EPROTO);
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	ktap = igt_ktap_alloc(&results);
>  	igt_require(ktap);
>  	igt_assert_eq(igt_ktap_parse("    1..1\n", ktap), -EPROTO);
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	ktap = igt_ktap_alloc(&results);
>  	igt_require(ktap);
>  	igt_assert_eq(igt_ktap_parse("        KTAP version 1\n", ktap), -EPROTO);
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	ktap = igt_ktap_alloc(&results);
>  	igt_require(ktap);
>  	igt_assert_eq(igt_ktap_parse("        # Subtest: test_case\n", ktap), -EPROTO);
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	ktap = igt_ktap_alloc(&results);
>  	igt_require(ktap);
>  	igt_assert_eq(igt_ktap_parse("        ok 1 parameter 1\n", ktap), -EPROTO);
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	ktap = igt_ktap_alloc(&results);
>  	igt_require(ktap);
>  	igt_assert_eq(igt_ktap_parse("    ok 1 test_case\n", ktap), -EPROTO);
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  
>  	ktap = igt_ktap_alloc(&results);
>  	igt_require(ktap);
>  	igt_assert_eq(igt_ktap_parse("ok 1 test_suite\n", ktap), -EPROTO);
> -	igt_ktap_free(ktap);
> +	igt_ktap_free(&ktap);
>  }
>  
>  igt_main
> -- 
> 2.43.0
> 
