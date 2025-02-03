Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0615A25FDC
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 17:26:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2AD910E4FF;
	Mon,  3 Feb 2025 16:26:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BdsmQ2U0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EDF710E4FF
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738599985; x=1770135985;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ko7e2rM3GrTLbz/Ultx45QNO4eDeZ+cmE9fF4H9QbCs=;
 b=BdsmQ2U0P482tE6zPEF0TbMRIgiIEl9Ijvwjsu7765oWzP6B41ydYU6E
 BIZxd7gq+BUmtskUFi7tGoeg8DVPaOAOtJuYirm8t6DVEn9JTaMdXriUz
 jWs6pnK4Pvnp1eNV2yB7ts2/Rci/3OBGb+dvWc79bExPNjMQQB1Ue2m9n
 LkqBO1SqMNFGNlM9xGq10s3ZhLelnDw8at3nVSYR6CGQjteaejoG/SEzU
 47KnUY9pI0CZoYHk18xKAGKoJQKEl5U4gPTQ6BMTFsQNJT1H6TTs+7RKs
 xt4gNNue/gd8WsX4ZnvpjBNZ5OJhvFbzqPtdzQrvNsw3lxJH1FyRwdCcP g==;
X-CSE-ConnectionGUID: QTruVPjuTpaqqEEdrejyNw==
X-CSE-MsgGUID: LpEvfZQ8Rya4CivoIQinTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="56637120"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="56637120"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:26:25 -0800
X-CSE-ConnectionGUID: WU2ROqcETNSD/ZgUhNkeng==
X-CSE-MsgGUID: IiEa+xHKQueAOC4TgE0NAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="141186364"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 08:26:23 -0800
Date: Mon, 3 Feb 2025 18:27:17 +0200
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>,
 Mohammed Thasleem <mohammed.thasleem@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Message-ID: <Z6DuZS_9hVqzZuwA@ideak-desk.fi.intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <Z6C5-qxVQTYB3LHc@ideak-desk.fi.intel.com>
 <173858999403.77773.2784787564938835855@intel.com>
 <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <173859479977.77773.12623605896722676495@intel.com>
 <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com>
 <Z6DktvZQ-NzLnab9@intel.com>
 <Z6DoVSEBaVp1QcC3@ideak-desk.fi.intel.com>
 <Z6Dq8iF96I-nBkPh@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z6Dq8iF96I-nBkPh@intel.com>
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

