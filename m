Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F3A669046B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Feb 2023 11:06:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5005010E98A;
	Thu,  9 Feb 2023 10:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D6C10E98A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Feb 2023 10:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675937187; x=1707473187;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RBLPUzeAo1BlpCWsv8IoWcv5Zxq1yB+DPODANxWvEQk=;
 b=GVXUB2Zf+wjU2V9mqvNzOaF0QtGhNsCEhnztoB0r0V40sj9VmWZlChwl
 YpJlusfmtsUZhAmDK/NexEdYwaD+oYSz1jJTNNkuxLmdUASnz+g4u6Q0f
 qXd1eNA1BpZgpKDOXD1oads6UqqZgwYhzNt4JYSP2W1+kXFAdzjw+lsPI
 dH6oIScVvtt0j54akTUowiroyMhCxtye9dF4Ab5vLccr7CXeonwdNlLRm
 9MTnmLmBp32q9HYkaKiK8zjYCPFNhiVbQwaC0p4e/YxW4XvEPtdNZ33XB
 6K62jpTIM0oeG24zaNM7cRCT2BOm0rhi9kszn2vPEkPLh7mxDYQDklu5f A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="331354772"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="331354772"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 02:06:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="697969951"
X-IronPort-AV: E=Sophos;i="5.97,283,1669104000"; d="scan'208";a="697969951"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 02:06:25 -0800
Date: Thu, 9 Feb 2023 12:06:16 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y+TFmJkqLPG5lM1R@intel.com>
References: <20230208094550.27730-1-stanislav.lisovskiy@intel.com>
 <87cz6kxtun.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87cz6kxtun.fsf@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 08, 2023 at 01:46:40PM +0200, Jani Nikula wrote:
