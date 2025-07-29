Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CFFB14B76
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 11:39:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA2510E021;
	Tue, 29 Jul 2025 09:39:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TRZRQJYH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3176210E021;
 Tue, 29 Jul 2025 09:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753781982; x=1785317982;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ocuxVHVNAasidzh1XVZd+sxnZ7tamc1CcfKFrWtBkV8=;
 b=TRZRQJYHe3ZENxBAT+FvcK0+tZfvta/EfPucOBYrh/rjGLn006JcmRZT
 oUfuYPkwuEEgIGL+jppBcUsrNIvUpPn9LPAZWYZ1Ngp8nOOZ2fvkYmki8
 yyNb7C1eK2L4YpLrVpwd1rNkE1z2m6Dh6ynxYjcipI/e9zjcdMXZngzoE
 YWwqAVgMpiC7avE+z9lVOOk8dlHjGfq7KfAr8G4Uu6O2pPXB8XPktna41
 HPY0NvBoVrGu/24eA+DMKfwChY70O8dk+mbbWdk3+3lvBBebVq9a86Kgq
 ZQvyj80DtxsvcnHV39pV0oH6Xnc6LgzvpGYwUtHcPEZuDqNn0p12BmLNY A==;
X-CSE-ConnectionGUID: 2DD+k6axRlyHKKzmIrDh5A==
X-CSE-MsgGUID: 83ZwEhEmQVa0YgI5enEtMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="67480764"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="67480764"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:39:42 -0700
X-CSE-ConnectionGUID: S/9uYjOkQteom6RDOylOoA==
X-CSE-MsgGUID: vQjuGYpbSzOIYnuQ8IHzQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="167957114"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 02:39:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, imre.deak@intel.com
Subject: Re: [PATCH v2] drm/xe/display: Block hpd during suspend
In-Reply-To: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
Date: Tue, 29 Jul 2025 12:39:36 +0300
Message-ID: <bfbe5a11fe8bf79db6ca0bb08c525e4951dc4de0@intel.com>
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

On Wed, 23 Jul 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> It has been observed that during `xe_display_pm_suspend()` execution,
> an HPD interrupt can still be triggered, resulting in `dig_port_work`
> being scheduled. The issue arises when this work executes after
> `xe_display_pm_suspend_late()`, by which time the display is fully
> suspended.
>
> This can lead to errors such as "DC state mismatch", as the dig_port
> work accesses display resources that are no longer available or
> powered.
>
> To address this, introduce  'intel_encoder_block_all_hpds' and
> 'intel_encoder_unblock_all_hpds' functions, which iterate over all
> encoders and block/unblock HPD respectively.

Please do not add anything xe specific to the display
init/uninit/suspend/resume sequences. All of this needs to move to
common display code under i915/display, and be shared between drivers.

BR,
Jani.

>
> These are used to:
> - Block HPD IRQs before calling 'intel_hpd_cancel_work' in suspend
>   and shutdown
> - Unblock HPD IRQs after 'intel_hpd_init' in resume
>
> This will prevent 'dig_port_work' being scheduled during display
> suspend.
>
> Continuation of previous patch discussion:
> https://patchwork.freedesktop.org/patch/663964/
>
> Changes in v2:
>  - Add 'intel_encoder_block_all_hpds' to 'xe_display_pm_shutdown'
>  - Add 'intel_hpd_cancel_work' to 'xe_display_fini_early' to cancel
>    any HPD pending work at late driver removal
>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_encoder.c | 23 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_encoder.h |  3 +++
>  drivers/gpu/drm/i915/display/intel_hotplug.c |  2 --
>  drivers/gpu/drm/xe/display/xe_display.c      |  6 +++++
>  4 files changed, 32 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
> index 0b7bd26f4339..4e2b77b87678 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.c
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.c
> @@ -8,6 +8,7 @@
>  #include "intel_display_core.h"
>  #include "intel_display_types.h"
>  #include "intel_encoder.h"
> +#include "intel_hotplug.h"
>  
>  static void intel_encoder_link_check_work_fn(struct work_struct *work)
>  {
> @@ -37,6 +38,28 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
>  			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
>  }
>  
> +void intel_encoder_unblock_all_hpds(struct intel_display *display)
> +{
> +	struct intel_encoder *encoder;
> +
> +	if (!HAS_DISPLAY(display))
> +		return;
> +
> +	for_each_intel_encoder(display->drm, encoder)
> +		intel_hpd_unblock(encoder);
> +}
> +
> +void intel_encoder_block_all_hpds(struct intel_display *display)
> +{
> +	struct intel_encoder *encoder;
> +
> +	if (!HAS_DISPLAY(display))
> +		return;
> +
> +	for_each_intel_encoder(display->drm, encoder)
> +		intel_hpd_block(encoder);
> +}
> +
>  void intel_encoder_suspend_all(struct intel_display *display)
>  {
>  	struct intel_encoder *encoder;
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
> index 3fa5589f0b1c..e1d3aeab7c00 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.h
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.h
> @@ -17,4 +17,7 @@ void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
>  void intel_encoder_suspend_all(struct intel_display *display);
>  void intel_encoder_shutdown_all(struct intel_display *display);
>  
> +void intel_encoder_block_all_hpds(struct intel_display *display);
> +void intel_encoder_unblock_all_hpds(struct intel_display *display);
> +
>  #endif /* __INTEL_ENCODER_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 265aa97fcc75..c69b535497bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -971,8 +971,6 @@ void intel_hpd_cancel_work(struct intel_display *display)
>  
>  	spin_lock_irq(&display->irq.lock);
>  
> -	drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
> -
>  	display->hotplug.long_hpd_pin_mask = 0;
>  	display->hotplug.short_hpd_pin_mask = 0;
>  	display->hotplug.event_bits = 0;
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index e2e0771cf274..9e984a045059 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
>  	if (!xe->info.probe_display)
>  		return;
>  
> +	intel_hpd_cancel_work(display);
>  	intel_display_driver_remove_nogem(display);
>  	intel_display_driver_remove_noirq(display);
>  	intel_opregion_cleanup(display);
> @@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  
>  	xe_display_flush_cleanup_work(xe);
>  
> +	intel_encoder_block_all_hpds(display);
> +
>  	intel_hpd_cancel_work(display);
>  
>  	if (has_display(xe)) {
> @@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>  	}
>  
>  	xe_display_flush_cleanup_work(xe);
> +	intel_encoder_block_all_hpds(display);
>  	intel_dp_mst_suspend(display);
>  	intel_hpd_cancel_work(display);
>  
> @@ -471,6 +475,8 @@ void xe_display_pm_resume(struct xe_device *xe)
>  
>  	intel_hpd_init(display);
>  
> +	intel_encoder_unblock_all_hpds(display);
> +
>  	if (has_display(xe)) {
>  		intel_display_driver_resume(display);
>  		drm_kms_helper_poll_enable(&xe->drm);

-- 
Jani Nikula, Intel
