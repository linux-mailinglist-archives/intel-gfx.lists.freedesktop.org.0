Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 317279B792B
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 11:57:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C880510E85E;
	Thu, 31 Oct 2024 10:57:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JKUQ/PBM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4D1A10E85E
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 10:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730372234; x=1761908234;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=u9ZiscC9gAlPZxge33PTxJXLf1dOZhWW7GVbl883XTw=;
 b=JKUQ/PBM2EDg3mUK/g5MSVvapRU/+RGM5iRHuYdmv1fLR4PrOQsp0e56
 jTQbe3aquIwxPN3n8SQCEyV/n8qtEgR4gNCLd3Bv1bK20UbIMW9oGg23c
 MbJmV+5NOstIZn3WLuzSZw7QjerE2q6IuTsECtWnx9Lhfiu1Xw7/pptk5
 n81tqGKfO5+EiOwqys9zb3xouszu3CBe7P5ILBdZEv6AE4ZW4OoVeGNuJ
 h9AkT/i0/vVEzWJPuolPrP50Y9vCsuSApu9MOTz02bVJt10MoJ44SHUcU
 TNKNmVKhvlkQZPzC/kS3+Xu+1hjGlyjIiuiYFBGB/bgvh3r0+9FCDUjH0 A==;
X-CSE-ConnectionGUID: jbB7MxRsQIWHGC/LgBPEsQ==
X-CSE-MsgGUID: PqXLwHpdSQyaChzvq3++Tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="55501973"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="55501973"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 03:57:13 -0700
X-CSE-ConnectionGUID: Tqm2Nq9jR7iGtBe5k+MpBA==
X-CSE-MsgGUID: 2kZPVXzARFWHHwMyHcjxbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="105921306"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 03:57:12 -0700
Date: Thu, 31 Oct 2024 12:57:45 +0200
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 1/5] drm/i915/ptl/dp_mst: Fix slave transcoder
 enabling wrt. DDI function
Message-ID: <ZyNiqX4w0Txzc74g@ideak-desk.fi.intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
 <20241030192313.4030617-2-imre.deak@intel.com>
 <b993583d89f0cea37af1c1dc19009b9bc0d7450d.camel@coelho.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b993583d89f0cea37af1c1dc19009b9bc0d7450d.camel@coelho.fi>
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

On Thu, Oct 31, 2024 at 12:44:38PM +0200, Luca Coelho wrote:
> On Wed, 2024-10-30 at 21:23 +0200, Imre Deak wrote:
> > On PTL during modeset enabling configure the DDI function without
> > enabling it for MST slave transcoders before programming the data and
> > link M/N values. The DDI function gets enabled separately later in the
> > transcoder enabling sequence.
> > 
> > This fixes a slave transcoder getting stuck during enabling, leading
> > to page flip timeout errors on the corresponding pipe.
> > 
> > The spec requires the same programming step for ADLP+ platforms, that
> > will be addressed separately (on those platforms the above transcoder
> > getting stuck issue was not observed).
> > 
> > Bspec: 68849
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c    | 2 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.h    | 2 ++
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
> >  3 files changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 2bd14e2134be9..069cca4b38b2e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -619,7 +619,7 @@ void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
> >   * Same as intel_ddi_enable_transcoder_func(), but it does not set the enable
> >   * bit.
> >   */
> > -static void
> > +void
> >  intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
> >  				 const struct intel_crtc_state *crtc_state)
> 
> The void fits on the same line, and I think it looks better?

Ok, will change that.

> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> > index 6d85422bdefef..1aa2e3a190aee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > @@ -57,6 +57,8 @@ void intel_wait_ddi_buf_idle(struct drm_i915_private *dev_priv,
> >  void intel_ddi_init(struct intel_display *display,
> >  		    const struct intel_bios_encoder_data *devdata);
> >  bool intel_ddi_get_hw_state(struct intel_encoder *encoder, enum pipe *pipe);
> > +void intel_ddi_config_transcoder_func(struct intel_encoder *encoder,
> > +				      const struct intel_crtc_state *crtc_state);
> >  void intel_ddi_enable_transcoder_func(struct intel_encoder *encoder,
> >  				      const struct intel_crtc_state *crtc_state);
> >  void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 1a2ff3e1cb68f..7c16406883594 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -1224,6 +1224,9 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
> >  	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
> >  		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
> >  
> > +	if (DISPLAY_VER(dev_priv) >= 30 && !first_mst_stream)
> > +		intel_ddi_config_transcoder_func(encoder, pipe_config);
> > +
> >  	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
> >  	intel_ddi_set_dp_msa(pipe_config, conn_state);
> >  }
> 
> I don't see the part where you changed the code to _not_ enable this,
> since you're calling intel_ddi_config_transcoder_func() here now...
> 
> Did I miss something?

This only _configures_ the DDI function - which was missing so far - the
enabling and disabling happens separately later, in
intel_mst_enable_dp() / intel_mst_post_disable_dp() - which are done
already as expected.

> --
> Cheers,
> Luca.
