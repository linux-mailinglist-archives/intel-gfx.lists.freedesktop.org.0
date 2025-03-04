Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9E5A4DDC5
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 13:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDEFC10E595;
	Tue,  4 Mar 2025 12:22:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kAf/Wdc1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D94D10E595
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 12:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741090935; x=1772626935;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=hl/lI6pa7smaICXFtOP6OrEsc7IRJFrXI3gUD9AP6Wo=;
 b=kAf/Wdc1a3y04rlTSDJOWF59rimMXc4ZLWmMJhbofUWJtlfVZL4u/9pC
 8OJQA7Q2K8TSEHi20kFAiDlY3rrTCPvjFkYO9mur4/EVW+G5r0Nz6dxNE
 8LpPYewjX2W/lLX53bGRXVj12KMEAhHrGRbCAMTfKf8sSXbHlfFEy0r2L
 kmTv3pfjXjN7tpNxIXdkucRLeMULP8Td2fcmst6oDH58wuDBgAgYEpZ+f
 Ji4en3zYNO8SKgOGvdMafLPt2/4XWssEB1LvN0bnjAA63EYEwvEZKNAl6
 w/aA2YazYcW/cpCv9C/0pvfO7UlJcVP7rzarCiL5ZYTzD/w1j+5B47QSZ w==;
X-CSE-ConnectionGUID: eaepr04pQ76oSUUJKjlCiA==
X-CSE-MsgGUID: Gl97+t4+RLCPl0PEcwFy/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="52650932"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="52650932"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:22:15 -0800
X-CSE-ConnectionGUID: +hFN0ysiTwmdzLBDx2cpkQ==
X-CSE-MsgGUID: FyceuNpgSH+znTKPiysYXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="123478941"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 04:22:14 -0800
Date: Tue, 4 Mar 2025 14:22:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Mohammed Thasleem <mohammed.thasleem@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v3] drm/i915/dmc: Create debugfs entry for dc6 counter
Message-ID: <Z8bwYgJ7Gch2Ldr2@ideak-desk.fi.intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <20250303192319.4315-1-mohammed.thasleem@intel.com>
 <Z8bdMhVqZcUMI2XF@ideak-desk.fi.intel.com>
 <87mse1yos0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87mse1yos0.fsf@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 04, 2025 at 02:16:15PM +0200, Jani Nikula wrote:
> On Tue, 04 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> > On Tue, Mar 04, 2025 at 12:53:19AM +0530, Mohammed Thasleem wrote:
> >> Starting from MTL we don't have a platform agnostic way to validate
> >> DC6 state due to dc6 counter has been removed to validate DC state.
> >> 
> >> The goal is to validate that the display HW can reach the DC6 power
> >> state. There is no HW DC6 residency counter (and there wasn't such
> >> a counter earlier either), so an alternative way is required. According
> >> to the HW team the display driver has programmed everything correctly in
> >> order to allow the DC6 power state if the DC5 power state is reached
> >> (indicated by the HW DC5 residency counter incrementing) and DC6 is
> >> enabled by the driver.
> >> 
> >> Driver could take a snapshot of the DC5 residency counter right
> >> after it enables DC6 (dc5_residency_start) and increment the SW
> >> DC6 residency counter right before it disables DC6 or when user space
> >> reads the DC6 counter. So the driver would update the counter at these
> >> two points in the following way:
> >> dc6_residency_counter += dc5_current_count - dc5_start_count
> >> 
> >> v2: Update the discription. (Imre)
> >>     Read dc5 count during dc6 enable and disable then and update
> >>     dc6 residency counter. (Imre)
> >>     Remove variable from dmc structure. (Jani)
> >>     Updated the subject title.
> >> v3: Add i915_power_domains lock to updated dc6 count in debugfs. (Imre)
> >>     Use flags to check dc6 enable/disable states. (Imre)
> >>     Move the display version check and counter read/update to
> >>     a helper. (Imre)
> >>     Resize the variable length. (Rodrigo)
> >>     Use old dc6 debugfs entry for every platform. (Rodrigo)
> >> 
> >> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> >> ---
> >>  .../gpu/drm/i915/display/intel_display_core.h |  2 ++
> >>  .../i915/display/intel_display_power_well.c   | 26 +++++++++++++++++++
> >>  .../i915/display/intel_display_power_well.h   |  1 +
> >>  drivers/gpu/drm/i915/display/intel_dmc.c      | 21 ++++++++++++---
> >>  4 files changed, 47 insertions(+), 3 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> index 554870d2494b..1608268bd9e2 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> @@ -490,6 +490,8 @@ struct intel_display {
> >>  
> >>  		/* perform PHY state sanity checks? */
> >>  		bool chv_phy_assert[2];
> >> +		unsigned int dc6_count;
> >
> > I think it's better to use dc6_allowed_count as Rodrigo suggested, not
> > regarding it as a counter for actual DC6 transitions.
> >
> >> +		unsigned int dc5_start_count;
> >>  	} power;
> >>  
> >>  	struct {
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> index 5b60db597329..8478e687abb7 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> >> @@ -17,6 +17,7 @@
> >>  #include "intel_dkl_phy.h"
> >>  #include "intel_dkl_phy_regs.h"
> >>  #include "intel_dmc.h"
> >> +#include "intel_dmc_regs.h"
> >>  #include "intel_dmc_wl.h"
> >>  #include "intel_dp_aux_regs.h"
> >>  #include "intel_dpio_phy.h"
> >> @@ -728,6 +729,22 @@ void gen9_sanitize_dc_state(struct intel_display *display)
> >>  	power_domains->dc_state = val;
> >>  }
> >>  
> >> +void update_dc6_count(struct intel_display *display, bool dc6_en_dis)
> >
> > Maybe rename dc6_en_dis to start_tracking?
> >
> > As Jani suggested the function should be in intel_dmc.c
> 
> Well, maybe.
> 
> I think the DMC register read should be in intel_dmc.c.
> 
> But maybe the display->power.* handling should be in
> intel_display_power(_well).c?

I think the counters should be stored in the intel_dmc struct and the
dc6_allowed_count should be returned via an interface (for instance just
make the above function return it).

> IOW, make the functions and interfaces make sense for both. Now there's
> no logic in the division.
> 
> 
> BR,
> Jani.
> 
> -- 
> Jani Nikula, Intel
