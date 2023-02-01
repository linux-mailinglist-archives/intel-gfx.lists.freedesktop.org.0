Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF9F686890
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 15:42:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B16AC89FEA;
	Wed,  1 Feb 2023 14:42:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C80E89FEA
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Feb 2023 14:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675262520; x=1706798520;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vgPAy1nbeSlofdeKLreGSoxbGBRHYcVyAl/GfC1zMa0=;
 b=kGw0s6+Zo0tFY+W3OmUlR2lboGrYpJgZ7bQ5t2VUaXEWmhNQKC2vBp+W
 yRiswdvs7DOpIrb2GB+12DfeN6/ZLZ4Bjc2QrX2w/9lbz8cmzaYGKhc3B
 YYz2cgRUAhvCiDw0ZpWlznVzFK55X0NL4IdiR8Z5N+CfIIqJpbetd9Ra7
 EJjaphikOZIhNBYO0ksYDG426Rdg8RQXK2rRy1shFeqWV3I7ykDwf78wv
 9qJLZBvCllKriTw/mqiwJvfCZj25IPg9WHSob39IcjGIulz/3F7WeBWQH
 iKU8emCXUVbv9HgxuKBo4YqcpEmo7JO6gxCrqQROnm/n0JBjjbjhUDQxe Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="355492116"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="355492116"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 06:41:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="788904080"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="788904080"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 06:41:57 -0800
Date: Wed, 1 Feb 2023 16:41:53 +0200
From: Imre Deak <imre.deak@intel.com>
To: Lyude Paul <lyude@redhat.com>
Message-ID: <Y9p6MS6SQ3q7mtXe@ideak-desk.fi.intel.com>
References: <20230131150548.1614458-1-imre.deak@intel.com>
 <20230131150548.1614458-17-imre.deak@intel.com>
 <4add821aebae4f796a808d9dfe9ad85e83cac128.camel@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4add821aebae4f796a808d9dfe9ad85e83cac128.camel@redhat.com>
Subject: Re: [Intel-gfx] [PATCH v2 16/17] drm/i915/dp_mst: Add workaround
 for a DELL P2715Q payload allocation problem
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

