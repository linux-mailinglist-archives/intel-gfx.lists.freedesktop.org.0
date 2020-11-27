Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BFD2C6326
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 11:36:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B2C6EB8F;
	Fri, 27 Nov 2020 10:36:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09CAC6EB8F
 for <Intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 10:36:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23130169-1500050 for multiple; Fri, 27 Nov 2020 10:36:20 +0000
MIME-Version: 1.0
In-Reply-To: <20201127100109.1968571-1-tvrtko.ursulin@linux.intel.com>
References: <20201126164703.1578226-1-tvrtko.ursulin@linux.intel.com>
 <20201127100109.1968571-1-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Fri, 27 Nov 2020 10:36:20 +0000
Message-ID: <160647338038.5755.10632872150961246118@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/pmu: Deprecate I915_PMU_LAST
 and optimize state tracking
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

Quoting Tvrtko Ursulin (2020-11-27 10:01:09)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Adding any kinds of "last" abi markers is usually a mistake which I
> repeated when implementing the PMU because it felt convenient at the time.
> 
> This patch marks I915_PMU_LAST as deprecated and stops the internal
> implementation using it for sizing the event status bitmask and array.
> 
> New way of sizing the fields is a bit less elegant, but it omits reserving
> slots for tracking events we are not interested in, and as such saves some
> runtime space. Adding sampling events is likely to be a special event and
> the new plumbing needed will be easily detected in testing. Existing
> asserts against the bitfield and array sizes are keeping the code safe.
> 
> First event which gets the new treatment in this new scheme are the
> interrupts - which neither needs any tracking in i915 pmu nor needs
> waking up the GPU to read it.
> 
> v2:
>  * Streamline helper names. (Chris)
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 80 ++++++++++++++++++++++++---------
>  drivers/gpu/drm/i915/i915_pmu.h | 35 ++++++++++-----
>  include/uapi/drm/i915_drm.h     |  2 +-
>  3 files changed, 83 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index cd786ad12be7..06dc63bf84d7 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -27,8 +27,6 @@
>          BIT(I915_SAMPLE_WAIT) | \
>          BIT(I915_SAMPLE_SEMA))
>  
> -#define ENGINE_SAMPLE_BITS (1 << I915_PMU_SAMPLE_BITS)
> -
>  static cpumask_t i915_pmu_cpumask;
>  static unsigned int i915_pmu_target_cpu = -1;
>  
> @@ -57,17 +55,38 @@ static bool is_engine_config(u64 config)
>         return config < __I915_PMU_OTHER(0);
>  }
>  
> -static unsigned int config_enabled_bit(u64 config)
> +static unsigned int other_bit(const u64 config)
> +{
> +       unsigned int val;
> +
> +       switch (config) {
> +       case I915_PMU_ACTUAL_FREQUENCY:
> +               val =  __I915_PMU_ACTUAL_FREQUENCY_ENABLED;
> +               break;
> +       case I915_PMU_REQUESTED_FREQUENCY:
> +               val = __I915_PMU_REQUESTED_FREQUENCY_ENABLED;
> +               break;
> +       case I915_PMU_RC6_RESIDENCY:
> +               val = __I915_PMU_RC6_RESIDENCY_ENABLED;
> +               break;
> +       default:

Should we explicitly list the untracked events?

At least we should put a comment here to remind ourselves what takes
the default path.

/* Anything that doesn't require event tracking can be ignored */

> +               return -1;
> +       }
> +
> +       return I915_ENGINE_SAMPLE_COUNT + val;
> +}
> +
> +static unsigned int config_bit(const u64 config)
>  {
>         if (is_engine_config(config))
>                 return engine_config_sample(config);
>         else
> -               return ENGINE_SAMPLE_BITS + (config - __I915_PMU_OTHER(0));
> +               return other_bit(config);
>  }

Thanks, that reads so much more clearly to me, and complements it use
well.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
