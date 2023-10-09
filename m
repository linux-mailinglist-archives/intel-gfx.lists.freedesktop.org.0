Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 467D27BE890
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 19:46:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6316410E29F;
	Mon,  9 Oct 2023 17:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2955510E0BA;
 Mon,  9 Oct 2023 17:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696873565; x=1728409565;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RLJTALQ0gcKDeEjzneUbq3bxcdLTmyShxrzCssLymU8=;
 b=f9jP/ESxn84zSJVubqjPUd62Q6rwCdYPa/MJg8sk539xOHgivrvc2SDH
 AyEMvj+mXPtBq/KAs22SuuAsMOoktlEP5p97IiB4KeetesYrxu6ERQ47r
 PYHRJmwg6QF1ijtlI4D6g7Z61686y30pcYxxzDUSseDL8r8T8hu/dlsCW
 uiID0ZkuNt6j5X66T5y2D4na6vcyWLUKeUzgFRN01Kt04r14pN0IRETZm
 X9c2y81wWknYkYT9lNraWdrvjWYbq+bRwgaoTYz99qcIrUXSnjGgiXj2Q
 wgZFP31dakHUhugHL5sAn0Ho6FioupaJlAzb8Xgs99I1FF9+PxUG8z1jx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="369275898"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="369275898"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:46:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="896855572"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="896855572"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2023 10:44:22 -0700
Date: Mon, 9 Oct 2023 19:45:59 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231009174559.3lbs6wva77fmxasf@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
 <20231009122750.519112-23-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231009122750.519112-23-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 10/11] lib/kunit: Fetch a list of
 test cases in advance
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
Cc: intel-gfx@lists.freedesktop.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,
On 2023-10-09 at 14:28:01 +0200, Janusz Krzysztofik wrote:
> Recent improvements to the kernel kunit framework allow us to obtain a
> list of test cases provided by a kunit test module without actually
> running them.  Use that feature to get a list of expected test cases
> before we enter a loop around igt_dynamic().  Once done, enter the
----------------------------------------------^^
Two spaces, use one.

> igt_dynamic() section for each consecutive test case immediately, even
> before first line of a related KTAP report appears, then look for a result
> from that test case.  That should make our IGT results output still better
--------------------- ^^
Same here.

> synchronized with related kernel messages.
> 
> The list of test cases provided by a kunit test module can be obtained by
> loading the kunit base module with specific options, then loading the test
> module.  For that to be possible, take care of unloading the kunit base
--------------------- ^^
Same here.

