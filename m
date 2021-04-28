Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A51D736DFF7
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 21:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 205E56E301;
	Wed, 28 Apr 2021 19:55:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com
 [IPv6:2a00:1450:4864:20::629])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA7F56E301
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 19:55:05 +0000 (UTC)
Received: by mail-ej1-x629.google.com with SMTP id r9so96413736ejj.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 12:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qLNEsIb1gIToIWGerT0gl6SKgPQbJML891dY3oAjdws=;
 b=CL2X/AjxdmFFwLCWFTDF2UvN5VNrByOVSgxYznWF8t8SyYYY8LVZKBhoauTv/P+ZAK
 MvLNh5JvErjeXuc/nYEapcMNx2NiZBprjW2awnrTbUsbuJhAu7febbzdREkEX40zkE8M
 WKVqJNT/FWiQ+XVS5Y2NnkOGlxILk5sx+9FQlaNyD0C7MTsFsLm6En9gm+Y0jQ0BA85O
 1cONPXaLp3pOR6EK5JxxzHtcnzCdCgZAHnW+Sq0NCXx0EluNjLr6uCbbxhTja/0O4yNs
 /9+tDAQIg06EMQdiMk3GC+MBqCc/p8eV9ifddr1C2h4vDFyJc0ishSHAw3S/vN4m44Z2
 QnNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qLNEsIb1gIToIWGerT0gl6SKgPQbJML891dY3oAjdws=;
 b=X4PMAlgOpSVRl6+zj3N+Pc2zOEgym8BpLE4RRufhTKClyHvCM7GmteevXThjF3s/EP
 4CewbOFNhhKX+lJlJ6wuV0xyY0IfVEgShyRpeRGNUommiAGx0UQbBUspSXBd6KeWQhlb
 cz4qhoDGFnYmmdNPzNAA9y1ugPydUTHFq7+9TYdQx3h8a3yawT3MwF/g6p8gIE1c56dJ
 015krLfy191JY+Wt8RPyG7PCtftOWC8JW1gfBp+i6MRl6UfSwljZt9eVL6wzr3v4z2TY
 HX+lsslBwrIoqalTJWIL3XyRzfT1WMPHKvmptDQRxhBmldOCtGLrhrnDdafg7R5I5PWt
 dCag==
X-Gm-Message-State: AOAM531qm13OpLUiWYJcwkHKQ54Y1bDkpagu7knQL7XKHuoZGdluxwoU
 lGznCnGpkMq3+NugAxiDR2Rh/wq4FGTBAUT3+mausw==
X-Google-Smtp-Source: ABdhPJw6k84xpBryizO1lJaCGzs13uMx1aR3GjIyjwoosjK3RDNPOgQcMZjSczjUafMt2A8m/wXcdW+K/aFJ2TWOl5k=
X-Received: by 2002:a17:906:5c52:: with SMTP id
 c18mr3065414ejr.354.1619639704169; 
 Wed, 28 Apr 2021 12:55:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210427214913.46956-1-umesh.nerlige.ramappa@intel.com>
 <20210427214913.46956-2-umesh.nerlige.ramappa@intel.com>
 <875z064x5h.fsf@intel.com>
 <CAOFGe94kk9N-MPKMF-T+5BCRiXuY7p1iQRquQx38pRQiqvazWg@mail.gmail.com>
 <c776bb7d-4d35-1e1d-18f4-020b88fdf805@intel.com>
