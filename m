Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D11AA16F35
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 16:28:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAEB410E432;
	Mon, 20 Jan 2025 15:28:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iODQlIln";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D424310E06B;
 Mon, 20 Jan 2025 15:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737386880; x=1768922880;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8md1gCbKSPQV6cGGVBwng2P/7FK9iOsDbP20iDAPoio=;
 b=iODQlIlnIBRD+/xYWc+0Sz6FjtYlbjiWJs3Vsyr88kWVS7RxKWWG6cj5
 ilUs+mlV5cFB902u7JymYey0znzVgdU0ZrirnOER7Klm/WG2SQo6UlJI4
 /AeCStkNiQ/M6ATkRxYC5OfHT7xNlwkSZyjaNf23VMJlBdgS/W1ErhSDI
 QKHBePC7jv5l8WjPZTzyUQJM+5cg3e6TzMfQbfz+yJpreQBX8eaRE4v4L
 BAY/wfDrcb/wWfeghZr6mR6Cjs5PxCFH/23x7aWeVi2d3X2+rJ0HBdZJl
 YTeS8jXLy/OLzfKPoSsx2mUzu89MG7VYX+0c1B8biYhWp4EeKxsvApG4C g==;
X-CSE-ConnectionGUID: e4fR9+UESPCKnPRUrNAS3g==
X-CSE-MsgGUID: 4tRiivD4QaK1e/T6d6zXPg==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="48279777"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="48279777"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 07:27:59 -0800
X-CSE-ConnectionGUID: qcvd6cE/R9GWrKn4a2yygw==
X-CSE-MsgGUID: 1+z7eN/PTt69L8YKwytDsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106673209"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Jan 2025 07:27:57 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Jan 2025 17:27:56 +0200
Date: Mon, 20 Jan 2025 17:27:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 10/10] drm/i915/psr: Allow DSB usage when PSR is enabled
Message-ID: <Z45rfIaiVsvbV5cA@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-11-jouni.hogander@intel.com>
 <Z4q7ge2MMHAmDvNJ@intel.com> <Z4rip_oW6n7HxsN_@intel.com>
 <432d2de82fe7696193e37af7079b48149ab24340.camel@intel.com>
 <Z45gHGoV2RiWK7D_@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z45gHGoV2RiWK7D_@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Jan 20, 2025 at 04:39:24PM +0200, Ville Syrjälä wrote:
