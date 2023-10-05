Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B49AE7BADA8
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 23:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C047010E49A;
	Thu,  5 Oct 2023 21:30:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4F4B10E42C;
 Thu,  5 Oct 2023 21:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696541407; x=1728077407;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=d2ncsukkiGj0UotVZW6dO6+KGW1Wx4f29P+5pt82+eQ=;
 b=CxIHdbeu/Z9s7l0S6HBfbSRuZv9Z6u4l6cN/gD4DAjbXpMVyWTeM0GGe
 M5T5Zc3awujK9RnpU5pTUpEBHFmwe3Kry5TlosViTvwkdgsgoqMk6pQob
 yYUuRUh22RqFWDmCVTYlDnkHLSN0+F3H6R0ADVdu2QuU4oDQeWsCHOSns
 WFy/JRUxTHahGaow0yFbPXatDKtbIRwq/QQBcJ7Rl7eZAGJKX+dd5plfW
 7CMx0CUyHiike6GcTMCB2IFOhTJgCt5j4X9tHZDg+w5r7JwdqSYU03CZP
 we755t4sboyf2VZol7OKaL7wLeCQsPzbgs3ST28XAkAfkJW2HuxFIKasl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="450117208"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="450117208"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 14:29:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="895618800"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="895618800"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmsmga001-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Oct 2023 14:27:35 -0700
Date: Thu, 5 Oct 2023 23:28:44 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231005212844.weokomm5mn4mutux@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20231003091044.407965-11-janusz.krzysztofik@linux.intel.com>
 <20231003091044.407965-19-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231003091044.407965-19-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 8/9] lib/kunit: Fetch a list of test
 cases in advance
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

On 2023-10-03 at 11:10:53 +0200, Janusz Krzysztofik wrote:
> Recent improvements to the kernel kunit framework allow us to obtain a
> list of test cases provided by a kunit test module without actually
> running them.  Use that feature to get a list of expected test cases
> before we enter a loop around igt_dynamic().  Once done, enter the
> igt_dynamic() section for each consecutive test case immediately, even
> before first line of a related KTAP report appears, then look for a result
> from that test case.  That should make our IGT results output still better
> synchronized with related kernel messages.
> 
> The list of test cases provided by a kunit test module can be obtained by
> loading the kunit base module with specific options, then loading the test
> module.  For that to be possible, take care of unloading the kunit base
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
> can alredy parse perfectly, use it instead of trying to identify an
----- ^^^^^^
s/alredy/already/

> unstructured list of test cases of unknown length submitted by the former.
> 
> If an IGT test that calls igt_kunit() provides a subtest name then use
> that name to filter out potential test cases that don't belong to the
> named test suite from the list.
> 
> To avoid loading any modules if no subtest is going to be executed (e.g.,
> if a nonexistent subtest has been requested), load the kunit modules in
> list mode from inside the igt_subtest_with_dynamic() section.  In order to
> be free to skip the whole subtest on unmet requirements that need to be
> verified after that list has been already populated, clean it up from a
> follow up igt_fixture section.
> 
> Since we start reading the list of test cases from /dev/kmsg only after
> the kunit test module is loaded successfully in list only mode, don't
> synchronize reads with potential modprobe breakage in that case, unlike we
> still do later when parsing KTAP results in parallel to loading the test
> module in normal (execute) mode.
> 
> Since we neither fetch KTAP results before entering igt_dynamic section
> nor even return an error from KTAP result fetch attempts immediately on
> modprobe error or kernel taint, break the loop of dynamic sub-subtests
> explicitly as soon as one of those conditions is detected.

Could you split this patch into two, one with reading names and rest
with modprobe error or kernel taint detection?