In-Reply-To: <c776bb7d-4d35-1e1d-18f4-020b88fdf805@intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Wed, 28 Apr 2021 14:54:52 -0500
Message-ID: <CAOFGe95MKaqoGeTaFCtatR6YcysOiC2=wcYaoz72dw+KnPRXSQ@mail.gmail.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/1] i915/query: Correlate engine and cpu
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris.p.wilson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 28, 2021 at 2:50 PM Lionel Landwerlin
<lionel.g.landwerlin@intel.com> wrote:
>
> On 28/04/2021 22:24, Jason Ekstrand wrote:
>
> On Wed, Apr 28, 2021 at 3:43 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Tue, 27 Apr 2021, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com> wrote:
>
> Perf measurements rely on CPU and engine timestamps to correlate
> events of interest across these time domains. Current mechanisms get
> these timestamps separately and the calculated delta between these
> timestamps lack enough accuracy.
>
> To improve the accuracy of these time measurements to within a few us,
> add a query that returns the engine and cpu timestamps captured as
> close to each other as possible.
>
> Cc: dri-devel, Jason and Daniel for review.
>
> Thanks!
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
> v10: (Chris)
> - Use local_clock() to measure time taken to read lower dword of
>   register and return it to user.
>
> v11: (Jani)
> - IS_GEN deprecated. User GRAPHICS_VER instead.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_query.c | 145 ++++++++++++++++++++++++++++++
>  include/uapi/drm/i915_drm.h       |  48 ++++++++++
>  2 files changed, 193 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
> index fed337ad7b68..2594b93901ac 100644
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
> @@ -90,6 +92,148 @@ static int query_topology_info(struct drm_i915_private *dev_priv,
>       return total_length;
>  }
>
> +typedef u64 (*__ktime_func_t)(void);
> +static __ktime_func_t __clock_id_to_func(clockid_t clk_id)
> +{
> +     /*
> +      * Use logic same as the perf subsystem to allow user to select the
> +      * reference clock id to be used for timestamps.
> +      */
> +     switch (clk_id) {
> +     case CLOCK_MONOTONIC:
> +             return &ktime_get_ns;
> +     case CLOCK_MONOTONIC_RAW:
> +             return &ktime_get_raw_ns;
> +     case CLOCK_REALTIME:
> +             return &ktime_get_real_ns;
> +     case CLOCK_BOOTTIME:
> +             return &ktime_get_boottime_ns;
> +     case CLOCK_TAI:
> +             return &ktime_get_clocktai_ns;
> +     default:
> +             return NULL;
> +     }
> +}
> +
> +static inline int
> +__read_timestamps(struct intel_uncore *uncore,
> +               i915_reg_t lower_reg,
> +               i915_reg_t upper_reg,
> +               u64 *cs_ts,
> +               u64 *cpu_ts,
> +               __ktime_func_t cpu_clock)
> +{
> +     u32 upper, lower, old_upper, loop = 0;
> +
> +     upper = intel_uncore_read_fw(uncore, upper_reg);
> +     do {
> +             cpu_ts[1] = local_clock();
> +             cpu_ts[0] = cpu_clock();
> +             lower = intel_uncore_read_fw(uncore, lower_reg);
> +             cpu_ts[1] = local_clock() - cpu_ts[1];
> +             old_upper = upper;
> +             upper = intel_uncore_read_fw(uncore, upper_reg);
> +     } while (upper != old_upper && loop++ < 2);
> +
> +     *cs_ts = (u64)upper << 32 | lower;
> +
> +     return 0;
> +}
> +
> +static int
> +__query_cs_cycles(struct intel_engine_cs *engine,
> +               u64 *cs_ts, u64 *cpu_ts,
> +               __ktime_func_t cpu_clock)
> +{
> +     struct intel_uncore *uncore = engine->uncore;
> +     enum forcewake_domains fw_domains;
> +     u32 base = engine->mmio_base;
> +     intel_wakeref_t wakeref;
> +     int ret;
> +
> +     fw_domains = intel_uncore_forcewake_for_reg(uncore,
> +                                                 RING_TIMESTAMP(base),
> +                                                 FW_REG_READ);
> +
> +     with_intel_runtime_pm(uncore->rpm, wakeref) {
> +             spin_lock_irq(&uncore->lock);
> +             intel_uncore_forcewake_get__locked(uncore, fw_domains);
> +
> +             ret = __read_timestamps(uncore,
> +                                     RING_TIMESTAMP(base),
> +                                     RING_TIMESTAMP_UDW(base),
> +                                     cs_ts,
> +                                     cpu_ts,
> +                                     cpu_clock);
> +
> +             intel_uncore_forcewake_put__locked(uncore, fw_domains);
> +             spin_unlock_irq(&uncore->lock);
> +     }
> +
> +     return ret;
> +}
> +
> +static int
> +query_cs_cycles(struct drm_i915_private *i915,
> +             struct drm_i915_query_item *query_item)
> +{
> +     struct drm_i915_query_cs_cycles __user *query_ptr;
> +     struct drm_i915_query_cs_cycles query;
> +     struct intel_engine_cs *engine;
> +     __ktime_func_t cpu_clock;
> +     int ret;
> +
> +     if (GRAPHICS_VER(i915) < 6)
> +             return -ENODEV;
> +
> +     query_ptr = u64_to_user_ptr(query_item->data_ptr);
> +     ret = copy_query_item(&query, sizeof(query), sizeof(query), query_item);
> +     if (ret != 0)
> +             return ret;
> +
> +     if (query.flags)
> +             return -EINVAL;
> +
> +     if (query.rsvd)
> +             return -EINVAL;
> +
> +     cpu_clock = __clock_id_to_func(query.clockid);
> +     if (!cpu_clock)
> +             return -EINVAL;
> +
> +     engine = intel_engine_lookup_user(i915,
> +                                       query.engine.engine_class,
> +                                       query.engine.engine_instance);
> +     if (!engine)
> +             return -EINVAL;
> +
> +     if (GRAPHICS_VER(i915) == 6 &&
> +         query.engine.engine_class != I915_ENGINE_CLASS_RENDER)
> +             return -ENODEV;
> +
> +     query.cs_frequency = engine->gt->clock_frequency;
> +     ret = __query_cs_cycles(engine,
> +                             &query.cs_cycles,
> +                             query.cpu_timestamp,
> +                             cpu_clock);
> +     if (ret)
> +             return ret;
> +
> +     if (put_user(query.cs_frequency, &query_ptr->cs_frequency))
> +             return -EFAULT;
> +
> +     if (put_user(query.cpu_timestamp[0], &query_ptr->cpu_timestamp[0]))
> +             return -EFAULT;
> +
> +     if (put_user(query.cpu_timestamp[1], &query_ptr->cpu_timestamp[1]))
> +             return -EFAULT;
> +
> +     if (put_user(query.cs_cycles, &query_ptr->cs_cycles))
> +             return -EFAULT;
> +
> +     return sizeof(query);
> +}
> +
>  static int
>  query_engine_info(struct drm_i915_private *i915,
>                 struct drm_i915_query_item *query_item)
> @@ -424,6 +568,7 @@ static int (* const i915_query_funcs[])(struct drm_i915_private *dev_priv,
>       query_topology_info,
>       query_engine_info,
>       query_perf_config,
> +     query_cs_cycles,
>  };
>
>  int i915_query_ioctl(struct drm_device *dev, void *data, struct drm_file *file)
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 6a34243a7646..08b00f1709b5 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -2230,6 +2230,10 @@ struct drm_i915_query_item {
>  #define DRM_I915_QUERY_TOPOLOGY_INFO    1
>  #define DRM_I915_QUERY_ENGINE_INFO   2
>  #define DRM_I915_QUERY_PERF_CONFIG      3
> +     /**
> +      * Query Command Streamer timestamp register.
> +      */
> +#define DRM_I915_QUERY_CS_CYCLES     4
>  /* Must be kept compact -- no holes and well documented */
>
>       /**
> @@ -2397,6 +2401,50 @@ struct drm_i915_engine_info {
>       __u64 rsvd1[4];
>  };
>
> +/**
> + * struct drm_i915_query_cs_cycles
> + *
> + * The query returns the command streamer cycles and the frequency that can be
> + * used to calculate the command streamer timestamp. In addition the query
> + * returns a set of cpu timestamps that indicate when the command streamer cycle
> + * count was captured.
> + */
> +struct drm_i915_query_cs_cycles {
> +     /** Engine for which command streamer cycles is queried. */
> +     struct i915_engine_class_instance engine;
>
> Why is this per-engine?  Do we actually expect it to change between
> engines?
>
>
> Each engine has its own timestamp register.
>
>
>   If so, we may have a problem because Vulkan expects a
> unified timestamp domain for all command streamer timestamp queries.
>
>
> I don't think it does : "
>
> Timestamps may only be meaningfully compared if they are written by commands submitted to the same queue.

Yes but vkGetCalibratedTimestampsEXT() doesn't take a queue or even a
queue family.  Also, VkPhysicalDeviceLimits::timestampPeriod gives a
single timestampPeriod for all queues.  It's possible that Vulkan
messed up real bad there but I thought we did a HW survey at the time
and determined that it was ok.

--Jason


> " [1]
>
>
> [1] : https://www.khronos.org/registry/vulkan/specs/1.2-extensions/man/html/vkCmdWriteTimestamp.html
>
>
> -Lionel
>
>
>
> --Jason
>
>
> +     /** Must be zero. */
> +     __u32 flags;
> +
> +     /**
> +      * Command streamer cycles as read from the command streamer
> +      * register at 0x358 offset.
> +      */
> +     __u64 cs_cycles;
> +
> +     /** Frequency of the cs cycles in Hz. */
> +     __u64 cs_frequency;
> +
> +     /**
> +      * CPU timestamps in ns. cpu_timestamp[0] is captured before reading the
> +      * cs_cycles register using the reference clockid set by the user.
> +      * cpu_timestamp[1] is the time taken in ns to read the lower dword of
> +      * the cs_cycles register.
> +      */
> +     __u64 cpu_timestamp[2];
> +
> +     /**
> +      * Reference clock id for CPU timestamp. For definition, see
> +      * clock_gettime(2) and perf_event_open(2). Supported clock ids are
> +      * CLOCK_MONOTONIC, CLOCK_MONOTONIC_RAW, CLOCK_REALTIME, CLOCK_BOOTTIME,
> +      * CLOCK_TAI.
> +      */
> +     __s32 clockid;
> +
> +     /** Must be zero. */
> +     __u32 rsvd;
> +};
> +
>  /**
>   * struct drm_i915_query_engine_info
>   *
>
> --
> Jani Nikula, Intel Open Source Graphics Center
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
