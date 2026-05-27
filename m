Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHBpLl0dF2rw5AcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 18:35:41 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 291615E7D66
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 18:35:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9E1910E665;
	Wed, 27 May 2026 16:35:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A32ICRUC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A4110E665;
 Wed, 27 May 2026 16:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779899738; x=1811435738;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=2HxUHauBtey4YGR17q40UtV54FfPNSytbIxjDlu5ewU=;
 b=A32ICRUCP5d5jQJIaAPOXZkRvnO1o55LsXmZ0AVyeIZRDW5fosbAv9s8
 MHbOwRTRG59mi5SW6E4g9yMkgUS3R2jM+nOSKoACgFj1l/03Zry0vmo4+
 dDq23Hv52PfrTxErpfcGp2vurNKLr56gvX8BMPJNs/N4uDdnSh/vp5PS0
 QFYjH/7UjYvYh1cNJzGGV+3xxiwaRWYk15iJ8qwlBqhHeDcQZukmTHeuC
 Zm3FDSxyOi/gp8JFTQn3X6Khqh3wv6u6c4o6hcw0vf7G2rw1/b0jYIUsp
 DOMnRDrnixWQJ6oCY7Upvjfx9wKOp04jrOF18Zev6gB+22ECuJ0TGfP+e A==;
X-CSE-ConnectionGUID: mX7ybX4FTHK8Qtv3Gw/brA==
X-CSE-MsgGUID: 4EF4auRgRZiPvzYPz9WKyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="84361463"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="84361463"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 09:35:37 -0700
X-CSE-ConnectionGUID: SMU4Bam/QR+vNMudxkXCzg==
X-CSE-MsgGUID: ex3tjCGVQ+22r53fKbj1CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="241454952"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.38])
 by orviesa010-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 09:35:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/{i915, xe}: move xe display shutdown and pm
 hooks to intel_display_driver.c
In-Reply-To: <ahcG2uqriNbcB8qY@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <cover.1779887154.git.jani.nikula@intel.com>
 <b5d9bda0d181b8e1bb0834a977d2b632416a4a2c.1779887154.git.jani.nikula@intel.com>
 <ahcG2uqriNbcB8qY@intel.com>
