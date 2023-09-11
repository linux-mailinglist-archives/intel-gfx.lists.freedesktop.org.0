Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A9579A663
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 10:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3102E10E18F;
	Mon, 11 Sep 2023 08:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3946A10E07C;
 Mon, 11 Sep 2023 08:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694422557; x=1725958557;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zQK0UJIhc7rA60RwD/if1PraZ8Kvur3K5PEMsA0N3f0=;
 b=eZRI+32B1yulewEqTLP01yrBC459KmdVABamUgkGYtNGldF1rlQhfEWC
 kkKz1YM/98D8kkaGlxvBWbmUW68/K3RInj4nYKVoe33wyTTXqqHoeCRUj
 jomBCMXFlcgdSb8oAFf4hej6OhcKXchTLf1aL9wer/Uq4gw9keqkfWEOW
 2UjexJa4xrBQj2apJtOemPcfKvBkxKjWyREJ6Pcfj7kEkSayRtoi9qhQn
 2lJqGe3c8OkkITALRbJzDSoGXmyKaUePToHi/8hv4KdGNXhQLQRSmsbtj
 Fo0S7FDDttR0LaGbqNj+dfl45rQRZtmOXpQN3OUWVawEMDgk0j0TtWmlZ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="376945727"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="376945727"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 01:55:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="990024924"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="990024924"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 01:55:56 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.24.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 3611B580DC7;
 Mon, 11 Sep 2023 01:55:54 -0700 (PDT)
Date: Mon, 11 Sep 2023 10:55:51 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230911105551.63e22f66@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-25-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-25-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 06/17] lib/ktap: Make sure we fail
 on premature cancel
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

On Fri,  8 Sep 2023 14:32:40 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> After loading a kunit test module that executes some kunit test cases, we
> evaluate overall result of an IGT subtest that corresponds to that module
> based on an error code returned by kunit_parser_stop() helper, obtained
> from a .ret field of a ktap_args structure.  That code is now assigned to
> that structure field right before completion of the KTAP parser thread
> start routine.  If the thread is canceled for some reason then the return
> code will be undefined.
> 
> Initialize the return code on KTAP parser startup with a value that
> indicates a failure, then change it to success when so indicated by result
> of KTAP parsing.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> ---
>  lib/igt_ktap.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> index 123a40d183..84fb13218f 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -579,9 +579,7 @@ igt_ktap_parser_start:
>  igt_ktap_parser_end:
>  	results.still_running = false;
>  
> -	if (failed_tests || !found_tests)
> -		ktap_args.ret = IGT_EXIT_FAILURE;
> -	else
> +	if (found_tests && !failed_tests)
>  		ktap_args.ret = IGT_EXIT_SUCCESS;
>  
>  	return NULL;
> @@ -598,6 +596,7 @@ struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
>  	ktap_args.fd = fd;
>  	ktap_args.is_builtin = is_builtin;
>  	ktap_args.is_running = true;
> +	ktap_args.ret = IGT_EXIT_FAILURE;
>  	pthread_create(&ktap_parser_thread, NULL, igt_ktap_parser, NULL);
>  
>  	return &results;
