Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4792F79A683
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:01:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B42410E1A2;
	Mon, 11 Sep 2023 09:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA46B10E07C;
 Mon, 11 Sep 2023 09:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694422910; x=1725958910;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LZhkIE74W09J/3sjc2w2ANZgM6cS+bM1u5ApMkeMA5k=;
 b=mx4Pm+InfULUMORCTBS/il/3WsY/tpyFZqLj2nQOmOyGbNUDBOQBHNsp
 KPOKg/4n2RblkY4Oz/Ar0/5t8F60rU0OLlgVgaqFZT+dmhuvRCFBhXEQK
 SCnfs1/U1IqidD3eqVD4JTI3taldOWO8MoXcXp9owu3CS4/RiktriD8Dd
 Hrw2bnxPkl7n/ux5M5yrl2694+tdPdTpvPDs9XY+jKmmiwDIMJ8BNZdoR
 6gwpFjDW5MaiP11RAul9zWUTckucD3yIiBuObcmDTHupyTc2BbvFPNdaQ
 siDmerqgw3S270QUmCd66GlC/DDW8Tm0hrU5mONK5lQSDdhryJspIXUEN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="363056213"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="363056213"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:01:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="778317941"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="778317941"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:01:46 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.24.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 90A63580DC7;
 Mon, 11 Sep 2023 02:01:44 -0700 (PDT)
Date: Mon, 11 Sep 2023 11:01:42 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230911110142.04abc143@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-26-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-26-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 07/17] lib/ktap: Don't ignore
 interrupt signals
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

On Fri,  8 Sep 2023 14:32:41 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> While reading KTAP data from /dev/kmsg we now ignore interrupt signals
> that may occur during read() and we continue reading the data.  No
> explanation has been provided on what that could be needed for.

The reason is that kunit module load takes seconds, as it only finishes
loading after all tests are executed.

So, interrupting IGT won't interrupt the tests, and kmsg will still
be filled by test results.

IMO, the right thing to do here is to ignore interrupts, as otherwise
the logs for the next test will be polluted by the KTAP messages and
the Kernel will be kept on an unstable state, as running tests while
kUnit tests are running is not supported.

> 
> Always return with an error code to the caller when read() fails with
> errno == EINTR, so igt_runner has no problems with killing us promptly
> on timeout.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_ktap.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> index 84fb13218f..3cfb55ec97 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -67,7 +67,7 @@ static int log_to_end(enum igt_log_level level, int fd,
>  			}
>  
>  			if (errno == EINTR)
> -				continue;
> +				return -2;
>  
>  			if (errno == EPIPE) {
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> @@ -189,7 +189,7 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
>  			}
>  
>  			if (errno == EINTR)
> -				continue;
> +				return -2;
>  
>  			if (errno == EPIPE) {
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> @@ -233,7 +233,7 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
>  			}
>  
>  			if (errno == EINTR)
> -				continue;
> +				return -2;
>  
>  			if (errno == EPIPE) {
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> @@ -388,7 +388,7 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
>  			}
>  
>  			if (errno == EINTR)
> -				continue;
> +				return -1;
>  
>  			if (errno == EAGAIN)
>  				/* No records available */
> @@ -541,7 +541,7 @@ igt_ktap_parser_start:
>  			continue;
>  
>  		if (errno == EINTR)
> -			continue;
> +			goto igt_ktap_parser_end;
>  
>  		if (errno == EPIPE) {
>  			igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
