Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B62BB69D26B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 18:56:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A47110E730;
	Mon, 20 Feb 2023 17:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5029810E730
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 17:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676915800; x=1708451800;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5zu0I29NgO4wX2ytmfeofMpjRgadZP23VDV2GKnu8fw=;
 b=bUJvCFsGejd4z+GXOAvk+Fk/7wh4fkTHX2HiO2ELlDNIfJe61W6B9P8r
 ZaUGW008amSt/SIRsxPoTkLdyND+AeB+XccRmhoJcH67ZZn1foDUcAzsW
 xQI+3hCIyMXM830j0kxa7FxVaYQEBzROz/vyOcvRmjMkoD9F/lfVuP8Pj
 9qYqREUhtJHxvLDUoptvpeVrepdXpL+LYZc/8lzCCaTiNGrQHOFSsyjdG
 TI47goKHSP+3Sn/tS/9/3VCaWKKAskHs1wWKOgSE5FT5AE4vdHPc5kouB
 w3i4UBxb/ynjId/JMxDV10+gSsvpWN4WcV1k2bnOV30b3Qte6xzNTc1in Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312827888"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="312827888"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 09:56:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="760251983"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="760251983"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 09:56:38 -0800
Date: Mon, 20 Feb 2023 19:56:31 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y/O0PJLpsIwcV2LJ@intel.com>
References: <20230214100132.24208-1-stanislav.lisovskiy@intel.com>
 <Y+uU1X84eAD+x4c3@intel.com> <Y/OVqQ9KgD6mbBB/@intel.com>
 <Y/Ocgp7y8ZxfaqLw@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y/Ocgp7y8ZxfaqLw@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Communicate display
 configuration to pcode
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 20, 2023 at 06:14:58PM +0200, Ville Syrjälä wrote:
> On Mon, Feb 20, 2023 at 05:45:45PM +0200, Lisovskiy, Stanislav wrote:
> > On Tue, Feb 14, 2023 at 04:04:05PM +0200, Ville Syrjälä wrote:
> > > On Tue, Feb 14, 2023 at 12:01:32PM +0200, Stanislav Lisovskiy wrote:
> > > > From: Jigar Bhatt <jigar.bhatt@intel.com>
> > > > 
> > > > Display to communicate "display configuration" to Pcode for more accurate
> > > > power accounting for DG2. Existing sequence is only sending the voltage
> > > > value to the Pcode. Adding new sequence with current cdclk associate
> > > > with voltage value masking. Adding pcode request when any power well
> > > > will disable or enable.
> > > > 
> > > > v2: - Fixed identation(Stanislav Lisovskiy)
> > > >     - Made conditions more specific(in the commit we declare that
> > > >       we do this for DG2 only, however that commit changes >= to
> > > >       == for many other platforms.(Stanislav Lisovskiy)
> > > > 
> > > > v3: - Refactored code for proper identation and smaller conditions
> > > >       (Andi Shyti)
> > > >     - Switched to proper function naming, removed platform specific
> > > >       code from intel_atomic_commit_tail(Jani Nikula)
> > > >     - Moved intel_cdclk_power_usage_to_pcode_pre/post_notification
> > > >       to proper places, before and after setting CDCLK(Stanislav Lisovskiy)
> > > > 
> > > > Signed-off-by: Jigar Bhatt <jigar.bhatt@intel.com>
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 97 ++++++++++++++++++++--
> > > >  drivers/gpu/drm/i915/display/intel_cdclk.h |  2 +
> > > >  drivers/gpu/drm/i915/i915_reg.h            |  4 +
> > > >  3 files changed, 94 insertions(+), 9 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > index 82da76b586ed..4f8bcc0b51e8 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > @@ -1908,10 +1908,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > >  		 * NOOP - No Pcode communication needed for
> > > >  		 * Display versions 14 and beyond
> > > >  		 */;
> > > > -	else if (DISPLAY_VER(dev_priv) >= 11)
> > > > +	else if (DISPLAY_VER(dev_priv) >= 11 && !IS_DG2(dev_priv))
> > > >  		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> > > >  				      cdclk_config->voltage_level);
> > > > -	else
> > > > +	if (DISPLAY_VER(dev_priv) < 11) {
> > > >  		/*
> > > >  		 * The timeout isn't specified, the 2ms used here is based on
> > > >  		 * experiment.
> > > > @@ -1922,7 +1922,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> > > >  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> > > >  					      cdclk_config->voltage_level,
> > > >  					      150, 2);
> > > > -
> > > > +	}
> > > >  	if (ret) {
> > > >  		drm_err(&dev_priv->drm,
> > > >  			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
> > > > @@ -2218,6 +2218,29 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
> > > >  		    cdclk_config->voltage_level);
> > > >  }
> > > >  
> > > > +static void intel_pcode_notify(struct drm_i915_private *i915,
> > > > +			       unsigned int cdclk, u8 voltage_level,
> > > > +			       u8 active_pipes)
> > > > +{
> > > > +	int ret;
> > > > +
> > > > +	if (DISPLAY_VER(i915) < 12)
> > > > +		return;
> > > > +
> > > > +	ret = skl_pcode_request(&i915->uncore, SKL_PCODE_CDCLK_CONTROL,
> > > > +				SKL_CDCLK_PREPARE_FOR_CHANGE |
> > > 
> > > Isn't that something we're supposed to set only *before*
> > > the change? Here it looks like we're setting also for the
> > > post call.
> > 
> > According to BSpec, we are supposed to send notifications both
> > before and after setting CDCLK:
> > 
> > 1) Before the change we need to set voltage bits to the max(bits 1:0 set to 3)
> 
> You are doing that for both pre and post now.
> 
> > 2) If CDCLK is increasing set to increased value or leave the same
> > 3) If enabling pipe write upcoming pipe count
> > 
> > After the change 
> > 
> > 1) we set required voltage level
> > 2) write CDCLK bits if CDCLK is disabled
> > 3) If pipe is disabled write the current pipe count
> > 
> > I agree, current code in fact doesn't do it exactly as described.
> > 
> > > 
> > > > +				DISPLAY_TO_PCODE_MASK
> > > > +				(cdclk, active_pipes, voltage_level),
> > > > +				SKL_CDCLK_READY_FOR_CHANGE,
> > > > +				SKL_CDCLK_READY_FOR_CHANGE, 3);
> > > > +	if (ret) {
> > > > +		drm_err(&i915->drm,
> > > > +				"Failed to inform PCU about display config (err %d)\n",
> > > > +				ret);
> > > > +		return;
> > > > +	}
> > > > +}
> > > > +
> > > >  /**
> > > >   * intel_set_cdclk - Push the CDCLK configuration to the hardware
> > > >   * @dev_priv: i915 device
> > > > @@ -2287,6 +2310,56 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
> > > >  	}
> > > >  }
> > > >  
> > > > +/**
> > > > + * intel_cdclk_power_usage_to_pcode_pre_notification: display to pcode notification
> > > > + * before the enabling power wells.
> > > > + * send notification with cdclk, number of pipes, voltage_level.
> > > > + * @state: intel atomic state
> > > > + */
> > > > +void intel_cdclk_power_usage_to_pcode_pre_notification(struct intel_atomic_state *state)
> > > > +{
> > > > +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > > > +	const struct intel_cdclk_state *old_cdclk_state =
> > > > +		intel_atomic_get_old_cdclk_state(state);
> > > > +	const struct intel_cdclk_state *new_cdclk_state =
> > > > +		intel_atomic_get_new_cdclk_state(state);
> > > > +	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> > > > +				 &new_cdclk_state->actual) &&
> > > > +				 (new_cdclk_state->active_pipes ==
> > > > +				 old_cdclk_state->active_pipes))
> > > > +		return;
> > > > +	else if (old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk)
> > > > +		intel_pcode_notify(dev_priv, new_cdclk_state->actual.cdclk,
> > > > +				   new_cdclk_state->actual.voltage_level,
> > > > +				   new_cdclk_state->active_pipes);
> > > > +	else if (old_cdclk_state->actual.cdclk >= new_cdclk_state->actual.cdclk)
> > > > +		intel_pcode_notify(dev_priv, old_cdclk_state->actual.cdclk,
> > > > +				   old_cdclk_state->actual.voltage_level,
> > > > +				   old_cdclk_state->active_pipes);
> > > > +	else if (old_cdclk_state->active_pipes != new_cdclk_state->active_pipes)
> > > > +		intel_pcode_notify(dev_priv, new_cdclk_state->actual.cdclk,
> > > > +				   new_cdclk_state->actual.voltage_level,
> > > > +				   new_cdclk_state->active_pipes);
> > > > +
> > > > +	intel_pcode_notify(dev_priv, DISPLAY_TO_PCODE_CDCLK_MAX,
> > > > +			   new_cdclk_state->actual.voltage_level,
> > > > +			   new_cdclk_state->active_pipes);
> > > 
> > > I don't understand what is going on here. Are we trying to
> > > say something like
> > > 
> > > intel_pcode_notify(...,
> > > 		   max(old_cdclk, new_cdclk),
> > > 		   max(old_voltage_level, new_voltage_level),
> > > 		   old_active_pipes | new_active_pipes);
> > 
> > Regarding CDCLK yes, for voltage level, just read out from BSpec 
> > that we are supposed to set voltage level to to max(3) always before
> > the change. Dunno why this was implemented that way initially(BSpec got updated?)
> 
> Pretty sure it's always been like that for all platforms. Dunno why.
> 
> > 
> > 
> > > ?
> > > 
> > > Also the inclusion of the pipes here would imply that
> > > we need to think about serialize vs. lock.
> > 
> > Should we already had locked/serialized global state in intel_modeset_calc_cdclk,
> > if active_pipes/cdclk had changed?
> 
> For active_pipes in particular, locked yes, serialized no since no other
> platform needs us to poke the hardware state on active_pipes changes.
> The lock is what protects the software state, serialize is what
> guarantees the hardware state updates happen in the correct order.

