Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EACD7A5A02
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 08:36:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50A7510E24F;
	Tue, 19 Sep 2023 06:36:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A54D910E142;
 Tue, 19 Sep 2023 06:36:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695105373; x=1726641373;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hACk5hu4lWfC+ytI3Sr60apA/CqQLknCTO+KHU6zdwU=;
 b=kltphxhjvNbeIhjdt5/sVfV/E9r88COeTwvkMAVxsx9HC97ljSsYB7Dl
 /6T4yyixuzVVAmcywIkO5vXM+LzU1X8BfLLx6Pf+n8+CTTgnKsj+G9c2J
 YumXIrV0mTWidEcf80vMsECI7tPTrypT0ZFVMs+dRb3Dz1MHNUTYsxcax
 eo1h3t2mSfVMRNsYcEm8aY/8GXPAKho3zHR/9D9h7WAwEMWDKqMYG59qN
 Bh3PxtIYAVD4ubh/UuQofWngWGyZLONwNu7D7ee945Z7U+/bpD13qIn9d
 lQyVShyf1IuIzyprGwxRLIWCdlf4Cvet5NE7M3xeh6Uf07j3SH4xyJIK/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="410796416"
X-IronPort-AV: E=Sophos;i="6.02,158,1688454000"; d="scan'208";a="410796416"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 23:36:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="775426550"
X-IronPort-AV: E=Sophos;i="6.02,158,1688454000"; d="scan'208";a="775426550"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 23:36:10 -0700
Received: from maurocar-mobl2 (aalfero-mobl2.ger.corp.intel.com
 [10.252.25.249])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id B81E3580DAE;
 Mon, 18 Sep 2023 23:36:08 -0700 (PDT)
Date: Tue, 19 Sep 2023 08:36:06 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230919083606.2903010a@maurocar-mobl2>
In-Reply-To: <20230918134249.31645-36-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
 <20230918134249.31645-36-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 17/17] lib/kunit: Omit suite name
 prefix if the same as subtest name
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
Cc: intel-gfx@lists.freedesktop.org, Dominik Karol =?UTF-8?B?UGnEhXRrb3dza2k=?=
 <dominik.karol.piatkowski@intel.com>, igt-dev@lists.freedesktop.org,
 Isabella Basso <isabbasso@riseup.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 18 Sep 2023 15:43:07 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Kunit test modules usually contain one test suite, named after the module
> name with the trailing "_test" or "_kunit" suffix omitted.  Since we
> follow the same convention when we derive subtest names from module names,
> there is a great chance that those two names match.  Take this into
> account when composing names for IGT dynamic sub-subtest names and drop
> the leading test suite name component when it is the same as subtest name.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  lib/igt_kmod.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index f6e0ab07ce..05c837031c 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -863,7 +863,8 @@ static void kunit_result_free(struct igt_ktap_result *r,
>   *
>   * Returns: IGT default codes
>   */
> -static void __igt_kunit(struct igt_ktest *tst, const char *opts)
> +static void
> +__igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  {
>  	struct modprobe_data modprobe = { pthread_self(), tst->kmod, opts, 0,
>  					  PTHREAD_MUTEX_INITIALIZER, };
> @@ -902,7 +903,11 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  
>  		r = igt_list_first_entry(&results, r, link);
>  
> -		igt_dynamic_f("%s-%s", r->suite_name, r->case_name) {
> +		igt_dynamic_f("%s%s%s",
> +			      strcmp(r->suite_name, name) ?  r->suite_name : "",
> +			      strcmp(r->suite_name, name) ? "-" : "",
> +			      r->case_name) {
> +
>  			if (r->code == IGT_EXIT_INVALID) {
>  				/* parametrized test case, get actual result */
>  				kunit_result_free(r, &suite_name, &case_name);
> @@ -1011,7 +1016,7 @@ void igt_kunit(const char *module_name, const char *name, const char *opts)
>  	 * and for documentation.
>  	 */
>  	igt_subtest_with_dynamic(name)
> -		__igt_kunit(&tst, opts);
> +		__igt_kunit(&tst, name, opts);
>  
>  	igt_fixture
>  		igt_ktest_end(&tst);
