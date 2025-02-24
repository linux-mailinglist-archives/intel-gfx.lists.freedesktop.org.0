Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59525A41E88
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 13:12:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06B2910E37A;
	Mon, 24 Feb 2025 12:12:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gulBv0xF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5764610E37A;
 Mon, 24 Feb 2025 12:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740399178; x=1771935178;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=csl8vMggEM11TbnwsX6Duk2okTqccOuqlwfdSS2Ijyk=;
 b=gulBv0xFMBV0d1HZcgplQ4f46Lg7hf0dZGOO2ON6OsGt/7L/MGSieYzv
 9lp/V6kFVgZockbZx4b8kQJCE5wrI/7i/NWziN+vtjtuNELRkTj5mgRIy
 SEus5mAe6hiKhCIOZqXc62XKf/bU8DriP1rNxDWi07pAjqazXx2D83vBX
 NAFOAzZNU5D8ZWOyd6XPjpIGciLZqJnHatuVRrEKv1QvTwZOQctr/CENM
 Owe7UWl+ORBKLvP5mGjNMK1/Qf/SBNu4g+q02QpdrQOhtNo48Sw5vyJEb
 KohCv8mFgCt23ihpcEhlzwayhiobOWcbcAG/pfAu/CWIL90nzAemArigp g==;
X-CSE-ConnectionGUID: 4RqkHek5Q0SdBBMO44G2pg==
X-CSE-MsgGUID: zS5CPr38Rm+6vmR1Np0bxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11355"; a="40856537"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="40856537"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 04:12:57 -0800
X-CSE-ConnectionGUID: inUaYSl5SnGwh9XZkf1Fgg==
X-CSE-MsgGUID: UWbQ3zVGRBCDByNbi83Nkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116670692"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 04:12:55 -0800
Date: Mon, 24 Feb 2025 14:13:54 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp_mst: Fix encoder HW state readout for UHBR MST
Message-ID: <Z7xigvCH7IxKlQiS@ideak-desk.fi.intel.com>
References: <20250224093242.1859583-1-imre.deak@intel.com>
 <8734g38wcj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8734g38wcj.fsf@intel.com>
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

On Mon, Feb 24, 2025 at 12:34:36PM +0200, Jani Nikula wrote:
> On Mon, 24 Feb 2025, Imre Deak <imre.deak@intel.com> wrote:
> > The encoder HW/SW state verification should use a SW state which stays
> > unchanged while the encoder/output is active. The intel_dp::is_mst flag
> > used during state computation to choose between the DP SST/MST modes can
> > change while the output is active, if the sink gets disconnected or the
> > MST topology is removed for another reason. A subsequent state
> > verification using intel_dp::is_mst leads then to a mismatch if the
> > output is disabled/re-enabled without recomputing its state.
> >
> > Use the encoder's active MST link count instead, which will be always
> > non-zero for an active MST output and will be zero for SST.
> >
> > Fixes: 35d2e4b75649 ("drm/i915/ddi: start distinguishing 128b/132b SST and MST at state readout")
> > Fixes: 40d489fac0e8 ("drm/i915/ddi: handle 128b/132b SST in intel_ddi_read_func_ctl()")
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> Do we have a bug for this?

I haven't found a bug filed for it.

> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 7937f4de66cb4..8c8b53414da67 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -890,7 +890,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
> >  			    encoder->base.base.id, encoder->base.name);
> >  
> >  	if (!mst_pipe_mask && dp128b132b_pipe_mask) {
> > -		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> >  
> >  		/*
> >  		 * If we don't have 8b/10b MST, but have more than one
> > @@ -902,7 +902,8 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
> >  		 * we don't expect MST to have been enabled at that point, and
> >  		 * can assume it's SST.
> >  		 */
> > -		if (hweight8(dp128b132b_pipe_mask) > 1 || intel_dp->is_mst)
> > +		if (hweight8(dp128b132b_pipe_mask) > 1 ||
> > +		    intel_dp_mst_encoder_active_links(dig_port))
> 
> I think the reasoning here is valid, but I think we should probably do
> something about the intel_dp_mst_encoder_active_links() naming as
> follow-up. This is confusing. What is an "mst encoder"? The above
> expects the primary digital port, i.e. it assumes enc_to_dig_port()
> already did the right thing. It's all really subtle. Also wrt which
> encoders the intel_ddi_get_encoder_pipes() gets called on.

Only a primary encoder object has an embedded digital port
(intel_digital_port), so the only way to call the function is passing
the primary digital port to it (IOW there is no fake/stream encoder
digital port to pass to it). IMO referring to the encoder or the encoder
type isn't necessary and the function could be renamed to

intel_dp_mst_active_streams()

also clarifying that it's about streams not links?

> Maybe we need s/intel_dp_mst_encoder/intel_dp_mst_primary/ for this and
> some other functions? They're not about the "fake" mst stream encoders.
> 
> Anyway,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >  			mst_pipe_mask = dp128b132b_pipe_mask;
> >  	}
> >  
> > @@ -4131,13 +4132,13 @@ static void intel_ddi_read_func_ctl(struct intel_encoder *encoder,
> >  	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_DP_MST) {
> >  		intel_ddi_read_func_ctl_dp_mst(encoder, pipe_config, ddi_func_ctl);
> >  	} else if (ddi_mode == TRANS_DDI_MODE_SELECT_FDI_OR_128B132B && HAS_DP20(display)) {
> > -		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > +		struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> >  
> >  		/*
> >  		 * If this is true, we know we're being called from mst stream
> >  		 * encoder's ->get_config().
> >  		 */
> > -		if (intel_dp->is_mst)
> > +		if (intel_dp_mst_encoder_active_links(dig_port))
> >  			intel_ddi_read_func_ctl_dp_mst(encoder, pipe_config, ddi_func_ctl);
> >  		else
> >  			intel_ddi_read_func_ctl_dp_sst(encoder, pipe_config, ddi_func_ctl);
> 
> -- 
> Jani Nikula, Intel
