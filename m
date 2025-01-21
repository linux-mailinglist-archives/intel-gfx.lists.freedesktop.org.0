Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2DDA17F38
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 14:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFE5410E5BE;
	Tue, 21 Jan 2025 13:57:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bviuv3O0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6671510E0FE;
 Tue, 21 Jan 2025 13:57:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737467851; x=1769003851;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=z4AGJm5mVckXuGE60YG+4MyX76Evq9ejaStplrBFc4E=;
 b=bviuv3O0/86RzH5m7kHi9pnKa7tRdd8oMo3BtnQ4HhRKZ4GinVY+2/1n
 Mmx/OY8M+APZWA+YH/Zm7sMXuw4vxNetcSVJKV0CRjVCQytEvW/cuhpCZ
 ZDTb+penmdA2GUmiNzuB3F10KxEP707h6f/dcyY5ERRi+iBLRczjO+k9L
 02k2FIIQHBIJ+lbuWV3aClwFNwQFqiysk8NdXRHPNNr6zxANMaHmN2OIV
 ltq9scwT7Wfy5iBxsfVjK6h0eHSDD1r+AoSsjvZs2eZza5jjseseNZX+e
 HITwuBtxZgw1uC75PcckAxoiD/ep9Yl8oExYBDwiLltHKyEi402QAuZVd g==;
X-CSE-ConnectionGUID: UThZiW5mTf2fX3nPUrsg9w==
X-CSE-MsgGUID: wqSs4yAvTFe2EQICeQlw5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="37795649"
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="37795649"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 05:57:31 -0800
X-CSE-ConnectionGUID: Yhtyp2sRTNqHegjOyvaHGA==
X-CSE-MsgGUID: 3IO6ZmqgQzGnaP4YAcGLvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="106927482"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 21 Jan 2025 05:57:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Jan 2025 15:57:27 +0200
Date: Tue, 21 Jan 2025 15:57:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 10/10] drm/i915/psr: Allow DSB usage when PSR is enabled
Message-ID: <Z4-nx5SJgl_GeA8g@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-11-jouni.hogander@intel.com>
 <Z4q7ge2MMHAmDvNJ@intel.com> <Z4rip_oW6n7HxsN_@intel.com>
 <432d2de82fe7696193e37af7079b48149ab24340.camel@intel.com>
 <Z45gHGoV2RiWK7D_@intel.com>
 <cf5315fe0475ce61aab49cbc4eaaf922336018be.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cf5315fe0475ce61aab49cbc4eaaf922336018be.camel@intel.com>
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

