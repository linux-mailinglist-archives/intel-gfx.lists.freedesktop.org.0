Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 933617A1C8D
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 12:42:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96D9210E170;
	Fri, 15 Sep 2023 10:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA04010E170;
 Fri, 15 Sep 2023 10:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694774573; x=1726310573;
 h=date:from:to:cc:subject:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LgBRUZIZKNnysV3OgVG7wPH3IXirqr8i2l55+w9tagE=;
 b=PKCE8QoK6kmXTotQYRg/f+ObLbpeh9NMyrYaz2KbuwhVbkLkef+IdNFr
 6WCstd1Okcckyg0w00ysI14V1NgNxzYSuRlNQlLK5H3MVuyCoc1NFWrEm
 7ZLQbaV47NFgDhn0cZtnm9/6knkMr2lQFP8NAjo9QnijbOfy0xf3AVYHP
 lKDJg3dJ1nNP9aJWm8VkWQky82S5eilhAt0/uwYrIMss+q8wB2lvQtdSo
 3xnQiPH6Qjw8IMb4GfRjze3mHONGNfj1iIsGboxzAyf/2li3prifQUunv
 GXMpFT0HQgEK4UuWuG7fFMGvr/ZMJz8VZbcnb2QLs3+pe8o0MIODdXKey w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="383040959"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="383040959"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 03:42:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="991807113"
X-IronPort-AV: E=Sophos;i="6.02,148,1688454000"; d="scan'208";a="991807113"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 03:42:51 -0700
Received: from maurocar-mobl2 (unknown [10.252.9.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id CB51E580D1F;
 Fri, 15 Sep 2023 03:42:49 -0700 (PDT)
Date: Fri, 15 Sep 2023 12:42:47 +0200
From: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230915124247.452c5916@maurocar-mobl2>
In-Reply-To: <20230908123233.137134-29-janusz.krzysztofik@linux.intel.com>
References: <20230908123233.137134-19-janusz.krzysztofik@linux.intel.com>
 <20230908123233.137134-29-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 10/17] lib/ktap: Read /dev/kmsg in
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

On Fri,  8 Sep 2023 14:32:44 +0200
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

LGTM.

Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org>

> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_kmod.c |  7 ++++-
>  lib/igt_ktap.c | 81 ++++++++++++++------------------------------------
>  2 files changed, 28 insertions(+), 60 deletions(-)
> 
> diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> index fb0bd21ee5..020df286b8 100644
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
> index fe77b62680..165f6b2cce 100644
> --- a/lib/igt_ktap.c
> +++ b/lib/igt_ktap.c
> @@ -59,20 +59,12 @@ static int log_to_end(enum igt_log_level level, int fd,
>  	while (*lend == '\0') {
>  		igt_log(IGT_LOG_DOMAIN, level, "%s", record);
>  
> -		while (read(fd, record, BUF_LEN) < 0) {
> -			if (errno == EINTR)
> -				return -2;
> -
> -			if (errno == EPIPE) {
> +		if (read(fd, record, BUF_LEN) < 0) {
> +			if (errno == EPIPE)
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> -				return -2;
> -			}
> +			else if (errno != EINTR)
> +				igt_warn("an error occurred while reading kmsg: %m\n");
>  
> -			if (errno == EAGAIN)
> -				/* No records available */
> -				continue;
> -
> -			igt_warn("kmsg truncated: unknown error (%m)\n");
>  			return -2;
>  		}
>  
> @@ -176,20 +168,12 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
>  		return -1;
>  
>  	if (is_builtin) {
> -		while (read(fd, record, BUF_LEN) < 0) {
> -			if (errno == EINTR)
> -				return -2;
> -
> -			if (errno == EPIPE) {
> +		if (read(fd, record, BUF_LEN) < 0) {
> +			if (errno == EPIPE)
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> -				return -2;
> -			}
> +			else if (errno != EINTR)
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
> @@ -215,20 +199,12 @@ static int find_next_tap_subtest(int fd, char *record, char *test_name, bool is_
>  		if (cutoff)
>  			cutoff[0] = '\0';
>  
> -		while (read(fd, record, BUF_LEN) < 0) {
> -			if (errno == EINTR)
> -				return -2;
> -
> -			if (errno == EPIPE) {
> +		if (read(fd, record, BUF_LEN) < 0) {
> +			if (errno == EPIPE)
>  				igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> -				return -2;
> -			}
> +			else if (errno != EINTR)
> +				igt_warn("unknown error reading kmsg (%m)\n");
>  
> -			if (errno == EAGAIN)
> -				/* No records available */
> -				continue;
> -
> -			igt_warn("kmsg truncated: unknown error (%m)\n");
>  			return -2;
>  		}
>  
> @@ -365,20 +341,12 @@ static int parse_tap_level(int fd, char *base_test_name, int test_count, bool *f
>  	char base_test_name_for_next_level[BUF_LEN + 1];
>  
>  	for (int i = 0; i < test_count; i++) {
> -		while (read(fd, record, BUF_LEN) < 0) {
> -			if (errno == EINTR)
> -				return -1;
> -
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
> +			else if (errno != EINTR)
> +				igt_warn("error reading kmsg (%m)\n");
>  
> -			igt_warn("kmsg truncated: unknown error (%m)\n");
>  			return -1;
>  		}
>  
> @@ -506,18 +474,13 @@ igt_ktap_parser_start:
>  	test_name[0] = '\0';
>  	test_name[BUF_LEN] = '\0';
>  
> -	while (read(fd, record, BUF_LEN) < 0) {
> -		if (errno == EAGAIN)
> -			/* No records available */
> -			continue;
> -
> -		if (errno == EINTR)
> -			goto igt_ktap_parser_end;
> -
> -		if (errno == EPIPE) {
> +	if (read(fd, record, BUF_LEN) < 0) {
> +		if (errno == EPIPE)
>  			igt_warn("kmsg truncated: too many messages. You may want to increase log_buf_len in kmcdline\n");
> -			goto igt_ktap_parser_end;
> -		}
> +		else if (errno != EINTR)
> +			igt_warn("error reading kmsg (%m)\n");
> +
> +		goto igt_ktap_parser_end;
>  	}
>  
>  	test_count = find_next_tap_subtest(fd, record, test_name, is_builtin);