On Mon, Feb 03, 2025 at 11:12:34AM -0500, Rodrigo Vivi wrote:
> On Mon, Feb 03, 2025 at 06:01:25PM +0200, Imre Deak wrote:
> > On Mon, Feb 03, 2025 at 10:45:58AM -0500, Rodrigo Vivi wrote:
> > > On Mon, Feb 03, 2025 at 05:14:10PM +0200, Imre Deak wrote:
> > > > On Mon, Feb 03, 2025 at 11:59:59AM -0300, Gustavo Sousa wrote:
> > > > > Quoting Imre Deak (2025-02-03 11:26:19-03:00)
> > > > > >On Mon, Feb 03, 2025 at 10:39:54AM -0300, Gustavo Sousa wrote:
> > > > > >> Quoting Imre Deak (2025-02-03 09:43:38-03:00)
> > > > > >> >On Mon, Feb 03, 2025 at 02:26:13PM +0530, Mohammed Thasleem wrote:
> > > > > >> >> Starting from MTl we don't have a platform agnostic way to validate DC6 state
> > > > > >> >> due to dc6 counter has been removed to validate DC state.
> > > > > >> >> Adding dc6_entry_counter at display dirver to validate dc6 state.
> > > > > >> >>
> > > > > >> >> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > > > > >> >> ---
> > > > > >> >>  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
> > > > > >> >>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
> > > > > >> >>  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
> > > > > >> >>  3 files changed, 4 insertions(+)
> > > > > >> >>
> > > > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > > >> >> index 554870d2494b..cc244617011f 100644
> > > > > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > > > > >> >> @@ -376,6 +376,7 @@ struct intel_display {
> > > > > >> >>          struct {
> > > > > >> >>                  struct intel_dmc *dmc;
> > > > > >> >>                  intel_wakeref_t wakeref;
> > > > > >> >> +                u32 dc6_entry_counter;
> > > > > >> >>          } dmc;
> > > > > >> >>
> > > > > >> >>          struct {
> > > > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > >> >> index f45a4f9ba23c..0eb178aa618d 100644
> > > > > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > > > > >> >> @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display)
> > > > > >> >>          intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
> > > > > >> >>
> > > > > >> >>          gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
> > > > > >> >> +
> > > > > >> >> +        display->dmc.dc6_entry_counter++;
> > > > > >> >
> > > > > >> >AFAIU the goal is to validate that the display HW can reach the DC6
> > > > > >> >power state. There is no HW DC6 residency counter (and there wasn't such
> > > > > >> >a counter earlier either), so an alternative way is required. According
> > > > > >> >to the HW team the display driver has programmed everything correctly in
> > > > > >> >order to allow the DC6 power state if the DC5 power state is reached
> > > > > >> >(indicated by the HW DC5 residency counter incrementing) and DC6 is
> > > > > >> >enabled by the driver.
> > > > > >>
> > > > > >> Yep. That's what I learned as well when looking into this stuff a while
> > > > > >> ago.
> > > > > >>
> > > > > >> >Based on the above, we'd need a DC6 residency counter maintained by the
> > > > > >> >driver which is incremented if the DC5 residency counter increments
> > > > >
> > > > > By the way, the counter that we currently have in our driver is the one
> > > > > incremented by the DMC. I was meaning to send a patch for the residency
> > > > > counter maintained by the hardware, but have not yet... In theory, that
> > > > > one should be more accurate, but would require us to enable and disable
> > > > > that counter as the IGT test starts and finishes.
> > > > >
> > > > > >> >while DC6 is enabled. The dc6_entry_counter in this patch is not enough
> > > > > >> >for this, since it doesn't take into account the DC5 residency. While
> > > > > >> >user space could check both dc6_entry_counter and the DC5 residency,
> > > > > >> >that check would be racy wrt. the driver enabling/disabling the DC6
> > > > > >> >state asynchronously.
> > > > > >>
> > > > > >> I'm not sure doing a driver-maintained dc6 entry counter would be
> > > > > >> something worth implementing. Even if we have successfully entered DC5
> > > > > >> and, in theory, DC6 would follow if enabled, this would be a synthetic
> > > > > >> counter and it could be masking some hardware bug that could be
> > > > > >> preventing DC6.
> > > > > >
> > > > > >According to the HW team the DC5 residency counter incrementing while
> > > > > >DC6 is enabled is a guarantee that the display is configured correctly
> > > > > >to allow the HW entering DC6 at all times. IOW this is the HW team's
> > > > > >suggestion to validate DC6 at the moment.
> > > > > >
> > > > > >> On the IGT side, we could just skip if we are on a platform that does
> > > > > >> not support DC6 counters, at least while we do not have a reliable
> > > > > >> alternative way of checking for DC6.
> > > > > >
> > > > > >I think IGT would need to validate DC6 in the above way suggested by the
> > > > > >HW team.
> > > > >
> > > > > I'm still inclined to think that we should defer DC6 checking for when
> > > > > we actually have a way to verify it. The way suggested above sounds
> > > > > like: *trust* that DC6 is reached when DC5 is reached with DC6 enabled.
> > > > >
> > > > > In that case, just checking for DC5 should be enough for the time
> > > > > being...
> > > >
> > > > That's not the same as DC5 incrementing while DC6 is enabled.
> > > >
> > > > > I won't object further if we do the other way though.
> > > > >
> > > > > >
> > > > > >> It would be good if we could detect that PG0 was in fact disabled, which
> > > > > >> I believe is a stronger indication of DC6.
> > > > > >
> > > > > >It would be good to have a HW DC6 residency counter, but there isn't one
> > > > > >at the moment. Other ways may have a dependency on other, non-display HW
> > > > > >blocks, for instance in case of shared clock/voltage resources, the
> > > > > >display functionality validation shouldn't be affected by these HW
> > > > > >blocks.
> > > > >
> > > > > As far as I understand by reading the docs, DC6 is DC5 with PG0
> > > > > disabled. That's why my suggestion above.
> > > > >
> > > > > --
> > > > > Gustavo Sousa
> > > > >
> > > > > >
> > > > > >> --
> > > > > >> Gustavo Sousa
> > > > > >>
> > > > > >> >
> > > > > >> >I suppose the driver could take a snapshot of the DC5 residency counter
> > > > > >> >right after it enables DC6 (dc5_residency_start) and increment the SW
> > > > > >> >DC6 residency counter right before it disables DC6 or when user space
> > > > > >> >reads the DC6 counter. So the driver would update the counter at these
> > > > > >> >two points in the following way:
> > > > > >> >dc6_residency += dc5_residency_current - dc5_residency_start
> > >
> > > Hmm I don't have a good feeling about this.
> > >
> > > I prefer that we are clear to the userspace(IGT) that is an extra flag
> > > and not to pretend that we have a residency counter.
> > >
> > > So, we either are clear that we are counting the entries, or having
> > > a flag that tells that we are allowing dc6. Which btw, could be done
> > > by IGT checking DC6_EN bit directly, no?!
> >
> > A DC6 enabled check alone would be not enough and checking it from user
> > space along with the DC5 counter would be racy as described above. I see
> > this working by the driver tracking the DC6 enabled flag + the DC5
> > counter in the above way; it could be exposed to user space with a
> > suitable name, eg. dc6_allowed_time.
> 
> Right, the name and new entry in the debugfs file would make this
> better because we wouldn't be pretending 'residency', specially
> with no guarantee that it would enter.
> 
> However I'd like to keep things simple. Stepping back to see
> what the use case from the test are trying to really
> accomplish:
> 
>   * SUBTEST: dc6-dpms
>   * Description: Validate display engine entry to DC6 state while all connectors's
>   *              DPMS property set to OFF
>   *
>   * SUBTEST: dc6-psr
>   * Description: This test validates display engine entry to DC6 state while PSR is active
>   * Functionality: pm_dc, psr1
> 
> Of course, we already know that it is impossible to validate
> that the display engine itself entered that. But we can
> at least validate that our driver is allowing that condition.
> 
> This is with fake residency, with the allowed_time, but also
> with the simple counter that Mohammed added, or also just
> by checking the register directly...
> 
>  _MMIO(0x45504) & 0x3 == 2 // in idle scenario described above should be enough imho

The driver enabling DC6 is not an enough condition for DC6 being allowed
from the display side. Some display clock gating etc. configuration by
the driver could be blocking it. According to the HW team, DC5 being
entered while DC6 is enabled is a guarantee that DC6 is allowed from the
display side - i.e. the driver has configured everything correctly for
that.

> > > > > >> >The commit log would need a justification, something along the above
> > > > > >> >lines.
> > > > > >> >
> > > > > >> >>  }
> > > > > >> >>
> > > > > >> >>  void bxt_enable_dc9(struct intel_display *display)
> > > > > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > >> >> index 221d3abda791..f51bd8e6011d 100644
> > > > > >> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > >> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > > > >> >> @@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> > > > > >> >>          if (i915_mmio_reg_valid(dc6_reg))
> > > > > >> >>                  seq_printf(m, "DC5 -> DC6 count: %d\n",
> > > > > >> >>                             intel_de_read(display, dc6_reg));
> > > > > >> >> +        seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_entry_counter);
> > > > > >> >>
> > > > > >> >>          seq_printf(m, "program base: 0x%08x\n",
> > > > > >> >>                     intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> > > > > >> >> --
> > > > > >> >> 2.43.0
> > > > > >> >>