On Tue, Jan 21, 2025 at 10:29:25AM +0000, Hogander, Jouni wrote:
> On Mon, 2025-01-20 at 16:39 +0200, Ville Syrjälä wrote:
> > On Mon, Jan 20, 2025 at 07:28:52AM +0000, Hogander, Jouni wrote:
> > > On Sat, 2025-01-18 at 01:07 +0200, Ville Syrjälä wrote:
> > > > On Fri, Jan 17, 2025 at 10:20:17PM +0200, Ville Syrjälä wrote:
> > > > > On Thu, Jan 09, 2025 at 09:31:37AM +0200, Jouni Högander wrote:
> > > > > > Now as we have correct PSR2_MAN_TRK_CTL handling in place we
> > > > > > can
> > > > > > allow DSB
> > > > > > usage also when PSR is enabled for LunarLake onwards.
> > > > > 
> > > > > We seem to still lack an answer as to when the PSR wakes, when
> > > > > it
> > > > > latches the update, and how does all that guarantee that the
> > > > > DSB
> > > > > interrupt fires after the update has been latched?
> > > > > 
> > > > > Some thoughts as to how to figure this out:
> > > > > 1. make sure we're in PSR
> > > > > 2. sample TIMESTAMP_CTR
> > > > > 3. start DSB in which
> > > > >    write PLANE_SURF with a new value
> > > > >    send push
> > > > >    wait for vblank
> > > > >    poll PLANE_SURFLIVE == new value
> > > > >    fire interrupt
> > > > > 
> > > > > in the interrupt handler:
> > > > >  sample TIMESTAMP_CTR again
> > > > > 
> > > > > And then compare flip timestmap vs. frame timestamp vs. the
> > > > > manually sampled timestamps. And then repeat without the
> > > > > SURFLIVE
> > > > > poll to make sure nothing has changed. You'll need to be
> > > > > careful
> > > > > to make sure it will actually poll for long enough to make a
> > > > > real
> > > > > difference (if the poll actuall is needed), but tweaking the
> > > > > poll
> > > > > interval+count suitably. I don't remeber what the max poll
> > > > > count was, but IIRC it wasn't too high so the duration will
> > > > > have
> > > > > to get bumped for long polls.
> > > > > 
> > > > > I guess one could also try to poll for the actual PSR status,
> > > > > but dunno how well that'll work.
> > > > > 
> > > > > And we could also try to come up with different ideas on where
> > > > > to sample timestamps. Unfortunately we only have the single
> > > > > pipe flip timestamp register so we can only sample one
> > > > > timestamp
> > > > > from the DSB itself per frame. If we had more we could much
> > > > > more
> > > > > easily figure things out :/
> > > > > 
> > > > > I pushed my latest DSB selftest stuff to
> > > > > https://github.com/vsyrjala/linux.git dsb_selftests_7
> > > > > which has a bunch of stuff for this kind of experimentation.
> > > > > It's in a somewhat sorry state at the moment since I last used
> > > > > to hunt for various DSB bugs, but at least it still builds :)
> > > > > 
> > > > > The way I use that is that I run igt 'testdisplay -o ...' 
> > > > > to make sure nothing else is actively poking the hardware
> > > > > and then I trigger the DSB tests via debugfs.
> > > > 
> > > > I poked around a bit, though only on a TGL+PSR1 system (what I
> > > > had
> > > > at hand), so some of this might not apply to PSR2 and/or more
> > > > modern platforms.
> > > > 
> > > > General notes:
> > > > - PSR1 exit is triggered by any pipe/plane register write (even
> > > > the
> > > >   non-arming ones)
> > > 
> > > This is same for PSR2 as well.
> > > 
> > > > 
> > > > We basically have three cases to consider here:
> > > > 1. PSR1 is currently inactive
> > > >   Obviously everything should be with the current code,
> > > >   vblank evasion works, wait for vblank+interrupt scheme
> > > >   for flip completion works
> > > > 
> > > > 2. PSR1 is active, but DC states are not
> > > >   The wakeup latency here is super quick (it's < 1 scanline, how
> > > >   much below? I've not yet measured), and arming registers do
> > > > latch
> > > >   nearly immediately.
> > 
> > Actually it's only ~1usec (based on the timestamps). I also used the
> > following DSB batch to test how many registers we can write there:
> > 
> > for (i = 0; ...; i++)
> > 	dsb_write(PLANE_SURF, i << 12)
> > dsb_interrupt()
> > 
> > and then in the interrupt handler I read PLANE_SURFLIVE, and it
> > always
> > shows 0xa000, meaning we only have time to write ten registers. So
> > definitely not enough to guarantee that all arming registers get
> > written.
> > 
> > So, for PSR1 at least I think we'd have two options:
> > 1) do a manual PSR wake around the whole commit, which doesn't
> >    sound very nice
> > 2) evade hw_scaline==0 so that we wait until we've woken up
> >    from the DC state, and then proceed with the normal vblank
> >    evasion and arming register writes. And obviously all that
> >    only works in DSB_SKIP_WAITS_EN is disabled. Also if all 
> >    the pipes are doing the full update using the DSB then we
> >    could perhaps also remove the explicit DC_OFF dance around
> >    the whole commit.
> > 
> > > The scanline counter starts counting
> > > > accordingly
> > > >   from vblank_start-1. However the hardware still considers PSR
> > > > to be
> > > >   active for that short duration so DSB_SKIP_WAITS_EN _will_ skip
> > > > the
> > > >   waits.
> > > > 
> > > >   Unfortunately being this quick I'm not convinced we have enough
> > > > time
> > > >   to write all the registers atomically before the hardware
> > > > latches
> > > >   something. So I'm thinking we may need to remove
> > > > DSB_SKIP_WAITS_EN,
> > > >   in which case the vblank evasion will push the arming register
> > > >   writes into the next frame. This will mean the wakeup will take
> > > >   one full frame.
> > > 
> > > To my understanding DSB_SKIP_WAITS_EN have impact only when in SRD
> > > (PSR)/DEEP_SLEEP(PSR2). I.e. In this scenario we still do have all
> > > waits as in commit without PSR.
> > 
> > The PSR state machine is already in link off mode in this case,
> > meaning the pipe has been halted, and the display has been
> > signalled to scan out from its RFB (confirmed by checking the
> > PSR status register in DPCD), and DSB_SKIP_WAITS_EN is already
> > active. But the link is still actually up (I'm guessing it might
> > be transmitting the idle pattern, but I've not confirmed that.
> > Can't remeber if we even have any kind of status register that
> > could show this...). So looks like the link only gets actually
> > turned off by the DMC when entering the DC state.
> > 
> > > 
> > > > 
> > > > 3. PSR1 is active and so are DC states
> > > >   The wakeup latency is ~5ms. During that time scanline counter
> > > > reads
> > > >   0, PSR is active for the purposes of DSB_SKIP_WAITS_EN. Again
> > > > we
> > > >   pretty much need DSB_SKIP_WAITS_EN=0 here to make sure the
> > > > interrupt
> > > >   gets signalled after the wait for vblank. vblank evasion will
> > > > get
> > > >   skipped on account the scanline being 0. Somewhat ironically
> > > > this
> > > >   would give us ~5ms total wakeup latency which is now faster
> > > > than
> > > > the
> > > >   previous case.
> > > 
> > > Again my understanding is that DSB_SKIP_WAITS_EN=0/1 have impact
> > > only
> > > when in SRD/DEEP_SLEEP. There is SRD_CTRL/PSR2_CTRL[Idle Frames] to
> > > control when entering SRD/DEEP_SLEEP.
> > 
> > The PSR state machine is what matters. That stops the pipe, and
> > causes
> > DSP_SKIP_WAITS_EN to become active. And the PSR state machine is also
> > what is affected by the idle frames stuff/etc. AFAIK the only stuff
> > that is actually done by the DMC is turning the link/PLL/etc on and
> > off. And obviously link training I guess gets triggered from there
> > somehow when waking up from PSR, hence why the wakeup takes that 5ms
> > longer than when DC States are disabled.
> 
> Ok, I need do some investigation on this. The failure I was referring
> was this one:
> 
> https://intel-gfx-ci.01.org/tree/intel-xe/xe-pw-142521v2/shard-lnl-8/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
> I.e. there is that scanline wait at the begin in DSB buffer. It was
> hanging in waiting the scanline. I verified this by checking if
> preceding write to 0x700300 completes and it never did.
> 
> This was with PSR2 but not with Panel Replay. Also if I disable
> DEEP_SLEEP by setting PSR2_CTL[idle frames] as 0 it didn't hang. Also
> waking it up by writing e.g. CURSURFLIVE helped.

Right, so the problem there really looks to be that we don't have any
non-arming register writes to trigger the wakeup (because we don't have
the noarm/arm split done for cursors). So yeah, we probably need to
always make sure we put some kind of dummy write to the noarm section.
CURSURFLIVE should be fine for that I guess.

-- 
Ville Syrjälä
Intel