Okay, then I need to extend serializing also active_pipes change in
intel_modeset_calc_cdclk.

As a side note, wonder if we could make some kind of automated way to determine when we 
need to serialize or lock global state, i.e smth like
cdclk_state_is_serialize_needed(new_cdclk_state, old_cdclk_state) 
or cdclk_state_is_global_lock_needed. Have similar helpers to compare bw_state and other
states also.
So that we don't have to hardcode all this logic, also will make this look more intuitively
understandable.

> 
> > 
> > Stan
> > 
> > > 
> > > > +}
> > > > +
> > > > +/* intel_cdclk_power_usage_to_pcode_post_notification: after frequency change sending
> > > > + * voltage_level, active pipes, current CDCLK frequency.
> > > > + * @state: intel atomic state
> > > > + */
> > > > +void intel_cdclk_power_usage_to_pcode_post_notification(struct intel_atomic_state *state)
> > > > +{
> > > > +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > > > +	const struct intel_cdclk_state *new_cdclk_state =
> > > > +		intel_atomic_get_new_cdclk_state(state);
> > > > +		intel_pcode_notify(dev_priv, new_cdclk_state->actual.cdclk,
> > > > +				   new_cdclk_state->actual.voltage_level,
> > > > +				   new_cdclk_state->active_pipes);
> > > > +}
> > > > +
> > > >  /**
> > > >   * intel_set_cdclk_pre_plane_update - Push the CDCLK state to the hardware
> > > >   * @state: intel atomic state
> > > > @@ -2297,7 +2370,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
> > > >  void
> > > >  intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
> > > >  {
> > > > -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > > > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > > >  	const struct intel_cdclk_state *old_cdclk_state =
> > > >  		intel_atomic_get_old_cdclk_state(state);
> > > >  	const struct intel_cdclk_state *new_cdclk_state =
> > > > @@ -2308,11 +2381,14 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
> > > >  				 &new_cdclk_state->actual))
> > > >  		return;
> > > >  
> > > > +	if (DISPLAY_VER(i915) >= 12)
> > > > +		intel_cdclk_power_usage_to_pcode_pre_notification(state);
> > > > +
> > > >  	if (pipe == INVALID_PIPE ||
> > > >  	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
> > > > -		drm_WARN_ON(&dev_priv->drm, !new_cdclk_state->base.changed);
> > > > +		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
> > > >  
> > > > -		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
> > > > +		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
> > > >  	}
> > > >  }
> > > >  
> > > > @@ -2326,7 +2402,7 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
> > > >  void
> > > >  intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
> > > >  {
> > > > -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > > > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > > >  	const struct intel_cdclk_state *old_cdclk_state =
> > > >  		intel_atomic_get_old_cdclk_state(state);
> > > >  	const struct intel_cdclk_state *new_cdclk_state =
> > > > @@ -2337,11 +2413,14 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
> > > >  				 &new_cdclk_state->actual))
> > > >  		return;
> > > >  
> > > > +	if (DISPLAY_VER(i915) >= 12)
> > > > +		intel_cdclk_power_usage_to_pcode_post_notification(state);
> > > > +
> > > >  	if (pipe != INVALID_PIPE &&
> > > >  	    old_cdclk_state->actual.cdclk > new_cdclk_state->actual.cdclk) {
> > > > -		drm_WARN_ON(&dev_priv->drm, !new_cdclk_state->base.changed);
> > > > +		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
> > > >  
> > > > -		intel_set_cdclk(dev_priv, &new_cdclk_state->actual, pipe);
> > > > +		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
> > > >  	}
> > > >  }
> > > >  
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > > index 51e2f6a11ce4..fa356adc61d9 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > > > @@ -64,6 +64,8 @@ bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> > > >  			       const struct intel_cdclk_config *b);
> > > >  void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
> > > >  void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
> > > > +void intel_cdclk_power_usage_to_pcode_pre_notification(struct intel_atomic_state *state);
> > > > +void intel_cdclk_power_usage_to_pcode_post_notification(struct intel_atomic_state *state);
> > > >  void intel_cdclk_dump_config(struct drm_i915_private *i915,
> > > >  			     const struct intel_cdclk_config *cdclk_config,
> > > >  			     const char *context);
> > > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > > index 596efc940ee7..b90c31862083 100644
> > > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > > @@ -6498,6 +6498,10 @@
> > > >  #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
> > > >  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
> > > >  #define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
> > > > +#define   DISPLAY_TO_PCODE_CDCLK_MAX		0x28D
> > > > +#define   DISPLAY_TO_PCODE_MASK(cdclk, num_pipes, voltage_level) \
> > > > +		((1 << 31) | (num_pipes << 28) | \
> > > > +		(cdclk << 16) | (1 << 27) | voltage_level)
> > > >  #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
> > > >  #define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
> > > >  #define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 0)
> > > > -- 
> > > > 2.37.3
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
