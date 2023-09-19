Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4C47A59E5
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 08:23:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69DEF10E114;
	Tue, 19 Sep 2023 06:23:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 387D010E112;
 Tue, 19 Sep 2023 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695104633; x=1726640633;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3VkGgOjjl4FEdh/Re0Mc4LUd+zA+AqpaYORZDtpOdYk=;
 b=hcy6ISQR19YtVH0fIO4Bf9GPz+FT6+Ofo4lNi5e42yKOCydNzNEKXWI+
 Z58UV6QvTd9Ns3LfgKTMxFYFiVWSYMkeu23ecxy8r7MdvDmu2RjrKimwm
 CmeXzM99etseJw3Rt99jV6X8O7jqq2YIZ9wwK6ygpDb8R/BjElAWrH0U5
 6O9q01I6+iT65xTIguRpP4kow39ggCbfku8vNXRGFFHDP5PXIQz19mTG4
 /xlaYxGKRWeLn9U3/sx+rnHKn0yDz0iUMnadrzMw0Kc5IiiliAKrugcLQ
 vMmMv34P8kHxiXFgdI6lZ3WKPxX+5Xq7o23PUpR2H6LYJfodCkxpAYVPH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="364910508"
X-IronPort-AV: E=Sophos;i="6.02,158,1688454000"; d="scan'208";a="364910508"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 23:23:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10837"; a="993040793"
X-IronPort-AV: E=Sophos;i="6.02,158,1688454000"; d="scan'208";a="993040793"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2023 23:23:51 -0700
Received: from maurocar-mobl2 (aalfero-mobl2.ger.corp.intel.com
 [10.252.25.249])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 8717E580DAE;
 Mon, 18 Sep 2023 23:23:49 -0700 (PDT)
Date: Tue, 19 Sep 2023 08:23:47 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230919082347.5bbee759@maurocar-mobl2>
In-Reply-To: <20230918134249.31645-29-janusz.krzysztofik@linux.intel.com>
References: <20230918134249.31645-19-janusz.krzysztofik@linux.intel.com>
 <20230918134249.31645-29-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v3 10/17] lib/ktap: Read /dev/kmsg in
 blocking mode
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

On Mon, 18 Sep 2023 15:43:00 +0200
Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com> wrote:

> We obtain KTAP report from /dev/kmsg.  That file is now opened from
> igt_ktest_begin(), a function originally designed for i915 selftests and
> now reused with kunit tests.  The original intention of opening that file
> was to dump kernel messages to stderr on selftest error.  For that
> purpose, the file is now opened in non-blocking mode so we don't end up
> waiting for more kernel messages than already available.  Since our ktap
> parser code reuses the file descriptor, we now have to loop over
> EAGAIN responses, waiting for more KTAP data.  Since we have no sleeps
> inside those loops, extremely high CPU usage can be observed.
> 
> Simplify reading KTAP reports by first switching the file descriptor back
> to blocking mode.
> 
> While being at it, fix read errors other than EPIPE likely unintentionally
> ignored when reading first line of KTAP data.
> 
> v2: Drop EINTR handling as not applicable since SIGINT default signal
>     handler kills the whole process anyway,
>   - update commit description to also mention read error handling fix.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org> # v1

LGTM.

Reviewed-by: Mauro Carvalho Chehab <mchehab@kernel.org>


