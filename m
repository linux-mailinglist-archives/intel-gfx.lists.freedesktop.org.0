Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17F6AA159CC
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2025 00:07:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D97B10E0BD;
	Fri, 17 Jan 2025 23:07:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MBYYF+FO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7B0D10E26F;
 Fri, 17 Jan 2025 23:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737155243; x=1768691243;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hZqGN82ziCkhYPgEkz6ajKI5PmGY53tyIFQDKMaDnmI=;
 b=MBYYF+FOWT4mp74X/cxlUdQUXPd/j/83LjBHfupOMNiGDc2JNBGjEWQu
 dmZpGECZjhwPmA5NvI4wsPxesavpJtvhY0g9guyAtjK7UD4rgeKBHZ4J4
 MtORl0pEtUimDhhF+rXGRdL6LtrY6qltiwxvdz3jfRrNDsGpkhsw5XQ8k
 15AJo4IQcC13LEdmCu5Iy2LmIlccLmAReg206I/m0grtQGJkqsnS3Uui1
 RscAh+Cd9m4YaYmwxzZOXEHnih4sHmlbgZW5phbqOGV6kbt8yoeSdbL5T
 dLCsunt5KuqRYc87gKia1/5VNkJB7IoHX2p0cFA3t+xDA1ilSkeQ1ZNQ0 w==;
X-CSE-ConnectionGUID: 7kavuaRbQqWdGVJu6uud+g==
X-CSE-MsgGUID: DnjyQ/QsRQuAjgtSr9hUoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="37838678"
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="37838678"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 15:07:23 -0800
X-CSE-ConnectionGUID: A2GJUy3nQQS/9rIM4ZSD3w==
X-CSE-MsgGUID: XmGic9e0SjiDeHwG9TXwzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,213,1732608000"; d="scan'208";a="106112575"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Jan 2025 15:07:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jan 2025 01:07:19 +0200
Date: Sat, 18 Jan 2025 01:07:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3 10/10] drm/i915/psr: Allow DSB usage when PSR is enabled
Message-ID: <Z4rip_oW6n7HxsN_@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-11-jouni.hogander@intel.com>
 <Z4q7ge2MMHAmDvNJ@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z4q7ge2MMHAmDvNJ@intel.com>
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

On Fri, Jan 17, 2025 at 10:20:17PM +0200, Ville Syrjälä wrote:
> On Thu, Jan 09, 2025 at 09:31:37AM +0200, Jouni Högander wrote:
> > Now as we have correct PSR2_MAN_TRK_CTL handling in place we can allow DSB
> > usage also when PSR is enabled for LunarLake onwards.
> 
> We seem to still lack an answer as to when the PSR wakes, when it
> latches the update, and how does all that guarantee that the DSB
> interrupt fires after the update has been latched?
> 
> Some thoughts as to how to figure this out:
> 1. make sure we're in PSR
> 2. sample TIMESTAMP_CTR
> 3. start DSB in which
>    write PLANE_SURF with a new value
>    send push
>    wait for vblank
>    poll PLANE_SURFLIVE == new value
>    fire interrupt
> 
> in the interrupt handler:
>  sample TIMESTAMP_CTR again
> 
> And then compare flip timestmap vs. frame timestamp vs. the
> manually sampled timestamps. And then repeat without the SURFLIVE
> poll to make sure nothing has changed. You'll need to be careful
> to make sure it will actually poll for long enough to make a real
> difference (if the poll actuall is needed), but tweaking the poll
> interval+count suitably. I don't remeber what the max poll
> count was, but IIRC it wasn't too high so the duration will have
> to get bumped for long polls.
> 
> I guess one could also try to poll for the actual PSR status,
> but dunno how well that'll work.
> 
> And we could also try to come up with different ideas on where
> to sample timestamps. Unfortunately we only have the single
> pipe flip timestamp register so we can only sample one timestamp
> from the DSB itself per frame. If we had more we could much more
> easily figure things out :/
> 
> I pushed my latest DSB selftest stuff to
> https://github.com/vsyrjala/linux.git dsb_selftests_7
> which has a bunch of stuff for this kind of experimentation.
> It's in a somewhat sorry state at the moment since I last used
> to hunt for various DSB bugs, but at least it still builds :)
> 
> The way I use that is that I run igt 'testdisplay -o ...' 
> to make sure nothing else is actively poking the hardware
> and then I trigger the DSB tests via debugfs.

