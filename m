Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808E194A499
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 11:42:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E90D10E4BC;
	Wed,  7 Aug 2024 09:42:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WZVVDJLW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07BA010E4C5
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 09:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723023738; x=1754559738;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=/fl+aXg8YsLSqyOJ/66q20tm/61rtEQxKEd1ALy+pwU=;
 b=WZVVDJLWvFsO2NgFjjrcu1zayMBik2C15NXmajR5I61XUJiQFpoYHmLQ
 Ly9tl570kocNvf3Z744Lv2iZFpbKcgzd3fpHrefKAAJ0+3Xq7CtB32gOf
 r/jrpMaAmxp9fsGMLuoRTth/4Vzr6ZEwsmJfLEBBcdhWzH12Bziuoe0At
 vf3UGTppHlDn/EExliFYMP91/yp2+8KfaZly56PAuSj8kyx2LuAHTE2jr
 lFs/lHkLWKILeNnqwmw89opbvsWKZen73FGVZNvX3W8s6LQXIs6rDEb9Z
 E0aHIzHK0FZvBvEBFMRSrO7pa9+/IXtYv0XTWyXVOVD7blnvjh9omXvzD Q==;
X-CSE-ConnectionGUID: S8BR8RJ9S52vq0ZirwAipw==
X-CSE-MsgGUID: DTSYEPOtS1uqr9RvrTSgyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="21055987"
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="21055987"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 02:42:15 -0700
X-CSE-ConnectionGUID: wmEhvKtRS+6/Cnd8FxaqFw==
X-CSE-MsgGUID: 4JonowU4SYeHSBo04AftrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,269,1716274800"; d="scan'208";a="57026728"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.85])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 02:42:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH 2/5] drm/i915/display: histogram interrupt handling
In-Reply-To: <20240705095551.1244154-3-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240705095551.1244154-1-arun.r.murthy@intel.com>
 <20240705095551.1244154-3-arun.r.murthy@intel.com>
Date: Wed, 07 Aug 2024 12:42:09 +0300
Message-ID: <87zfpo4qku.fsf@intel.com>
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

