Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLi/GeoGF2qn1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:59:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EEB5E665C
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8221910E261;
	Wed, 27 May 2026 14:59:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dF0UhV0D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFB2E89D5C;
 Wed, 27 May 2026 14:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779893990; x=1811429990;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FAbH234keFB8+i1huwykY+tAC8RSfTfFf0XQdfes0v8=;
 b=dF0UhV0DvCbnS1UyMiIvayBx4IbCPEgLMm/Ji/lo2RFl/J2WdgiEg4EE
 u7ubMA+5eNvBB4fnpl+mbUMUKccRRaXqeomtUmAxwphsuwoV3SmJLLfhs
 fswKFtzIJxJdhtMLT7o4xbunaC06DzY8UVPgkvJxZnMPExjGf3AkDag9o
 jsN6VvldnXcBfyzT1o7E4F0ElcUr4MPbOH4jR7UEHYr0ovSpaudheiqMQ
 OPCjvSW6jErRlZr6jTTCTyWOrRBvT93iwAFEEzCUF1vTnystUJ2ykXGLj
 4z++WVBFzxsmFah5qev3xs8e7m7aTKiHNbkhcp3TRZr+wQ15G8nWSivTw g==;
X-CSE-ConnectionGUID: W026wrAXSQC99BDPg8jg+g==
X-CSE-MsgGUID: BRBHDrtaR92dw/Yx3ngjBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="103399642"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="103399642"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:59:50 -0700
X-CSE-ConnectionGUID: RhO1crVMSUypYCYz0Xf30g==
X-CSE-MsgGUID: tHc2C5QQThCEFqzTYIiVJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="238090679"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.80])
 by fmviesa010-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 07:59:43 -0700
Date: Wed, 27 May 2026 17:59:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/{i915, xe}: move xe display shutdown and pm
 hooks to intel_display_driver.c
Message-ID: <ahcG2uqriNbcB8qY@intel.com>
References: <cover.1779887154.git.jani.nikula@intel.com>
 <b5d9bda0d181b8e1bb0834a977d2b632416a4a2c.1779887154.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b5d9bda0d181b8e1bb0834a977d2b632416a4a2c.1779887154.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.22 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.53)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 97EEB5E665C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 27, 2026 at 04:06:25PM +0300, Jani Nikula wrote:
