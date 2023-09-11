Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E402979A642
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 10:50:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D5C010E07C;
	Mon, 11 Sep 2023 08:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DE3D10E07C;
 Mon, 11 Sep 2023 08:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694422242; x=1725958242;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RXXHqBYwut+FfdHATf3BQcf6etDVMHfcgusBgJp9sms=;
 b=aVMOxIpO47bG4ktqx8C1pUPfvkyq502odiTjPtPHrVl0wcI2vjxSg90G
 yPvOt91W/ZLifegt4kTVJqZNnTzf+7sBcVF1BQw/98YKx77ROAtjyzg1P
 BvycJpCwvslHLp++CwguKld49J2fKms7lWL6s9tk2BvZ/lcaxtgOPns8+
 vXO4WW18d7QLwLANo/KJxTLal6wZCqElQgoiwXtB22Yp6V6uoM8NmckOm
 KJBPx+JR7ISoXUpZu4tuUMQD6Y50JRO1VTP3OLHQQO+gk2VOu22qEiCzd
 S7JAkZ4WjXb5IzuIWLk2wB2jQP2f+EG5AdcsWktN4GBadG0k+dgBx48Pk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="368270006"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="368270006"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 01:49:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="990021800"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="990021800"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 01:49:40 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.24.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 96D8F580223;
 Mon, 11 Sep 2023 01:49:38 -0700 (PDT)
Date: Mon, 11 Sep 2023 10:49:36 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230911104936.435fa279@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-23-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-23-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 04/17] lib/kunit: Optimize calls to
 igt_success/skip/fail()
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

On Fri,  8 Sep 2023 14:32:38 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Calling igt_success() explicitly at the end of subtest body is not needed.
> Other calls to igt_success() can be usually avoided by inverting test
> result checks.  Optimize the code that now calls igt_success().
> 
> Moreover, using more advanced variants of igt_skip() and igt_fail() where
> applicable makes the code more compact.  Go for it.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 34ddec3fad..1d1cd51170 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -814,12 +814,8 @@ static void __igt_kunit(const char *module_name, const char *opts)
>  		if (READ_ONCE(results->head) != NULL) {
>  			pthread_mutex_lock(&results->mutex);
>  
> -			igt_dynamic(results->head->test_name) {
> -				if (READ_ONCE(results->head->passed))
> -					igt_success();
> -				else
> -					igt_fail(IGT_EXIT_FAILURE);
> -			}
> +			igt_dynamic(results->head->test_name)
> +				igt_assert(READ_ONCE(results->head->passed));
>  
>  			temp = results->head;
>  			results->head = results->head->next;
> @@ -834,8 +830,7 @@ unload:
>  
>  	igt_ktest_fini(&tst);
>  
> -	if (skip)
> -		igt_skip("Skipping test, as probing KUnit module returned %d", skip);
> +	igt_skip_on_f(skip, "Skipping test, as probing KUnit module failed\n");
>  
>  	if (fail)
>  		igt_fail(IGT_EXIT_ABORT);
> @@ -844,9 +839,6 @@ unload:
>  
>  	if (ret != 0)
>  		igt_fail(IGT_EXIT_ABORT);
> -
> -	if (ret == 0)
> -		igt_success();
>  }
>  
>  void igt_kunit(const char *module_name, const char *name, const char *opts)
