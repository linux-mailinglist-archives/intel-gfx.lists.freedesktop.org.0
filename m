Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47689294064
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 18:22:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 985CC6ED0A;
	Tue, 20 Oct 2020 16:22:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A54E6ED09;
 Tue, 20 Oct 2020 16:22:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22769110-1500050 for multiple; Tue, 20 Oct 2020 17:22:32 +0100
MIME-Version: 1.0
In-Reply-To: <20201020161401.679608-1-tvrtko.ursulin@linux.intel.com>
References: <20201020161401.679608-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Date: Tue, 20 Oct 2020 17:22:30 +0100
Message-ID: <160321095095.17091.17876729021434766552@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] tests/i915/perf_pmu: PCI
 unbind test
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

Quoting Tvrtko Ursulin (2020-10-20 17:14:01)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Test driver unbind from device with active PMU client.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  tests/i915/perf_pmu.c | 108 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 108 insertions(+)
> 
> diff --git a/tests/i915/perf_pmu.c b/tests/i915/perf_pmu.c
> index cb7273142b8f..b2402955092e 100644
> --- a/tests/i915/perf_pmu.c
> +++ b/tests/i915/perf_pmu.c
> @@ -43,6 +43,7 @@
>  #include "igt.h"
>  #include "igt_core.h"
>  #include "igt_device.h"
> +#include "igt_device_scan.h"
>  #include "igt_kmod.h"
>  #include "igt_perf.h"
>  #include "igt_sysfs.h"
> @@ -2011,6 +2012,75 @@ static void test_unload(unsigned int num_engines)
>         igt_assert_eq(unload_i915(), 0);
>  }
>  
> +static void set_filter_from_device(int fd)
> +{
> +       const char *filter_type = "sys:";
> +       char filter[strlen(filter_type) + PATH_MAX + 1];
> +       char *dst = stpcpy(filter, filter_type);
> +       char path[PATH_MAX + 1];
> +
> +       igt_assert(igt_sysfs_path(fd, path, PATH_MAX));
> +       igt_ignore_warn(strncat(path, "/device", PATH_MAX - strlen(path)));
> +       igt_assert(realpath(path, dst));
> +
> +       igt_device_filter_free_all();
> +       igt_assert_eq(igt_device_filter_add(filter), 1);
> +}
> +
> +struct rebind_data
> +{
> +       int sysfs;
> +       uint64_t perf_type;
> +       char *bus_addr;
> +};
> +
> +static void test_rebind(struct rebind_data *data)
> +{
> +       struct igt_helper_process pmu_client = { };
> +       const unsigned int timeout = 5;
> +       int pmu;
> +
> +       /* Start rapid PMU traffic from a background process. */
> +       igt_fork_helper(&pmu_client) {
> +               pmu = igt_perf_open(data->perf_type, I915_PMU_INTERRUPTS);
> +               igt_assert(pmu >= 0);
> +
> +               for (;;) {
> +                       pmu_read_single(pmu);
> +                       usleep(500);
> +               }
> +       }
> +
> +       /* Let the child run for a bit. */
> +       usleep(1e6);
> +
> +       /* Unbind the device. */
> +       igt_set_timeout(timeout, "Driver unbind timeout!");
> +       igt_assert_f(igt_sysfs_set(data->sysfs, "unbind", data->bus_addr),
> +                    "Driver unbind failure!\n");
> +       igt_reset_timeout();
> +
> +       /* Check new PMUs cannot be opened. */
> +       pmu = igt_perf_open(data->perf_type, I915_PMU_INTERRUPTS);
> +       igt_assert(pmu < 0);
> +       usleep(1e6);
> +       pmu = igt_perf_open(data->perf_type, I915_PMU_INTERRUPTS);
> +       igt_assert(pmu < 0);
> +
> +       /* Stop background PMU traffic. */
> +       usleep(1e6);
> +       igt_stop_helper(&pmu_client);
> +
> +       /* Bind the device back. */
> +       igt_set_timeout(timeout, "Driver bind timeout!");
> +       igt_assert_f(igt_sysfs_set(data->sysfs, "bind", data->bus_addr),
> +                    "Driver bind failure\n!");
> +       igt_reset_timeout();
> +
> +       igt_fail_on_f(faccessat(data->sysfs, data->bus_addr, F_OK, 0),
> +                     "Device not present!\n");

Then check we can now igt_perf_open(data->perf_type, I915_PMU_INTERRUPTS);
again?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
