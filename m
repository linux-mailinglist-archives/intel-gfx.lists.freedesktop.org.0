Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 866A27BE844
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 19:33:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77A6210E290;
	Mon,  9 Oct 2023 17:33:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CEE210E290;
 Mon,  9 Oct 2023 17:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696872826; x=1728408826;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=yBPD7OjcVWlsgTKsOlULAHxHUMiO7F1Ui6X/rImM97U=;
 b=PJqivNtdP6MMLhWdcn/GcqyveFQT98ZCXXZ+D2r/TocKUoRQIxwztaEH
 lO8fZaJFVHjUm5u6c/4TwKg+2DKPABbAM1vnjrPdodGPA+lP2P1qxN5xC
 cZ1emIpE3e2/7/hXyiV9DqhdMhznYAzgguTXn7uic1WIuGzPTi1E0SoHl
 BOsOW0HqFp9X8IrpRRez2X3CZNXi3dDCt3n51OL49arHR2ldCyT8XzVBz
 Y7pzKynuC7xbWxeZs+yXSzOvU4+/6NE+ix5Md7g7Qjbi8mx9zg918yIRo
 4JrfK0owvAckMw4YKoA/aOFOaVQom16J07OFFmaAt7J1ineJeTdZtiOQC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="387036672"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="387036672"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:33:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="782570611"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="782570611"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2023 10:33:44 -0700
Date: Mon, 9 Oct 2023 19:33:40 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231009173340.fddpdgblnlkisxfr@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
 <20231009122750.519112-21-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231009122750.519112-21-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 08/11] lib/kunit: Provide all
 results cleanup helper
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
On 2023-10-09 at 14:27:59 +0200, Janusz Krzysztofik wrote:
> Planned changes require a couple of loops around kunit_result_free().
> Since we already have such loop, move it into a helper in preparation for
> future uses.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_kmod.c | 20 ++++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 387efbb59f..fed0855c84 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -885,13 +885,25 @@ static void kunit_result_free(struct igt_ktap_result **r,
>  	*r = NULL;
>  }
>  
> +static void kunit_results_free(struct igt_list_head *results,
> +			       char **suite_name, char **case_name)
> +{
> +	struct igt_ktap_result *r, *rn;
> +
> +	igt_list_for_each_entry_safe(r, rn, results, link)
> +		kunit_result_free(&r, suite_name, case_name);
> +
> +	free(*case_name);
> +	free(*suite_name);
> +}
> +
>  static void
>  __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  {
>  	struct modprobe_data modprobe = { pthread_self(), tst->kmod, opts, 0, };
>  	char *suite_name = NULL, *case_name = NULL;
> -	struct igt_ktap_result *r, *rn;
>  	struct igt_ktap_results *ktap;
> +	struct igt_ktap_result *r;
>  	pthread_mutexattr_t attr;
>  	IGT_LIST_HEAD(results);
>  	unsigned long taints;
> @@ -997,11 +1009,7 @@ __igt_kunit(struct igt_ktest *tst, const char *name, const char *opts)
>  
>  	} while (ret == -EINPROGRESS);
>  
> -	igt_list_for_each_entry_safe(r, rn, &results, link)
> -		kunit_result_free(&r, &suite_name, &case_name);
> -
> -	free(case_name);
> -	free(suite_name);
> +	kunit_results_free(&results, &suite_name, &case_name);
>  
>  	switch (pthread_mutex_lock(&modprobe.lock)) {
>  	case 0:
> -- 
> 2.42.0
> 
