Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52477A25F64
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 17:00:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF61C892F6;
	Mon,  3 Feb 2025 16:00:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ls6VpZjW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 299FC892F6
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 16:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738598429; x=1770134429;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=9pVukedneMw8U4QbqyjRuGXqBy4BfIRgztD4Ry+2iwc=;
 b=ls6VpZjWbC8IU8E+yie1ubUl3H9izrmL9N87Frf19JsKDK1rx7iSWXGb
 L10SeIWgjybBdT32a0KBMCyG1v3B+3Zll/cAzIggxanVUju7j2E/qhszi
 7rzfM8UVMDHe/Lrz/ebMXnyO4vOvf82XwGliDn9RiS15XZHArMd2OduBN
 5R+m0ZSmkJxvYzVq31S8AMJGGOvWrffnxgW6YVlX9v3sy1Hbgc/AYCksP
 IcYZA1lTO4B7SC2U8qq95Zr7Dwe7077Xt9XJl1TTw7MUBsKZxrrnrF9FN
 NAM1bmkvxcZcZcywnSCmlzkJ3I1f87NOK/QVogSqDaGUpSWiecHG9jn8f Q==;
X-CSE-ConnectionGUID: KljtSZ3jQuiQOMQKiwlk4w==
X-CSE-MsgGUID: 3HAGyIi4SwCT80Ih2cZL8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="50087812"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="50087812"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:00:29 -0800
X-CSE-ConnectionGUID: 72V7pJ4SQqadLAEibK3+Bg==
X-CSE-MsgGUID: PpqCgJHdQduGvhp9DFg/0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115475742"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:00:28 -0800
Date: Mon, 3 Feb 2025 18:01:25 +0200
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>,
 Mohammed Thasleem <mohammed.thasleem@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Message-ID: <Z6DoVSEBaVp1QcC3@ideak-desk.fi.intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <Z6C5-qxVQTYB3LHc@ideak-desk.fi.intel.com>
 <173858999403.77773.2784787564938835855@intel.com>
 <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <173859479977.77773.12623605896722676495@intel.com>
 <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com>
 <Z6DktvZQ-NzLnab9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6DktvZQ-NzLnab9@intel.com>
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