> Also, don't
> force IGT SKIP result from the subtest if KTAP parsing hasn't completed.
> That's perfectly legitimate since we no longer iterate over KTAP results,
> only over a list of test cases obtained in advance, then we stop parsing
> KTAP report as soon as we get a result from the last test case from the
> list.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c | 217 +++++++++++++++++++++++++++++++++++--------------
>  1 file changed, 157 insertions(+), 60 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 387efbb59f..4fba77ead4 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -802,34 +802,36 @@ static int kunit_kmsg_result_get(struct igt_list_head *results,
>  		if (igt_debug_on(igt_kernel_tainted(&taints)))
>  			return -ENOTRECOVERABLE;
>  
> -		err = igt_debug_on(sigaction(SIGCHLD, &sigchld, saved));
> -		if (err == -1)
> -			return -errno;
> -		else if (unlikely(err))
> -			return err;
> -
> -		err = pthread_mutex_lock(&modprobe->lock);
> -		switch (err) {
> -		case EOWNERDEAD:
> -			/* leave the mutex unrecoverable */
> -			igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
> -			__attribute__ ((fallthrough));
> -		case ENOTRECOVERABLE:
> -			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> -			if (igt_debug_on(modprobe->err))
> -				return modprobe->err;
> -			break;
> -		case 0:
> -			break;
> -		default:
> -			igt_debug("pthread_mutex_lock() error: %d\n", err);
> -			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> -			return -err;
> +		if (modprobe) {
> +			err = igt_debug_on(sigaction(SIGCHLD, &sigchld, saved));
> +			if (err == -1)
> +				return -errno;
> +			else if (unlikely(err))
> +				return err;
> +
> +			err = pthread_mutex_lock(&modprobe->lock);
> +			switch (err) {
> +			case EOWNERDEAD:
> +				/* leave the mutex unrecoverable */
> +				igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
> +				__attribute__ ((fallthrough));
> +			case ENOTRECOVERABLE:
> +				igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> +				if (igt_debug_on(modprobe->err))
> +					return modprobe->err;
> +				break;
> +			case 0:
> +				break;
> +			default:
> +				igt_debug("pthread_mutex_lock() error: %d\n", err);
> +				igt_debug_on(sigaction(SIGCHLD, saved, NULL));
> +				return -err;
> +			}
>  		}
>  
>  		ret = read(fd, record, BUF_LEN);
>  
> -		if (!err) {
> +		if (modprobe && !err) {
>  			igt_debug_on(pthread_mutex_unlock(&modprobe->lock));
>  			igt_debug_on(sigaction(SIGCHLD, saved, NULL));
>  		}
> @@ -885,17 +887,15 @@ static void kunit_result_free(struct igt_ktap_result **r,
>  	*r = NULL;
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
>  	struct igt_ktap_result *r, *rn;
>  	struct igt_ktap_results *ktap;
> -	pthread_mutexattr_t attr;
> -	IGT_LIST_HEAD(results);
> -	unsigned long taints;
> -	int flags, ret;
> +	int flags, err;
>  
>  	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
>  
> @@ -905,6 +905,63 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  
>  	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
>  
> +	/*
> +	 * To get a list of test cases provided by a kunit test module, ask the
> +	 * generic kunit module to respond with SKIP result for each test found.
> +	 * We could also use action=list kunit parameter to get the listing,
> +	 * however, parsing a KTAP report -- something that we alredy can do
--------------------------------------------------------------^
Same here.

Regards,
Kamil

> +	 * perfectly -- seems to be more safe than extracting a test case list
> +	 * of unknown length from /dev/kmsg.
> +	 */
> +	igt_skip_on(igt_kmod_load("kunit", "filter=module=none filter_action=skip"));
> +	igt_skip_on(modprobe(tst->kmod, opts));
> +
> +	ktap = igt_ktap_alloc(tests);
> +	igt_require(ktap);
> +
> +	do {
> +		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, ktap);
> +		if (err && !igt_debug_on(err != -EINPROGRESS)) {
> +			r = igt_list_last_entry(tests, r, link);
> +
> +			if (igt_debug_on(r->code != IGT_EXIT_SKIP))
> +				err = r->code ?: -EPROTO;
> +		}
> +
> +	} while (err == -EINPROGRESS);
> +
> +	igt_ktap_free(ktap);
> +
> +	if (err || filter) {
> +		igt_list_for_each_entry_safe(r, rn, tests, link) {
> +			if (err || strcmp(r->suite_name, filter))
> +				kunit_result_free(&r, &case_name, &suite_name);
> +		}
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
> +	struct igt_ktap_result *t, *r = NULL, *rn;
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
> @@ -918,37 +975,50 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
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
> +			      strcmp(t->suite_name, name) ?  t->suite_name : "",
> +			      strcmp(t->suite_name, name) ? "-" : "",
> +			      t->case_name) {
> +			if (!r) {
> +				if (igt_list_empty(&results)) {
> +					igt_assert_eq(ret, -EINPROGRESS);
> +					ret = kunit_kmsg_result_get(&results,
> +								    &modprobe,
> +								    tst->kmsg,
> +								    ktap);
> +					igt_fail_on(igt_list_empty(&results));
> +				}
>  
> -			if (r->code == IGT_EXIT_INVALID) {
> -				/* parametrized test case, get actual result */
> -				kunit_result_free(&r, &suite_name, &case_name);
> +				r = igt_list_first_entry(&results, r, link);
> +			}
>  
> -				igt_assert(igt_list_empty(&results));
> +			while (igt_debug_on_f(strcmp(r->suite_name, t->suite_name),
> +					      "suite_name expected: %s, got: %s\n",
> +					      t->suite_name, r->suite_name) ||
> +			       igt_debug_on_f(strcmp(r->case_name, t->case_name),
> +					      "case_name expected: %s, got: %s\n",
> +					      t->case_name, r->case_name) ||
> +			       r->code == IGT_EXIT_INVALID) {
>  
> -				ret = kunit_kmsg_result_get(&results, &modprobe,
> -							    tst->kmsg, ktap);
> -				if (ret != -EINPROGRESS)
> -					igt_fail_on(ret);
> +				int code = r->code;
>  
> -				igt_fail_on(igt_list_empty(&results));
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
> @@ -995,7 +1065,9 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  
>  		kunit_result_free(&r, &suite_name, &case_name);
>  
> -	} while (ret == -EINPROGRESS);
> +		if (modprobe.err || igt_kernel_tainted(&taints))
> +			break;
> +	}
>  
>  	igt_list_for_each_entry_safe(r, rn, &results, link)
>  		kunit_result_free(&r, &suite_name, &case_name);
> @@ -1025,7 +1097,8 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  
>  	igt_skip_on(modprobe.err);
>  	igt_skip_on(igt_kernel_tainted(&taints));
> -	igt_skip_on_f(ret, "KTAP parser failed\n");
> +	if (ret != -EINPROGRESS)
> +		igt_skip_on_f(ret, "KTAP parser failed\n");
>  }
>  
>  /**
> @@ -1039,7 +1112,8 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  void igt_kunit(const char *module_name, const char *name, const char *opts)
>  {
>  	struct igt_ktest tst = { .kmsg = -1, };
> -
> +	const char *filter = name;
> +	IGT_LIST_HEAD(tests);
>  
>  	/*
>  	 * If the caller (an IGT test) provides no subtest name then we
> @@ -1064,6 +1138,15 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
>  
>  		igt_skip_on(igt_ktest_init(&tst, module_name));
>  		igt_skip_on(igt_ktest_begin(&tst));
> +
> +		/*
> +		 * Since we need to load kunit base module with specific
> +		 * options in order to get a list of test cases, make
> +		 * sure that the module is not loaded.  However, since
> +		 * unload may fail if kunit base module is not loaded,
> +		 * ignore any failures, we'll fail later if still loaded.
> +		 */
> +		igt_ignore_warn(igt_kmod_unload("kunit", KMOD_REMOVE_FORCE));
>  	}
>  
>  	/*
> @@ -1073,11 +1156,25 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
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
> +		struct igt_ktap_result *t, *tn;
> +
> +		igt_list_for_each_entry_safe(t, tn, &tests, link)
> +			kunit_result_free(&t, &suite_name, &case_name);
> +		free(case_name);
> +		free(suite_name);
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
