Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DB332C395
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Mar 2021 01:10:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9886E43B;
	Thu,  4 Mar 2021 00:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C53B36E43B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Mar 2021 00:10:11 +0000 (UTC)
IronPort-SDR: xOQvUTPqw44t0RvnZ0naEUB70DOE0EO17mM/SDDaRUNNNR7aQidymJHuNAxurrh/G5UOs/S/M9
 exN/CLHf2goQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="186651616"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="186651616"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 16:09:59 -0800
IronPort-SDR: 22cWHijFnzDDIJ7M6otzmEQ/AQClMPy177/KLOXAt+4weCshkg7tzVexgMVbcyVm2KKWr179fO
 RrXXNLalOM3g==
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="400065992"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.213.195.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 16:09:57 -0800
MIME-Version: 1.0
In-Reply-To: <20210303212800.43787-1-umesh.nerlige.ramappa@intel.com>
References: <20210303212800.43787-1-umesh.nerlige.ramappa@intel.com>
From: Chris Wilson <chris.p.wilson@intel.com>
To: Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 04 Mar 2021 00:09:54 +0000
Message-ID: <161481659467.25897.2525788939236038076@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] i915/query: Correlate engine and cpu
 timestamps with better accuracy
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Umesh Nerlige Ramappa (2021-03-03 21:28:00)
> Perf measurements rely on CPU and engine timestamps to correlate
> events of interest across these time domains. Current mechanisms get
> these timestamps separately and the calculated delta between these
> timestamps lack enough accuracy.
> 
> To improve the accuracy of these time measurements to within a few us,
> add a query that returns the engine and cpu timestamps captured as
> close to each other as possible.
> 
> v2: (Tvrtko)
> - document clock reference used
> - return cpu timestamp always
> - capture cpu time just before lower dword of cs timestamp
> 
> v3: (Chris)
> - use uncore-rpm
> - use __query_cs_timestamp helper
> 
> v4: (Lionel)
> - Kernel perf subsytem allows users to specify the clock id to be used
>   in perf_event_open. This clock id is used by the perf subsystem to
>   return the appropriate cpu timestamp in perf events. Similarly, let
>   the user pass the clockid to this query so that cpu timestamp
>   corresponds to the clock id requested.
> 
> v5: (Tvrtko)
> - Use normal ktime accessors instead of fast versions
> - Add more uApi documentation
> 
> v6: (Lionel)
> - Move switch out of spinlock
> 
> v7: (Chris)
> - cs_timestamp is a misnomer, use cs_cycles instead
> - return the cs cycle frequency as well in the query
> 
> v8:
> - Add platform and engine specific checks
> 
> v9: (Lionel)
> - Return 2 cpu timestamps in the query - captured before and after the
>   register read
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_query.c | 144 ++++++++++++++++++++++++++++++
>  include/uapi/drm/i915_drm.h       |  47 ++++++++++
>  2 files changed, 191 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
> index fed337ad7b68..acca22ee6014 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -6,6 +6,8 @@
>  
>  #include <linux/nospec.h>
>  
> +#include "gt/intel_engine_pm.h"
> +#include "gt/intel_engine_user.h"
>  #include "i915_drv.h"
>  #include "i915_perf.h"
>  #include "i915_query.h"
> @@ -90,6 +92,147 @@ static int query_topology_info(struct drm_i915_private *dev_priv,
>         return total_length;
>  }
>  
> +typedef u64 (*__ktime_func_t)(void);
> +static __ktime_func_t __clock_id_to_func(clockid_t clk_id)
> +{
> +       /*
> +        * Use logic same as the perf subsystem to allow user to select the
> +        * reference clock id to be used for timestamps.
> +        */
> +       switch (clk_id) {
> +       case CLOCK_MONOTONIC:
> +               return &ktime_get_ns;
> +       case CLOCK_MONOTONIC_RAW:
> +               return &ktime_get_raw_ns;
> +       case CLOCK_REALTIME:
> +               return &ktime_get_real_ns;
> +       case CLOCK_BOOTTIME:
> +               return &ktime_get_boottime_ns;
> +       case CLOCK_TAI:
> +               return &ktime_get_clocktai_ns;
> +       default:
> +               return NULL;
> +       }
> +}
> +
> +static inline int
> +__read_timestamps(struct intel_uncore *uncore,
> +                 i915_reg_t lower_reg,
> +                 i915_reg_t upper_reg,
> +                 u64 *cs_ts,
> +                 u64 *cpu_ts,
> +                 __ktime_func_t cpu_clock)
> +{
> +       u32 upper, lower, old_upper, loop = 0;
> +
> +       upper = intel_uncore_read_fw(uncore, upper_reg);
> +       do {
> +               cpu_ts[0] = cpu_clock();
> +               lower = intel_uncore_read_fw(uncore, lower_reg);
> +               cpu_ts[1] = cpu_clock();
> +               old_upper = upper;
> +               upper = intel_uncore_read_fw(uncore, upper_reg);

Both register reads comprise the timestamp returned to userspace, so
presumably you want cpu_ts[] to wrap both.

       do {
               old_upper = upper;

               cpu_ts[0] = cpu_clock();
               lower = intel_uncore_read_fw(uncore, lower_reg);
               upper = intel_uncore_read_fw(uncore, upper_reg);
               cpu_ts[1] = cpu_clock();
       } while (upper != old_upper && loop++ < 2);
---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
