Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90C0379A64C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 10:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B1D210E07C;
	Mon, 11 Sep 2023 08:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8384410E07C;
 Mon, 11 Sep 2023 08:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694422378; x=1725958378;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oO5RRlcu4VamHM47EMtSavuZk925FvVpR+FrGDlQE3c=;
 b=mz8+GquOw4W9jtxX+W4mDGGQ9tsmutl72gBVDKvJhI1822iDE7h8Pvym
 fgrb9IfWRhG7wjriQKn8a3XApxoMa/JONXFZfdBtMyj4Fdrgqh2LUoCLm
 NN1p0/wp30VbxpVHRq1SVFjF51+kWLU+h28LZFtED5GNbK2imi7eDrgJ1
 dAouWNjLAOiA8BZ8eP83EAisVULMct4Aquz0OlaYSu4fEzU929VEhHJPW
 M9W+hHPXK/oEqgli6l43OBCbnf4mSgif0/KIwjdtN3bE/lSETpE4uCxaH
 XIEFnveRfKQ/br2iqUrrOA/qpnde1ceeAFUszGefx8ykQaKfKg2z/5jWh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="357472783"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="357472783"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 01:52:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="1074065535"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="1074065535"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 01:52:56 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.24.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 7DA76580DC7;
 Mon, 11 Sep 2023 01:52:54 -0700 (PDT)
Date: Mon, 11 Sep 2023 10:52:51 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230911105251.220d90ed@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-24-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-24-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 05/17] lib/kunit: Fix illegal
 igt_fail() calls inside subtest body
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
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Isabella Basso <isabbasso@riseup.net>,
 Dominik Karol =?UTF-8?B?UGnEhXRrb3dza2k=?=
 <dominik.karol.piatkowski@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri,  8 Sep 2023 14:32:39 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> In a body of a subtest with dynamic sub-subtests, it is illegal to call
> igt_fail() and its variants from outside of a dynamic sub-subtest body.
> On the other hand, it is perfectly legal to call either igt_skip() and
> friends or __igt_abort() or its variant from there.
> 
> In the current implementation of igt_kunit(), there are several places
> where igt_fail() is called despite being illegal.  Moreover, it is called
> with IGT_EXIT_ABORT as an argument with no good reason for using such
> aggressive method that forces CI to trigger system reboot (in most cases
> igt_runner can decide if abort is required).
> 
> Follow igt_kselftests() pattern more closely, where similar setup and
> cleanup operations are performed but their potential errors are processed
> in a more friendly way.  Move common cleanup and their corresponding setup
> steps out of the subtest body.  Place the latter as requirements in a
> preceding igt_fixture section.  Replace remaining illegal igt_fail() calls
> with more friendly skips.  Let igt_runner decide if abort is needed.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c | 75 +++++++++++++++-----------------------------------
>  1 file changed, 22 insertions(+), 53 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 1d1cd51170..78b8eb8f53 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -754,59 +754,27 @@ void igt_kselftest_get_tests(struct kmod_module *kmod,
>   *
>   * Returns: IGT default codes
>   */
> -static void __igt_kunit(const char *module_name, const char *opts)
> +static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  {
> -	struct igt_ktest tst;
>  	struct kmod_module *kunit_kmod;
>  	bool is_builtin;
>  	int ret;
>  	struct ktap_test_results *results;
>  	struct ktap_test_results_element *temp;
> -	int skip = 0;
> -	bool fail = false;
> -
> -	/* get normalized module name */
> -	if (igt_ktest_init(&tst, module_name) != 0) {
> -		igt_warn("Unable to initialize ktest for %s\n", module_name);
> -		igt_fail(IGT_EXIT_ABORT);
> -	}
> -
> -	if (igt_ktest_begin(&tst) != 0) {
> -		igt_warn("Unable to begin ktest for %s\n", module_name);
> -		igt_ktest_fini(&tst);
> -		igt_fail(IGT_EXIT_ABORT);
> -	}
>  
> -	if (tst.kmsg < 0) {
> -		igt_warn("Could not open /dev/kmsg\n");
> -		fail = true;
> -		goto unload;
> -	}
> +	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
>  
> -	if (lseek(tst.kmsg, 0, SEEK_END)) {
> -		igt_warn("Could not seek the end of /dev/kmsg\n");
> -		fail = true;
> -		goto unload;
> -	}
> -
> -	ret = kmod_module_new_from_name(kmod_ctx(), "kunit", &kunit_kmod);
> -	if (ret) {
> -		igt_warn("Unable to load KUnit\n");
> -		skip = ret;
> -		goto unload;
> -	}
> +	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
>  
> +	igt_skip_on(kmod_module_new_from_name(kmod_ctx(), "kunit", &kunit_kmod));
>  	is_builtin = kmod_module_get_initstate(kunit_kmod) == KMOD_MODULE_BUILTIN;
>  	kmod_module_unref(kunit_kmod);
>  
> -	results = ktap_parser_start(tst.kmsg, is_builtin);
> +	results = ktap_parser_start(tst->kmsg, is_builtin);
>  
> -	ret = igt_kmod_load(module_name, opts);
> -	if (ret) {
> -		skip = ret;
> -		igt_warn("Unable to load %s module\n", module_name);
> -		ret = ktap_parser_stop();
> -		goto unload;
> +	if (igt_debug_on(igt_kmod_load(tst->module_name, opts) < 0)) {
> +		igt_ignore_warn(ktap_parser_stop());
> +		igt_skip("Unable to load %s module\n", tst->module_name);
>  	}
>  
>  	while (READ_ONCE(results->still_running) || READ_ONCE(results->head) != NULL)
> @@ -825,24 +793,21 @@ static void __igt_kunit(const char *module_name, const char *opts)
>  		}
>  	}
>  
> -unload:
> -	igt_ktest_end(&tst);
> -
> -	igt_ktest_fini(&tst);
> -
> -	igt_skip_on_f(skip, "Skipping test, as probing KUnit module failed\n");
> -
> -	if (fail)
> -		igt_fail(IGT_EXIT_ABORT);
> -
>  	ret = ktap_parser_stop();
>  
> -	if (ret != 0)
> -		igt_fail(IGT_EXIT_ABORT);
> +	igt_skip_on_f(ret, "KTAP parser failed\n");
>  }
>  
>  void igt_kunit(const char *module_name, const char *name, const char *opts)
>  {
> +	struct igt_ktest tst;
> +
> +	if (igt_ktest_init(&tst, module_name) != 0)
> +		return;

Shouldn't it be calling igt_skip() here too?

> +
> +	igt_fixture
> +		igt_require(igt_ktest_begin(&tst) == 0);
> +
>  	/*
>  	 * We need to use igt_subtest here, as otherwise it may crash with:
>  	 *  skipping is allowed only in fixtures, subtests or igt_simple_main
> @@ -854,7 +819,11 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
>  		name = module_name;
>  
>  	igt_subtest_with_dynamic(name)
> -		__igt_kunit(module_name, opts);
> +		__igt_kunit(&tst, opts);
> +
> +	igt_ktest_end(&tst);
> +
> +	igt_ktest_fini(&tst);
>  }
>  
>  static int open_parameters(const char *module_name)
