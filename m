Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 060D27BE764
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 19:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCCB10E289;
	Mon,  9 Oct 2023 17:09:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19C4210E28B;
 Mon,  9 Oct 2023 17:09:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696871377; x=1728407377;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=x9HClI7P6O3wBx9X9BIzKctybKpqsGUAVUNXxyU6S8U=;
 b=fsgGFyXQE+RGMQ5RPZdtbR/WxXlkWQin6UCF8k/ucHkG6brpLPG4T6mD
 QjPGCaCU9VBJ5Aor7JVdkqDAdQAmOWQNuZHVRY9vNVwncNX5FLRTzUJUY
 X5h7KejaHcyrEox5e1nSrOA6Mqdm8MXgpA25HF7pDJhC5o3/dStq2fdin
 Jk9To5ZZrbOzBrv6OSJXQZF//r7M91WSpfMdsGUBqR+K9WwUBazIbGCgm
 NMWjxJHjzwfK2I9C7nBa6bIwxtWyRJ7G2IMZCTIof6w3ceJrYqaBVIPLv
 LoDXGBbpjTaCHRRx/mRpo/hb2d6WFbIjLInmmVsLVcNZhT+ouY1v2cMgA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="387032144"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="387032144"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2023 10:09:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="1000295157"
X-IronPort-AV: E=Sophos;i="6.03,210,1694761200"; d="scan'208";a="1000295157"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by fmsmga006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Oct 2023 10:09:34 -0700
Date: Mon, 9 Oct 2023 19:09:31 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20231009170931.mcs7mnacy35dpwop@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20231009122750.519112-13-janusz.krzysztofik@linux.intel.com>
 <20231009122750.519112-20-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231009122750.519112-20-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 07/11] lib/ktap: Drop workaround
 for missing top level KTAP headers
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
On 2023-10-09 at 14:27:58 +0200, Janusz Krzysztofik wrote:
> A workaround was implemented in IGT KTAP parser so it could accepted KTAP
> reports with missing top level KTAP version and test suite plan headers.
> Since kernel side commit c95e7c05c139 ("kunit: Report the count of test
> suites in a module"), included in the mainline kernel since v6.6-rc1, has
> fixed that issue, that workaround is no longer needed.  Drop it.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/igt_ktap.c              | 12 ------------
>  lib/tests/igt_ktap_parser.c |  3 +--
>  2 files changed, 1 insertion(+), 14 deletions(-)
> 
> diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> index 53a6c63288..7c52ba11ed 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -84,18 +84,6 @@ int igt_ktap_parse(const char *buf, struct igt_ktap_results *ktap)
>  		   igt_debug_on(sscanf(buf,
>  				       "%*1[ ]%*1[ ]%*1[ ]%*1[ ]KTAP%*[ ]version%*[ ]%u %n",
>  				       &n, &len) == 1 && len == strlen(buf))) {
> -		/*
> -		 * TODO: drop the following workaround as soon as
> -		 * kernel side issue of missing lines with top level
> -		 * KTAP version and test suite plan is fixed.
> -		 */
> -		if (ktap->expect == KTAP_START) {
> -			ktap->suite_count = 1;
> -			ktap->suite_last = 0;
> -			ktap->suite_name = NULL;
> -			ktap->expect = SUITE_START;
> -		}
> -
>  		if (igt_debug_on(ktap->expect != SUITE_START))
>  			return -EPROTO;
>  
> diff --git a/lib/tests/igt_ktap_parser.c b/lib/tests/igt_ktap_parser.c
> index 6357bdf6a5..476e14092f 100644
> --- a/lib/tests/igt_ktap_parser.c
> +++ b/lib/tests/igt_ktap_parser.c
> @@ -190,8 +190,7 @@ static void ktap_top_version(void)
>  
>  	ktap = igt_ktap_alloc(&results);
>  	igt_require(ktap);
> -	/* TODO: change to -EPROTO as soon as related workaround is dropped */
> -	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EINPROGRESS);
> +	igt_assert_eq(igt_ktap_parse("    KTAP version 1\n", ktap), -EPROTO);
>  	igt_ktap_free(ktap);
>  
>  	ktap = igt_ktap_alloc(&results);
> -- 
> 2.42.0
> 
