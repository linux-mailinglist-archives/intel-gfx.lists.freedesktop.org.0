Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B2B7D9E1F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Oct 2023 18:38:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 372B010EA0C;
	Fri, 27 Oct 2023 16:38:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D11210EA0C
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Oct 2023 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698424733; x=1729960733;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=sBrE/0i6A3Yh7Zsof5YMbRqhQvH8+74HlNNMtpmqpas=;
 b=FDsFA6PwwcUEsGV5adLn9nlU87IZ3yXAL8EQ8bbNidlGV1XBHwpMLX81
 vgVa0Xk1KAKzsbL5YgcHx/5lo0C16skReMhXz8y71VoKIbyLzASCt8jI4
 MeQrUtkB+8Z6M+Ra3XJJTh/CU9v8L45NCNO40QBzoqiM2blzxIhqTgg/w
 eamqah4avTBr3hl/xJH3oBsRhjO5BnypxYrBRtaMrfv1njMg/OjFpGbYB
 /U2IR2NWczcjY/U/8NkpsDqohRXiqaKHan7eoBYcE+PYdUOWhyfz7BylO
 H/Aui6fhzWTg/u8juieqyggjRbfT9mgUh++KxxF9C4B4jSgTDqujw0Wwv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="390669811"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="390669811"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 09:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10876"; a="753165653"
X-IronPort-AV: E=Sophos;i="6.03,256,1694761200"; d="scan'208";a="753165653"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2023 09:38:51 -0700
Date: Fri, 27 Oct 2023 19:39:21 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZTvnuRb4IIgKfqMF@ideak-desk.fi.intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-26-imre.deak@intel.com>
 <ZTvaXNT3C3VZGOel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZTvaXNT3C3VZGOel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 25/29] drm/i915: Factor out function to
 clear pipe update flags
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 27, 2023 at 06:42:20PM +0300, Ville Syrjälä wrote:
> On Tue, Oct 24, 2023 at 04:09:21AM +0300, Imre Deak wrote:
> > Factor out a helper to clear the pipe update flags, used by a follow-up
> > patch to modeset an MST topology.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 52 ++++++++++----------
> >  1 file changed, 27 insertions(+), 25 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index de352d9c43439..22f88389035bd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5551,6 +5551,16 @@ int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
> >  	return 0;
> >  }
> >  
> > +static void clear_pipe_update_flags_on_modeset_crtc(struct intel_crtc_state *crtc_state)
> > +{
> > +	if (!intel_crtc_needs_modeset(crtc_state))
> > +		return;
> 
> This feels more confusing than not. I'd probably keep the modeset
> check out from this function.

Ok, can move it to the callers where it's needed (i.e. all except for
intel_modeset_all_pipes_late()).

> > +
> > +	crtc_state->update_pipe = false;
> > +	crtc_state->update_m_n = false;
> > +	crtc_state->update_lrr = false;
> > +}
> > +
> >  /**
> >   * intel_modeset_all_pipes_late - force a full modeset on all pipes
> >   * @state: intel atomic state
> > @@ -5584,9 +5594,8 @@ int intel_modeset_all_pipes_late(struct intel_atomic_state *state,
> >  		if (ret)
> >  			return ret;
> >  
> > -		crtc_state->update_pipe = false;
> > -		crtc_state->update_m_n = false;
> > -		crtc_state->update_lrr = false;
> > +		clear_pipe_update_flags_on_modeset_crtc(crtc_state);
> > +
> >  		crtc_state->update_planes |= crtc_state->active_planes;
> >  		crtc_state->async_flip_planes = 0;
> >  		crtc_state->do_async_flip = false;
> > @@ -5699,13 +5708,13 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
> >  	else
> >  		new_crtc_state->uapi.mode_changed = false;
> >  
> > -	if (intel_crtc_needs_modeset(new_crtc_state) ||
> > -	    intel_compare_link_m_n(&old_crtc_state->dp_m_n,
> > +	clear_pipe_update_flags_on_modeset_crtc(new_crtc_state);
> > +
> > +	if (intel_compare_link_m_n(&old_crtc_state->dp_m_n,
> >  				   &new_crtc_state->dp_m_n))
> >  		new_crtc_state->update_m_n = false;
> >  
> > -	if (intel_crtc_needs_modeset(new_crtc_state) ||
> > -	    (old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
> > +	if ((old_crtc_state->hw.adjusted_mode.crtc_vtotal == new_crtc_state->hw.adjusted_mode.crtc_vtotal &&
> >  	     old_crtc_state->hw.adjusted_mode.crtc_vblank_end == new_crtc_state->hw.adjusted_mode.crtc_vblank_end))
> >  		new_crtc_state->update_lrr = false;
> >  
> > @@ -6484,12 +6493,9 @@ int intel_atomic_check(struct drm_device *dev,
> >  		if (intel_dp_mst_is_slave_trans(new_crtc_state)) {
> >  			enum transcoder master = new_crtc_state->mst_master_transcoder;
> >  
> > -			if (intel_cpu_transcoders_need_modeset(state, BIT(master))) {
> > -				new_crtc_state->uapi.mode_changed = true;
> > -				new_crtc_state->update_pipe = false;
> > -				new_crtc_state->update_m_n = false;
> > -				new_crtc_state->update_lrr = false;
> > -			}
> > +			if (intel_cpu_transcoders_need_modeset(state, BIT(master)))
> > +				intel_modeset_pipes_in_mask_early(state, "MST master transcoder",
> > +								  BIT(crtc->pipe));
> >  		}
> >  
> >  		if (is_trans_port_sync_mode(new_crtc_state)) {
> > @@ -6498,22 +6504,18 @@ int intel_atomic_check(struct drm_device *dev,
> >  			if (new_crtc_state->master_transcoder != INVALID_TRANSCODER)
> >  				trans |= BIT(new_crtc_state->master_transcoder);
> >  
> > -			if (intel_cpu_transcoders_need_modeset(state, trans)) {
> > -				new_crtc_state->uapi.mode_changed = true;
> > -				new_crtc_state->update_pipe = false;
> > -				new_crtc_state->update_m_n = false;
> > -				new_crtc_state->update_lrr = false;
> > -			}
> > +			if (intel_cpu_transcoders_need_modeset(state, trans))
> > +				intel_modeset_pipes_in_mask_early(state, "port sync",
> > +								  BIT(crtc->pipe));
> >  		}
> >  
> >  		if (new_crtc_state->bigjoiner_pipes) {
> > -			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes)) {
> > -				new_crtc_state->uapi.mode_changed = true;
> > -				new_crtc_state->update_pipe = false;
> > -				new_crtc_state->update_m_n = false;
> > -				new_crtc_state->update_lrr = false;
> > -			}
> > +			if (intel_pipes_need_modeset(state, new_crtc_state->bigjoiner_pipes))
> > +				intel_modeset_pipes_in_mask_early(state, "bigjoiner pipes",
> > +								  BIT(crtc->pipe));
> >  		}
> > +
> > +		clear_pipe_update_flags_on_modeset_crtc(new_crtc_state);
> >  	}
> >  
> >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > -- 
> > 2.39.2
> 
> -- 
> Ville Syrjälä
> Intel
