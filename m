Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 225438804E7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Mar 2024 19:33:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F99710FC1F;
	Tue, 19 Mar 2024 18:33:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CTOmYg64";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1794910FC1F;
 Tue, 19 Mar 2024 18:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710873220; x=1742409220;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=PLYSGQ2mGwUls+zxkqITgQHMgkVSRY8YwmZ0YU3Ewjc=;
 b=CTOmYg64az19gDzPcy4jvNPQrji5usZg+99NsYx6SGkHYvyLHc8jTThG
 IryjlrLV4CpXKMk8GPg4p4WyrCZ3FVl4EFmTeknzwFC/wLKIbyEoZ/0Jw
 dxCZgIkmLyobpMFx6H/QDenIwlv0Z3jl5dMKEUIZVPClZcAFnJivmSPyz
 0XQCbrPyH/IlLU9lYw9qSp3Wj7sZFS56gz79kCKUzARwQ5YseMLiQgiEq
 GNpYWzA+ORM0Ot2ByKJPpnrjn6NIs3rYPyfIaGzWsAB85PrtQAG+NeSeA
 qijF7/ZpYszP5jC6yZvUwgPeUAclKr5mIO4n8rZN3hhCosGDJzcQ6K4Zy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11018"; a="5644202"
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; 
   d="scan'208";a="5644202"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 11:33:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,137,1708416000"; d="scan'208";a="51347341"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2024 11:33:38 -0700
Date: Tue, 19 Mar 2024 19:33:34 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH i-g-t v3 3/5] lib/kunit: Time out promptly on missing
 KTAP report
Message-ID: <20240319183334.syhpbu7vawu25d7c@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20240318103534.701693-7-janusz.krzysztofik@linux.intel.com>
 <20240318103534.701693-10-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240318103534.701693-10-janusz.krzysztofik@linux.intel.com>
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
On 2024-03-18 at 11:13:29 +0100, Janusz Krzysztofik wrote:
> If a test provides a subtest name that doesn't match any test suites
> provided by the requested KUnit test module then no KTAP report appears in
> dmesg, not even an empty one as one may expect.  As a consequence, we now
> loop endlessly around reading potential lines of the missing report from
> /dev/kmsg, until killed by IGT runner on timeout.
> 
> When trying to collect names of test cases from a KTAP report generated in
> all skip mode, set an alarm that fires up 10 seconds after we start
> waiting for the report, interrupts blocking read() if pending, and
> terminates the subtest with SKIP result.
> 
> As soon as we have collected a non-empty list of test cases, we may as
> well expect a non-empty KTAP report from actual execution of those test
> cases, assuming successful load of the KUnit test module in execution
> mode.  Then, there is no need to set up a similar timeout before we start
> to extract and parse that report.
> 
> Suggested-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_kmod.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 8a6824ea7e..f0e4d5ec76 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -1204,12 +1204,19 @@ static void __igt_kunit_legacy(struct igt_ktest *tst,
>  	igt_skip_on_f(ret, "KTAP parser failed\n");
>  }
>  
> +static void kunit_get_tests_timeout(int signal)
> +{
> +	igt_skip("Timed out while trying to extract a list of KUnit test cases from /dev/kmsg\n");
> +}
> +
>  static bool kunit_get_tests(struct igt_list_head *tests,
>  			    struct igt_ktest *tst,
>  			    const char *suite,
>  			    const char *opts,
>  			    struct igt_ktap_results **ktap)
>  {
> +	struct sigaction sigalrm = { .sa_handler = kunit_get_tests_timeout, },
> +			 *saved;
>  	struct igt_ktap_result *r, *rn;
>  	unsigned long taints;
>  	int flags, err;
> @@ -1239,10 +1246,16 @@ static bool kunit_get_tests(struct igt_list_head *tests,
>  	*ktap = igt_ktap_alloc(tests);
>  	igt_require(*ktap);
>  
> +	igt_skip_on(sigaction(SIGALRM, &sigalrm, saved));
> +	alarm(10);
> +
>  	do
>  		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, *ktap);
>  	while (err == -EINPROGRESS);
>  
> +	alarm(0);
> +	igt_debug_on(sigaction(SIGALRM, saved, NULL));
> +
>  	igt_ktap_free(ktap);
>  
>  	igt_skip_on_f(err,
> -- 
> 2.43.0
> 