> ---
>  lib/igt_kmod.c |  7 +++++-
>  lib/igt_ktap.c | 66 +++++++++++++++++---------------------------------
>  2 files changed, 28 insertions(+), 45 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index 7392276401..96240543a7 100644
> --- a/lib/igt_kmod.c
> +++ b/lib/igt_kmod.c
> @@ -24,6 +24,7 @@
>  #include <ctype.h>
>  #include <signal.h>
>  #include <errno.h>
> +#include <fcntl.h>
>  #include <sys/utsname.h>
>  
>  #include "igt_aux.h"
> @@ -758,12 +759,16 @@ static void __igt_kunit(struct igt_ktest *tst, const char *opts)
>  {
>  	struct kmod_module *kunit_kmod;
>  	bool is_builtin;
> -	int ret;
>  	struct ktap_test_results *results;
>  	struct ktap_test_results_element *temp;
> +	int flags, ret;
>  
>  	igt_skip_on_f(tst->kmsg < 0, "Could not open /dev/kmsg\n");
>  
> +	flags = fcntl(tst->kmsg, F_GETFL, 0) & ~O_NONBLOCK;
> +	igt_skip_on_f(fcntl(tst->kmsg, F_SETFL, flags) == -1,
> +		      "Could not set /dev/kmsg to blocking mode\n");
> +
>  	igt_skip_on(lseek(tst->kmsg, 0, SEEK_END) < 0);
>  
>  	igt_skip_on(kmod_module_new_from_name(kmod_ctx(), "kunit", &kunit_kmod));
> diff --git a/lib/igt_ktap.c b/lib/igt_ktap.c
> index 5bc5e003d7..282e44176e 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -59,17 +59,12 @@ static int log_to_end(enum igt_log_level level, int fd,
>  	while (*lend == '\0') {
>  		igt_log(IGT_LOG_DOMAIN, level, "%s", record);
>  
> -		while (read(fd, record, BUF_LEN) < 0) {
> -			if (errno == EPIPE) {
> +		if (read(fd, record, BUF_LEN) < 0) {
> +			if (errno == EPIPE)
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> -				return -2;
> -			}
> -
> -			if (errno == EAGAIN)
> -				/* No records available */
> -				continue;
> +			else
> +				igt_warn("an error occurred while reading kmsg: %m\n");
>  
> -			igt_warn("kmsg truncated: unknown error (%m)\n");
>  			return -2;
>  		}
>  
> @@ -173,17 +168,12 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
>  		return -1;
>  
>  	if (is_builtin) {
> -		while (read(fd, record, BUF_LEN) < 0) {
> -			if (errno == EPIPE) {
> +		if (read(fd, record, BUF_LEN) < 0) {
> +			if (errno == EPIPE)
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> -				return -2;
> -			}
> +			else
> +				igt_warn("an error occurred while reading kmsg: %m\n");
>  
> -			if (errno == EAGAIN)
> -				/* No records available */
> -				continue;
> -
> -			igt_warn("kmsg truncated: unknown error (%m)\n");
>  			return -2;
>  		}
>  	}
> @@ -209,17 +199,12 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
>  		if (cutoff)
>  			cutoff[0] = '\0';
>  
> -		while (read(fd, record, BUF_LEN) < 0) {
> -			if (errno == EPIPE) {
> +		if (read(fd, record, BUF_LEN) < 0) {
> +			if (errno == EPIPE)
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> -				return -2;
> -			}
> -
> -			if (errno == EAGAIN)
> -				/* No records available */
> -				continue;
> +			else
> +				igt_warn("unknown error reading kmsg (%m)\n");
>  
> -			igt_warn("kmsg truncated: unknown error (%m)\n");
>  			return -2;
>  		}
>  
> @@ -356,17 +341,12 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
>  	char base_test_name_for_next_level[BUF_LEN + 1];
>  
>  	for (int i = 0; i < test_count; i++) {
> -		while (read(fd, record, BUF_LEN) < 0) {
> -			if (errno == EAGAIN)
> -				/* No records available */
> -				continue;
> -
> -			if (errno == EPIPE) {
> +		if (read(fd, record, BUF_LEN) < 0) {
> +			if (errno == EPIPE)
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> -				return -1;
> -			}
> +			else
> +				igt_warn("error reading kmsg (%m)\n");
>  
> -			igt_warn("kmsg truncated: unknown error (%m)\n");
>  			return -1;
>  		}
>  
> @@ -494,15 +474,13 @@ igt_ktap_parser_start:
>  	test_name[0] = '\0';
>  	test_name[BUF_LEN] = '\0';
>  
> -	while (read(fd, record, BUF_LEN) < 0) {
> -		if (errno == EAGAIN)
> -			/* No records available */
> -			continue;
> -
> -		if (errno == EPIPE) {
> +	if (read(fd, record, BUF_LEN) < 0) {
> +		if (errno == EPIPE)
>  			igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> -			goto igt_ktap_parser_end;
> -		}
> +		else
> +			igt_warn("error reading kmsg (%m)\n");
> +
> +		goto igt_ktap_parser_end;
>  	}
>  
>  	test_count = find_next_tap_subtest(fd, record, test_name, is_builtin);