> module before each kunit subtest (I was wrong when in one of my previous
> commit messages I suggested that on final unload of a kunit test module
> the kunit base module is unloaded automatically as its dependency,
> however, that didn't matter before, then no separate fix was required).
> Since that module can then be left loaded with non-default options if an
> error occurs, unload it explicitly before returning from igt_kunit().
> 
> There are two possible ways of getting a list of test cases: by loading
> the base kunit module with action=list module option, or by filtering
> out all test cases from being executed while asking for SKIP results from
> those filtered out.  Since the latter provides regular KTAP report that we
-------------------- ^^
Same here.

> can already parse perfectly, use it instead of trying to identify an
> unstructured list of test cases of unknown length submitted by the former.
> 
> If an IGT test that calls igt_kunit() provides a subtest name then use
> that name to filter out potential test cases that don't belong to the
> named test suite from the list.
> 
> To avoid loading any modules if no subtest is going to be executed (e.g.,
> if a nonexistent subtest has been requested), load the kunit modules in
> list mode from inside the igt_subtest_with_dynamic() section.  In order to
-------------------------------------------------------------- ^^
Same here.

> be free to skip the whole subtest on unmet requirements that need to be
> verified after that list has been already populated, clean it up from a
> follow up igt_fixture section.
> 
> Since we may now finish processing of all test cases / dynamic sub-
> subtests before KTAP parsing completes, don't fail if we exit the loop of
> dynamic sub-subtests with -EINPROGRESS error code returned by the parser.
> 
> v2: Split out changes in handling of modprobe errors and kernel taints to
>     separate patches (Kamil),
>   - fix some string duplicates referenced from filtered out test cases not
>     freed,
>   - don't check if next result is needed before fetching one, obviously
>     true in first dynamic sub-subtest, and we always free last result
>     before looping to next sub-subtest,
>   - still break the loop of test cases on unexpected return codes from
>     kunit_kmsg_get_result(),
>   - use kunit_results_free() helper,
>   - fix typos (Kamil),
>   - update commit description.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c | 169 ++++++++++++++++++++++++++++++++++++++-----------
>  1 file changed, 132 insertions(+), 37 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index ed41aa1235..150fe49803 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -899,17 +899,15 @@ static void kunit_results_free(struct igt_list_head *results,
>  	free(*suite_name);
>  }
>  
> -static void
> -__igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
> +static void kunit_get_tests(struct igt_list_head *tests,
> +			    struct igt_ktest *tst,
> +			    const char *filter,
> +			    const char *opts)
>  {
> -	struct modprobe_data modprobe = { pthread_self(), tst->kmod, opts, 0, };
>  	char *suite_name = NULL, *case_name = NULL;
> +	struct igt_ktap_result *r, *rn;
>  	struct igt_ktap_results *ktap;
> -	struct igt_ktap_result *r;
> -	pthread_mutexattr_t attr;
> -	IGT_LIST_HEAD(results);
> -	unsigned long taints;
> -	int flags, ret;
> +	int flags, err;
>  
>  	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
>  
> @@ -919,6 +917,70 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  
>  	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
>  
> +	/*
> +	 * To get a list of test cases provided by a kunit test module, ask the
> +	 * generic kunit module to respond with SKIP result for each test found.
> +	 * We could also use action=list kunit parameter to get the listing,
> +	 * however, parsing a KTAP report -- something that we already can do
> +	 * perfectly -- seems to be more safe than extracting a test case list
> +	 * of unknown length from /dev/kmsg.
> +	 */
> +	igt_skip_on(igt_kmod_load("kunit", "filter=module=none filter_action=skip"));
> +	igt_skip_on(modprobe(tst->kmod, opts));
> +
> +	ktap = igt_ktap_alloc(tests);
> +	igt_require(ktap);
> +
> +	do
> +		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, ktap);
> +	while (err == -EINPROGRESS);
> +
> +	igt_ktap_free(ktap);
> +
> +	if (!err)
> +		igt_list_for_each_entry_safe(r, rn, tests, link) {
> +			if (igt_debug_on(r->code != IGT_EXIT_SKIP)) {
> +				err = r->code ?: -EPROTO;
> +				break;
> +			}
> +
> +			if (!filter)
> +				continue;
> +
> +			if (strcmp(r->suite_name, filter))
> +				kunit_result_free(&r, &case_name, &suite_name);
> +		}
> +
> +	if (err) {
> +		kunit_results_free(tests, &case_name, &suite_name);
> +	} else {
> +		free(suite_name);
> +		free(case_name);
> +	}
> +
> +	igt_skip_on(kmod_module_remove_module(tst->kmod, KMOD_REMOVE_FORCE));
> +	igt_skip_on(igt_kmod_unload("kunit", KMOD_REMOVE_FORCE));
> +
> +	igt_skip_on_f(err,
> +		      "KTAP parser failed while getting a list of test cases\n");
> +}
> +
> +static void __igt_kunit(struct igt_ktest *tst,
> +			const char *name,
> +			const char *opts,
> +			struct igt_list_head *tests)
> +{
> +	struct modprobe_data modprobe = { pthread_self(), tst->kmod, opts, 0, };
> +	char *suite_name = NULL, *case_name = NULL;
> +	struct igt_ktap_result *t, *r = NULL;
> +	struct igt_ktap_results *ktap;
> +	pthread_mutexattr_t attr;
> +	IGT_LIST_HEAD(results);
> +	int ret = -EINPROGRESS;
> +	unsigned long taints;
> +
> +	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
> +
>  	igt_skip_on(pthread_mutexattr_init(&attr));
>  	igt_skip_on(pthread_mutexattr_setrobust(&attr, PTHREAD_MUTEX_ROBUST));
>  	igt_skip_on(pthread_mutex_init(&modprobe.lock, &attr));
> @@ -932,37 +994,47 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  		igt_skip("Failed to create a modprobe thread\n");
>  	}
>  
> -	do {
> -		ret = kunit_kmsg_result_get(&results, &modprobe,
> -					    tst->kmsg, ktap);
> -		if (igt_debug_on(ret && ret != -EINPROGRESS))
> -			break;
> -
> -		if (igt_debug_on(igt_list_empty(&results)))
> -			break;
> -
> -		r = igt_list_first_entry(&results, r, link);
> -
> +	igt_list_for_each_entry(t, tests, link) {
>  		igt_dynamic_f("%s%s%s",
> -			      strcmp(r->suite_name, name) ?  r->suite_name : "",
> -			      strcmp(r->suite_name, name) ? "-" : "",
> -			      r->case_name) {
> -
> -			if (r->code == IGT_EXIT_INVALID) {
> -				/* parametrized test case, get actual result */
> -				kunit_result_free(&r, &suite_name, &case_name);
> -
> -				igt_assert(igt_list_empty(&results));
> +			      strcmp(t->suite_name, name) ?  t->suite_name : "",
> +			      strcmp(t->suite_name, name) ? "-" : "",
> +			      t->case_name) {
>  
> +			if (igt_list_empty(&results)) {
> +				igt_assert_eq(ret, -EINPROGRESS);
>  				ret = kunit_kmsg_result_get(&results, &modprobe,
>  							    tst->kmsg, ktap);
> -				if (ret != -EINPROGRESS)
> -					igt_fail_on(ret);
> -
>  				igt_fail_on(igt_list_empty(&results));
> +			}
> +
> +			r = igt_list_first_entry(&results, r, link);
> +
> +			while (igt_debug_on_f(strcmp(r->suite_name, t->suite_name),
> +					      "suite_name expected: %s, got: %s\n",
> +					      t->suite_name, r->suite_name) ||
> +			       igt_debug_on_f(strcmp(r->case_name, t->case_name),
> +					      "case_name expected: %s, got: %s\n",
> +					      t->case_name, r->case_name) ||
> +			       r->code == IGT_EXIT_INVALID) {
> +
> +				int code = r->code;
> +
> +				kunit_result_free(&r, &suite_name, &case_name);
> +				if (igt_list_empty(&results)) {
> +					igt_assert_eq(ret, -EINPROGRESS);
> +					ret = kunit_kmsg_result_get(&results,
> +								    &modprobe,
> +								    tst->kmsg,
> +								    ktap);
> +					igt_fail_on(igt_list_empty(&results));
> +				}
>  
>  				r = igt_list_first_entry(&results, r, link);
>  
> +				if (code != IGT_EXIT_INVALID)
> +					continue;
> +
> +				/* result from parametrized test case */
>  				igt_fail_on_f(strcmp(r->suite_name, suite_name),
>  					      "suite_name expected: %s, got: %s\n",
>  					      suite_name, r->suite_name);
> @@ -1009,7 +1081,9 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  
>  		kunit_result_free(&r, &suite_name, &case_name);
>  
> -	} while (ret == -EINPROGRESS);
> +		if (igt_debug_on(ret != -EINPROGRESS))
> +			break;
> +	}
>  
>  	kunit_results_free(&results, &suite_name, &case_name);
>  
> @@ -1035,7 +1109,8 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  
>  	igt_skip_on(modprobe.err);
>  	igt_skip_on(igt_kernel_tainted(&taints));
> -	igt_skip_on_f(ret, "KTAP parser failed\n");
> +	if (ret != -EINPROGRESS)
> +		igt_skip_on_f(ret, "KTAP parser failed\n");
>  }
>  
>  /**
> @@ -1049,7 +1124,8 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  void igt_kunit(const char *module_name, const char *name, const char *opts)
>  {
>  	struct igt_ktest tst = { .kmsg = -1, };
> -
> +	const char *filter = name;
> +	IGT_LIST_HEAD(tests);
>  
>  	/*
>  	 * If the caller (an IGT test) provides no subtest name then we
> @@ -1074,6 +1150,15 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
>  
>  		igt_skip_on(igt_ktest_init(&tst, module_name));
>  		igt_skip_on(igt_ktest_begin(&tst));
> +
> +		/*
> +		 * Since we need to load kunit base module with specific
> +		 * options in order to get a list of test cases, make
> +		 * sure that the module is not loaded.  However, since
--------------------------------------------- ^^
Same here.

Acked-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> +		 * unload may fail if kunit base module is not loaded,
> +		 * ignore any failures, we'll fail later if still loaded.
> +		 */
> +		igt_ignore_warn(igt_kmod_unload("kunit", KMOD_REMOVE_FORCE));
>  	}
>  
>  	/*
> @@ -1083,11 +1168,21 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
>  	 * proper namespace for dynamic subtests, with is required for CI
>  	 * and for documentation.
>  	 */
> -	igt_subtest_with_dynamic(name)
> -		__igt_kunit(&tst, name, opts);
> +	igt_subtest_with_dynamic(name) {
> +		kunit_get_tests(&tests, &tst, filter, opts);
> +		igt_skip_on(igt_list_empty(&tests));
> +
> +		__igt_kunit(&tst, name, opts, &tests);
> +	}
> +
> +	igt_fixture {
> +		char *suite_name = NULL, *case_name = NULL;
> +
> +		kunit_results_free(&tests, &suite_name, &case_name);
>  
> -	igt_fixture
>  		igt_ktest_end(&tst);
> +		igt_debug_on(igt_kmod_unload("kunit", KMOD_REMOVE_FORCE));
> +	}
>  
>  	igt_ktest_fini(&tst);
>  }
> -- 
> 2.42.0
> 
