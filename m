Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 588177A1C9A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 12:44:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CA8F10E60F;
	Fri, 15 Sep 2023 10:44:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E29110E170;
 Fri, 15 Sep 2023 10:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694774649; x=1726310649;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FoTXOiYB43J/OJOUZtmkJjpKBqjjn8Lv1KqXYmFddyo=;
 b=YotMPFmf1RxWFbP128GDJw0LAF3zt1dQlb1x4hUxUJ2I45Ao7m67Iz3q
 4wfLhYd3X34lX2WXCj4VaYqEWXJ/kqeJM+1+zveY9++FYLF+mVTvXphQn
 9t5BOuYVHLh+YkGd/htlm9CDC2+65OdKQrC0uTlySitA85zVX8JT+GP2Y
 hzav/ikDVV/3cmuiVA7OMA8+uSfGxCVu1PoNv9uvdwNoO3skNeOFhlFT/
 0Kpt8jLlljxg5LKWwz2CscE6ZArrW43t2mNbmGS/6oT/U9qHEstUBrlsK
 yxgskqtKUWBatAfMyAdZqH54CBUb88Fdaz68+J8WGFbx0PcBkVqrraM54 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="383041219"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="383041219"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 03:43:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="744942257"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="744942257"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 03:43:56 -0700
Received: from maurocar-mobl2 (unknown [10.252.9.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 041FD580D1F;
 Fri, 15 Sep 2023 03:43:54 -0700 (PDT)
Date: Fri, 15 Sep 2023 12:43:52 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230915124352.13abc789@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-30-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-30-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 11/17] lib/kunit: Fail / skip on
 kernel taint
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

On Fri,  8 Sep 2023 14:32:45 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Similar to how igt_kselftest() handles kernel taints, fail current dynamic
> sub-subtest and skip remaining ones when a kernel taint is detected during
> execution of kunit test cases.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Yeah, makes sense to me.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  lib/igt_kmod.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 020df286b8..988ac164cb 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -761,6 +761,7 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  	bool is_builtin;
>  	struct ktap_test_results *results;
>  	struct ktap_test_results_element *temp;
> +	unsigned long taints;
>  	int flags, ret;
>  
>  	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
> @@ -785,12 +786,20 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  
>  	while (READ_ONCE(results->still_running) || READ_ONCE(results->head) != NULL)
>  	{
> +		if (igt_kernel_tainted(&taints)) {
> +			ktap_parser_cancel();
> +			break;
> +		}
> +
>  		if (READ_ONCE(results->head) != NULL) {
>  			pthread_mutex_lock(&results->mutex);
>  
> -			igt_dynamic(results->head->test_name)
> +			igt_dynamic(results->head->test_name) {
>  				igt_assert(READ_ONCE(results->head->passed));
>  
> +				igt_fail_on(igt_kernel_tainted(&taints));
> +			}
> +
>  			temp = results->head;
>  			results->head = results->head->next;
>  			free(temp);
> @@ -801,6 +810,7 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  
>  	ret = ktap_parser_stop();
>  
> +	igt_skip_on(igt_kernel_tainted(&taints));
>  	igt_skip_on_f(ret, "KTAP parser failed\n");
>  }
>  
