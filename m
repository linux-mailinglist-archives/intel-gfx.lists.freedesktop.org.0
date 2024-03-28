Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD0A88FE00
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:24:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534ED10EF94;
	Thu, 28 Mar 2024 11:24:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DepCLjYE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 166AE10EB39;
 Thu, 28 Mar 2024 11:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711625085; x=1743161085;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=p3ubssrQc1PBO77zvkTPPCApPa9PTBCC5E++osVEQ1Y=;
 b=DepCLjYE/TWCdrUCefRJoQsOGhKnmRzMZdsgnl6QV2Ny+6opbB4qSokh
 DzegRlIiy6+46+tznMYqA6E6EBoDnG5kdqGeX2N6XX9gWC4b6W0tMKP3S
 cqPzJjkoF5kew/3ViAyTR/7Mew2nI+OmZgCwYaO1r2LSg5IFXYgclkMbs
 /OA7g31lNFs0RMpGWyImQXG1YSF8bcHqWXoL/+S7YL226mEiIZw6uGgqf
 b0IwHuvK7xg3yyiWJubQ8DYcutFxhzEImRWHXv3wgszr1BHffU7G+y4BY
 ivIQMCJ/AKOYsIZXKBA1B1NdnRonik0hQjd1z2lffs7xel+IQx2xYP+oG Q==;
X-CSE-ConnectionGUID: yzSpxjHeRAmaHVtMOeoyrQ==
X-CSE-MsgGUID: 0D3ke578QPy5/YGmfFTWEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6633759"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; 
   d="scan'208";a="6633759"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:24:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21111173"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmviesa003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Mar 2024 04:24:42 -0700
