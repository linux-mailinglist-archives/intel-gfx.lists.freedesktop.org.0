Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A0579A68A
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 11:03:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 451AD10E19F;
	Mon, 11 Sep 2023 09:03:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D60610E07C;
 Mon, 11 Sep 2023 09:03:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694423025; x=1725959025;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RJYPRlL4wblocY5if3I0CuViX74EqkG7QgA3NOdjisA=;
 b=jZ19tDrBg0p8fUMT3ubYZJQ/c4XMotk6dM/8Kur9oIe0fv3zkbwNCvK2
 uJ7aVBExeybZmYCdTgXjqrXptJX7hH1J8QAVDpo9mDaLv10sZ3d8QuV05
 8SGrKJxVD8h6Vr/TqVnyLcZJ6DMrvolSGqXSxl9/CWrLIbI9/1DDsCcfe
 3szrCmDMXPsMjZE/wBaOjeaP3fCQ5OevFExUozrjHwh/5Y2JtwT/Wi0Jt
 vH21TBOUYt2Gsq2AXfovy+vUE+OydlF6shdXXEV6+2h/CQ0lhPidD/TE9
 Jho5rlM2Ye9p3m+0gJg4GxZHitgV/M7N7ya62j4M3Am2igBU0pKZy5rEJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="444448128"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="444448128"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:03:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10829"; a="858245848"
X-IronPort-AV: E=Sophos;i="6.02,243,1688454000"; d="scan'208";a="858245848"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 02:03:44 -0700
Received: from maurocar-mobl2 (maurocar-mobl2.ger.corp.intel.com
 [10.252.24.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 4D709580223;
 Mon, 11 Sep 2023 02:03:42 -0700 (PDT)
Date: Mon, 11 Sep 2023 11:03:39 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230911110339.267f2a2a@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-28-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-28-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 09/17] lib/ktap: Drop is_running
 flag
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

On Fri,  8 Sep 2023 14:32:43 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> Since we now call pthread_cancel() when we want to stop KTAP parser before
> it completes, and we take care of returning failure in that case as a
> result of KTAP parsing, we no longer need to check a flag that indicates
> whether we should continue parsing or return a failure.  Drop that flag.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

LGTM.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>


> ---
>  lib/igt_ktap.c | 32 --------------------------------
>  1 file changed, 32 deletions(-)
> 
> diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> index 1e75b2ec23..fe77b62680 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -18,7 +18,6 @@
>  struct ktap_parser_args {
>  	int fd;
>  	bool is_builtin;
> -	volatile bool is_running;
>  	int ret;
>  } ktap_args;
>  
> @@ -61,11 +60,6 @@ static int log_to_end(enum igt_log_level level, int fd,
>  		igt_log(IGT_LOG_DOMAIN, level, "%s", record);
>  
>  		while (read(fd, record, BUF_LEN) < 0) {
> -			if (!READ_ONCE(ktap_args.is_running)) {
> -				igt_warn("ktap parser stopped\n");
> -				return -2;
> -			}
> -
>  			if (errno == EINTR)
>  				return -2;
>  
> @@ -183,11 +177,6 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
>  
>  	if (is_builtin) {
>  		while (read(fd, record, BUF_LEN) < 0) {
> -			if (!READ_ONCE(ktap_args.is_running)) {
> -				igt_warn("ktap parser stopped\n");
> -				return -2;
> -			}
> -
>  			if (errno == EINTR)
>  				return -2;
>  
> @@ -227,11 +216,6 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
>  			cutoff[0] = '\0';
>  
>  		while (read(fd, record, BUF_LEN) < 0) {
> -			if (!READ_ONCE(ktap_args.is_running)) {
> -				igt_warn("ktap parser stopped\n");
> -				return -2;
> -			}
> -
>  			if (errno == EINTR)
>  				return -2;
>  
> @@ -382,11 +366,6 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
>  
>  	for (int i = 0; i < test_count; i++) {
>  		while (read(fd, record, BUF_LEN) < 0) {
> -			if (!READ_ONCE(ktap_args.is_running)) {
> -				igt_warn("ktap parser stopped\n");
> -				return -1;
> -			}
> -
>  			if (errno == EINTR)
>  				return -1;
>  
> @@ -523,19 +502,11 @@ void *igt_ktap_parser(void *unused)
>  	failed_tests = false;
>  	found_tests = false;
>  
> -	if (!READ_ONCE(ktap_args.is_running))
> -		goto igt_ktap_parser_end;
> -
>  igt_ktap_parser_start:
>  	test_name[0] = '\0';
>  	test_name[BUF_LEN] = '\0';
>  
>  	while (read(fd, record, BUF_LEN) < 0) {
> -		if (!READ_ONCE(ktap_args.is_running)) {
> -			igt_warn("ktap parser stopped\n");
> -			goto igt_ktap_parser_end;
> -		}
> -
>  		if (errno == EAGAIN)
>  			/* No records available */
>  			continue;
> @@ -595,7 +566,6 @@ struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
>  
>  	ktap_args.fd = fd;
>  	ktap_args.is_builtin = is_builtin;
> -	ktap_args.is_running = true;
>  	ktap_args.ret = IGT_EXIT_FAILURE;
>  	pthread_create(&ktap_parser_thread, NULL, igt_ktap_parser, NULL);
>  
> @@ -604,13 +574,11 @@ struct ktap_test_results *ktap_parser_start(int fd, bool is_builtin)
>  
>  void ktap_parser_cancel(void)
>  {
> -	ktap_args.is_running = false;
>  	pthread_cancel(ktap_parser_thread);
>  }
>  
>  int ktap_parser_stop(void)
>  {
> -	ktap_args.is_running = false;
>  	pthread_join(ktap_parser_thread, NULL);
>  	return ktap_args.ret;
>  }
