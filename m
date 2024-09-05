Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDE996E1B8
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 20:16:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6D6510E167;
	Thu,  5 Sep 2024 18:16:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bUHZhnrx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA25F10E116;
 Thu,  5 Sep 2024 18:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725560171; x=1757096171;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=hPrLiPIB3VsMc/vh3EbBIOPu0Xumo5G9sqxncdrf9jE=;
 b=bUHZhnrxOE2VhHNgVBHBh2xPny45ygylERM0t1nW3QBaUcrwCVdGBeOp
 uVHLy2G0+yls9f7BPf7HI65dkyrNlV23g2NhehSbgIcr9wuZL2R9AJl9R
 7Vv0AlyY62LeXvAhfd320luyi72pEdwUmVx856BBRoMfUWtWq1gnYf660
 CYstc1IcmQx8NSzjR3dltthkFXZ8B3e9Rd/6MbjQE9EyEsvBj92FNOWtT
 Nt2c+KcwxTfMwiwAzFL0ko4quFTdIfciuoPkRKizVsxygE0oqdSJ2JGSK
 Gzz8nMEPoaHr/vOJvcwz12FkFT9keTu7SgCZEFZ2+qrc9OcN/0ZO6olLd A==;
X-CSE-ConnectionGUID: gmm2qbs6Ro6QX9G3GQcVlw==
X-CSE-MsgGUID: o+JkGnLWRBu0790Kv3O+8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="41778279"
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="41778279"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 11:16:08 -0700
X-CSE-ConnectionGUID: y9koa3zeQAS9rtvn4FLTXg==
X-CSE-MsgGUID: +49xxhk8SA6Bcdwwmc0V2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,205,1719903600"; d="scan'208";a="65745227"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.216])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 11:16:04 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [RFC] drm/xe/display: Merge xe's display info probe and i915
 HAS_DISPLAY checks
In-Reply-To: <Ztm1yy9JxTUgQMyd@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240904173713.26891-1-rodrigo.vivi@intel.com>
 <ituy73yzuwpjxjdwm53a6etoanj3y7brwk5ag57bhw4hlhf6xs@hs6iaclhkvt7>
 <Ztm1yy9JxTUgQMyd@intel.com>
Date: Thu, 05 Sep 2024 21:16:00 +0300
Message-ID: <877cbqotjz.fsf@intel.com>
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