On Fri, 05 Jul 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Upon enabling histogram an interrupt is trigerred after the generation
> of the statistics. This patch registers the histogram interrupt and
> handles the interrupt.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  |  6 +-
>  .../gpu/drm/i915/display/intel_histogram.c    | 93 +++++++++++++++++++
>  .../gpu/drm/i915/display/intel_histogram.h    |  3 +
>  drivers/gpu/drm/i915/i915_reg.h               |  5 +-
>  4 files changed, 104 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 5219ba295c74..42fa2226b69e 100644
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
> @@ -1155,6 +1156,9 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
>  			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
>  
> +		if (iir & GEN9_PIPE_HISTOGRAM_EVENT)
> +			intel_histogram_irq_handler(dev_priv, pipe);
> +
>  		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
>  		if (fault_errors)
>  			drm_err_ratelimited(&dev_priv->drm,
> @@ -1683,7 +1687,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
>  	u32 de_pipe_masked = gen8_de_pipe_fault_mask(dev_priv) |
> -		GEN8_PIPE_CDCLK_CRC_DONE;
> +		GEN8_PIPE_CDCLK_CRC_DONE | GEN9_PIPE_HISTOGRAM_EVENT;
>  	u32 de_pipe_enables;
>  	u32 de_port_masked = gen8_de_port_aux_mask(dev_priv);
>  	u32 de_port_enables;
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c b/drivers/gpu/drm/i915/display/intel_histogram.c
> index 1a603445fc29..8fa3bc74e52b 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> @@ -11,6 +11,85 @@
>  #include "intel_de.h"
>  #include "intel_histogram.h"
>  
> +static void intel_histogram_handle_int_work(struct work_struct *work)
> +{
> +	struct intel_histogram *histogram = container_of(work,
> +		struct intel_histogram, handle_histogram_int_work.work);
> +	struct drm_i915_private *i915 = histogram->i915;
> +	struct intel_crtc *intel_crtc =
> +		to_intel_crtc(drm_crtc_from_index(&i915->drm, histogram->pipe));

You could just store the intel_crtc backpointer to histogram instead.

> +	char *histogram_event[] = {"HISTOGRAM=1", NULL};
> +	u32 dpstbin;
> +	int i, try = 0;
> +
> +	/*
> +	 * TODO: PSR to be exited while reading the Histogram data
> +	 * Set DPST_CTL Bin Reg function select to TC
> +	 * Set DPST_CTL Bin Register Index to 0
> +	 */
> +	intel_de_rmw(i915, DPST_CTL(histogram->pipe),
> +		     DPST_CTL_BIN_REG_FUNC_SEL | DPST_CTL_BIN_REG_MASK, 0);
> +
> +	for (i = 0; i < HISTOGRAM_BIN_COUNT; i++) {
> +		dpstbin = intel_de_read(i915, DPST_BIN(histogram->pipe));
> +		if (dpstbin & DPST_BIN_BUSY) {
> +			/*
> +			 * If DPST_BIN busy bit is set, then set the
> +			 * DPST_CTL bin reg index to 0 and proceed
> +			 * from beginning.
> +			 */
> +			intel_de_rmw(i915, DPST_CTL(histogram->pipe),
> +				     DPST_CTL_BIN_REG_MASK, 0);
> +			i = 0;

Please don't mess with the loop variables within the loop. It makes hard
to see what's really going on.

In this case, this becomes an infinite loop that you only break out by
getting DPST_BIN_BUSY six times, and you only get out of here by
returning.

> +			if (try++ == 5) {
> +				drm_err(&i915->drm,
> +					"Histogram block is busy, failed to read\n");
> +				intel_de_rmw(i915, DPST_GUARD(histogram->pipe),
> +					     DPST_GUARD_HIST_EVENT_STATUS, 1);
> +				return;
> +			}
> +		}
> +		histogram->bindata[i] = dpstbin & DPST_BIN_DATA_MASK;
> +		drm_dbg_atomic(&i915->drm, "Histogram[%d]=%x\n",
> +			       i, histogram->bindata[i]);
> +	}
> +
> +	/* Notify user for Histogram rediness */
> +	if (kobject_uevent_env(&i915->drm.primary->kdev->kobj, KOBJ_CHANGE,
> +			       histogram_event))
> +		drm_err(&i915->drm, "sending HISTOGRAM event failed\n");
> +
> +	/* Enable histogram interrupt */
> +	intel_de_rmw(i915, DPST_GUARD(histogram->pipe), DPST_GUARD_HIST_INT_EN,
> +		     DPST_GUARD_HIST_INT_EN);
> +
> +	/* Clear histogram interrupt by setting histogram interrupt status bit*/
> +	intel_de_rmw(i915, DPST_GUARD(histogram->pipe),
> +		     DPST_GUARD_HIST_EVENT_STATUS, 1);
> +
> +	drm_property_replace_global_blob(&i915->drm,
> +			&intel_crtc->config->histogram,
> +			sizeof(histogram->bindata),
> +			histogram->bindata, &intel_crtc->base.base,
> +			intel_crtc->histogram_property);

So you first notify and then replace the property, creating a race?

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
> +	queue_delayed_work(histogram->wq,
> +			   &histogram->handle_histogram_int_work, 0);
> +}
> +
>  int intel_histogram_can_enable(struct intel_crtc *intel_crtc)
>  {
>  	struct intel_histogram *histogram = intel_crtc->histogram;
> @@ -102,6 +181,7 @@ static void intel_histogram_disable(struct intel_crtc *intel_crtc)
>  	intel_de_rmw(i915, DPST_CTL(pipe),
>  		     DPST_CTL_IE_HIST_EN, 0);
>  
> +	cancel_delayed_work(&histogram->handle_histogram_int_work);
>  	histogram->enable = false;
>  }
>  
> @@ -160,6 +240,8 @@ void intel_histogram_deinit(struct intel_crtc *intel_crtc)
>  {
>  	struct intel_histogram *histogram = intel_crtc->histogram;
>  
> +	cancel_delayed_work(&histogram->handle_histogram_int_work);

Probably want sync.

> +	destroy_workqueue(histogram->wq);
>  	kfree(histogram);
>  }
>  
> @@ -180,6 +262,17 @@ int intel_histogram_init(struct intel_crtc *intel_crtc)
>  	intel_crtc->histogram = histogram;
>  	histogram->pipe = intel_crtc->pipe;
>  	histogram->can_enable = false;
> +	histogram->wq = alloc_ordered_workqueue("histogram_wq",
> +						WQ_MEM_RECLAIM);

Please don't add new workqueues, we have too many.

> +	if (!histogram->wq) {
> +		drm_err(&i915->drm,
> +			"failed to create work queue\n");
> +		kfree(histogram);
> +		return -ENOMEM;
> +	}
> +
> +	INIT_DEFERRABLE_WORK(&histogram->handle_histogram_int_work,
> +			     intel_histogram_handle_int_work);
>  
>  	histogram->i915 = i915;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_histogram.h b/drivers/gpu/drm/i915/display/intel_histogram.h
> index 632116c52882..f07683dde005 100644
> --- a/drivers/gpu/drm/i915/display/intel_histogram.h
> +++ b/drivers/gpu/drm/i915/display/intel_histogram.h
> @@ -76,6 +76,8 @@ enum intel_global_hist_lut {
>  
>  struct intel_histogram {
>  	struct drm_i915_private *i915;
> +	struct workqueue_struct *wq;
> +	struct delayed_work handle_histogram_int_work;
>  	bool enable;
>  	bool can_enable;
>  	enum pipe pipe;
> @@ -83,6 +85,7 @@ struct intel_histogram {
>  };
>  
>  int intel_histogram_can_enable(struct intel_crtc *intel_crtc);
> +void intel_histogram_irq_handler(struct drm_i915_private *i915, enum pipe pipe);
>  int intel_histogram_update(struct intel_crtc *intel_crtc, bool enable);
>  int intel_histogram_set_iet_lut(struct intel_crtc *intel_crtc, u32 *data);
>  int intel_histogram_init(struct intel_crtc *intel_crtc);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 0e3d79227e3c..185d4b66cbb6 100644
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
> @@ -2515,6 +2515,7 @@
>  #define  GEN11_PIPE_PLANE7_FLIP_DONE	REG_BIT(18) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE6_FLIP_DONE	REG_BIT(17) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE5_FLIP_DONE	REG_BIT(16) /* icl+ */
> +#define  GEN9_PIPE_HISTOGRAM_EVENT	REG_BIT(12) /* skl+ */
>  #define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
>  #define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
>  #define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */

-- 
Jani Nikula, Intel