On Mon, Feb 03, 2025 at 10:45:58AM -0500, Rodrigo Vivi wrote:
> On Mon, Feb 03, 2025 at 05:14:10PM +0200, Imre Deak wrote:
> > On Mon, Feb 03, 2025 at 11:59:59AM -0300, Gustavo Sousa wrote:
> > > Quoting Imre Deak (2025-02-03 11:26:19-03:00)
> > > >On Mon, Feb 03, 2025 at 10:39:54AM -0300, Gustavo Sousa wrote:
> > > >> Quoting Imre Deak (2025-02-03 09:43:38-03:00)
> > > >> >On Mon, Feb 03, 2025 at 02:26:13PM +0530, Mohammed Thasleem wrote:
> > > >> >> Starting from MTl we don't have a platform agnostic way to validate DC6 state
> > > >> >> due to dc6 counter has been removed to validate DC state.
> > > >> >> Adding dc6_entry_counter at display dirver to validate dc6 state.
> > > >> >> 
> > > >> >> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > > >> >> ---
> > > >> >>  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
> > > >> >>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
> > > >> >>  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
> > > >> >>  3 files changed, 4 insertions(+)
> > > >> >> 
> > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > >> >> index 554870d2494b..cc244617011f 100644
> > > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > >> >> @@ -376,6 +376,7 @@ struct intel_display {
> > > >> >>          struct {
> > > >> >>                  struct intel_dmc *dmc;
> > > >> >>                  intel_wakeref_t wakeref;
> > > >> >> +                u32 dc6_entry_counter;
> > > >> >>          } dmc;
> > > >> >>  
> > > >> >>          struct {
> > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > >> >> index f45a4f9ba23c..0eb178aa618d 100644
> > > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > >> >> @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display)
> > > >> >>          intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
> > > >> >>  
> > > >> >>          gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
> > > >> >> +
> > > >> >> +        display->dmc.dc6_entry_counter++;
> > > >> >
> > > >> >AFAIU the goal is to validate that the display HW can reach the DC6
> > > >> >power state. There is no HW DC6 residency counter (and there wasn't such
> > > >> >a counter earlier either), so an alternative way is required. According
> > > >> >to the HW team the display driver has programmed everything correctly in
> > > >> >order to allow the DC6 power state if the DC5 power state is reached
> > > >> >(indicated by the HW DC5 residency counter incrementing) and DC6 is
> > > >> >enabled by the driver.
> > > >> 
> > > >> Yep. That's what I learned as well when looking into this stuff a while
> > > >> ago.
> > > >> 
> > > >> >Based on the above, we'd need a DC6 residency counter maintained by the
> > > >> >driver which is incremented if the DC5 residency counter increments
> > > 
> > > By the way, the counter that we currently have in our driver is the one
> > > incremented by the DMC. I was meaning to send a patch for the residency
> > > counter maintained by the hardware, but have not yet... In theory, that
> > > one should be more accurate, but would require us to enable and disable
> > > that counter as the IGT test starts and finishes.
> > > 
> > > >> >while DC6 is enabled. The dc6_entry_counter in this patch is not enough
> > > >> >for this, since it doesn't take into account the DC5 residency. While
> > > >> >user space could check both dc6_entry_counter and the DC5 residency,
> > > >> >that check would be racy wrt. the driver enabling/disabling the DC6
> > > >> >state asynchronously.
> > > >> 
> > > >> I'm not sure doing a driver-maintained dc6 entry counter would be
> > > >> something worth implementing. Even if we have successfully entered DC5
> > > >> and, in theory, DC6 would follow if enabled, this would be a synthetic
> > > >> counter and it could be masking some hardware bug that could be
> > > >> preventing DC6.
> > > >
> > > >According to the HW team the DC5 residency counter incrementing while
> > > >DC6 is enabled is a guarantee that the display is configured correctly
> > > >to allow the HW entering DC6 at all times. IOW this is the HW team's
> > > >suggestion to validate DC6 at the moment.
> > > >
> > > >> On the IGT side, we could just skip if we are on a platform that does
> > > >> not support DC6 counters, at least while we do not have a reliable
> > > >> alternative way of checking for DC6.
> > > >
> > > >I think IGT would need to validate DC6 in the above way suggested by the
> > > >HW team.
> > > 
> > > I'm still inclined to think that we should defer DC6 checking for when
> > > we actually have a way to verify it. The way suggested above sounds
> > > like: *trust* that DC6 is reached when DC5 is reached with DC6 enabled.
> > > 
> > > In that case, just checking for DC5 should be enough for the time
> > > being...
> > 
> > That's not the same as DC5 incrementing while DC6 is enabled.
> > 
> > > I won't object further if we do the other way though.
> > > 
> > > >
> > > >> It would be good if we could detect that PG0 was in fact disabled, which
> > > >> I believe is a stronger indication of DC6.
> > > >
> > > >It would be good to have a HW DC6 residency counter, but there isn't one
> > > >at the moment. Other ways may have a dependency on other, non-display HW
> > > >blocks, for instance in case of shared clock/voltage resources, the
> > > >display functionality validation shouldn't be affected by these HW
> > > >blocks.
> > > 
> > > As far as I understand by reading the docs, DC6 is DC5 with PG0
> > > disabled. That's why my suggestion above.
> > > 
> > > --
> > > Gustavo Sousa
> > > 
> > > >
> > > >> --
> > > >> Gustavo Sousa
> > > >> 
> > > >> >
> > > >> >I suppose the driver could take a snapshot of the DC5 residency counter
> > > >> >right after it enables DC6 (dc5_residency_start) and increment the SW
> > > >> >DC6 residency counter right before it disables DC6 or when user space
> > > >> >reads the DC6 counter. So the driver would update the counter at these
> > > >> >two points in the following way:
> > > >> >dc6_residency += dc5_residency_current - dc5_residency_start
> 
> Hmm I don't have a good feeling about this.
> 
> I prefer that we are clear to the userspace(IGT) that is an extra flag
> and not to pretend that we have a residency counter.
> 
> So, we either are clear that we are counting the entries, or having
> a flag that tells that we are allowing dc6. Which btw, could be done
> by IGT checking DC6_EN bit directly, no?!

A DC6 enabled check alone would be not enough and checking it from user
space along with the DC5 counter would be racy as described above. I see
this working by the driver tracking the DC6 enabled flag + the DC5
counter in the above way; it could be exposed to user space with a
suitable name, eg. dc6_allowed_time.

> > > >> >The commit log would need a justification, something along the above
> > > >> >lines.
> > > >> >
> > > >> >>  }
> > > >> >>  
> > > >> >>  void bxt_enable_dc9(struct intel_display *display)
> > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > >> >> index 221d3abda791..f51bd8e6011d 100644
> > > >> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > >> >> @@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> > > >> >>          if (i915_mmio_reg_valid(dc6_reg))
> > > >> >>                  seq_printf(m, "DC5 -> DC6 count: %d\n",
> > > >> >>                             intel_de_read(display, dc6_reg));
> > > >> >> +        seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_entry_counter);
> > > >> >>  
> > > >> >>          seq_printf(m, "program base: 0x%08x\n",
> > > >> >>                     intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> > > >> >> -- 
> > > >> >> 2.43.0
> > > >> >>
