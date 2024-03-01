Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB59486E50A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 17:10:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD0310E830;
	Fri,  1 Mar 2024 16:10:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U2iAgzcx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59E4E10E622
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 16:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709309429; x=1740845429;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zNrdYAGDye/62kLDlGaMoy3y+uBS6jDTg0uJZSBuzpQ=;
 b=U2iAgzcxDHLo8RGczGEuqYtXPiW//MN9FFqlyOTsq9EwS+DKqzFr1Um8
 W6GoJb5cSWZlvNoYXdL+P6/nMqPMu/jn0u3nZdHKc/BqStQT9QkwiPObn
 YC9QXRCeD2gq23aC2+5taxSKbcqrgvQ+xg0/I8UVwpJewvhRC8el6VrWm
 SMcH2pMdaCK1nK6spYKlax6gsmtCowMBPbDp2R/r4pOYomjdRIin1PRg+
 uMiDhBlT1g/hR4NLByhK7lvUdWCFmk5K4NV8Vyh8uKOQUmsJlm+tE6qDp
 JUF3FlMgEomSgyu4z9W21t1FdsnPJTLkMzkX6ntnuaVLAUM1bxKrVShaN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="4023693"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="4023693"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 08:10:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827772038"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827772038"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 08:10:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 18:10:25 +0200
Date: Fri, 1 Mar 2024 18:10:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 8/8] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Message-ID: <ZeH98WJ1ONKtEgEI@intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
 <20240301143600.1334-9-ville.syrjala@linux.intel.com>
 <ZeH8i/PVH5jrxlPw@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZeH8i/PVH5jrxlPw@intel.com>
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

On Fri, Mar 01, 2024 at 06:04:27PM +0200, Lisovskiy, Stanislav wrote:
> On Fri, Mar 01, 2024 at 04:36:00PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Reorganize the crtc disable path to only deal with the
> > master pipes/transcoders in intel_old_crtc_state_disables()
> > and offload the handling of joined pipes to hsw_crtc_disable().
> > This makes the whole thing much more sensible since we can
> > actually control the order in which we do the per-pipe vs.
> > per-transcoder modeset steps.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 64 ++++++++++++--------
> >  1 file changed, 38 insertions(+), 26 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 1df3923cc30d..07239c1ce9df 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1793,29 +1793,27 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
> >  	const struct intel_crtc_state *old_master_crtc_state =
> >  		intel_atomic_get_old_crtc_state(state, master_crtc);
> >  	struct drm_i915_private *i915 = to_i915(master_crtc->base.dev);
> > +	u8 pipe_mask = intel_crtc_joined_pipe_mask(old_master_crtc_state);
> > +	struct intel_crtc *crtc;
> >  
> >  	/*
> >  	 * FIXME collapse everything to one hook.
> >  	 * Need care with mst->ddi interactions.
> >  	 */
> > -	if (!intel_crtc_is_bigjoiner_slave(old_master_crtc_state)) {
> > -		intel_encoders_disable(state, master_crtc);
> > -		intel_encoders_post_disable(state, master_crtc);
> > -	}
> > -
> > -	intel_disable_shared_dpll(old_master_crtc_state);
> > +	intel_encoders_disable(state, master_crtc);
> > +	intel_encoders_post_disable(state, master_crtc);
> >  
> > -	if (!intel_crtc_is_bigjoiner_slave(old_master_crtc_state)) {
> > -		struct intel_crtc *slave_crtc;
> > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
> > +		const struct intel_crtc_state *old_crtc_state =
> > +			intel_atomic_get_old_crtc_state(state, crtc);
> >  
> > -		intel_encoders_post_pll_disable(state, master_crtc);
> > +		intel_disable_shared_dpll(old_crtc_state);
> > +	}
> >  
> > -		intel_dmc_disable_pipe(i915, master_crtc->pipe);
> > +	intel_encoders_post_pll_disable(state, master_crtc);
> >  
> > -		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> > -						 intel_crtc_bigjoiner_slave_pipes(old_master_crtc_state))
> > -			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
> > -	}
> > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask)
> > +		intel_dmc_disable_pipe(i915, crtc->pipe);
> >  }
> 
> Okay the only difference from hsw_crtc_disable part from my patch is that
> I don't have intel_crtc_joined_pipe_mask and encoder calls are outside the pipe
> loop. Ok. You could of course just communicate this to me, it is quite a small
> thing to change.
> 
> And still there is a question about how to handle the crtc enable side, since
> extracting transcoder programming from the pipe loop, will break the sequence,
> as I described. Either it is ok that we will partly program slave/master pipe, then
> program transcoder then again program slave/master pipes or it has to be
> in a pipe loop.

Transcoder stuff shouldn't be in pipe loops. That's what
I've been saying all along.

-- 
Ville Syrjälä
Intel
