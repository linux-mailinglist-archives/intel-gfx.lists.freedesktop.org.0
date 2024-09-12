Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90593976611
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 11:54:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DCDF10E20A;
	Thu, 12 Sep 2024 09:54:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JSBM+VSz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06D9110E20A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 09:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726134844; x=1757670844;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OZ9vco+rbJAQ1o80eJ2ejfx7wZwefD1MbY4f+qoirAg=;
 b=JSBM+VSzDp9Va9gwCsL/frsZgwsOIO7Xh8eSGbAZcAQG4rIxhmPzvLdv
 ACdJ0ttRrbkOFRfU312cxdGKlaWANtoVYF5cVbrJjbSdXiRFoO871f0Yt
 6FtV+PXyNbasqD9EDoAa/0+gM6S/TN4nSFCs3rUHXiMaA6D4eds14HBsa
 bliOTGRMUrwSflQBIpHyOLgdgAptiRWBX8Wevd8nqUrYvhaHeHjJ3+lK8
 Uf9qGP1rbm2LP+bCJAptjgxlpkGQBj4Md3VwIUacaNodGS84koPiVWEIT
 HUdX/0Ahv2D2DBVO3SCF/kblW0emdsRUCkKwU7ZDYQp9uht+pau/zmRQ9 g==;
X-CSE-ConnectionGUID: FNlQoR/JRN6gaSojiN1+cg==
X-CSE-MsgGUID: ZQxDLoPiT8mqtW2HFf8PEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24855024"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="24855024"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:54:03 -0700
X-CSE-ConnectionGUID: oxu4+uaNRhqL4DEHTn1abg==
X-CSE-MsgGUID: Ma2JazHNTbud1PHwVsu8mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72465085"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.253])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 02:54:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
In-Reply-To: <20240821102349.3961986-3-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-3-arun.r.murthy@intel.com>
Date: Thu, 12 Sep 2024 12:53:57 +0300
Message-ID: <87seu5gpu2.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 21 Aug 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Upon enabling histogram an interrupt is trigerred after the generation
> of the statistics. This patch registers the histogram interrupt and
> handles the interrupt.
>
> v2: Added intel_crtc backpointer to intel_histogram struct (Jani)
>     Removed histogram_wq and instead use dev_priv->unodered_eq (Jani)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  |  6 +-
>  .../gpu/drm/i915/display/intel_histogram.c    | 80 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_histogram.h    |  3 +
>  drivers/gpu/drm/i915/i915_reg.h               |  5 +-
>  4 files changed, 89 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index afcd2af82942..0178595102bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -17,6 +17,7 @@
>  #include "intel_fdi_regs.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_gmbus.h"
> +#include "intel_histogram.h"
>  #include "intel_hotplug_irq.h"
>  #include "intel_pipe_crc_regs.h"
>  #include "intel_pmdemand.h"
> @@ -1170,6 +1171,9 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
>  			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
>  
> +		if (iir & GEN9_PIPE_HISTOGRAM_EVENT)
> +			intel_histogram_irq_handler(dev_priv, pipe);
> +
>  		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
>  		if (fault_errors)
>  			drm_err_ratelimited(&dev_priv->drm,
> @@ -1701,7 +1705,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
>  	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
> -		GEN8_PIPE_CDCLK_CRC_DONE;
> +		GEN8_PIPE_CDCLK_CRC_DONE | GEN9_PIPE_HISTOGRAM_EVENT;
>  	u32 de_pipe_enables;
>  	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
>  	u32 de_port_enables;
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 45e968e00af6..83ba826a7a89 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -19,12 +19,83 @@
>  
>  struct intel_histogram {
>  	struct drm_i915_private *i915;

Don't need this if you have crtc pointer.

> +	struct intel_crtc *crtc;
> +	struct delayed_work handle_histogram_int_work;
>  	bool enable;
>  	bool can_enable;
> -	enum pipe pipe;

Why not add crtc to begin with in patch 1?

>  	u32 bindata[HISTOGRAM_BIN_COUNT];
>  };
>  
> +static void intel_histogram_handle_int_work(struct work_struct *work)
> +{
> +	struct intel_histogram *histogram = container_of(work,
> +		struct intel_histogram, handle_histogram_int_work.work);
> +	struct drm_i915_private *i915 = histogram->i915;

struct intel_display everywhere in the series.

> +	struct intel_crtc *intel_crtc = histogram->crtc;
> +	char *histogram_event[] = {"HISTOGRAM=1", NULL};
> +	u32 dpstbin;
> +	int i, try = 0;
> +
> +	/*
> +	 * TODO: PSR to be exited while reading the Histogram data
> +	 * Set DPST_CTL Bin Reg function select to TC
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */
> +retry:
> +	intel_de_rmw(i915, DPST_CTL(intel_crtc->pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
> +	for (i = 0; i < HISTOGRAM_BIN_COUNT; i++) {
> +		dpstbin = intel_de_read(i915, DPST_BIN(intel_crtc->pipe));
> +		if (dpstbin & DPST_BIN_BUSY) {
> +			/*
> +			 * If DPST_BIN busy bit is set, then set the
> +			 * DPST_CTL bin reg index to 0 and proceed
> +			 * from beginning.
> +			 */
> +			if (try++ >= 5) {
> +				drm_err(&i915->drm,
> +					"Histogram block is busy, failed to read\n");
> +				intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> +					     DPST_GUARD_HIST_EVENT_STATUS, 1);
> +				return;
> +			}
> +			goto retry;
> +		}

The retry logic seems pretty weird here with the goto. Maybe abstract a
separate function to avoid it.


> +		histogram->bindata[i] = dpstbin & DPST_BIN_DATA_MASK;
> +		drm_dbg_atomic(&i915->drm, "Histogram[%d]=%x\n",
> +			       i, histogram->bindata[i]);

What's atomic about this? Also please consider the amount of log spew
this generates. If you need to log it, do it in a single hex dump after
everything is read.

> +	}
> +
> +	/* Notify user for Histogram rediness */
> +	if (kobject_uevent_env(&i915->drm.primary->kdev->kobj, KOBJ_CHANGE,
> +			       histogram_event))
> +		drm_err(&i915->drm, "sending HISTOGRAM event failed\n");
> +
> +	/* Enable histogram interrupt */
> +	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe), DPST_GUARD_HIST_INT_EN,
> +		     DPST_GUARD_HIST_INT_EN);
> +
> +	/* Clear histogram interrupt by setting histogram interrupt status bit*/
> +	intel_de_rmw(i915, DPST_GUARD(intel_crtc->pipe),
> +		     DPST_GUARD_HIST_EVENT_STATUS, 1);
> +}
> +
> +void intel_histogram_irq_handler(struct drm_i915_private *i915, enum pipe pipe)
> +{
> +	struct intel_crtc *intel_crtc =
> +		to_intel_crtc(drm_crtc_from_index(&i915->drm, pipe));
> +	struct intel_histogram *histogram = intel_crtc->histogram;
> +
> +	if (!histogram->enable) {
> +		drm_err(&i915->drm,
> +			"spurious interrupt, histogram not enabled\n");
> +		return;
> +	}
> +
> +	queue_delayed_work(i915->unordered_wq,
> +			   &histogram->handle_histogram_int_work, 0);
> +}
> +
>  int intel_histogram_atomic_check(struct intel_crtc *intel_crtc)
>  {
>  	struct intel_histogram *histogram = intel_crtc->histogram;
> @@ -120,6 +191,7 @@ static void intel_histogram_disable(struct intel_crtc *intel_crtc)
>  	intel_de_rmw(i915, DPST_CTL(pipe),
>  		     DPST_CTL_IE_HIST_EN, 0);
>  
> +	cancel_delayed_work(&histogram->handle_histogram_int_work);
>  	histogram->enable = false;
>  }
>  
> @@ -181,6 +253,7 @@ void intel_histogram_deinit(struct intel_crtc *intel_crtc)
>  {
>  	struct intel_histogram *histogram = intel_crtc->histogram;
>  
> +	cancel_delayed_work_sync(&histogram->handle_histogram_int_work);
>  	kfree(histogram);
>  }
>  
> @@ -196,9 +269,12 @@ int intel_histogram_init(struct intel_crtc *intel_crtc)
>  	}
>  
>  	intel_crtc->histogram = histogram;
> -	histogram->pipe = intel_crtc->pipe;
> +	histogram->crtc = intel_crtc;
>  	histogram->can_enable = false;
>  
> +	INIT_DEFERRABLE_WORK(&histogram->handle_histogram_int_work,
> +			     intel_histogram_handle_int_work);
> +
>  	histogram->i915 = i915;
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h b/drivers/gpu/drm/i915/display/intel_histogram.h
> index b25091732274..f35ea76719d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.h
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -9,6 +9,8 @@
>  #include <linux/types.h>
>  
>  struct intel_crtc;
> +struct drm_i915_private;
> +enum pipe;
>  
>  /* GLOBAL_HIST related registers */
>  #define _DPST_CTL_A					0x490C0
> @@ -70,6 +72,7 @@ enum intel_global_hist_lut {
>  };
>  
>  int intel_histogram_atomic_check(struct intel_crtc *intel_crtc);
> +void intel_histogram_irq_handler(struct drm_i915_private *i915, enum pipe pipe);
>  int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable);
>  int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data);
>  int intel_histogram_init(struct intel_crtc *intel_crtc);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 569b461022c5..f7b974691381 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1655,7 +1655,7 @@
>  #define   PIPE_HOTPLUG_INTERRUPT_ENABLE		(1UL << 26)
>  #define   PIPE_VSYNC_INTERRUPT_ENABLE		(1UL << 25)
>  #define   PIPE_DISPLAY_LINE_COMPARE_ENABLE	(1UL << 24)
> -#define   PIPE_DPST_EVENT_ENABLE		(1UL << 23)
> +#define   PIPE_HISTOGRAM_EVENT_ENABLE		(1UL << 23)
>  #define   SPRITE0_FLIP_DONE_INT_EN_VLV		(1UL << 22)
>  #define   PIPE_LEGACY_BLC_EVENT_ENABLE		(1UL << 22)
>  #define   PIPE_ODD_FIELD_INTERRUPT_ENABLE	(1UL << 21)
> @@ -1678,7 +1678,7 @@
>  #define   PIPE_HOTPLUG_INTERRUPT_STATUS		(1UL << 10)
>  #define   PIPE_VSYNC_INTERRUPT_STATUS		(1UL << 9)
>  #define   PIPE_DISPLAY_LINE_COMPARE_STATUS	(1UL << 8)
> -#define   PIPE_DPST_EVENT_STATUS		(1UL << 7)
> +#define   PIPE_HISTOGRAM_EVENT_STATUS		(1UL << 7)
>  #define   PIPE_A_PSR_STATUS_VLV			(1UL << 6)
>  #define   PIPE_LEGACY_BLC_EVENT_STATUS		(1UL << 6)
>  #define   PIPE_ODD_FIELD_INTERRUPT_STATUS	(1UL << 5)
> @@ -2516,6 +2516,7 @@
>  #define  GEN11_PIPE_PLANE7_FLIP_DONE	REG_BIT(18) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE6_FLIP_DONE	REG_BIT(17) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE5_FLIP_DONE	REG_BIT(16) /* icl+ */
> +#define  GEN9_PIPE_HISTOGRAM_EVENT	REG_BIT(12) /* skl+ */
>  #define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
>  #define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
>  #define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */

-- 
Jani Nikula, Intel