Date: Thu, 28 Mar 2024 12:24:40 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH i-g-t] lib/kunit: Read results from debugfs
Message-ID: <20240328112440.wv2tztlzsbf3vy52@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20240327113700.7123-2-janusz.krzysztofik@linux.intel.com>
 <20240327172750.dckajao4pfvjy763@kamilkon-desk.igk.intel.com>
 <2207216.NgBsaNRSFp@jkrzyszt-mobl2.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2207216.NgBsaNRSFp@jkrzyszt-mobl2.ger.corp.intel.com>
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
On 2024-03-27 at 23:26:03 +0100, Janusz Krzysztofik wrote:
> On Wednesday, 27 March 2024 18:27:50 CET Kamil Konieczny wrote:
> > Hi Janusz,
> > On 2024-03-27 at 12:22:54 +0100, Janusz Krzysztofik wrote:
> > > KUnit can provide KTAP reports from test modules via debugfs files, one
> > > per test suite.  Using that source of test results instead of extracting
> > > them from dmesg, where they may be interleaved with other kernel messages,
> > > seems more easy to handle and less error prone.  Switch to it.
> > > 
> > > If KUnit debugfs support is found not configured then fall back to legacy
> > > processing path.
> > > 
> > > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > > ---
> > >  lib/igt_kmod.c | 143 ++++++++++++++++++++++++++++++++++++-------------
> > >  1 file changed, 105 insertions(+), 38 deletions(-)
> > > 
> > > diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> > > index 1ec9c8a602..a5b170ca9c 100644
> > > --- a/lib/igt_kmod.c
> > > +++ b/lib/igt_kmod.c
> > > @@ -28,6 +28,7 @@
> > >  #include <limits.h>
> > >  #include <pthread.h>
> > >  #include <signal.h>
> > > +#include <stdio.h>
> > >  #include <stdlib.h>
> > >  #include <string.h>
> > >  #include <sys/stat.h>
> > > @@ -39,6 +40,7 @@
> > >  
> > >  #include "igt_aux.h"
> > >  #include "igt_core.h"
> > > +#include "igt_debugfs.h"
> > >  #include "igt_kmod.h"
> > >  #include "igt_ktap.h"
> > >  #include "igt_sysfs.h"
> > > @@ -864,6 +866,31 @@ static int open_parameters(const char *module_name)
> > >  	return open(path, O_RDONLY);
> > >  }
> > >  
> > > +static DIR *kunit_debugfs_open(void)
> > > +{
> > > +	const char *debugfs_path = igt_debugfs_mount();
> > > +	int debugfs_fd, kunit_fd;
> > > +	DIR *kunit_dir;
> > > +
> > > +	if (igt_debug_on(!debugfs_path))
> > > +		return NULL;
> > > +
> > > +	debugfs_fd = open(debugfs_path, O_DIRECTORY);
> > > +	if (igt_debug_on(debugfs_fd < 0))
> > > +		return NULL;
> > > +
> > > +	kunit_fd = openat(debugfs_fd, "kunit", O_DIRECTORY);
> > > +	close(debugfs_fd);
> > > +	if (igt_debug_on(kunit_fd < 0))
> > > +		return NULL;
> > > +
> > > +	kunit_dir = fdopendir(kunit_fd);
> > > +	if (igt_debug_on(!kunit_dir))
> > > +		close(kunit_fd);
> > 
> > imho here:
> > 	close(kunit_fd);
> >     igt_debug_on(!kunit_dir);
> 
> No, we are not allowed to close it.  fdopendir(3) states:
> "After  a  successful  call to fdopendir(), fd is used internally by the 
>  implementation, and should not otherwise be used by the application."
> 

You are right, thank you for explanation and pointing me to man page.

Regards,
Kamil

> > 
> > > +
> > > +	return kunit_dir;
> > > +}
> > > +
> > >  static bool kunit_set_filtering(const char *filter_glob, const char *filter,
> > >  				const char *filter_action)
> > >  {
> > > @@ -1071,23 +1098,48 @@ static void kunit_results_free(struct igt_list_head *results,
> > >  	free(*suite_name);
> > >  }
> > >  
> > > -static int kunit_get_results(struct igt_list_head *results, int kmsg_fd,
> > > -			     struct igt_ktap_results **ktap)
> > > +static int kunit_get_results(struct igt_list_head *results, int debugfs_fd,
> > > +			     const char *suite, struct igt_ktap_results **ktap)
> > >  {
> > > -	int err;
> > > +	FILE *results_stream;
> > > +	int ret, results_fd;
> > > +	char *buf = NULL;
> > > +	size_t size = 0;
> > > +	ssize_t len;
> > > +
> > > +	if (igt_debug_on((ret = openat(debugfs_fd, suite, O_DIRECTORY), ret < 0)))
> > > +		return ret;
> > > +
> > > +	results_fd = openat(ret, "results", O_RDONLY);
> > > +	close(ret);
> > > +	if (igt_debug_on(results_fd < 0))
> > > +		return results_fd;
> > > +
> > > +	results_stream = fdopen(results_fd, "r");
> > > +	if (igt_debug_on(!results_stream)) {
> > > +		close(results_fd);
> > > +		return -errno;
> > > +	}
> > >  
> > >  	*ktap = igt_ktap_alloc(results);
> > > -	if (igt_debug_on(!*ktap))
> > > -		return -ENOMEM;
> > > +	if (igt_debug_on(!*ktap)) {
> > > +		ret = -ENOMEM;
> > > +		goto out_fclose;
> > > +	}
> > > +
> > > +	while (len = getline(&buf, &size, results_stream), len > 0) {
> > > +		ret = igt_ktap_parse(buf, *ktap);
> > > +		if (ret != -EINPROGRESS)
> > > +			break;
> > > +	}
> > >  
> > > -	do
> > > -		igt_debug_on((err = kunit_kmsg_result_get(results, NULL, kmsg_fd, *ktap),
> > > -			      err && err != -EINPROGRESS));
> > > -	while (err == -EINPROGRESS);
> > > +	free(buf);
> > >  
> > >  	igt_ktap_free(ktap);
> > > +out_fclose:
> > > +	fclose(results_stream);
> > >  
> > > -	return err;
> > > +	return ret;
> > >  }
> > >  
> > >  static void __igt_kunit_legacy(struct igt_ktest *tst,
> > > @@ -1101,7 +1153,13 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
> > >  	pthread_mutexattr_t attr;
> > >  	IGT_LIST_HEAD(results);
> > >  	unsigned long taints;
> > > -	int ret;
> > > +	int flags, ret;
> > > +
> > > +	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
> > > +
> > > +	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
> > > +	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
> > > +		      "Could not set /dev/kmsg to blocking mode\n");
> > >  
> > >  	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
> > >  
> > > @@ -1224,30 +1282,20 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
> > >  	igt_skip_on_f(ret, "KTAP parser failed\n");
> > >  }
> > >  
> > > -static void kunit_get_tests_timeout(int signal)
> > > -{
> > > -	igt_skip("Timed out while trying to extract a list of KUnit test cases from /dev/kmsg\n");
> > > -}
> > > -
> > >  static bool kunit_get_tests(struct igt_list_head *tests,
> > >  			    struct igt_ktest *tst,
> > >  			    const char *suite,
> > >  			    const char *opts,
> > > +			    DIR *debugfs_dir,
> > >  			    struct igt_ktap_results **ktap)
> > >  {
> > > -	struct sigaction sigalrm = { .sa_handler = kunit_get_tests_timeout, },
> > > -			 *saved;
> > >  	struct igt_ktap_result *r, *rn;
> > > +	struct dirent *subdir;
> > >  	unsigned long taints;
> > > -	int flags, err;
> > > -
> > > -	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
> > > +	int debugfs_fd;
> > >  
> > > -	igt_skip_on((flags = fcntl(tst->kmsg, F_GETFL, 0), flags < 0));
> > > -	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags & ~O_NONBLOCK) == -1,
> > > -		      "Could not set /dev/kmsg to blocking mode\n");
> > > -
> > > -	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
> > > +	if (igt_debug_on(!debugfs_dir))
> > > +		return false;
> > 
> > imho this should be before you set blocking mode 
> 
> This patch removes the lines that were setting blocking mode.  That mode was 
> needed only when reading from /dev/kmsg.
> 
> > or before you call this function.
> 
> OK.
> 
> > 
> > >  
> > >  	/*
> > >  	 * To get a list of test cases provided by a kunit test module, ask the
> > > @@ -1260,19 +1308,32 @@ static bool kunit_get_tests(struct igt_list_head *tests,
> > >  	if (igt_debug_on(!kunit_set_filtering(suite, "module=none", "skip")))
> > >  		return false;
> > >  
> > > +	if (!suite) {
> > > +		seekdir(debugfs_dir, 2);	/* directory itself and its parent */
> > > +		errno = 0;
> > > +		igt_skip_on_f(readdir(debugfs_dir) || errno,
> > > +			      "Require empty KUnit debugfs directory\n");
> > > +		rewinddir(debugfs_dir);
> > > +	}
> > > +
> > >  	igt_skip_on(modprobe(tst->kmod, opts));
> > >  	igt_skip_on(igt_kernel_tainted(&taints));
> > >  
> > > -	igt_skip_on(sigaction(SIGALRM, &sigalrm, saved));
> > > -	alarm(10);
> > 
> > Why you removed alarm(10)?
> 
> Because we no longer need it.  When we were extracting a KTAP report from 
> /dev/kmsg then it was needed because if KUnit filters produced no KTAP report 
> then that operation might never complete unless interrupted.  Now our attempt 
> to open a nonexistent debugfs report file fails immediately.
> 
> Thanks,
> Janusz
> 
> > 
> > Regards,
> > Kamil
> > 
> > > +	debugfs_fd = dirfd(debugfs_dir);
> > > +	if (suite) {
> > > +		igt_skip_on(kunit_get_results(tests, debugfs_fd, suite, ktap));
> > >  
> > > -	err = kunit_get_results(tests, tst->kmsg, ktap);
> > > +	} else while (subdir = readdir(debugfs_dir), subdir) {
> > > +		if (!(subdir->d_type & DT_DIR))
> > > +			continue;
> > >  
> > > -	alarm(0);
> > > -	igt_debug_on(sigaction(SIGALRM, saved, NULL));
> > > +		if (!strcmp(subdir->d_name, ".") || !strcmp(subdir->d_name, ".."))
> > > +			continue;
> > >  
> > > -	igt_skip_on_f(err,
> > > -		      "KTAP parser failed while getting a list of test cases\n");
> > > +		igt_warn_on_f(kunit_get_results(tests, debugfs_fd, subdir->d_name, ktap),
> > > +			      "parsing KTAP report from test suite \"%s\" failed\n",
> > > +			      subdir->d_name);
> > > +	}
> > >  
> > >  	igt_list_for_each_entry_safe(r, rn, tests, link)
> > >  		igt_require_f(r->code == IGT_EXIT_SKIP,
> > > @@ -1287,6 +1348,7 @@ static void __igt_kunit(struct igt_ktest *tst,
> > >  			const char *subtest,
> > >  			const char *suite,
> > >  			const char *opts,
> > > +			int debugfs_fd,
> > >  			struct igt_list_head *tests,
> > >  			struct igt_ktap_results **ktap)
> > >  {
> > > @@ -1307,8 +1369,6 @@ static void __igt_kunit(struct igt_ktest *tst,
> > >  
> > >  			igt_skip_on(igt_kernel_tainted(&taints));
> > >  
> > > -			igt_fail_on(lseek(tst->kmsg, 0, SEEK_END) == -1 && errno);
> > > -
> > >  			igt_assert_lt(snprintf(glob, sizeof(glob), "%s.%s",
> > >  					       t->suite_name, t->case_name),
> > >  				      sizeof(glob));
> > > @@ -1317,7 +1377,8 @@ static void __igt_kunit(struct igt_ktest *tst,
> > >  			igt_assert_eq(modprobe(tst->kmod, opts), 0);
> > >  			igt_assert_eq(igt_kernel_tainted(&taints), 0);
> > >  
> > > -			igt_assert_eq(kunit_get_results(&results, tst->kmsg, ktap), 0);
> > > +			igt_assert_eq(kunit_get_results(&results, debugfs_fd,
> > > +							t->suite_name, ktap), 0);
> > >  
> > >  			for (i = 0; i < 2; i++) {
> > >  				kunit_result_free(&r, &suite_name, &case_name);
> > > @@ -1388,6 +1449,7 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
> > >  	struct igt_ktest tst = { .kmsg = -1, };
> > >  	struct igt_ktap_results *ktap = NULL;
> > >  	const char *subtest = suite;
> > > +	DIR *debugfs_dir = NULL;
> > >  	IGT_LIST_HEAD(tests);
> > >  
> > >  	/*
> > > @@ -1435,10 +1497,12 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
> > >  		 *	 LTS kernels not capable of using KUnit filters for
> > >  		 *	 listing test cases in KTAP format, with igt_require.
> > >  		 */
> > > -		if (!kunit_get_tests(&tests, &tst, suite, opts, &ktap))
> > > +		debugfs_dir = kunit_debugfs_open();
> > > +		if (!kunit_get_tests(&tests, &tst, suite, opts, debugfs_dir, &ktap))
> > >  			__igt_kunit_legacy(&tst, subtest, opts);
> > >  		else
> > > -			__igt_kunit(&tst, subtest, suite, opts, &tests, &ktap);
> > > +			__igt_kunit(&tst, subtest, suite, opts,
> > > +				    dirfd(debugfs_dir), &tests, &ktap);
> > >  	}
> > >  
> > >  	igt_fixture {
> > > @@ -1448,6 +1512,9 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
> > >  
> > >  		kunit_results_free(&tests, &suite_name, &case_name);
> > >  
> > > +		if (debugfs_dir)
> > > +			closedir(debugfs_dir);
> > > +
> > >  		igt_ktest_end(&tst);
> > >  	}
> > >  
> > 
> 
> 
> 
> 
