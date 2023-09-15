Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD7E7A1E27
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 14:11:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA4EA10E17D;
	Fri, 15 Sep 2023 12:11:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 493BE10E17D;
 Fri, 15 Sep 2023 12:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694779873; x=1726315873;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SVP3uWxgtE64MPWO8+PtpXW9fazDLD8kxaV8uJT3iEg=;
 b=GxpGcxEXE11DLnKA1sN5SLNXt/fZr5uX7GtLtatGBxi+EwESREO36CPO
 5OwVHCu5SADoq8ejwwE0mF21zCD+MCKdl2X69DzCMx0J6fZUvPFZWk1Ql
 952qT8dAGhcMQ46kI/wmjCOjTHalqWAjjl/ZR/4vLI5t8YX4PIE+INPAN
 MFx6SeKrLWC28jUpS25Z1IBjwkiMXBxYajqsHTnFI4SetyZhpydR4/84G
 +9rv6qUxUy1adYEhEYX43peer/UKgEDl8/ybCkClXrr9kJl4NJs+7oSFC
 XhHYKPLBeuwdRq20YlW/VZC6ug0XJPQSrctb1kkQOQoN6a0eBOmGg8Cm7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="358647407"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="358647407"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 05:11:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="810498753"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="810498753"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 05:11:11 -0700
Received: from maurocar-mobl2 (unknown [10.252.9.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 0772A580DC7;
 Fri, 15 Sep 2023 05:11:09 -0700 (PDT)
Date: Fri, 15 Sep 2023 14:11:07 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230915141107.1fc14800@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-33-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-33-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 14/17] lib/kunit: Load
 test modules in background
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

On Fri,  8 Sep 2023 14:32:48 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> For igt_runner to be able to correlate a stream of IGT results from
> dynamic sub-subtests that correspond to individual kunit test cases, read
> by the igt_runner from stdout / stderr of the test process, with a stream
> of kernel messages read from /dev/kmsg, we need both result streams being
> fed with data in parallel.  While our KTAP parser is currently started in
> the background and reads KTAP results from /dev/kmsg in parallel with
> execution of kunit tests performed by the kernel while we are loading a
> kunit test module, results from the parser are then only stored as
> intermediate data and not processed any further until the module loading
> completes.  As a consequence, there is no synchronization between the two
> streams.
> 
> Call the function that loads the kunit test module from a separate thread
> and process the intermediate results immediately, as soon as available
> from the background parser, without waiting for completion of module
> loading.

LGTM.

Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c | 35 +++++++++++++++++++++++++++++++++--
>  1 file changed, 33 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index c692954911..bbde3929f2 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -25,6 +25,7 @@
>  #include <signal.h>
>  #include <errno.h>
>  #include <fcntl.h>
> +#include <pthread.h>
>  #include <sys/utsname.h>
>  
>  #include "igt_aux.h"
> @@ -746,6 +747,21 @@ void igt_kselftest_get_tests(struct kmod_module *kmod,
>  	kmod_module_info_free_list(pre);
>  }
>  
> +struct modprobe_data {
> +	struct kmod_module *kmod;
> +	const char *opts;
> +	int err;
> +};
> +
> +static void *modprobe_task(void *arg)
> +{
> +	struct modprobe_data *data = arg;
> +
> +	data->err = modprobe(data->kmod, data->opts);
> +
> +	return NULL;
> +}
> +
>  /**
>   * igt_kunit:
>   * @module_name: the name of the module
> @@ -757,9 +773,11 @@ void igt_kselftest_get_tests(struct kmod_module *kmod,
>   */
>  static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  {
> +	struct modprobe_data modprobe = { tst->kmod, opts, 0, };
>  	struct kmod_module *kunit_kmod;
>  	bool is_builtin;
>  	struct ktap_test_results *results;
> +	pthread_t modprobe_thread;
>  	unsigned long taints;
>  	int flags, ret;
>  
> @@ -777,18 +795,25 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  
>  	results = ktap_parser_start(tst->kmsg, is_builtin);
>  
> -	if (igt_debug_on(igt_kmod_load(tst->module_name, opts) < 0)) {
> +	if (igt_debug_on(pthread_create(&modprobe_thread, NULL,
> +					modprobe_task, &modprobe))) {
>  		ktap_parser_cancel();
>  		igt_ignore_warn(ktap_parser_stop());
> -		igt_skip("Unable to load %s module\n", tst->module_name);
> +		igt_skip("Failed to create a modprobe thread\n");
>  	}
>  
>  	while (READ_ONCE(results->still_running) || !igt_list_empty(&results->list))
>  	{
>  		struct ktap_test_results_element *result;
>  
> +		if (!pthread_tryjoin_np(modprobe_thread, NULL) && modprobe.err) {
> +			ktap_parser_cancel();
> +			break;
> +		}
> +
>  		if (igt_kernel_tainted(&taints)) {
>  			ktap_parser_cancel();
> +			pthread_cancel(modprobe_thread);
>  			break;
>  		}
>  
> @@ -806,14 +831,20 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  		igt_dynamic(result->test_name) {
>  			igt_assert(READ_ONCE(result->passed));
>  
> +			if (!pthread_tryjoin_np(modprobe_thread, NULL))
> +				igt_assert_eq(modprobe.err, 0);
> +
>  			igt_fail_on(igt_kernel_tainted(&taints));
>  		}
>  
>  		free(result);
>  	}
>  
> +	pthread_join(modprobe_thread, NULL);
> +
>  	ret = ktap_parser_stop();
>  
> +	igt_skip_on(modprobe.err);
>  	igt_skip_on(igt_kernel_tainted(&taints));
>  	igt_skip_on_f(ret, "KTAP parser failed\n");
>  }
