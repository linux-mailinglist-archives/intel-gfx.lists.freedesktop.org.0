Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D31716F1D50
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 19:22:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3350410E338;
	Fri, 28 Apr 2023 17:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C8D510E338
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 17:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682702536; x=1714238536;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dNf6LYuP/4Eg8Ts1PfKdIQW6pYgRdi1K7CJBumKOp74=;
 b=SFer3jIj+xy0MYG8ieqqi11QkX+lqGqxaPI5t3Dl42rjrzpXTmCRRMQI
 A17Q1/2fz2IhlbGLddmDhF3OToUxfjurEwZMsmY4YHFCox/mFwa5QqiOv
 eOrdEYbZ/bgleQ7Y9FbBpnedfIACQzfKBqhnKFnUjvzY6epJJfTCljmoS
 GxtSwaA4Vtz/hCXRHoIT9COumnXx4ZubrFgTRNt39Hhbn1XjO03vCiNOv
 xyfg0iQ69hXGcI+aqad3kNruF0fTHkOjnWLLMmPkZNO1H54PdyhMZhmqj
 KrW+KbV6fGbnNgNebrrUCjhM/IDgKYtnsXaDmFsy6ztYu8JiFbYPXJj8D g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="434098266"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="434098266"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 10:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="697604833"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="697604833"
Received: from unknown (HELO rkl) ([10.237.72.78])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 10:22:14 -0700
Date: Fri, 28 Apr 2023 20:22:31 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZEwA1x2Yi8X8Wh3i@rkl>
References: <20230426165305.2049341-1-imre.deak@intel.com>
 <20230426165305.2049341-6-imre.deak@intel.com>
 <ZEvR++IEZDI+uKB5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZEvR++IEZDI+uKB5@intel.com>
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915: Add support for disabling
 any CRTCs during HW readout/sanitization
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

On Fri, Apr 28, 2023 at 05:02:35PM +0300, Ville Syrjälä wrote:
> On Wed, Apr 26, 2023 at 07:52:59PM +0300, Imre Deak wrote:
> > During HW readout/sanitization CRTCs can be disabled only if they don't
> > have an attached encoder (and so the encoder disable hooks don't need to
> > be called). An upcoming patch will need to disable CRTCs also with an
> > attached an encoder, so add support for this.
> > 
> > For bigjoiner configs the encoder disabling hooks require the slave CRTC
> > states, so add these too to the atomic state. Since the connector atomic
> > state is already up-to-date when the CRTC is disabled the connector
> > state needs to be updated (reset) after the CRTC is disabled, make this
> > so. Follow the proper order of disabling first all bigjoiner slaves,
> > then any port synced CRTC slaves followed by the CRTC originally
> > requested to be disabled.
> > 
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_modeset_setup.c    | 124 ++++++++++++++++--
> >  1 file changed, 115 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index a66085cf82bab..f613c074187a2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -50,10 +50,39 @@ static void set_encoder_for_connector(struct intel_connector *connector,
> >  	}
> >  }
> >  
> > +static void reset_encoder_connector_state(struct intel_encoder *encoder)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > +	struct intel_connector *connector;
> > +	struct drm_connector_list_iter conn_iter;
> > +
> > +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> > +	for_each_intel_connector_iter(connector, &conn_iter) {
> > +		if (connector->base.encoder != &encoder->base)
> > +			continue;
> > +
> > +		set_encoder_for_connector(connector, NULL);
> > +
> > +		connector->base.dpms = DRM_MODE_DPMS_OFF;
> > +		connector->base.encoder = NULL;
> > +	}
> > +	drm_connector_list_iter_end(&conn_iter);
> > +}
> > +
> > +static void reset_crtc_encoder_state(struct intel_crtc *crtc)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +	struct intel_encoder *encoder;
> > +
> > +	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder) {
> > +		reset_encoder_connector_state(encoder);
> > +		encoder->base.crtc = NULL;
> > +	}
> > +}
> > +
> >  static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> >  					struct drm_modeset_acquire_ctx *ctx)
> >  {
> > -	struct intel_encoder *encoder;
> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >  	struct intel_bw_state *bw_state =
> >  		to_intel_bw_state(i915->display.bw.obj.state);
> > @@ -65,9 +94,8 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> >  		to_intel_crtc_state(crtc->base.state);
> >  	struct intel_plane *plane;
> >  	struct drm_atomic_state *state;
> > -	struct intel_crtc_state *temp_crtc_state;
> > +	struct intel_crtc *temp_crtc;
> >  	enum pipe pipe = crtc->pipe;
> > -	int ret;
> >  
> >  	if (!crtc_state->hw.active)
> >  		return;
> > @@ -92,10 +120,17 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> >  	to_intel_atomic_state(state)->internal = true;
> >  
> >  	/* Everything's already locked, -EDEADLK can't happen. */
> > -	temp_crtc_state = intel_atomic_get_crtc_state(state, crtc);
> > -	ret = drm_atomic_add_affected_connectors(state, &crtc->base);
> > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc,
> > +					 BIT(pipe) |
> > +					 intel_crtc_bigjoiner_slave_pipes(crtc_state)) {
> > +		struct intel_crtc_state *temp_crtc_state =
> > +			intel_atomic_get_crtc_state(state, temp_crtc);
> > +		int ret;
> >  
> > -	drm_WARN_ON(&i915->drm, IS_ERR(temp_crtc_state) || ret);
> > +		ret = drm_atomic_add_affected_connectors(state, &temp_crtc->base);
> > +
> > +		drm_WARN_ON(&i915->drm, IS_ERR(temp_crtc_state) || ret);
> > +	}
> 
> It's a bit weird to have this loop inside the function that
> otherwise seems to be called individually for each of the
> joined pipes. Why do we need this?

