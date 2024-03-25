Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F7088AAF9
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 18:12:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B66810E9F3;
	Mon, 25 Mar 2024 17:12:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fCdNJUE7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E937E10E115;
 Mon, 25 Mar 2024 17:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711386767; x=1742922767;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=MYGdXmoq7N0tcHPe/mlApUipsJg6yXUGnJbBGz0dpDg=;
 b=fCdNJUE7ED6vLlPVu5Hc32H8NjFllpmuy7zV/wkeLIrDvY1PLpIiLjsm
 ia2HRwxKZ/fQn3jy4xBtszUYP3cLSbSBDlAqZoAX0L5GK5677dnUHz/tb
 QUlLO+tdRB1tY3kiZNELG0pdvvYjgw7qxLUegYL6nAIQ5xWDqZa2eakI7
 5MKxneD/w3mEV7BipJnYmkYsPN8lB2qO4zpDzs9wWBo1txER47pOAELs1
 heGAJiQmuY+imd7NsQOja9Ly/9bS9X/Fxy39dt1odhTs7cxLt0ieCWi40
 SVvksbLBryGmxg9yZp7Ga2P93tH8WuylnO+jUGkgEZKzTCWFuzmyFkI01 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6512307"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6512307"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 10:12:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="38796740"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmviesa002-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2024 10:12:44 -0700
Date: Mon, 25 Mar 2024 18:12:42 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH i-g-t v3 5/5] lib/kunit: Minimize code duplication
Message-ID: <20240325171242.yze6pcimo2awa4iu@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <20240318103534.701693-7-janusz.krzysztofik@linux.intel.com>
 <20240318103534.701693-12-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240318103534.701693-12-janusz.krzysztofik@linux.intel.com>
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
On 2024-03-18 at 11:13:31 +0100, Janusz Krzysztofik wrote:
> A new helper has been introduced recently, used for fetching KTAP results
> of a single test case.  Since that helper is called for that purpose
> only after the test module is loaded with all other test cases filtered
> out, its actual implementation is as simple as collecting all results from
> a single KTAP report, no matter how many test suites and test cases it
> covers.  Then, it's a good candidate for reuse in other scenarios when a
> single KTAP report is handled, e.g., when we collect a list of test cases
> from a single test suite or test module.  Go for it.
> 
> v3: Rebased on top of changes to struct igt_ktap_results pointer handling.
> v2: Rebased on invalid test suite name workaround.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_kmod.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index c495d11b16..8979a5928b 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -1262,21 +1262,14 @@ static bool kunit_get_tests(struct igt_list_head *tests,
>  	igt_skip_on(modprobe(tst->kmod, opts));
>  	igt_skip_on(igt_kernel_tainted(&taints));
>  
> -	*ktap = igt_ktap_alloc(tests);
> -	igt_require(*ktap);
> -
>  	igt_skip_on(sigaction(SIGALRM, &sigalrm, saved));
>  	alarm(10);
>  
> -	do
> -		err = kunit_kmsg_result_get(tests, NULL, tst->kmsg, *ktap);
> -	while (err == -EINPROGRESS);
> +	err = kunit_get_results(tests, tst->kmsg, ktap);
>  
>  	alarm(0);
>  	igt_debug_on(sigaction(SIGALRM, saved, NULL));
>  
> -	igt_ktap_free(ktap);
> -
>  	igt_skip_on_f(err,
>  		      "KTAP parser failed while getting a list of test cases\n");
>  
> -- 
> 2.43.0
> 
