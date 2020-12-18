Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C8F2DE075
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Dec 2020 10:38:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F02589801;
	Fri, 18 Dec 2020 09:38:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94135897FF;
 Fri, 18 Dec 2020 09:38:22 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23363603-1500050 for multiple; Fri, 18 Dec 2020 09:38:19 +0000
MIME-Version: 1.0
In-Reply-To: <20201218084939.1767210-1-tvrtko.ursulin@linux.intel.com>
References: <20201218084939.1767210-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Fri, 18 Dec 2020 09:38:18 +0000
Message-ID: <160828429823.11872.8276922756082407179@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] lib/igt_perf: Request
 CLOCK_MONOTONIC when opening events
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-12-18 08:49:39)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Ask for CLOCK_MONOTONIC which is more stable than the default perf clock.
> 
> (Ability to select a clock has been available since kernel version 4.1.)
> 
> The change should not have any significant impact on the IGT as whole
> apart from maybe improving the occasional jitter in tests/tools which use
> nanosleep(2) and use time slept together with perf reported time delta
> either in direct or indirect calculations.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  lib/igt_perf.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/igt_perf.c b/lib/igt_perf.c
> index 418c1c18891c..b743859f5d29 100644
> --- a/lib/igt_perf.c
> +++ b/lib/igt_perf.c
> @@ -1,12 +1,13 @@
> -#include <stdint.h>
> +#include <errno.h>
>  #include <fcntl.h>
> -#include <unistd.h>
> +#include <stdint.h>
>  #include <stdlib.h>
>  #include <string.h>
> -#include <errno.h>
>  #include <sys/stat.h>
>  #include <sys/sysinfo.h>
>  #include <sys/sysmacros.h>
> +#include <time.h>
> +#include <unistd.h>
>  
>  #include "igt_perf.h"
>  
> @@ -111,6 +112,8 @@ _perf_open(uint64_t type, uint64_t config, int group, uint64_t format)
>  
>         attr.read_format = format;
>         attr.config = config;
> +       attr.use_clockid = 1;
> +       attr.clockid = CLOCK_MONOTONIC;

Ok, pretty much all are cumulative samples with ktime_get(), and not raw
HW clocks that would prefer MONO_RAW.
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