> On Mon, Jan 20, 2025 at 07:28:52AM +0000, Hogander, Jouni wrote:
> > On Sat, 2025-01-18 at 01:07 +0200, Ville Syrjälä wrote:
> > > On Fri, Jan 17, 2025 at 10:20:17PM +0200, Ville Syrjälä wrote:
> > > > On Thu, Jan 09, 2025 at 09:31:37AM +0200, Jouni Högander wrote:
> > > > > Now as we have correct PSR2_MAN_TRK_CTL handling in place we can
> > > > > allow DSB
> > > > > usage also when PSR is enabled for LunarLake onwards.
> > > > 
> > > > We seem to still lack an answer as to when the PSR wakes, when it
> > > > latches the update, and how does all that guarantee that the DSB
> > > > interrupt fires after the update has been latched?
> > > > 
> > > > Some thoughts as to how to figure this out:
> > > > 1. make sure we're in PSR
> > > > 2. sample TIMESTAMP_CTR
> > > > 3. start DSB in which
> > > >    write PLANE_SURF with a new value
> > > >    send push
> > > >    wait for vblank
> > > >    poll PLANE_SURFLIVE == new value
> > > >    fire interrupt
> > > > 
> > > > in the interrupt handler:
> > > >  sample TIMESTAMP_CTR again
> > > > 
> > > > And then compare flip timestmap vs. frame timestamp vs. the
> > > > manually sampled timestamps. And then repeat without the SURFLIVE
> > > > poll to make sure nothing has changed. You'll need to be careful
> > > > to make sure it will actually poll for long enough to make a real
> > > > difference (if the poll actuall is needed), but tweaking the poll
> > > > interval+count suitably. I don't remeber what the max poll
> > > > count was, but IIRC it wasn't too high so the duration will have
> > > > to get bumped for long polls.
> > > > 
> > > > I guess one could also try to poll for the actual PSR status,
> > > > but dunno how well that'll work.
> > > > 
> > > > And we could also try to come up with different ideas on where
> > > > to sample timestamps. Unfortunately we only have the single
> > > > pipe flip timestamp register so we can only sample one timestamp
> > > > from the DSB itself per frame. If we had more we could much more
> > > > easily figure things out :/
> > > > 
> > > > I pushed my latest DSB selftest stuff to
> > > > https://github.com/vsyrjala/linux.git dsb_selftests_7
> > > > which has a bunch of stuff for this kind of experimentation.
> > > > It's in a somewhat sorry state at the moment since I last used
> > > > to hunt for various DSB bugs, but at least it still builds :)
> > > > 
> > > > The way I use that is that I run igt 'testdisplay -o ...' 
> > > > to make sure nothing else is actively poking the hardware
> > > > and then I trigger the DSB tests via debugfs.
> > > 
> > > I poked around a bit, though only on a TGL+PSR1 system (what I had
> > > at hand), so some of this might not apply to PSR2 and/or more
> > > modern platforms.
> > > 
> > > General notes:
> > > - PSR1 exit is triggered by any pipe/plane register write (even the
> > >   non-arming ones)
> > 
> > This is same for PSR2 as well.
> > 
> > > 
> > > We basically have three cases to consider here:
> > > 1. PSR1 is currently inactive
> > >   Obviously everything should be with the current code,
> > >   vblank evasion works, wait for vblank+interrupt scheme
> > >   for flip completion works
> > > 
> > > 2. PSR1 is active, but DC states are not
> > >   The wakeup latency here is super quick (it's < 1 scanline, how
> > >   much below? I've not yet measured), and arming registers do latch
> > >   nearly immediately.
> 
> Actually it's only ~1usec (based on the timestamps). I also used the
> following DSB batch to test how many registers we can write there:
> 
> for (i = 0; ...; i++)
> 	dsb_write(PLANE_SURF, i << 12)
> dsb_interrupt()
> 
> and then in the interrupt handler I read PLANE_SURFLIVE, and it always
> shows 0xa000, meaning we only have time to write ten registers. So
> definitely not enough to guarantee that all arming registers get
> written.

Oh, and I also checked whether increasing the vblank delay would give
us more time here, but unfortunately it does not. So looks like the
timing of this "fake vblank" doesn't take that into account :/

> 
> So, for PSR1 at least I think we'd have two options:
> 1) do a manual PSR wake around the whole commit, which doesn't
>    sound very nice
> 2) evade hw_scaline==0 so that we wait until we've woken up
>    from the DC state, and then proceed with the normal vblank
>    evasion and arming register writes. And obviously all that
>    only works in DSB_SKIP_WAITS_EN is disabled. Also if all 
>    the pipes are doing the full update using the DSB then we
>    could perhaps also remove the explicit DC_OFF dance around
>    the whole commit.
> 
> > The scanline counter starts counting
> > > accordingly
> > >   from vblank_start-1. However the hardware still considers PSR to be
> > >   active for that short duration so DSB_SKIP_WAITS_EN _will_ skip the
> > >   waits.
> > > 
> > >   Unfortunately being this quick I'm not convinced we have enough
> > > time
> > >   to write all the registers atomically before the hardware latches
> > >   something. So I'm thinking we may need to remove DSB_SKIP_WAITS_EN,
> > >   in which case the vblank evasion will push the arming register
> > >   writes into the next frame. This will mean the wakeup will take
> > >   one full frame.
> > 
> > To my understanding DSB_SKIP_WAITS_EN have impact only when in SRD
> > (PSR)/DEEP_SLEEP(PSR2). I.e. In this scenario we still do have all
> > waits as in commit without PSR.
> 
> The PSR state machine is already in link off mode in this case,
> meaning the pipe has been halted, and the display has been
> signalled to scan out from its RFB (confirmed by checking the
> PSR status register in DPCD), and DSB_SKIP_WAITS_EN is already
> active. But the link is still actually up (I'm guessing it might
> be transmitting the idle pattern, but I've not confirmed that.
> Can't remeber if we even have any kind of status register that
> could show this...). So looks like the link only gets actually
> turned off by the DMC when entering the DC state.

DP_TP_STATUS to the rescue. Monitoring that while in PSR
(with DC states still disabled) I see:

when active:
 DP_TP_STATUS: 0x00700000
  DP Stream Status: 1
  DP Init Status: Active SST

when in PSR:
 DP_TP_STATUS: 0x00000000
  DP Stream Status: 0
  DP Init Status: Pattern1

when transitioning between the two:
 DP_TP_STATUS: 0x00200000
  DP Stream Status: 0
  DP Init Status: Idle SST
 DP_TP_STATUS: 0x00100000
  DP Stream Status: 0
  DP Init Status: Pattern3

So looks like it's sort of doing link training always.
But since the link doesn't get turned off when DC states
aren't enabled the it's just practically immediate.

And I now also confirmed that the 5ms wakeup time I was
seeing with DC states enabled corresponds to the TP1/TP3
times configured in SRD_CTL. Reducing those also reduces
the wakeup time accordingly.

-- 
Ville Syrjälä
Intel