If this is called for the master pipe, calling its encoders, it will go
through the slave pipes using their CRTC states, at least in
intel_ddi_post_disable().

> >  	i915->display.funcs.display->crtc_disable(to_intel_atomic_state(state), crtc);
> >  
> > @@ -120,8 +155,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> >  	drm_WARN_ON(&i915->drm,
> >  		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
> >  
> > -	for_each_encoder_on_crtc(&i915->drm, &crtc->base, encoder)
> > -		encoder->base.crtc = NULL;
> > +	reset_crtc_encoder_state(crtc);
> >  
> >  	intel_fbc_disable(crtc);
> >  	intel_update_watermarks(i915);
> > @@ -272,6 +306,77 @@ static void intel_sanitize_fifo_underrun_reporting(const struct intel_crtc_state
> >  					   !HAS_GMCH(i915));
> >  }
> >  
> > +static u32 get_transcoder_pipes(struct drm_i915_private *i915, u32 transcoder_mask)
> > +{
> > +	struct intel_crtc *slave_crtc;
> > +	u32 pipes = 0;
> > +
> > +	for_each_intel_crtc(&i915->drm, slave_crtc) {
> > +		struct intel_crtc_state *slave_crtc_state =
> > +			to_intel_crtc_state(slave_crtc->base.state);
> > +
> > +		if (slave_crtc_state->cpu_transcoder == INVALID_TRANSCODER)
> > +			continue;
> > +
> > +		if (transcoder_mask & BIT(slave_crtc_state->cpu_transcoder))
> > +			pipes |= BIT(slave_crtc->pipe);
> > +	}
> > +
> > +	return pipes;
> > +}
> > +
> > +static u32 get_bigjoiner_slave_pipes(struct drm_i915_private *i915, u32 master_pipes)
> > +{
> > +	struct intel_crtc *master_crtc;
> > +	u32 pipes = 0;
> > +
> > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, master_crtc, master_pipes) {
> > +		struct intel_crtc_state *master_crtc_state =
> > +			to_intel_crtc_state(master_crtc->base.state);
> > +
> > +		pipes |= intel_crtc_bigjoiner_slave_pipes(master_crtc_state);
> > +	}
> > +
> > +	return pipes;
> > +}
> > +
> > +static void kill_bigjoiner_slave_noatomic(struct intel_crtc *master_crtc)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(master_crtc->base.dev);
> > +	struct intel_crtc_state *master_crtc_state =
> > +		to_intel_crtc_state(master_crtc->base.state);
> > +	struct intel_crtc *slave_crtc;
> > +
> > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> > +					 intel_crtc_bigjoiner_slave_pipes(master_crtc_state)) {
> > +		struct intel_crtc_state *slave_crtc_state =
> > +			to_intel_crtc_state(slave_crtc->base.state);
> > +
> > +		slave_crtc_state->bigjoiner_pipes = 0;
> > +	}
> > +
> > +	master_crtc_state->bigjoiner_pipes = 0;
> > +}
> > +
> > +static void disable_crtc_with_slaves(struct intel_crtc *crtc,
> > +				     struct drm_modeset_acquire_ctx *ctx)
> > +{
> > +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> > +	struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
> > +	u32 bigjoiner_masters = BIT(crtc->pipe) |
> > +				get_transcoder_pipes(i915, crtc_state->sync_mode_slaves_mask);
> 
> The resulting bitmask would seem to also include the bigjoiner slaves.

Hrm, doesn't sync_mode_slaves_mask contain only the transcoder bits for
the port-synced master CRTCs? I assumed that those port-synced master
CRTCs would point to their slave pipes via their
crtc_state->bigjoiner_pipes mask.

> > +	u32 bigjoiner_slaves = get_bigjoiner_slave_pipes(i915, bigjoiner_masters);
> > +	struct intel_crtc *temp_crtc;
> > +
> > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, bigjoiner_slaves)
> > +		intel_crtc_disable_noatomic(temp_crtc, ctx);
> > +
> > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, temp_crtc, bigjoiner_masters) {
> > +		intel_crtc_disable_noatomic(temp_crtc, ctx);
> > +		kill_bigjoiner_slave_noatomic(temp_crtc);
> > +	}
> > +}
> > +
> >  static void intel_sanitize_crtc(struct intel_crtc *crtc,
> >  				struct drm_modeset_acquire_ctx *ctx)
> >  {
> > @@ -299,10 +404,11 @@ static void intel_sanitize_crtc(struct intel_crtc *crtc,
> >  	/*
> >  	 * Adjust the state of the output pipe according to whether we have
> >  	 * active connectors/encoders.
> > +	 * TODO: Add support for MST
> >  	 */
> >  	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
> >  	    !intel_crtc_is_bigjoiner_slave(crtc_state))
> > -		intel_crtc_disable_noatomic(crtc, ctx);
> > +		disable_crtc_with_slaves(crtc, ctx);
> 
> I'd like to keep the _noatomic() in the name.

Ok, will change this.

> 
> >  }
> >  
> >  static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_state)
> > -- 
> > 2.37.2
> 
> -- 
> Ville Syrjälä
> Intel
