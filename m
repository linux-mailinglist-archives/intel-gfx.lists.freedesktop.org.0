Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 268ED938B7C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:49:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E04610E453;
	Mon, 22 Jul 2024 08:49:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kG3bHZQr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C97E810E44F;
 Mon, 22 Jul 2024 08:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721638159; x=1753174159;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DM/B2kBFq6UkokT83BezK++fO022vDBYYTqZxX80XuY=;
 b=kG3bHZQrZyJ1eNeim5zKv6ceZ8hbWRUtaTo6NE1CqtDq/sCBq3Nidgwq
 3l+coTXjQ1q8NJaoButqrqZOXxsM4rFQN0JWPqpRR2aCsIJV8uwR3GJfn
 RaFUPayY6UQl6YNokmxmLAoyCgtpw/UPjblj4q1zqEQLgnvqf4jIWVlpG
 gFb3ydDMAk7LCh04ofZOGCuhHVAy4rsG4baNtH6GwcvMyuiDeOf0m5Ke5
 fBOWCCWCEcEQG5+uPcAU1U5DtaOinDcABzBLaZ9tQJvzLIBHJ4ZPeZacQ
 //sh3GvVrYYihNGEUmum1hWA8qeco7TuLlUmvGDJfaBZeb8cJ/ekjWgHo g==;
X-CSE-ConnectionGUID: GUqV0mThR5SdV1X7saNIwA==
X-CSE-MsgGUID: Q+1ttQORQaic7f3A5BEiHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="19155216"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="19155216"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:49:19 -0700
X-CSE-ConnectionGUID: y/hKGUkETHW4hSqc5b3whw==
X-CSE-MsgGUID: y62ctxC0QqiHtXIBM1iciA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="52434273"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.211])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:49:17 -0700
Date: Mon, 22 Jul 2024 10:49:13 +0200
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>
Subject: Re: [PATCH i-g-t 2/3] lib/kunit: Drop 'suite' from __igt_kunit
 arguments list
Message-ID: <20240722084913.wwkuw6ki3pe3zyo4@zkempczy-mobl2>
References: <20240722080913.74333-5-janusz.krzysztofik@linux.intel.com>
 <20240722080913.74333-7-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240722080913.74333-7-janusz.krzysztofik@linux.intel.com>
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

On Mon, Jul 22, 2024 at 10:01:03AM +0200, Janusz Krzysztofik wrote:
> The optional 'suite' argument was used as a KUnit filter_glob when we were
> loading KUnit test module once per IGT subtest.  Since we are now loading
> the module once per IGT dynamic sub-subtest, we use test_suite.test_case
> obtained from a list of test cases as filter_glob.  Drop the no longer
> used argument.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 5864be29d2..a13c6fe063 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -1333,7 +1333,6 @@ static bool kunit_get_tests(struct igt_list_head *tests,
>  
>  static void __igt_kunit(struct igt_ktest *tst,
>  			const char *subtest,
> -			const char *suite,
>  			const char *opts,
>  			const char *debugfs_path,
>  			struct igt_list_head *tests,
> @@ -1486,7 +1485,7 @@ void igt_kunit(const char *module_name, const char *suite, const char *opts)
>  		    !kunit_get_tests(&tests, &tst, suite, opts, debugfs_path, &debugfs_dir, &ktap))
>  			__igt_kunit_legacy(&tst, subtest, opts);
>  		else
> -			__igt_kunit(&tst, subtest, suite, opts, debugfs_path, &tests, &ktap);
> +			__igt_kunit(&tst, subtest, opts, debugfs_path, &tests, &ktap);
>  	}
>  
>  	igt_fixture {
> -- 
> 2.45.2
> 

LGTM:

Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>

--
Zbigniew