> Move the xe display glue code for shutdown and pm hooks from
> xe_display.c to intel_display_driver.c. This is a small step towards
> unifying the display interfaces between i915 and xe drivers. The code
> belongs in display, not in i915 or xe driver. Neither the xe nor i915
> core code should be calling deep into display functionality.
> 
> The high level functions are obviously modeled after the xe driver
> now. The i915 driver needs to start calling them as well. For this, they
> may need to be further changed and refactored, but this needs to happen
> in display side.
> 
> Clean up xe_display.c includes as many of them become unnecessary.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_driver.c   | 189 ++++++++++++++++++
>  .../drm/i915/display/intel_display_driver.h   |  12 ++
>  drivers/gpu/drm/xe/display/xe_display.c       | 185 ++---------------
>  3 files changed, 214 insertions(+), 172 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index d0729936f681..15ba4c2ac985 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -43,6 +43,7 @@
>  #include "intel_dp_tunnel.h"
>  #include "intel_dpll.h"
>  #include "intel_dpll_mgr.h"
> +#include "intel_encoder.h"
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
>  #include "intel_fbdev.h"
> @@ -780,3 +781,191 @@ void intel_display_driver_resume(struct intel_display *display)
>  	if (state)
>  		drm_atomic_commit_put(state);
>  }
> +
> +/*
> + * FIXME: The below interfaces are currently only being called from the xe
> + * driver code. They need to be unified with the needs of the i915 driver hooks,
> + * and i915 needs to migrate over to them.
> + */
> +
> +void intel_display_driver_shutdown(struct intel_display *display)
> +{
> +	intel_display_power_disable(display);
> +	drm_client_dev_suspend(display->drm);
> +
> +	if (intel_display_device_present(display)) {
> +		drm_kms_helper_poll_disable(display->drm);
> +		intel_display_driver_disable_user_access(display);
> +		intel_display_driver_suspend(display);
> +	}
> +
> +	intel_display_flush_cleanup_work(display);
> +	intel_dp_mst_suspend(display);
> +	intel_encoder_block_all_hpds(display);
> +	intel_hpd_cancel_work(display);
> +
> +	if (intel_display_device_present(display))
> +		intel_display_driver_suspend_access(display);
> +
> +	intel_encoder_suspend_all(display);
> +	intel_encoder_shutdown_all(display);
> +
> +	intel_opregion_suspend(display, PCI_D3cold);
> +
> +	intel_dmc_suspend(display);
> +}
> +
> +void intel_display_driver_shutdown_late(struct intel_display *display)
> +{
> +	/*
> +	 * The only requirement is to reboot with display DC states disabled,
> +	 * for now leaving all display power wells in the INIT power domain
> +	 * enabled.
> +	 */
> +	intel_display_power_driver_remove(display);
> +}
> +
> +static bool suspend_to_idle(void)
> +{
> +#if IS_ENABLED(CONFIG_ACPI_SLEEP)
> +	if (acpi_target_system_state() < ACPI_STATE_S3)
> +		return true;
> +#endif
> +	return false;
> +}
> +
> +void intel_display_driver_pm_enable_d3cold(struct intel_display *display)
> +{
> +	/*
> +	 * We do a lot of poking in a lot of registers, make sure they work
> +	 * properly.
> +	 */
> +	intel_display_power_disable(display);

This stuff is not meant for runtime pm. xe just has some
obnoxious hacks in its runtime pm code to allow it to call
incorrect functions from its runtime pm paths without
deadlocks/etc.

I think the xe hacks need to be killed and runtime pm
implemented there *correctly* before we base any common
code on the xe implementation.

We should perhaps start from the i915 implementation
instead. That might help properly highlight all the
bogus things that xe is doing.

> +
> +	intel_display_flush_cleanup_work(display);
> +
> +	intel_opregion_suspend(display, PCI_D3cold);
> +
> +	intel_dmc_suspend(display);
> +
> +	if (intel_display_device_present(display))
> +		intel_hpd_poll_enable(display);
> +}
> +
> +void intel_display_driver_pm_disable_d3cold(struct intel_display *display)
> +{
> +	intel_dmc_resume(display);
> +
> +	if (intel_display_device_present(display))
> +		drm_mode_config_reset(display->drm);
> +
> +	intel_display_driver_init_hw(display);
> +
> +	intel_hpd_init(display);
> +
> +	if (intel_display_device_present(display))
> +		intel_hpd_poll_disable(display);
> +
> +	intel_opregion_resume(display);
> +
> +	intel_display_power_enable(display);
> +}
> +
> +void intel_display_driver_pm_suspend(struct intel_display *display)
> +{
> +	bool s2idle = suspend_to_idle();
> +
> +	/*
> +	 * We do a lot of poking in a lot of registers, make sure they work
> +	 * properly.
> +	 */
> +	intel_display_power_disable(display);
> +	drm_client_dev_suspend(display->drm);
> +
> +	if (intel_display_device_present(display)) {
> +		drm_kms_helper_poll_disable(display->drm);
> +		intel_display_driver_disable_user_access(display);
> +		intel_display_driver_suspend(display);
> +	}
> +
> +	intel_display_flush_cleanup_work(display);
> +
> +	intel_encoder_block_all_hpds(display);
> +
> +	intel_hpd_cancel_work(display);
> +
> +	if (intel_display_device_present(display)) {
> +		intel_display_driver_suspend_access(display);
> +		intel_encoder_suspend_all(display);
> +	}
> +
> +	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> +
> +	intel_dmc_suspend(display);
> +}
> +
> +void intel_display_driver_pm_suspend_late(struct intel_display *display)
> +{
> +	bool s2idle = suspend_to_idle();
> +
> +	intel_display_power_suspend_late(display, s2idle);
> +}
> +
> +void intel_display_driver_pm_resume_early(struct intel_display *display)
> +{
> +	intel_display_power_resume_early(display);
> +}
> +
> +void intel_display_driver_pm_resume(struct intel_display *display)
> +{
> +	intel_dmc_resume(display);
> +
> +	if (intel_display_device_present(display))
> +		drm_mode_config_reset(display->drm);
> +
> +	intel_display_driver_init_hw(display);
> +
> +	if (intel_display_device_present(display))
> +		intel_display_driver_resume_access(display);
> +
> +	intel_hpd_init(display);
> +
> +	intel_encoder_unblock_all_hpds(display);
> +
> +	if (intel_display_device_present(display)) {
> +		intel_display_driver_resume(display);
> +		drm_kms_helper_poll_enable(display->drm);
> +		intel_display_driver_enable_user_access(display);
> +	}
> +
> +	if (intel_display_device_present(display))
> +		intel_hpd_poll_disable(display);
> +
> +	intel_opregion_resume(display);
> +
> +	drm_client_dev_resume(display->drm);
> +
> +	intel_display_power_enable(display);
> +}
> +
> +void intel_display_driver_pm_runtime_suspend(struct intel_display *display)
> +{
> +	intel_hpd_poll_enable(display);
> +}
> +
> +void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display)
> +{
> +	/*
> +	 * If xe_display_pm_suspend_late() is not called, it is likely
> +	 * that we will be on dynamic DC states with DMC wakelock enabled. We
> +	 * need to flush the release work in that case.
> +	 */
> +	intel_dmc_wl_flush_release_work(display);
> +}
> +
> +void intel_display_driver_pm_runtime_resume(struct intel_display *display)
> +{
> +	intel_hpd_init(display);
> +	intel_hpd_poll_disable(display);
> +	skl_watermark_ipc_update(display);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
> index 5270c26a32e0..e4ce17efe793 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
> @@ -26,6 +26,8 @@ void intel_display_driver_remove_nogem(struct intel_display *display);
>  void intel_display_driver_unregister(struct intel_display *display);
>  int intel_display_driver_suspend(struct intel_display *display);
>  void intel_display_driver_resume(struct intel_display *display);
> +void intel_display_driver_shutdown(struct intel_display *display);
> +void intel_display_driver_shutdown_late(struct intel_display *display);
>  
>  /* interface for intel_display_reset.c */
>  int __intel_display_driver_resume(struct intel_display *display,
> @@ -38,5 +40,15 @@ void intel_display_driver_suspend_access(struct intel_display *display);
>  void intel_display_driver_resume_access(struct intel_display *display);
>  bool intel_display_driver_check_access(struct intel_display *display);
>  
> +void intel_display_driver_pm_enable_d3cold(struct intel_display *display);
> +void intel_display_driver_pm_disable_d3cold(struct intel_display *display);
> +void intel_display_driver_pm_suspend(struct intel_display *display);
> +void intel_display_driver_pm_suspend_late(struct intel_display *display);
> +void intel_display_driver_pm_resume_early(struct intel_display *display);
> +void intel_display_driver_pm_resume(struct intel_display *display);
> +void intel_display_driver_pm_runtime_suspend(struct intel_display *display);
> +void intel_display_driver_pm_runtime_suspend_late(struct intel_display *display);
> +void intel_display_driver_pm_runtime_resume(struct intel_display *display);
> +
>  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
>  
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index a18af4d96dd1..6aba5668e4df 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -6,36 +6,22 @@
>  #include "xe_display.h"
>  #include "regs/xe_irq_regs.h"
>  
> -#include <linux/fb.h>
> -
> -#include <drm/drm_client.h>
> -#include <drm/drm_client_event.h>
>  #include <drm/drm_drv.h>
>  #include <drm/drm_managed.h>
> -#include <drm/drm_probe_helper.h>
>  #include <drm/intel/display_member.h>
>  #include <drm/intel/display_parent_interface.h>
> -#include <uapi/drm/xe_drm.h>
>  
> -#include "intel_acpi.h"
>  #include "intel_audio.h"
>  #include "intel_bw.h"
> -#include "intel_display.h"
> -#include "intel_display_core.h"
>  #include "intel_display_device.h"
>  #include "intel_display_driver.h"
>  #include "intel_display_irq.h"
> -#include "intel_display_types.h"
> -#include "intel_dmc.h"
> -#include "intel_dmc_wl.h"
> -#include "intel_dp.h"
> +#include "intel_display_power.h"
>  #include "intel_dram.h"
> -#include "intel_encoder.h"
>  #include "intel_fbdev.h"
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
>  #include "intel_opregion.h"
> -#include "skl_watermark.h"
>  #include "xe_device.h"
>  #include "xe_display_bo.h"
>  #include "xe_display_pcode.h"
> @@ -235,97 +221,14 @@ void xe_display_irq_postinstall(struct xe_device *xe)
>  	intel_display_irq_postinstall(display);
>  }
>  
> -static bool suspend_to_idle(void)
> -{
> -#if IS_ENABLED(CONFIG_ACPI_SLEEP)
> -	if (acpi_target_system_state() < ACPI_STATE_S3)
> -		return true;
> -#endif
> -	return false;
> -}
> -
> -static void xe_display_enable_d3cold(struct xe_device *xe)
> -{
> -	struct intel_display *display = xe->display;
> -
> -	if (!xe->info.probe_display)
> -		return;
> -
> -	/*
> -	 * We do a lot of poking in a lot of registers, make sure they work
> -	 * properly.
> -	 */
> -	intel_display_power_disable(display);
> -
> -	intel_display_flush_cleanup_work(display);
> -
> -	intel_opregion_suspend(display, PCI_D3cold);
> -
> -	intel_dmc_suspend(display);
> -
> -	if (intel_display_device_present(display))
> -		intel_hpd_poll_enable(display);
> -}
> -
> -static void xe_display_disable_d3cold(struct xe_device *xe)
> -{
> -	struct intel_display *display = xe->display;
> -
> -	if (!xe->info.probe_display)
> -		return;
> -
> -	intel_dmc_resume(display);
> -
> -	if (intel_display_device_present(display))
> -		drm_mode_config_reset(&xe->drm);
> -
> -	intel_display_driver_init_hw(display);
> -
> -	intel_hpd_init(display);
> -
> -	if (intel_display_device_present(display))
> -		intel_hpd_poll_disable(display);
> -
> -	intel_opregion_resume(display);
> -
> -	intel_display_power_enable(display);
> -}
> -
>  void xe_display_pm_suspend(struct xe_device *xe)
>  {
>  	struct intel_display *display = xe->display;
> -	bool s2idle = suspend_to_idle();
>  
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	/*
> -	 * We do a lot of poking in a lot of registers, make sure they work
> -	 * properly.
> -	 */
> -	intel_display_power_disable(display);
> -	drm_client_dev_suspend(&xe->drm);
> -
> -	if (intel_display_device_present(display)) {
> -		drm_kms_helper_poll_disable(&xe->drm);
> -		intel_display_driver_disable_user_access(display);
> -		intel_display_driver_suspend(display);
> -	}
> -
> -	intel_display_flush_cleanup_work(display);
> -
> -	intel_encoder_block_all_hpds(display);
> -
> -	intel_hpd_cancel_work(display);
> -
> -	if (intel_display_device_present(display)) {
> -		intel_display_driver_suspend_access(display);
> -		intel_encoder_suspend_all(display);
> -	}
> -
> -	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
> -
> -	intel_dmc_suspend(display);
> +	intel_display_driver_pm_suspend(display);
>  }
>  
>  void xe_display_shutdown(struct xe_device *xe)
> @@ -335,29 +238,7 @@ void xe_display_shutdown(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_display_power_disable(display);
> -	drm_client_dev_suspend(&xe->drm);
> -
> -	if (intel_display_device_present(display)) {
> -		drm_kms_helper_poll_disable(&xe->drm);
> -		intel_display_driver_disable_user_access(display);
> -		intel_display_driver_suspend(display);
> -	}
> -
> -	intel_display_flush_cleanup_work(display);
> -	intel_dp_mst_suspend(display);
> -	intel_encoder_block_all_hpds(display);
> -	intel_hpd_cancel_work(display);
> -
> -	if (intel_display_device_present(display))
> -		intel_display_driver_suspend_access(display);
> -
> -	intel_encoder_suspend_all(display);
> -	intel_encoder_shutdown_all(display);
> -
> -	intel_opregion_suspend(display, PCI_D3cold);
> -
> -	intel_dmc_suspend(display);
> +	intel_display_driver_shutdown(display);
>  }
>  
>  void xe_display_pm_runtime_suspend(struct xe_device *xe)
> @@ -368,22 +249,21 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe)
>  		return;
>  
>  	if (xe->d3cold.allowed) {
> -		xe_display_enable_d3cold(xe);
> +		intel_display_driver_pm_enable_d3cold(display);
>  		return;
>  	}
>  
> -	intel_hpd_poll_enable(display);
> +	intel_display_driver_pm_runtime_suspend(display);
>  }
>  
>  void xe_display_pm_suspend_late(struct xe_device *xe)
>  {
>  	struct intel_display *display = xe->display;
> -	bool s2idle = suspend_to_idle();
>  
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_display_power_suspend_late(display, s2idle);
> +	intel_display_driver_pm_suspend_late(display);
>  }
>  
>  void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
> @@ -394,14 +274,9 @@ void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
>  		return;
>  
>  	if (xe->d3cold.allowed)
> -		xe_display_pm_suspend_late(xe);
> +		intel_display_driver_pm_suspend_late(display);
>  
> -	/*
> -	 * If xe_display_pm_suspend_late() is not called, it is likely
> -	 * that we will be on dynamic DC states with DMC wakelock enabled. We
> -	 * need to flush the release work in that case.
> -	 */
> -	intel_dmc_wl_flush_release_work(display);
> +	intel_display_driver_pm_runtime_suspend_late(display);
>  }
>  
>  void xe_display_shutdown_late(struct xe_device *xe)
> @@ -411,12 +286,7 @@ void xe_display_shutdown_late(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	/*
> -	 * The only requirement is to reboot with display DC states disabled,
> -	 * for now leaving all display power wells in the INIT power domain
> -	 * enabled.
> -	 */
> -	intel_display_power_driver_remove(display);
> +	intel_display_driver_shutdown_late(display);
>  }
>  
>  void xe_display_pm_resume_early(struct xe_device *xe)
> @@ -426,7 +296,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_display_power_resume_early(display);
> +	intel_display_driver_pm_resume_early(display);
>  }
>  
>  void xe_display_pm_resume(struct xe_device *xe)
> @@ -436,34 +306,7 @@ void xe_display_pm_resume(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_dmc_resume(display);
> -
> -	if (intel_display_device_present(display))
> -		drm_mode_config_reset(&xe->drm);
> -
> -	intel_display_driver_init_hw(display);
> -
> -	if (intel_display_device_present(display))
> -		intel_display_driver_resume_access(display);
> -
> -	intel_hpd_init(display);
> -
> -	intel_encoder_unblock_all_hpds(display);
> -
> -	if (intel_display_device_present(display)) {
> -		intel_display_driver_resume(display);
> -		drm_kms_helper_poll_enable(&xe->drm);
> -		intel_display_driver_enable_user_access(display);
> -	}
> -
> -	if (intel_display_device_present(display))
> -		intel_hpd_poll_disable(display);
> -
> -	intel_opregion_resume(display);
> -
> -	drm_client_dev_resume(&xe->drm);
> -
> -	intel_display_power_enable(display);
> +	intel_display_driver_pm_resume(display);
>  }
>  
>  void xe_display_pm_runtime_resume(struct xe_device *xe)
> @@ -474,13 +317,11 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
>  		return;
>  
>  	if (xe->d3cold.allowed) {
> -		xe_display_disable_d3cold(xe);
> +		intel_display_driver_pm_disable_d3cold(display);
>  		return;
>  	}
>  
> -	intel_hpd_init(display);
> -	intel_hpd_poll_disable(display);
> -	skl_watermark_ipc_update(display);
> +	intel_display_driver_pm_runtime_resume(display);
>  }
>  
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
