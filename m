Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5890886E607
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 17:48:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82DAE10EC0C;
	Fri,  1 Mar 2024 16:47:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JOjvjdg+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D16F10EC0C
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 16:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709311678; x=1740847678;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=L8WDJFEZyJVCPLQMF8i91Hhl3OE/qN1NYJ0uCJlQLRY=;
 b=JOjvjdg+KosaUm9evtKr0bgp8n7Y3YglM9gyQ3Jc9iREk1hIDrelLBo+
 zJTQB3UaiLcJ3yTPpKu920c9PLULVwiUSFFQz3Y48hPBqqeY0iK0HUB3r
 eUy0i4SNpO1BGQbMJMyEQtCiedZwuFVf9vDC+IfVOs5zOtpIcgDqYZMGD
 CVjEXpAV8K0Cy0ZvpoApJJMc2Prv2RcuVp2Hs45ublNgnHF2I5aYfU/4q
 4rDlZbl7OQeIotScEodDgZQIjvJrgvAaVInESnW4ymIKv5tGoFoI/d1Pz
 9M7DSLErOxIerzHCPHyFylW1mKeWtl0LynCgITyRE7ISoEIMyKdQKfSsF A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="7670170"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="7670170"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 08:47:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827772055"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827772055"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 08:47:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 18:47:54 +0200
Date: Fri, 1 Mar 2024 18:47:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 8/8] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Message-ID: <ZeIGuvRA_C7V5S-U@intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-9-ville.syrjala@linux.intel.com>
 <ZeH8i/PVH5jrxlPw@intel.com> <ZeH98WJ1ONKtEgEI@intel.com>
 <ZeIAuyrebrSiF2Sw@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZeIAuyrebrSiF2Sw@intel.com>
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

On Fri, Mar 01, 2024 at 06:22:19PM +0200, Lisovskiy, Stanislav wrote:
> On Fri, Mar 01, 2024 at 06:10:25PM +0200, Ville Syrjälä wrote:
> > On Fri, Mar 01, 2024 at 06:04:27PM +0200, Lisovskiy, Stanislav wrote:
> > > On Fri, Mar 01, 2024 at 04:36:00PM +0200, Ville Syrjala wrote:
> > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > 
> > > > Reorganize the crtc disable path to only deal with the
> > > > master pipes/transcoders in intel_old_crtc_state_disables()
> > > > and offload the handling of joined pipes to hsw_crtc_disable().
> > > > This makes the whole thing much more sensible since we can
> > > > actually control the order in which we do the per-pipe vs.
> > > > per-transcoder modeset steps.
> > > > 
> > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 64 ++++++++++++--------
> > > >  1 file changed, 38 insertions(+), 26 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index 1df3923cc30d..07239c1ce9df 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -1793,29 +1793,27 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
> > > >  	const struct intel_crtc_state *old_master_crtc_state =
> > > >  		intel_atomic_get_old_crtc_state(state, master_crtc);
> > > >  	struct drm_i915_private *i915 = to_i915(master_crtc->base.dev);
> > > > +	u8 pipe_mask = intel_crtc_joined_pipe_mask(old_master_crtc_state);
> > > > +	struct intel_crtc *crtc;
> > > >  
> > > >  	/*
> > > >  	 * FIXME collapse everything to one hook.
> > > >  	 * Need care with mst->ddi interactions.
> > > >  	 */
> > > > -	if (!intel_crtc_is_bigjoiner_slave(old_master_crtc_state)) {
> > > > -		intel_encoders_disable(state, master_crtc);
> > > > -		intel_encoders_post_disable(state, master_crtc);
> > > > -	}
> > > > -
> > > > -	intel_disable_shared_dpll(old_master_crtc_state);
> > > > +	intel_encoders_disable(state, master_crtc);
> > > > +	intel_encoders_post_disable(state, master_crtc);
> > > >  
> > > > -	if (!intel_crtc_is_bigjoiner_slave(old_master_crtc_state)) {
> > > > -		struct intel_crtc *slave_crtc;
> > > > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
> > > > +		const struct intel_crtc_state *old_crtc_state =
> > > > +			intel_atomic_get_old_crtc_state(state, crtc);
> > > >  
> > > > -		intel_encoders_post_pll_disable(state, master_crtc);
> > > > +		intel_disable_shared_dpll(old_crtc_state);
> > > > +	}
> > > >  
> > > > -		intel_dmc_disable_pipe(i915, master_crtc->pipe);
> > > > +	intel_encoders_post_pll_disable(state, master_crtc);
> > > >  
> > > > -		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> > > > -						 intel_crtc_bigjoiner_slave_pipes(old_master_crtc_state))
> > > > -			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
> > > > -	}
> > > > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask)
> > > > +		intel_dmc_disable_pipe(i915, crtc->pipe);
> > > >  }
> > > 
> > > Okay the only difference from hsw_crtc_disable part from my patch is that
> > > I don't have intel_crtc_joined_pipe_mask and encoder calls are outside the pipe
> > > loop. Ok. You could of course just communicate this to me, it is quite a small
> > > thing to change.
> > > 
> > > And still there is a question about how to handle the crtc enable side, since
> > > extracting transcoder programming from the pipe loop, will break the sequence,
> > > as I described. Either it is ok that we will partly program slave/master pipe, then
> > > program transcoder then again program slave/master pipes or it has to be
> > > in a pipe loop.
> > 
> > Transcoder stuff shouldn't be in pipe loops. That's what
> > I've been saying all along.
> 
> Yep, I realize you kept saying this and I described you the problem what happens if 
> we extract it from there.
> Either it is ok to have 2 loops and have transcoder programming in between or you
> first program pipes then program the transcoder - in both cases that would change
> the sequence of how it is done now.
> My question was if this is ok or not.

Well, that's pretty much it's supposed to be done. As mentioned
I think the current code kinda works more by luck.

I suppose the only reason it works at all is that we do try to order
at least some of the steps via the tricks in
icl_ddi_bigjoiner_pre_enable() and the specific ordering of the crtcs
from the modeset_enables/disables(). But I'm pretty sure there are 
some steps that currently get done in different places for
the master and slace pipes. And that's not by design.

In general it's pretty hard to actually figure out what steps are
being done in which order in the current code.

The "is it OK?" question I think is best answered by asking the
real hardware. If there is some specific ordering requirement
that the current code accidentally gets right but the obvious
code would somehow get wrong, the hardware should be able to
tell us pretty quickly.

-- 
Ville Syrjälä
Intel