On Tue, Jan 31, 2023 at 05:47:11PM -0500, Lyude Paul wrote:
> On Tue, 2023-01-31 at 17:05 +0200, Imre Deak wrote:
> > The DELL P2715Q monitor's MST hub has a payload allocation problem,
> 
> LMAO hello yet again, Dell P2715Q. It's been a while.
> 
> > where the VCPI used to reserve the last two time slots (at position
> > 0x3e, 0x3f) in the hub's payload table, this VCPI can't be reused for
> > later payload configurations.
> > 
> > The problem results at least in streams reusing older VCPIs to stay
> > blank on the screen and the payload table containing bogus VCPIs
> > (repeating the one earlier used to reserve the 0x3e, 0x3f slots) after
> > the last reservered slot.
> 
> WOW. you know I've been trying for ages to figure out what is up with this
> exact monitor and I think I just gave up because it's the only monitor I've
> ever seen do this.
> 
> (Also yes, I do have two of this exact monitor. I think we even have this
> model mentioned in our testcases. I looked up a google photo of it just to
> confirm. I think ours is the P2715Qb, but it looks identical and the problem
> you're describing sounds identical as well).
> 
> This patch looks fine to me, we could probably also put this in the MST
> helpers as well if you can think of a way to do that and I can handle testing
> it on nouveau/amdgpu, but this is basically the only monitor I've ever seen do
> this - so I don't think it's a big deal either way.

Ok, it would be good if you could repro the same issue on your side.

I think the driver specific part is to detect the issue and force a full
modeset in the next commit. The MST core could then clear the payload
table internally, maybe based on some flag the driver passed.

Also the detection and forcing a full modeset as in this patch is probably
better done during the connector check phase of the next commit, which
could check the previous payload allocations, I'll check if that works.

> either way:
> 
> Reviewed-by: Lyude Paul <lyude@redhat.com>

Thanks.

> > To work around the problem detect this monitor and the condition for the
> > problem (when the last two slots get allocated in a commit), force a
> > full modeset of the MST topology in the subsequent commit and reset the
> > payload table during the latter commit after all payloads have been
> > freed.
> > 
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Lyude Paul <lyude@redhat.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic.c   | 13 +++--
> >  drivers/gpu/drm/i915/display/intel_atomic.h   |  3 +-
> >  .../drm/i915/display/intel_display_types.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_dp.c       |  5 +-
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c   | 48 +++++++++++++++++--
> >  5 files changed, 61 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
> > index 0f1c5b9c9a826..04e5f0e0fffa6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > @@ -616,7 +616,8 @@ intel_atomic_get_crtc_state(struct drm_atomic_state *state,
> >  }
> >  
> >  static int modeset_pipe(struct intel_atomic_state *state,
> > -			struct intel_crtc *crtc, const char *reason)
> > +			struct intel_crtc *crtc, const char *reason,
> > +			bool allow_fastset)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> >  	struct intel_crtc_state *crtc_state;
> > @@ -629,6 +630,8 @@ static int modeset_pipe(struct intel_atomic_state *state,
> >  		return PTR_ERR(crtc_state);
> >  
> >  	crtc_state->uapi.mode_changed = true;
> > +	if (!allow_fastset)
> > +		crtc_state->uapi.connectors_changed = true;
> >  	crtc_state->update_pipe = false;
> >  
> >  	return intel_atomic_add_affected_planes(state, crtc);
> > @@ -639,6 +642,7 @@ static int modeset_pipe(struct intel_atomic_state *state,
> >   * @state: atomic state
> >   * @connector: connector to add the state for
> >   * @reason: the reason why the connector needs to be added
> > + * @allow_fastset: allow a fastset
> >   *
> >   * Add the @connector to the atomic state with its CRTC state and force a modeset
> >   * on the CRTC if any.
> > @@ -648,7 +652,8 @@ static int modeset_pipe(struct intel_atomic_state *state,
> >   * Returns 0 in case of success, a negative error code on failure.
> >   */
> >  int intel_atomic_modeset_connector(struct intel_atomic_state *state,
> > -				   struct intel_connector *connector, const char *reason)
> > +				   struct intel_connector *connector, const char *reason,
> > +				   bool allow_fastset)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> >  	struct drm_connector_state *conn_state;
> > @@ -671,7 +676,7 @@ int intel_atomic_modeset_connector(struct intel_atomic_state *state,
> >  	if (ret)
> >  		return ret;
> >  
> > -	return modeset_pipe(state, crtc, reason);
> > +	return modeset_pipe(state, crtc, reason, allow_fastset);
> >  }
> >  
> >  /**
> > @@ -700,7 +705,7 @@ int intel_atomic_modeset_pipe(struct intel_atomic_state *state,
> >  	if (ret)
> >  		return ret;
> >  
> > -	return modeset_pipe(state, crtc, reason);
> > +	return modeset_pipe(state, crtc, reason, true);
> >  }
> >  
> >  /**
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/drm/i915/display/intel_atomic.h
> > index 84295d388e3cb..7778aea8a09fe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> > @@ -59,7 +59,8 @@ int intel_atomic_setup_scalers(struct drm_i915_private *dev_priv,
> >  int intel_atomic_modeset_pipe(struct intel_atomic_state *state,
> >  			      struct intel_crtc *crtc, const char *reason);
> >  int intel_atomic_modeset_connector(struct intel_atomic_state *state,
> > -				   struct intel_connector *connector, const char *reason);
> > +				   struct intel_connector *connector, const char *reason,
> > +				   bool allow_fastset);
> >  int intel_atomic_modeset_all_pipes(struct intel_atomic_state *state,
> >  				   const char *reason);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 9ccae7a460200..06d51d2b5e0d6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1656,6 +1656,7 @@ struct intel_dp {
> >  	bool has_audio;
> >  	bool reset_link_params;
> >  	bool use_max_params;
> > +	bool mst_reset_payload_table;
> >  	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> >  	u8 psr_dpcd[EDP_PSR_RECEIVER_CAP_SIZE];
> >  	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index d6b0ef38f6563..c157bcd976103 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4689,6 +4689,8 @@ intel_dp_detect(struct drm_connector *connector,
> >  		memset(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));
> >  		memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));
> >  
> > +		intel_dp->mst_reset_payload_table = false;
> > +
> >  		if (intel_dp->is_mst) {
> >  			drm_dbg_kms(&dev_priv->drm,
> >  				    "MST device may have disappeared %d vs %d\n",
> > @@ -4924,7 +4926,8 @@ static int intel_modeset_tile_group(struct intel_atomic_state *state,
> >  			continue;
> >  
> >  		ret = intel_atomic_modeset_connector(state, connector,
> > -						     "connector tile group");
> > +						     "connector tile group",
> > +						     true);
> >  		if (ret)
> >  			break;
> >  	}
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 08222fc6c5ecd..a9bb339e41987 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -422,9 +422,10 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
> >  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> >  	struct drm_connector_list_iter connector_list_iter;
> >  	struct intel_connector *connector_iter;
> > +	bool reset_payload_table = connector->mst_port->mst_reset_payload_table;
> >  	int ret = 0;
> >  
> > -	if (DISPLAY_VER(dev_priv) < 12)
> > +	if (DISPLAY_VER(dev_priv) < 12 && !reset_payload_table)
> >  		return  0;
> >  
> >  	if (!intel_connector_needs_modeset(state, &connector->base))
> > @@ -437,7 +438,8 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
> >  			continue;
> >  
> >  		ret = intel_atomic_modeset_connector(state, connector_iter,
> > -						     "MST master transcoder");
> > +						     "MST master transcoder",
> > +						     !reset_payload_table);
> >  		if (ret)
> >  			break;
> >  	}
> > @@ -531,6 +533,41 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
> >  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
> >  }
> >  
> > +static void detect_payload_allocation_bug(const struct drm_dp_mst_topology_state *mst_state,
> > +					  const struct intel_connector *connector,
> > +					  struct intel_dp *intel_dp)
> > +{
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +
> > +	if (!drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_MST_PAYLOAD_TABLE_RESET_WA))
> > +		return;
> > +
> > +	if (drm_dp_mst_allocated_time_slots(mst_state) < DP_PAYLOAD_TABLE_SIZE - 2)
> > +		return;
> > +
> > +	drm_dbg(&i915->drm,
> > +		"[CONNECTOR:%d:%s] Payload table allocation bug detected\n",
> > +		connector->base.base.id, connector->base.name);
> > +
> > +	intel_dp->mst_reset_payload_table = true;
> > +}
> > +
> > +static void payload_allocation_bug_wa(const struct intel_connector *connector,
> > +				      struct intel_dp *intel_dp)
> > +{
> > +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> > +
> > +	if (!intel_dp->mst_reset_payload_table)
> > +		return;
> > +
> > +	drm_dbg(&i915->drm,
> > +		"[CONNECTOR:%d:%s] Resetting payload table due to allocation bug\n",
> > +		connector->base.base.id, connector->base.name);
> > +
> > +	drm_dp_mst_reset_payload_table(&intel_dp->mst_mgr);
> > +	intel_dp->mst_reset_payload_table = false;
> > +}
> > +
> >  static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
> >  				      struct intel_encoder *encoder,
> >  				      const struct intel_crtc_state *old_crtc_state,
> > @@ -594,10 +631,13 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
> >  
> >  
> >  	intel_mst->connector = NULL;
> > -	if (last_mst_stream)
> > +	if (last_mst_stream) {
> >  		dig_port->base.post_disable(state, &dig_port->base,
> >  						  old_crtc_state, NULL);
> >  
> > +		payload_allocation_bug_wa(connector, intel_dp);
> > +	}
> > +
> >  	drm_dbg_kms(&dev_priv->drm, "active links %d\n",
> >  		    intel_dp->active_mst_links);
> >  }
> > @@ -662,6 +702,8 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
> >  		drm_err(&dev_priv->drm, "Failed to create MST payload for %s: %d\n",
> >  			connector->base.name, ret);
> >  
> > +	detect_payload_allocation_bug(mst_state, connector, intel_dp);
> > +
> >  	/*
> >  	 * Before Gen 12 this is not done as part of
> >  	 * dig_port->base.pre_enable() and should be done here. For
> 
> -- 
> Cheers,
>  Lyude Paul (she/her)
>  Software Engineer at Red Hat
> 