On Thu, 05 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Thu, Sep 05, 2024 at 08:29:22AM -0500, Lucas De Marchi wrote:
>> On Wed, Sep 04, 2024 at 01:37:13PM GMT, Rodrigo Vivi wrote:
>> > Instead of having multiple checks and the has_display in the middle
>> > of the functions, only execute the Xe display functions if
>> > Xe probed display and pipe_masks still have something valid
>> > after i915's runtime init.
>> > 
>> > Cc: Jani Nikula <jani.nikula@intel.com>
>> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> > ---
>> > drivers/gpu/drm/xe/display/xe_display.c | 65 +++++++++++++------------
>> > 1 file changed, 35 insertions(+), 30 deletions(-)
>> > 
>> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>> > index 75736faf2a80..1e248c7aaff0 100644
>> > --- a/drivers/gpu/drm/xe/display/xe_display.c
>> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> > @@ -13,7 +13,6 @@
>> > #include <uapi/drm/xe_drm.h>
>> > 
>> > #include "soc/intel_dram.h"
>> > -#include "i915_drv.h"		/* FIXME: HAS_DISPLAY() depends on this */
>> > #include "intel_acpi.h"
>> > #include "intel_audio.h"
>> > #include "intel_bw.h"
>> > @@ -34,7 +33,12 @@
>> > 
>> > static bool has_display(struct xe_device *xe)
>> 
>> I think has_display is already conflated enough. From the xe side I
>> wouldn't call this has_display if it means something else than "the
>> hardware is present or we know how to drive it". That is the meaning of
>> this flag in drivers/gpu/drm/xe/xe_pci.c and this function here later
>> changed to mean something else :-/
>> 
>> > {
>> > -	return HAS_DISPLAY(xe);
>> > +	/*
>> > +	 * Xe has probed and configured the display,
>> > +	 * and some pipes remains enable after
>> > +	 * __intel_display_device_info_runtime_init()
>> > +	 */
>> > +	return xe->info.probe_display && HAS_DISPLAY(&xe->display);
>> 
>> I'm not following the motivation here... Shouldn't we remove the
>> HAS_DISPLAY() from here and rather change the display side to do a
>> return-early?
>> 
>> if probe_display == 1, from the xe perspective we probed display, we
>> shouldn't be looking at the internal state of display to know what to do
>> on this side of the fence.
>
> Right, but so far we have other if (has_display()) in the middle of our code.
> Like Jani reminded me yesterday, we still need to check the state of
> pipe_mask after runtime init function before many calls.
>
> So, the quick goal here was to just consolidate the checks instead of
> the current sprinkled 'if (has_display()) calls that we have around.
>
> So we can proceed with a further clean-up and split on the display
> calls and then move them out to intel_display and minimize this
> file as much as we can...
>
> https://lore.kernel.org/intel-xe/Zth56C3s8lPQMEBB@intel.com
>
> But another question that I'm making myself since yesterday is:
> Shouldn't we simply kill the Xe's display modprobe option at this point?

That's what my first reaction to the whole parameter was. But apparently
it's useful for platform enabling. I think the rename helped in
clarifying what it means.

BR,
Jani.

>
>> 
>> Lucas De Marchi
>> 
>> > }
>> > 
>> > /**
>> > @@ -104,7 +108,7 @@ static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
>> > {
>> > 	struct xe_device *xe = to_xe_device(dev);
>> > 
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	intel_power_domains_cleanup(xe);
>> > @@ -112,7 +116,7 @@ static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
>> > 
>> > int xe_display_init_nommio(struct xe_device *xe)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return 0;
>> > 
>> > 	/* Fake uncore lock */
>> > @@ -129,7 +133,7 @@ static void xe_display_fini_noirq(void *arg)
>> > 	struct xe_device *xe = arg;
>> > 	struct intel_display *display = &xe->display;
>> > 
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	intel_display_driver_remove_noirq(xe);
>> > @@ -141,7 +145,7 @@ int xe_display_init_noirq(struct xe_device *xe)
>> > 	struct intel_display *display = &xe->display;
>> > 	int err;
>> > 
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return 0;
>> > 
>> > 	intel_display_driver_early_probe(xe);
>> > @@ -172,7 +176,7 @@ static void xe_display_fini_noaccel(void *arg)
>> > {
>> > 	struct xe_device *xe = arg;
>> > 
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	intel_display_driver_remove_nogem(xe);
>> > @@ -182,7 +186,7 @@ int xe_display_init_noaccel(struct xe_device *xe)
>> > {
>> > 	int err;
>> > 
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return 0;
>> > 
>> > 	err = intel_display_driver_probe_nogem(xe);
>> > @@ -194,7 +198,7 @@ int xe_display_init_noaccel(struct xe_device *xe)
>> > 
>> > int xe_display_init(struct xe_device *xe)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return 0;
>> > 
>> > 	return intel_display_driver_probe(xe);
>> > @@ -202,7 +206,7 @@ int xe_display_init(struct xe_device *xe)
>> > 
>> > void xe_display_fini(struct xe_device *xe)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	intel_hpd_poll_fini(xe);
>> > @@ -213,7 +217,7 @@ void xe_display_fini(struct xe_device *xe)
>> > 
>> > void xe_display_register(struct xe_device *xe)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	intel_display_driver_register(xe);
>> > @@ -223,7 +227,7 @@ void xe_display_register(struct xe_device *xe)
>> > 
>> > void xe_display_unregister(struct xe_device *xe)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	intel_unregister_dsm_handler();
>> > @@ -233,7 +237,7 @@ void xe_display_unregister(struct xe_device *xe)
>> > 
>> > void xe_display_driver_remove(struct xe_device *xe)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	intel_display_driver_remove(xe);
>> > @@ -243,7 +247,7 @@ void xe_display_driver_remove(struct xe_device *xe)
>> > 
>> > void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	if (master_ctl & DISPLAY_IRQ)
>> > @@ -254,7 +258,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
>> > {
>> > 	struct intel_display *display = &xe->display;
>> > 
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	if (gu_misc_iir & GU_MISC_GSE)
>> > @@ -263,7 +267,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
>> > 
>> > void xe_display_irq_reset(struct xe_device *xe)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	gen11_display_irq_reset(xe);
>> > @@ -271,7 +275,7 @@ void xe_display_irq_reset(struct xe_device *xe)
>> > 
>> > void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	if (gt->info.id == XE_GT0)
>> > @@ -311,7 +315,7 @@ static void xe_display_flush_cleanup_work(struct xe_device *xe)
>> > /* TODO: System and runtime suspend/resume sequences will be sanitized as a follow-up. */
>> > void xe_display_pm_runtime_suspend(struct xe_device *xe)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	if (xe->d3cold.allowed)
>> > @@ -324,7 +328,8 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>> > {
>> > 	struct intel_display *display = &xe->display;
>> > 	bool s2idle = suspend_to_idle();
>> > -	if (!xe->info.probe_display)
>> > +
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	/*
>> > @@ -333,7 +338,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>> > 	 */
>> > 	intel_power_domains_disable(xe);
>> > 	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
>> > -	if (!runtime && has_display(xe)) {
>> > +	if (!runtime) {
>> > 		drm_kms_helper_poll_disable(&xe->drm);
>> > 		intel_display_driver_disable_user_access(xe);
>> > 		intel_display_driver_suspend(xe);
>> > @@ -345,7 +350,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>> > 
>> > 	intel_hpd_cancel_work(xe);
>> > 
>> > -	if (!runtime && has_display(xe)) {
>> > +	if (!runtime) {
>> > 		intel_display_driver_suspend_access(xe);
>> > 		intel_encoder_suspend_all(&xe->display);
>> > 	}
>> > @@ -358,7 +363,8 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>> > void xe_display_pm_suspend_late(struct xe_device *xe)
>> > {
>> > 	bool s2idle = suspend_to_idle();
>> > -	if (!xe->info.probe_display)
>> > +
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	intel_power_domains_suspend(xe, s2idle);
>> > @@ -368,7 +374,7 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
>> > 
>> > void xe_display_pm_runtime_resume(struct xe_device *xe)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	intel_hpd_poll_disable(xe);
>> > @@ -379,7 +385,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
>> > 
>> > void xe_display_pm_resume_early(struct xe_device *xe)
>> > {
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	intel_display_power_resume_early(xe);
>> > @@ -391,23 +397,22 @@ void xe_display_pm_resume(struct xe_device *xe, bool runtime)
>> > {
>> > 	struct intel_display *display = &xe->display;
>> > 
>> > -	if (!xe->info.probe_display)
>> > +	if (!has_display(xe))
>> > 		return;
>> > 
>> > 	intel_dmc_resume(xe);
>> > 
>> > -	if (has_display(xe))
>> > -		drm_mode_config_reset(&xe->drm);
>> > +	drm_mode_config_reset(&xe->drm);
>> > 
>> > 	intel_display_driver_init_hw(xe);
>> > 	intel_hpd_init(xe);
>> > 
>> > -	if (!runtime && has_display(xe))
>> > +	if (!runtime)
>> > 		intel_display_driver_resume_access(xe);
>> > 
>> > 	/* MST sideband requires HPD interrupts enabled */
>> > 	intel_dp_mst_resume(xe);
>> > -	if (!runtime && has_display(xe)) {
>> > +	if (!runtime) {
>> > 		intel_display_driver_resume(xe);
>> > 		drm_kms_helper_poll_enable(&xe->drm);
>> > 		intel_display_driver_enable_user_access(xe);
>> > @@ -441,7 +446,7 @@ int xe_display_probe(struct xe_device *xe)
>> > 	if (err)
>> > 		return err;
>> > 
>> > -	if (has_display(xe))
>> > +	if (HAS_DISPLAY(&xe->display))
>> > 		return 0;
>> > 
>> > no_display:
>> > -- 
>> > 2.46.0
>> > 

-- 
Jani Nikula, Intel
