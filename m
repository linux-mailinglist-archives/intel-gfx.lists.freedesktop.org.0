Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D977A59F0
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 08:30:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CB7310E33E;
	Tue, 19 Sep 2023 06:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7025010E315;
 Tue, 19 Sep 2023 06:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695105018; x=1726641018;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=F+RvAmesUVTeC11lgoF0UpM357+0PxVyjCxUnNYyALU=;
 b=fDqo48UStb9qTtlQ/KRZBu8RAVZ/vpaunPEiWxnDDae478oYNsrG8WRA
 72gymiAafm8PF1AMghhjPL5UFpuUtVRFw2xsT1EX+avoJ1YRHnhZRhdjX
 uVXH8tLuJuErVVaF3Akk18rOdfjeiVklvM6Q2RCypLW0vnANzIKR2HE33
 lTLpAYc2tt2uaYA/doIVvX6N0kkIbfqik/tUN7IYdjv/t+D3nkMyjtBho
 qwM4R7+wF1PnwX+ULTyeuIdD0g1Nw//Bdjo+FnkSxenehTDL3lsaonbAF
 HR5tIYptuW0y1SmI43xT9HkKy6UBEb9X8PWZL3ZdjHud/Fg9Asb4WBvVz g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="364911416"
X-IronPort-AV: E=Sophos;i="6.02,158,1688454000"; d="scan'208";a="364911416"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 23:30:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="695805540"
X-IronPort-AV: E=Sophos;i="6.02,158,1688454000"; d="scan'208";a="695805540"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 23:30:17 -0700
Received: from maurocar-mobl2 (aalfero-mobl2.ger.corp.intel.com
 [10.252.25.249])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 74575580DAE;
 Mon, 18 Sep 2023 23:30:15 -0700 (PDT)
Date: Tue, 19 Sep 2023 08:30:12 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230919083012.6d83fd34@maurocar-mobl2>
In-Reply-To: <20230918134249.31645-26-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
 <20230918134249.31645-26-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 07/17] lib/ktap: Drop checks for
 EINTR on read() failures
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

On Mon, 18 Sep 2023 15:42:57 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> While reading KTAP data from /dev/kmsg we now ignore EINTR failures that
> may occur during read() and we continue reading the data.  No explanation
> has been provided on what that could be needed for.
> 
> Since we use default SIGINT signal handler, read() should never fail with
> errno set to EINTR on user interrupt, only the whole process should be
> terminated.  Drop checks for errno == EINTR as not applicable.

This explanation makes sense to me.

Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org>


> 
> v2: Drop handling of EINTR completely, update commit message and
>     descripion.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>

> ---
>  lib/igt_ktap.c | 15 ---------------
>  1 file changed, 15 deletions(-)
> 
> diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> index 84fb13218f..ce07f9aed7 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -66,9 +66,6 @@ static int log_to_end(enum igt_log_level level, int fd,
>  				return -2;
>  			}
>  
> -			if (errno == EINTR)
> -				continue;
> -
>  			if (errno == EPIPE) {
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
>  				return -2;
> @@ -188,9 +185,6 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
>  				return -2;
>  			}
>  
> -			if (errno == EINTR)
> -				continue;
> -
>  			if (errno == EPIPE) {
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
>  				return -2;
> @@ -232,9 +226,6 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
>  				return -2;
>  			}
>  
> -			if (errno == EINTR)
> -				continue;
> -
>  			if (errno == EPIPE) {
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
>  				return -2;
> @@ -387,9 +378,6 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
>  				return -1;
>  			}
>  
> -			if (errno == EINTR)
> -				continue;
> -
>  			if (errno == EAGAIN)
>  				/* No records available */
>  				continue;
> @@ -540,9 +528,6 @@ igt_ktap_parser_start:
>  			/* No records available */
>  			continue;
>  
> -		if (errno == EINTR)
> -			continue;
> -
>  		if (errno == EPIPE) {
>  			igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
>  			goto igt_ktap_parser_end;
