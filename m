Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0A1A826DD
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 16:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D865A10E8CB;
	Wed,  9 Apr 2025 14:00:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ebQKO5VB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC44A10E8CA;
 Wed,  9 Apr 2025 14:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744207223; x=1775743223;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=YIsWyqZCeRziEKi/72DMvMzC3IxYS4dNXIXSIzrs7SM=;
 b=ebQKO5VByaybKLs1KsBypIsbSuiEc6goczuh02twxz+flRqemHBThuWD
 GZ1WcD4CDf/gCgIYz0SdzeK1z5pXbbsT0dABARHhreRiFzoS/bFoXZ/WH
 2ldrOo42mSskwpYj8So4Hs5Q1jbsn/Xc/xsOeGy10/v4n4E2nzZYkKUK+
 cIjNekZp9Kl+qMPxzUtKk2z1/1JhrxU6ZykiQksHXgrcEcoZIg4gRD1Da
 7o85gpUHO9eugLnsVXtC7fD09fwQreoo47RKCpuKPrN3cHyI+TYhkMWfu
 Oh0FaYgH+wPG1RdGLboJ3ypnr85BVC4biOU/CzebHfSEtpdU4wGxf1Mob A==;
X-CSE-ConnectionGUID: ja47+nsgSnifJgKMCqMMrQ==
X-CSE-MsgGUID: 09C3L02USJG0DtvVm3TuLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45570111"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="45570111"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:00:22 -0700
X-CSE-ConnectionGUID: agFPSZFXTdiYt0H+HTD9rA==
X-CSE-MsgGUID: hWf7wLrHTDeHsHm43s19rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133729710"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 07:00:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 10/10] drm/i915: Add force link bpp debugfs entry to
 connectors
In-Reply-To: <Z_Z4ENIrN-czndqa@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250408214342.1953197-1-imre.deak@intel.com>
 <20250408214342.1953197-11-imre.deak@intel.com> <87zfgpwxz9.fsf@intel.com>
 <Z_Z4ENIrN-czndqa@ideak-desk.fi.intel.com>
Date: Wed, 09 Apr 2025 17:00:18 +0300
Message-ID: <87frihwi31.fsf@intel.com>
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

On Wed, 09 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Wed, Apr 09, 2025 at 11:16:58AM +0300, Jani Nikula wrote:
>> On Wed, 09 Apr 2025, Imre Deak <imre.deak@intel.com> wrote:
>> > Add the debugfs entry to force a link bpp to all relevant connectors:
>> > all DP connectors and on an FDI link CRT/SDVO/LVDS/HDMI connectors.
>> 
>> This deviates from the current approach of intel_connector_register()
>> calling intel_connector_debugfs_add() which checks for connector types
>> and other conditions before registering debugfs files.
>> 
>> In many cases intel_connector_debugfs_add() unconditionally calls
>> feature specific debugfs functions such as
>> intel_hdcp_connector_debugfs_add() which then check the connector type.
>> 
>> I understand the motivation in this patch, being more object oriented
>> and all, but it's still a deviation. I prefer the same approach for
>> all. Currently it's obvious where all connector debugfs files get
>> registered. After this patch, it's not, and it's no longer clear cut
>> where connector debugfs files should be created.
>
> I think the better approach is each connector adding the debugfs entries
> relevant to them, even for the existing hdcp, pps, psr etc. entries. That
> would avoid all the connector_type checks, replicated now in all the
> *_connector_debugfs_add() functions. It's also odd to recheck the
> connector type on a code path the connector type is already known to the
> caller.

I'm not saying that's not a valid argument. And I said I understand the
motivation.

I just don't want this done for a single debugfs entry in a series about
something completely different, essentially leaving behind a mix of two
entirely different approaches.

In the past switching to your proposed approach wasn't really even an
option because everything was still in intel_display_debugfs.c. We've
gradually moved away from that. And arguably the work of moving the
debugfs next to the functionality should be completed first, before
starting another refactoring. intel_connector_debugfs_add() should just
be a function calling intel_*_connector_debugfs_add() functions instead
of having inlined debugfs creation.

BR,
Jani.