> On Wed, 08 Feb 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > From: Jigar Bhatt <jigar.bhatt@intel.com>
> >
> > Display to communicate "display configuration" to Pcode for more accurate
> > power accounting for DG2. Existing sequence is only sending the voltage
> > value to the Pcode. Adding new sequence with current cdclk associate
> > with voltage value masking. Adding pcode request when any power well
> > will disable or enable.
> >
> > v2: - Fixed identation(Stanislav Lisovskiy)
> >     - Made conditions more specific(in the commit we declare that
> >       we do this for DG2 only, however that commit changes >= to
> >       == for many other platforms.(Stanislav Lisovskiy)
> >
> > Signed-off-by: Jigar Bhatt <jigar.bhatt@intel.com>
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c   | 89 +++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_cdclk.h   |  2 +
> >  drivers/gpu/drm/i915/display/intel_display.c |  6 ++
> >  drivers/gpu/drm/i915/i915_reg.h              |  4 +
> >  4 files changed, 98 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 82da76b586ed..22ba0303ea28 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1908,10 +1908,10 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >  		 * NOOP - No Pcode communication needed for
> >  		 * Display versions 14 and beyond
> >  		 */;
> > -	else if (DISPLAY_VER(dev_priv) >= 11)
> > +	else if (DISPLAY_VER(dev_priv) >= 11 && !IS_DG2(dev_priv))
> >  		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> >  				      cdclk_config->voltage_level);
> > -	else
> > +	if (DISPLAY_VER(dev_priv) < 11) {
> >  		/*
> >  		 * The timeout isn't specified, the 2ms used here is based on
> >  		 * experiment.
> > @@ -1922,7 +1922,7 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> >  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> >  					      cdclk_config->voltage_level,
> >  					      150, 2);
> > -
> > +	}
> >  	if (ret) {
> >  		drm_err(&dev_priv->drm,
> >  			"PCode CDCLK freq set failed, (err %d, freq %d)\n",
> > @@ -2218,6 +2218,34 @@ void intel_cdclk_dump_config(struct drm_i915_private *i915,
> >  		    cdclk_config->voltage_level);
> >  }
> >  
> > +/**
> > + * intel_display_to_pcode- inform pcode for display config
> > + * @cdclk: current cdclk as per new or old state
> > + * @voltage_level: current voltage_level send to Pcode
> > + * @active_pipes: active pipes for more accurate power accounting
> > + */
> 
> kernel-doc is usually discoraged for internal functions.
> 
> > +static void intel_display_to_pcode(struct drm_i915_private *dev_priv,
> > +				   unsigned int cdclk, u8 voltage_level,
> > +				   u8 active_pipes)
> > +{
> > +	int ret;
> > +
> > +	if (DISPLAY_VER(dev_priv) >= 12) {
> > +		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> > +					SKL_CDCLK_PREPARE_FOR_CHANGE |
> > +					DISPLAY_TO_PCODE_MASK
> > +					(cdclk, active_pipes, voltage_level),
> > +					SKL_CDCLK_READY_FOR_CHANGE,
> > +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> > +		if (ret) {
> > +			drm_err(&dev_priv->drm,
> > +					"Failed to inform PCU about display config (err %d)\n",
> > +					ret);
> > +			return;
> > +		}
> > +	}
> > +}
> > +
> >  /**
> >   * intel_set_cdclk - Push the CDCLK configuration to the hardware
> >   * @dev_priv: i915 device
> > @@ -2287,6 +2315,61 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
> >  	}
> >  }
> >  
> > +/**
> > + * intel_display_to_pcode_pre_notification: display to pcode notification
> > + * before the enabling power wells.
> > + * send notification with cdclk, number of pipes, voltage_level.
> > + * @state: intel atomic state
> > + */
> > +void intel_display_to_pcode_pre_notification(struct intel_atomic_state *state)
> 
> The function name should indicate what is being
> notified. Pre-notification of what? Post-notification of what?
> 
> Functions in this file should be prefixed intel_cdclk_*.
> 
> > +{
> > +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > +	const struct intel_cdclk_state *old_cdclk_state =
> > +		intel_atomic_get_old_cdclk_state(state);
> > +	const struct intel_cdclk_state *new_cdclk_state =
> > +		intel_atomic_get_new_cdclk_state(state);
> > +	if (!intel_cdclk_changed(&old_cdclk_state->actual,
> > +				&new_cdclk_state->actual) &&
> > +				(new_cdclk_state->active_pipes ==
> > +				old_cdclk_state->active_pipes))
> > +		return;
> > +	if (old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
> > +		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
> > +					new_cdclk_state->actual.voltage_level,
> > +					new_cdclk_state->active_pipes);
> > +		return;
> > +	}
> > +	if (old_cdclk_state->actual.cdclk >= new_cdclk_state->actual.cdclk) {
> > +		intel_display_to_pcode(dev_priv, old_cdclk_state->actual.cdclk,
> > +					old_cdclk_state->actual.voltage_level,
> > +					old_cdclk_state->active_pipes);
> > +		return;
> > +	}
> > +	if (old_cdclk_state->active_pipes != new_cdclk_state->active_pipes) {
> > +		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
> > +					new_cdclk_state->actual.voltage_level,
> > +					new_cdclk_state->active_pipes);
> > +		return;
> > +	}
> > +	intel_display_to_pcode(dev_priv, DISPLAY_TO_PCODE_CDCLK_MAX,
> > +				new_cdclk_state->actual.voltage_level,
> > +				new_cdclk_state->active_pipes);
> > +}
> > +
> > +/*intel_display_to_pcode_post_notification: after frequency change sending
> > + * voltage_level, active pipes, current CDCLK frequency.
> > + * @state: intel atomic state
> > + */
> > +void intel_display_to_pcode_post_notification(struct intel_atomic_state *state)
> > +{
> > +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > +	const struct intel_cdclk_state *new_cdclk_state =
> > +		intel_atomic_get_new_cdclk_state(state);
> > +		intel_display_to_pcode(dev_priv, new_cdclk_state->actual.cdclk,
> > +					new_cdclk_state->actual.voltage_level,
> > +					new_cdclk_state->active_pipes);
> > +}
> > +
> >  /**
> >   * intel_set_cdclk_pre_plane_update - Push the CDCLK state to the hardware
> >   * @state: intel atomic state
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > index 51e2f6a11ce4..95d9d39d63be 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > @@ -64,6 +64,8 @@ bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
> >  			       const struct intel_cdclk_config *b);
> >  void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
> >  void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
> > +void intel_display_to_pcode_pre_notification(struct intel_atomic_state *state);
> > +void intel_display_to_pcode_post_notification(struct intel_atomic_state *state);
> >  void intel_cdclk_dump_config(struct drm_i915_private *i915,
> >  			     const struct intel_cdclk_config *cdclk_config,
> >  			     const char *context);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 166662ade593..af0f0840e4b8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7462,6 +7462,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> >  
> >  	intel_atomic_prepare_plane_clear_colors(state);
> >  
> > +	if (IS_DG2(dev_priv))
> > +		intel_display_to_pcode_pre_notification(state);
> > +
> 
> This is very high level code and platform checks don't belong
> here. Let's not start now.

Ohhh. Totally agree. That is one of those cases, when you wonder
"why I didn't spot this myself(((". 
Looks like I was a bit too soon with resending Jigar's patch, I took
over. Just looked briefly for some obvious things.
Will fix that.

Stan

> 
> >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> >  					    new_crtc_state, i) {
> >  		if (intel_crtc_needs_modeset(new_crtc_state) ||
> > @@ -7483,6 +7486,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> >  		intel_modeset_verify_disabled(dev_priv, state);
> >  	}
> >  
> > +	if (IS_DG2(dev_priv))
> > +		intel_display_to_pcode_post_notification(state);
> > +
> >  	intel_sagv_pre_plane_update(state);
> >  
> >  	/* Complete the events for pipes that have now been disabled */
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 596efc940ee7..b90c31862083 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -6498,6 +6498,10 @@
> >  #define     ICL_PCODE_MEM_SS_READ_GLOBAL_INFO	(0x0 << 8)
> >  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
> >  #define     ADL_PCODE_MEM_SS_READ_PSF_GV_INFO	((0) | (0x2 << 8))
> > +#define   DISPLAY_TO_PCODE_CDCLK_MAX		0x28D
> > +#define   DISPLAY_TO_PCODE_MASK(cdclk, num_pipes, voltage_level) \
> > +		((1 << 31) | (num_pipes << 28) | \
> > +		(cdclk << 16) | (1 << 27) | voltage_level)
> >  #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
> >  #define     ICL_PCODE_REP_QGV_MASK		REG_GENMASK(1, 0)
> >  #define     ICL_PCODE_REP_QGV_SAFE		REG_FIELD_PREP(ICL_PCODE_REP_QGV_MASK, 0)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
