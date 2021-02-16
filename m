Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6421831CAB3
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 13:47:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDB1788EE9;
	Tue, 16 Feb 2021 12:47:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED0ED88CBF;
 Tue, 16 Feb 2021 12:47:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23880805-1500050 for multiple; Tue, 16 Feb 2021 12:47:02 +0000
MIME-Version: 1.0
In-Reply-To: <20210216105050.309803-1-tvrtko.ursulin@linux.intel.com>
References: <20210216105050.309803-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Tue, 16 Feb 2021 12:47:00 +0000
Message-ID: <161347962042.8311.4583278071537199442@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/perf_pmu: Subtest to
 measure sampling error for 100% busy
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

Quoting Tvrtko Ursulin (2021-02-16 10:50:50)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Test that periodic reads of engine busyness against a constant 100% load
> are within the 5000ppm tolerance when comparing perf timestamp versus
> counter values.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  tests/i915/perf_pmu.c | 46 ++++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 41 insertions(+), 5 deletions(-)
> 
> diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
> index 50b5c82bc472..728312be5293 100644
> --- a/tests/i915/perf_pmu.c
> +++ b/tests/i915/perf_pmu.c
> @@ -26,6 +26,7 @@
>  #include <stdio.h>
>  #include <string.h>
>  #include <fcntl.h>
> +#include <float.h>
>  #include <inttypes.h>
>  #include <errno.h>
>  #include <signal.h>
> @@ -46,6 +47,7 @@
>  #include "igt_perf.h"
>  #include "igt_sysfs.h"
>  #include "igt_pm.h"
> +#include "igt_stats.h"
>  #include "sw_sync.h"
>  
>  IGT_TEST_DESCRIPTION("Test the i915 pmu perf interface");
> @@ -278,8 +280,11 @@ static void end_spin(int fd, igt_spin_t *spin, unsigned int flags)
>  static void
>  single(int gem_fd, const struct intel_execution_engine2 *e, unsigned int flags)
>  {
> +       unsigned int loops = flags & FLAG_LONG ? 20 : 1;
> +       double err_min = DBL_MAX, err_max = -DBL_MAX;
>         unsigned long slept;
>         igt_spin_t *spin;
> +       igt_stats_t s;
>         uint64_t val;
>         int fd;

Something to record is that TEST_TRAILING_IDLE and TEST_LONG are mutually
exclusive.

So assert(igt_hweight(flags & (TEST_TRAILING_IDLE | TEST_LONG)) <= 1); ?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