I poked around a bit, though only on a TGL+PSR1 system (what I had
at hand), so some of this might not apply to PSR2 and/or more
modern platforms.

General notes:
- PSR1 exit is triggered by any pipe/plane register write (even the
  non-arming ones)

We basically have three cases to consider here:
1. PSR1 is currently inactive
  Obviously everything should be with the current code,
  vblank evasion works, wait for vblank+interrupt scheme
  for flip completion works

2. PSR1 is active, but DC states are not
  The wakeup latency here is super quick (it's < 1 scanline, how
  much below? I've not yet measured), and arming registers do latch
  nearly immediately. The scanline counter starts counting accordingly
  from vblank_start-1. However the hardware still considers PSR to be
  active for that short duration so DSB_SKIP_WAITS_EN _will_ skip the
  waits.

  Unfortunately being this quick I'm not convinced we have enough time
  to write all the registers atomically before the hardware latches
  something. So I'm thinking we may need to remove DSB_SKIP_WAITS_EN,
  in which case the vblank evasion will push the arming register
  writes into the next frame. This will mean the wakeup will take
  one full frame.

3. PSR1 is active and so are DC states
  The wakeup latency is ~5ms. During that time scanline counter reads
  0, PSR is active for the purposes of DSB_SKIP_WAITS_EN. Again we
  pretty much need DSB_SKIP_WAITS_EN=0 here to make sure the interrupt
  gets signalled after the wait for vblank. vblank evasion will get
  skipped on account the scanline being 0. Somewhat ironically this
  would give us ~5ms total wakeup latency which is now faster than the
  previous case.

  So everything here would be fine if we know that the wakeup has just
  started since we have all of that 5ms to write all the registers.
  But I guess we can't really know when the wakeup started, so we
  might be doing the vblank evasion just before the scanline counter
  starts to read its proper value, and then we have that < 1 scanline
  to write all the arming registers. Not sure if its enough. If not,
  then we could also explicitly evade scanline 0 as well, which would
  again force all arming register writes into the next frame giving
  us the same kind of single frame wakeup latency as in case 2.

IIRC you said that you had stuff get stuck with DSB_SKIP_WAITS_EN=0.
Was that with hardware that has TRANS_PUSH for PSR? I suppose that
could happen if the scanline counter already reads something
(eg. again vblank_start-1) before we've done the push, that would
cause the vblank evasion to wait forever. I could see two ways to
perhaps handle that:
- if DSB_SKIP_WAITS_EN becomes inactive immediately after
  TRANS_PUSH then we could just keep DSB_SKIP_WAITS_EN=1 all
  the time and things should be fine
- if DSB_SKIP_WAITS_EN stays active for some time after TRANS_PUSH
  then we'll perhaps need to poke that bit from the DSB itself
  dynamically so that we will skip the vblank evasion, but
  not the wait for blank prior to generating the interrupt.
But this needs a bit more reverse engineering for sure.

> 
> > 
> > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index e448ff64660a..58575800fad2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7631,6 +7631,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
> >  		intel_atomic_get_old_crtc_state(state, crtc);
> >  	struct intel_crtc_state *new_crtc_state =
> >  		intel_atomic_get_new_crtc_state(state, crtc);
> > +	struct intel_display *display = to_intel_display(crtc);
> >  
> >  	if (!new_crtc_state->hw.active)
> >  		return;
> > @@ -7643,7 +7644,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
> >  		new_crtc_state->update_planes &&
> >  		!new_crtc_state->vrr.enable &&
> >  		!new_crtc_state->do_async_flip &&
> > -		!new_crtc_state->has_psr &&
> > +		(DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
> >  		!new_crtc_state->scaler_state.scaler_users &&
> >  		!old_crtc_state->scaler_state.scaler_users &&
> >  		!intel_crtc_needs_modeset(new_crtc_state) &&
> > -- 
> > 2.43.0
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