Date: Wed, 27 May 2026 19:35:32 +0300
Message-ID: <7bd1fbcda840f3f382f29e67592b587ab844905d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 291615E7D66
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, 27 May 2026, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, May 27, 2026 at 04:06:25PM +0300, Jani Nikula wrote:
>> Move the xe display glue code for shutdown and pm hooks from
>> xe_display.c to intel_display_driver.c. This is a small step towards
>> unifying the display interfaces between i915 and xe drivers. The code
>> belongs in display, not in i915 or xe driver. Neither the xe nor i915
>> core code should be calling deep into display functionality.
>>=20
>> The high level functions are obviously modeled after the xe driver
>> now. The i915 driver needs to start calling them as well. For this, they
>> may need to be further changed and refactored, but this needs to happen
>> in display side.
>>=20
>> Clean up xe_display.c includes as many of them become unnecessary.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_driver.c   | 189 ++++++++++++++++++
>>  .../drm/i915/display/intel_display_driver.h   |  12 ++
>>  drivers/gpu/drm/xe/display/xe_display.c       | 185 ++---------------
>>  3 files changed, 214 insertions(+), 172 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drive=
rs/gpu/drm/i915/display/intel_display_driver.c
>> index d0729936f681..15ba4c2ac985 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> @@ -43,6 +43,7 @@
>>  #include "intel_dp_tunnel.h"
>>  #include "intel_dpll.h"
>>  #include "intel_dpll_mgr.h"
>> +#include "intel_encoder.h"
>>  #include "intel_fb.h"
>>  #include "intel_fbc.h"
>>  #include "intel_fbdev.h"
>> @@ -780,3 +781,191 @@ void intel_display_driver_resume(struct intel_disp=
lay *display)
>>  	if (state)
>>  		drm_atomic_commit_put(state);
>>  }
>> +
>> +/*
>> + * FIXME: The below interfaces are currently only being called from the=
 xe
>> + * driver code. They need to be unified with the needs of the i915 driv=
er hooks,
>> + * and i915 needs to migrate over to them.
>> + */
>> +
>> +void intel_display_driver_shutdown(struct intel_display *display)
>> +{
>> +	intel_display_power_disable(display);
>> +	drm_client_dev_suspend(display->drm);
>> +
>> +	if (intel_display_device_present(display)) {
>> +		drm_kms_helper_poll_disable(display->drm);
>> +		intel_display_driver_disable_user_access(display);
>> +		intel_display_driver_suspend(display);
>> +	}
>> +
>> +	intel_display_flush_cleanup_work(display);
>> +	intel_dp_mst_suspend(display);
>> +	intel_encoder_block_all_hpds(display);
>> +	intel_hpd_cancel_work(display);
>> +
>> +	if (intel_display_device_present(display))
>> +		intel_display_driver_suspend_access(display);
>> +
>> +	intel_encoder_suspend_all(display);
>> +	intel_encoder_shutdown_all(display);
>> +
>> +	intel_opregion_suspend(display, PCI_D3cold);
>> +
>> +	intel_dmc_suspend(display);
>> +}
>> +
>> +void intel_display_driver_shutdown_late(struct intel_display *display)
>> +{
>> +	/*
>> +	 * The only requirement is to reboot with display DC states disabled,
>> +	 * for now leaving all display power wells in the INIT power domain
>> +	 * enabled.
>> +	 */
>> +	intel_display_power_driver_remove(display);
>> +}
>> +
>> +static bool suspend_to_idle(void)
>> +{
>> +#if IS_ENABLED(CONFIG_ACPI_SLEEP)
>> +	if (acpi_target_system_state() < ACPI_STATE_S3)
>> +		return true;
>> +#endif
>> +	return false;
>> +}
>> +
>> +void intel_display_driver_pm_enable_d3cold(struct intel_display *displa=
y)
>> +{
>> +	/*
>> +	 * We do a lot of poking in a lot of registers, make sure they work
>> +	 * properly.
>> +	 */
>> +	intel_display_power_disable(display);
>
> This stuff is not meant for runtime pm. xe just has some
> obnoxious hacks in its runtime pm code to allow it to call
> incorrect functions from its runtime pm paths without
> deadlocks/etc.
>
> I think the xe hacks need to be killed and runtime pm
> implemented there *correctly* before we base any common
> code on the xe implementation.
>
> We should perhaps start from the i915 implementation
> instead. That might help properly highlight all the
> bogus things that xe is doing.

There are a few reasons why I chose to start off with xe like this.

The granularity of functions are a fairly good starting point for a
shared implementation. Simply moving them over from xe to display in a
non-functional way reduces xe_display.c dependency deep into display
functionality. It's forward progress with no risk for regressions.

Sure, we could define similar functions for i915 to call, but that's
going to contain functional changes from about patch #1, because i915
calls deep into display in a very scattered way. With the approach at
hand, we can gradually move i915 over to the new stuff, even function by
function, comparing the sequences, making small changes to either along
the way, as the case may be.

From my POV the end result is going to be the same. The difference is in
the path we choose.

Of course, there's also the problem that I don't know for sure what all
the hacks are that you refer to, or what implementing runtime PM
correctly there means. The d3cold stuff (including those
intel_display_power_disable/enable() calls) is hidden behind a flag that
only gets called for xe, which I guess is a bit lame, but also isolates
it from the rest.

I guess to me it's often more important to be able to make meaningful
forward progress without stalling right in the beginning. It does defer
tackling the hard problems instead of confronting them right away, but
it also makes it possible for the solutions to present themselves while
making progress, without banging head on the wall so much.

*shrug*

I can also start looking at going the i915 route. But Someone(tm) needs
to look at xe runtime suspend/resume/etc. in the mean time.


BR,
Jani.


>
>> +
>> +	intel_display_flush_cleanup_work(display);
>> +
>> +	intel_opregion_suspend(display, PCI_D3cold);
>> +
>> +	intel_dmc_suspend(display);
>> +
>> +	if (intel_display_device_present(display))
>> +		intel_hpd_poll_enable(display);
>> +}
>> +
>> +void intel_display_driver_pm_disable_d3cold(struct intel_display *displ=
ay)
>> +{
>> +	intel_dmc_resume(display);
>> +
>> +	if (intel_display_device_present(display))
>> +		drm_mode_config_reset(display->drm);
>> +
>> +	intel_display_driver_init_hw(display);
>> +
>> +	intel_hpd_init(display);
>> +
>> +	if (intel_display_device_present(display))
>> +		intel_hpd_poll_disable(display);
>> +
>> +	intel_opregion_resume(display);
>> +
>> +	intel_display_power_enable(display);
>> +}
>> +
>> +void intel_display_driver_pm_suspend(struct intel_display *display)
>> +{
>> +	bool s2idle =3D suspend_to_idle();
>> +
>> +	/*
>> +	 * We do a lot of poking in a lot of registers, make sure they work
>> +	 * properly.
>> +	 */
>> +	intel_display_power_disable(display);
>> +	drm_client_dev_suspend(display->drm);
>> +
>> +	if (intel_display_device_present(display)) {
>> +		drm_kms_helper_poll_disable(display->drm);
>> +		intel_display_driver_disable_user_access(display);
>> +		intel_display_driver_suspend(display);
>> +	}
>> +
>> +	intel_display_flush_cleanup_work(display);
>> +
>> +	intel_encoder_block_all_hpds(display);
>> +
>> +	intel_hpd_cancel_work(display);
>> +
>> +	if (intel_display_device_present(display)) {
>> +		intel_display_driver_suspend_access(display);
>> +		intel_encoder_suspend_all(display);
>> +	}
>> +
>> +	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
>> +
>> +	intel_dmc_suspend(display);
>> +}
>> +
>> +void intel_display_driver_pm_suspend_late(struct intel_display *display)
>> +{
>> +	bool s2idle =3D suspend_to_idle();
>> +
>> +	intel_display_power_suspend_late(display, s2idle);
>> +}
>> +
>> +void intel_display_driver_pm_resume_early(struct intel_display *display)
>> +{
>> +	intel_display_power_resume_early(display);
>> +}
>> +
>> +void intel_display_driver_pm_resume(struct intel_display *display)
>> +{
>> +	intel_dmc_resume(display);
>> +
>> +	if (intel_display_device_present(display))
>> +		drm_mode_config_reset(display->drm);
>> +
>> +	intel_display_driver_init_hw(display);
>> +
>> +	if (intel_display_device_present(display))
>> +		intel_display_driver_resume_access(display);
>> +
>> +	intel_hpd_init(display);
>> +
>> +	intel_encoder_unblock_all_hpds(display);
>> +
>> +	if (intel_display_device_present(display)) {
>> +		intel_display_driver_resume(display);
>> +		drm_kms_helper_poll_enable(display->drm);
>> +		intel_display_driver_enable_user_access(display);
>> +	}
>> +
>> +	if (intel_display_device_present(display))
>> +		intel_hpd_poll_disable(display);
>> +
>> +	intel_opregion_resume(display);
>> +
>> +	drm_client_dev_resume(display->drm);
>> +
>> +	intel_display_power_enable(display);
>> +}
>> +
>> +void intel_display_driver_pm_runtime_suspend(struct intel_display *disp=
lay)
>> +{
>> +	intel_hpd_poll_enable(display);
>> +}
>> +
>> +void intel_display_driver_pm_runtime_suspend_late(struct intel_display =
*display)
>> +{
>> +	/*
>> +	 * If xe_display_pm_suspend_late() is not called, it is likely
>> +	 * that we will be on dynamic DC states with DMC wakelock enabled. We
>> +	 * need to flush the release work in that case.
>> +	 */
>> +	intel_dmc_wl_flush_release_work(display);
>> +}
>> +
>> +void intel_display_driver_pm_runtime_resume(struct intel_display *displ=
ay)
>> +{
>> +	intel_hpd_init(display);
>> +	intel_hpd_poll_disable(display);
>> +	skl_watermark_ipc_update(display);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drive=
rs/gpu/drm/i915/display/intel_display_driver.h
>> index 5270c26a32e0..e4ce17efe793 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
>> @@ -26,6 +26,8 @@ void intel_display_driver_remove_nogem(struct intel_di=
splay *display);
>>  void intel_display_driver_unregister(struct intel_display *display);
>>  int intel_display_driver_suspend(struct intel_display *display);
>>  void intel_display_driver_resume(struct intel_display *display);
>> +void intel_display_driver_shutdown(struct intel_display *display);
>> +void intel_display_driver_shutdown_late(struct intel_display *display);
>>=20=20
>>  /* interface for intel_display_reset.c */
>>  int __intel_display_driver_resume(struct intel_display *display,
>> @@ -38,5 +40,15 @@ void intel_display_driver_suspend_access(struct intel=
_display *display);
>>  void intel_display_driver_resume_access(struct intel_display *display);
>>  bool intel_display_driver_check_access(struct intel_display *display);
>>=20=20
>> +void intel_display_driver_pm_enable_d3cold(struct intel_display *displa=
y);
>> +void intel_display_driver_pm_disable_d3cold(struct intel_display *displ=
ay);
>> +void intel_display_driver_pm_suspend(struct intel_display *display);
>> +void intel_display_driver_pm_suspend_late(struct intel_display *display=
);
>> +void intel_display_driver_pm_resume_early(struct intel_display *display=
);
>> +void intel_display_driver_pm_resume(struct intel_display *display);
>> +void intel_display_driver_pm_runtime_suspend(struct intel_display *disp=
lay);
>> +void intel_display_driver_pm_runtime_suspend_late(struct intel_display =
*display);
>> +void intel_display_driver_pm_runtime_resume(struct intel_display *displ=
ay);
>> +
>>  #endif /* __INTEL_DISPLAY_DRIVER_H__ */
>>=20=20
>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/x=
e/display/xe_display.c
>> index a18af4d96dd1..6aba5668e4df 100644
>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> @@ -6,36 +6,22 @@
>>  #include "xe_display.h"
>>  #include "regs/xe_irq_regs.h"
>>=20=20
>> -#include <linux/fb.h>
>> -
>> -#include <drm/drm_client.h>
>> -#include <drm/drm_client_event.h>
>>  #include <drm/drm_drv.h>
>>  #include <drm/drm_managed.h>
>> -#include <drm/drm_probe_helper.h>
>>  #include <drm/intel/display_member.h>
>>  #include <drm/intel/display_parent_interface.h>
>> -#include <uapi/drm/xe_drm.h>
>>=20=20
>> -#include "intel_acpi.h"
>>  #include "intel_audio.h"
>>  #include "intel_bw.h"
>> -#include "intel_display.h"
>> -#include "intel_display_core.h"
>>  #include "intel_display_device.h"
>>  #include "intel_display_driver.h"
>>  #include "intel_display_irq.h"
>> -#include "intel_display_types.h"
>> -#include "intel_dmc.h"
>> -#include "intel_dmc_wl.h"
>> -#include "intel_dp.h"
>> +#include "intel_display_power.h"
>>  #include "intel_dram.h"
>> -#include "intel_encoder.h"
>>  #include "intel_fbdev.h"
>>  #include "intel_hdcp.h"
>>  #include "intel_hotplug.h"
>>  #include "intel_opregion.h"
>> -#include "skl_watermark.h"
>>  #include "xe_device.h"
>>  #include "xe_display_bo.h"
>>  #include "xe_display_pcode.h"
>> @@ -235,97 +221,14 @@ void xe_display_irq_postinstall(struct xe_device *=
xe)
>>  	intel_display_irq_postinstall(display);
>>  }
>>=20=20
>> -static bool suspend_to_idle(void)
>> -{
>> -#if IS_ENABLED(CONFIG_ACPI_SLEEP)
>> -	if (acpi_target_system_state() < ACPI_STATE_S3)
>> -		return true;
>> -#endif
>> -	return false;
>> -}
>> -
>> -static void xe_display_enable_d3cold(struct xe_device *xe)
>> -{
>> -	struct intel_display *display =3D xe->display;
>> -
>> -	if (!xe->info.probe_display)
>> -		return;
>> -
>> -	/*
>> -	 * We do a lot of poking in a lot of registers, make sure they work
>> -	 * properly.
>> -	 */
>> -	intel_display_power_disable(display);
>> -
>> -	intel_display_flush_cleanup_work(display);
>> -
>> -	intel_opregion_suspend(display, PCI_D3cold);
>> -
>> -	intel_dmc_suspend(display);
>> -
>> -	if (intel_display_device_present(display))
>> -		intel_hpd_poll_enable(display);
>> -}
>> -
>> -static void xe_display_disable_d3cold(struct xe_device *xe)
>> -{
>> -	struct intel_display *display =3D xe->display;
>> -
>> -	if (!xe->info.probe_display)
>> -		return;
>> -
>> -	intel_dmc_resume(display);
>> -
>> -	if (intel_display_device_present(display))
>> -		drm_mode_config_reset(&xe->drm);
>> -
>> -	intel_display_driver_init_hw(display);
>> -
>> -	intel_hpd_init(display);
>> -
>> -	if (intel_display_device_present(display))
>> -		intel_hpd_poll_disable(display);
>> -
>> -	intel_opregion_resume(display);
>> -
>> -	intel_display_power_enable(display);
>> -}
>> -
>>  void xe_display_pm_suspend(struct xe_device *xe)
>>  {
>>  	struct intel_display *display =3D xe->display;
>> -	bool s2idle =3D suspend_to_idle();
>>=20=20
>>  	if (!xe->info.probe_display)
>>  		return;
>>=20=20
>> -	/*
>> -	 * We do a lot of poking in a lot of registers, make sure they work
>> -	 * properly.
>> -	 */
>> -	intel_display_power_disable(display);
>> -	drm_client_dev_suspend(&xe->drm);
>> -
>> -	if (intel_display_device_present(display)) {
>> -		drm_kms_helper_poll_disable(&xe->drm);
>> -		intel_display_driver_disable_user_access(display);
>> -		intel_display_driver_suspend(display);
>> -	}
>> -
>> -	intel_display_flush_cleanup_work(display);
>> -
>> -	intel_encoder_block_all_hpds(display);
>> -
>> -	intel_hpd_cancel_work(display);
>> -
>> -	if (intel_display_device_present(display)) {
>> -		intel_display_driver_suspend_access(display);
>> -		intel_encoder_suspend_all(display);
>> -	}
>> -
>> -	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
>> -
>> -	intel_dmc_suspend(display);
>> +	intel_display_driver_pm_suspend(display);
>>  }
>>=20=20
>>  void xe_display_shutdown(struct xe_device *xe)
>> @@ -335,29 +238,7 @@ void xe_display_shutdown(struct xe_device *xe)
>>  	if (!xe->info.probe_display)
>>  		return;
>>=20=20
>> -	intel_display_power_disable(display);
>> -	drm_client_dev_suspend(&xe->drm);
>> -
>> -	if (intel_display_device_present(display)) {
>> -		drm_kms_helper_poll_disable(&xe->drm);
>> -		intel_display_driver_disable_user_access(display);
>> -		intel_display_driver_suspend(display);
>> -	}
>> -
>> -	intel_display_flush_cleanup_work(display);
>> -	intel_dp_mst_suspend(display);
>> -	intel_encoder_block_all_hpds(display);
>> -	intel_hpd_cancel_work(display);
>> -
>> -	if (intel_display_device_present(display))
>> -		intel_display_driver_suspend_access(display);
>> -
>> -	intel_encoder_suspend_all(display);
>> -	intel_encoder_shutdown_all(display);
>> -
>> -	intel_opregion_suspend(display, PCI_D3cold);
>> -
>> -	intel_dmc_suspend(display);
>> +	intel_display_driver_shutdown(display);
>>  }
>>=20=20
>>  void xe_display_pm_runtime_suspend(struct xe_device *xe)
>> @@ -368,22 +249,21 @@ void xe_display_pm_runtime_suspend(struct xe_devic=
e *xe)
>>  		return;
>>=20=20
>>  	if (xe->d3cold.allowed) {
>> -		xe_display_enable_d3cold(xe);
>> +		intel_display_driver_pm_enable_d3cold(display);
>>  		return;
>>  	}
>>=20=20
>> -	intel_hpd_poll_enable(display);
>> +	intel_display_driver_pm_runtime_suspend(display);
>>  }
>>=20=20
>>  void xe_display_pm_suspend_late(struct xe_device *xe)
>>  {
>>  	struct intel_display *display =3D xe->display;
>> -	bool s2idle =3D suspend_to_idle();
>>=20=20
>>  	if (!xe->info.probe_display)
>>  		return;
>>=20=20
>> -	intel_display_power_suspend_late(display, s2idle);
>> +	intel_display_driver_pm_suspend_late(display);
>>  }
>>=20=20
>>  void xe_display_pm_runtime_suspend_late(struct xe_device *xe)
>> @@ -394,14 +274,9 @@ void xe_display_pm_runtime_suspend_late(struct xe_d=
evice *xe)
>>  		return;
>>=20=20
>>  	if (xe->d3cold.allowed)
>> -		xe_display_pm_suspend_late(xe);
>> +		intel_display_driver_pm_suspend_late(display);
>>=20=20
>> -	/*
>> -	 * If xe_display_pm_suspend_late() is not called, it is likely
>> -	 * that we will be on dynamic DC states with DMC wakelock enabled. We
>> -	 * need to flush the release work in that case.
>> -	 */
>> -	intel_dmc_wl_flush_release_work(display);
>> +	intel_display_driver_pm_runtime_suspend_late(display);
>>  }
>>=20=20
>>  void xe_display_shutdown_late(struct xe_device *xe)
>> @@ -411,12 +286,7 @@ void xe_display_shutdown_late(struct xe_device *xe)
>>  	if (!xe->info.probe_display)
>>  		return;
>>=20=20
>> -	/*
>> -	 * The only requirement is to reboot with display DC states disabled,
>> -	 * for now leaving all display power wells in the INIT power domain
>> -	 * enabled.
>> -	 */
>> -	intel_display_power_driver_remove(display);
>> +	intel_display_driver_shutdown_late(display);
>>  }
>>=20=20
>>  void xe_display_pm_resume_early(struct xe_device *xe)
>> @@ -426,7 +296,7 @@ void xe_display_pm_resume_early(struct xe_device *xe)
>>  	if (!xe->info.probe_display)
>>  		return;
>>=20=20
>> -	intel_display_power_resume_early(display);
>> +	intel_display_driver_pm_resume_early(display);
>>  }
>>=20=20
>>  void xe_display_pm_resume(struct xe_device *xe)
>> @@ -436,34 +306,7 @@ void xe_display_pm_resume(struct xe_device *xe)
>>  	if (!xe->info.probe_display)
>>  		return;
>>=20=20
>> -	intel_dmc_resume(display);
>> -
>> -	if (intel_display_device_present(display))
>> -		drm_mode_config_reset(&xe->drm);
>> -
>> -	intel_display_driver_init_hw(display);
>> -
>> -	if (intel_display_device_present(display))
>> -		intel_display_driver_resume_access(display);
>> -
>> -	intel_hpd_init(display);
>> -
>> -	intel_encoder_unblock_all_hpds(display);
>> -
>> -	if (intel_display_device_present(display)) {
>> -		intel_display_driver_resume(display);
>> -		drm_kms_helper_poll_enable(&xe->drm);
>> -		intel_display_driver_enable_user_access(display);
>> -	}
>> -
>> -	if (intel_display_device_present(display))
>> -		intel_hpd_poll_disable(display);
>> -
>> -	intel_opregion_resume(display);
>> -
>> -	drm_client_dev_resume(&xe->drm);
>> -
>> -	intel_display_power_enable(display);
>> +	intel_display_driver_pm_resume(display);
>>  }
>>=20=20
>>  void xe_display_pm_runtime_resume(struct xe_device *xe)
>> @@ -474,13 +317,11 @@ void xe_display_pm_runtime_resume(struct xe_device=
 *xe)
>>  		return;
>>=20=20
>>  	if (xe->d3cold.allowed) {
>> -		xe_display_disable_d3cold(xe);
>> +		intel_display_driver_pm_disable_d3cold(display);
>>  		return;
>>  	}
>>=20=20
>> -	intel_hpd_init(display);
>> -	intel_hpd_poll_disable(display);
>> -	skl_watermark_ipc_update(display);
>> +	intel_display_driver_pm_runtime_resume(display);
>>  }
>>=20=20
>>=20=20
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