>
> This approach would also match how the connector specific properties are
> added.
>
>> Please add the connector type checks in
>> intel_link_bw_connector_debugfs_add() and call it from
>> intel_connector_debugfs_add().
>> 
>> 
>> BR,
>> Jani.
>> 
>> 
>> >
>> > Signed-off-by: Imre Deak <imre.deak@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/intel_crt.c      | 20 ++++++++++++++++++-
>> >  .../drm/i915/display/intel_display_device.h   |  1 +
>> >  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +++
>> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 ++
>> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |  8 +++++++-
>> >  drivers/gpu/drm/i915/display/intel_lvds.c     | 20 ++++++++++++++++++-
>> >  drivers/gpu/drm/i915/display/intel_sdvo.c     | 20 ++++++++++++++++++-
>> >  7 files changed, 70 insertions(+), 4 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
>> > index cca22d2402e88..69831d6f68912 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
>> > @@ -43,6 +43,7 @@
>> >  #include "intel_ddi.h"
>> >  #include "intel_ddi_buf_trans.h"
>> >  #include "intel_de.h"
>> > +#include "intel_display_device.h"
>> >  #include "intel_display_driver.h"
>> >  #include "intel_display_types.h"
>> >  #include "intel_fdi.h"
>> > @@ -51,6 +52,7 @@
>> >  #include "intel_gmbus.h"
>> >  #include "intel_hotplug.h"
>> >  #include "intel_hotplug_irq.h"
>> > +#include "intel_link_bw.h"
>> >  #include "intel_load_detect.h"
>> >  #include "intel_pch_display.h"
>> >  #include "intel_pch_refclk.h"
>> > @@ -986,13 +988,29 @@ void intel_crt_reset(struct drm_encoder *encoder)
>> >  
>> >  }
>> >  
>> > +static int intel_crt_connector_register(struct drm_connector *_connector)
>> > +{
>> > +	struct intel_connector *connector = to_intel_connector(_connector);
>> > +	struct intel_display *display = to_intel_display(connector);
>> > +	int err;
>> > +
>> > +	err = intel_connector_register(&connector->base);
>> > +	if (err)
>> > +		return err;
>> > +
>> > +	if (HAS_FDI(display))
>> > +		intel_link_bw_connector_debugfs_add(connector);
>> > +
>> > +	return 0;
>> > +}
>> > +
>> >  /*
>> >   * Routines for controlling stuff on the analog port
>> >   */
>> >  
>> >  static const struct drm_connector_funcs intel_crt_connector_funcs = {
>> >  	.fill_modes = drm_helper_probe_single_connector_modes,
>> > -	.late_register = intel_connector_register,
>> > +	.late_register = intel_crt_connector_register,
>> >  	.early_unregister = intel_connector_unregister,
>> >  	.destroy = intel_connector_destroy,
>> >  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>> > index 368b0d3417c26..a84bdc83417f1 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> > @@ -171,6 +171,7 @@ struct intel_display_platforms {
>> >  #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
>> >  #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
>> >  #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
>> > +#define HAS_FDI(__display)		(IS_DISPLAY_VER((__display), 5, 8) && !HAS_GMCH(__display))
>> >  #define HAS_HOTPLUG(__display)		(DISPLAY_INFO(__display)->has_hotplug)
>> >  #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
>> >  #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> > index 8ca33ebedce27..0b19a9b5adda5 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> > @@ -80,6 +80,7 @@
>> >  #include "intel_hdmi.h"
>> >  #include "intel_hotplug.h"
>> >  #include "intel_hotplug_irq.h"
>> > +#include "intel_link_bw.h"
>> >  #include "intel_lspcon.h"
>> >  #include "intel_lvds.h"
>> >  #include "intel_modeset_lock.h"
>> > @@ -5890,6 +5891,8 @@ intel_dp_connector_register(struct drm_connector *_connector)
>> >  	if (ret)
>> >  		return ret;
>> >  
>> > +	intel_link_bw_connector_debugfs_add(connector);
>> > +
>> >  	drm_dbg_kms(display->drm, "registering %s bus for %s\n",
>> >  		    intel_dp->aux.name, connector->base.kdev->kobj.name);
>> >  
>> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > index 35214d9a8c781..7508aa4e3695f 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> > @@ -1445,6 +1445,8 @@ mst_connector_late_register(struct drm_connector *_connector)
>> >  	if (ret < 0)
>> >  		drm_dp_mst_connector_early_unregister(&connector->base, connector->mst.port);
>> >  
>> > +	intel_link_bw_connector_debugfs_add(connector);
>> > +
>> >  	return ret;
>> >  }
>> >  
>> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > index 8f2cef36bdf79..0747ef8d6c0ca 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
>> > @@ -52,6 +52,7 @@
>> >  #include "intel_cx0_phy.h"
>> >  #include "intel_ddi.h"
>> >  #include "intel_de.h"
>> > +#include "intel_display_device.h"
>> >  #include "intel_display_driver.h"
>> >  #include "intel_display_types.h"
>> >  #include "intel_dp.h"
>> > @@ -60,6 +61,7 @@
>> >  #include "intel_hdcp_regs.h"
>> >  #include "intel_hdcp_shim.h"
>> >  #include "intel_hdmi.h"
>> > +#include "intel_link_bw.h"
>> >  #include "intel_lspcon.h"
>> >  #include "intel_panel.h"
>> >  #include "intel_pfit.h"
>> > @@ -2611,13 +2613,17 @@ static int
>> >  intel_hdmi_connector_register(struct drm_connector *_connector)
>> >  {
>> >  	struct intel_connector *connector = to_intel_connector(_connector);
>> > +	struct intel_display *display = to_intel_display(connector);
>> >  	int ret;
>> >  
>> >  	ret = intel_connector_register(&connector->base);
>> >  	if (ret)
>> >  		return ret;
>> >  
>> > -	return ret;
>> > +	if (HAS_FDI(display))
>> > +		intel_link_bw_connector_debugfs_add(connector);
>> > +
>> > +	return 0;
>> >  }
>> >  
>> >  static void intel_hdmi_connector_unregister(struct drm_connector *_connector)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
>> > index 89d26913e2539..3ac6aaa025434 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>> > @@ -45,10 +45,12 @@
>> >  #include "intel_backlight.h"
>> >  #include "intel_connector.h"
>> >  #include "intel_de.h"
>> > +#include "intel_display_device.h"
>> >  #include "intel_display_types.h"
>> >  #include "intel_dpll.h"
>> >  #include "intel_fdi.h"
>> >  #include "intel_gmbus.h"
>> > +#include "intel_link_bw.h"
>> >  #include "intel_lvds.h"
>> >  #include "intel_lvds_regs.h"
>> >  #include "intel_panel.h"
>> > @@ -501,6 +503,22 @@ static int intel_lvds_get_modes(struct drm_connector *_connector)
>> >  	return intel_panel_get_modes(connector);
>> >  }
>> >  
>> > +static int intel_lvds_connector_register(struct drm_connector *_connector)
>> > +{
>> > +	struct intel_connector *connector = to_intel_connector(_connector);
>> > +	struct intel_display *display = to_intel_display(connector);
>> > +	int err;
>> > +
>> > +	err = intel_connector_register(&connector->base);
>> > +	if (err)
>> > +		return err;
>> > +
>> > +	if (HAS_FDI(display))
>> > +		intel_link_bw_connector_debugfs_add(connector);
>> > +
>> > +	return 0;
>> > +}
>> > +
>> >  static const struct drm_connector_helper_funcs intel_lvds_connector_helper_funcs = {
>> >  	.get_modes = intel_lvds_get_modes,
>> >  	.mode_valid = intel_lvds_mode_valid,
>> > @@ -512,7 +530,7 @@ static const struct drm_connector_funcs intel_lvds_connector_funcs = {
>> >  	.fill_modes = drm_helper_probe_single_connector_modes,
>> >  	.atomic_get_property = intel_digital_connector_atomic_get_property,
>> >  	.atomic_set_property = intel_digital_connector_atomic_set_property,
>> > -	.late_register = intel_connector_register,
>> > +	.late_register = intel_lvds_connector_register,
>> >  	.early_unregister = intel_connector_unregister,
>> >  	.destroy = intel_connector_destroy,
>> >  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>> > diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> > index 757b9ce7e3b1c..ab7caaa4f287f 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>> > @@ -45,6 +45,7 @@
>> >  #include "intel_connector.h"
>> >  #include "intel_crtc.h"
>> >  #include "intel_de.h"
>> > +#include "intel_display_device.h"
>> >  #include "intel_display_driver.h"
>> >  #include "intel_display_types.h"
>> >  #include "intel_fdi.h"
>> > @@ -52,6 +53,7 @@
>> >  #include "intel_gmbus.h"
>> >  #include "intel_hdmi.h"
>> >  #include "intel_hotplug.h"
>> > +#include "intel_link_bw.h"
>> >  #include "intel_panel.h"
>> >  #include "intel_sdvo.h"
>> >  #include "intel_sdvo_regs.h"
>> > @@ -2502,12 +2504,28 @@ intel_sdvo_connector_duplicate_state(struct drm_connector *connector)
>> >  	return &state->base.base;
>> >  }
>> >  
>> > +static int intel_sdvo_connector_register(struct drm_connector *_connector)
>> > +{
>> > +	struct intel_connector *connector = to_intel_connector(_connector);
>> > +	struct intel_display *display = to_intel_display(connector);
>> > +	int err;
>> > +
>> > +	err = intel_connector_register(&connector->base);
>> > +	if (err)
>> > +		return err;
>> > +
>> > +	if (HAS_FDI(display))
>> > +		intel_link_bw_connector_debugfs_add(connector);
>> > +
>> > +	return 0;
>> > +}
>> > +
>> >  static const struct drm_connector_funcs intel_sdvo_connector_funcs = {
>> >  	.detect = intel_sdvo_detect,
>> >  	.fill_modes = drm_helper_probe_single_connector_modes,
>> >  	.atomic_get_property = intel_sdvo_connector_atomic_get_property,
>> >  	.atomic_set_property = intel_sdvo_connector_atomic_set_property,
>> > -	.late_register = intel_connector_register,
>> > +	.late_register = intel_sdvo_connector_register,
>> >  	.early_unregister = intel_connector_unregister,
>> >  	.destroy = intel_connector_destroy,
>> >  	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>> 
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
