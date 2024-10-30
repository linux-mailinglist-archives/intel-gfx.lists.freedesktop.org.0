Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC809B660F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 15:35:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F027110E7BC;
	Wed, 30 Oct 2024 14:35:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YI2M4ydd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6036610E7AA
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 14:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730298951; x=1761834951;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=j6Skm4dbN1VbY7hOPSySOVw5NH6kAlvb3bTiij7EO7I=;
 b=YI2M4yddTcnlW9V0/9vVWfrDcN3EvnYDC5vlXFj21LMLMNURCa+VcBYk
 5/4D0ZTHVr1Qk9pphfvxnIkeEr05JZQNDdJ5pn5nPvNXYPu6CWnkrVZXJ
 QhGNPlna+NZBvF/n463HW9Ygw1elWJXGIR9+ANxhnQU3A4MWaQt9KRl2F
 SXRMCDsUsZaWqtX0jDmXYcqx3+ByeZ3DKz8IGDIpD9llIYmVv+2oXTNw7
 vdK7OOCQIYaWXeW3cGUfuJbu8lFcoDvUO4BX1UMQCsN2+5Cvb7nwaiBmX
 sqA8/Jgcbgnf0a2dMjN4/sP8IbCIJE4vG7jIRA11DiFTDg8hfZtw/dPtR A==;
X-CSE-ConnectionGUID: Q9ePBb78QBmAObjbU4G/AQ==
X-CSE-MsgGUID: S+YbQBp/Qm6O9z4K5VoKUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40535853"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40535853"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 07:35:51 -0700
X-CSE-ConnectionGUID: xaL+Bn+KSkuPh9ht+QXwKA==
X-CSE-MsgGUID: +PnJ/4COQGmAEgwhwu+AdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82445750"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 07:35:49 -0700
Date: Wed, 30 Oct 2024 16:36:20 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/4] drm/i915/dp: Export intel_ddi_config_transcoder_dp2()
Message-ID: <ZyJEZA3orJ3PDr90@ideak-desk.fi.intel.com>
References: <20241029191215.3889861-1-imre.deak@intel.com>
 <20241029191215.3889861-3-imre.deak@intel.com>
 <878qu6ofh5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <878qu6ofh5.fsf@intel.com>
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

On Tue, Oct 29, 2024 at 09:51:02PM +0200, Jani Nikula wrote:
> On Tue, 29 Oct 2024, Imre Deak <imre.deak@intel.com> wrote:
> > Export intel_ddi_config_transcoder_dp2() taken into use by the MST
> > encoder in the next patch. Move the HAS_DP20() check to the function, so
> > it doesn't need to be checked for each caller. Besides enabling the DP2
> > configuration also add a way to disable it, required by the MST slave
> > transcoder disabling sequence in the next patch.
> 
> Did you consider making intel_ddi_config_transcoder_dp2() enable part of
> intel_ddi_config_transcoder_func() 

Ok, makes sense, will do that.

> and disable part of intel_ddi_disable_transcoder_func()?

That's the correct place for the slave transcoder sequence, but it's
done only later for the master transcoder (which is still missing as I
realized now). Can add the DP2 disabling to the correct places for both,
keeping intel_ddi_config_transcoder_dp2() static.

> It's a bit much to add new functions for single register updates.
> 
> BR,
> Jani.
> 
> 
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++------
> >  drivers/gpu/drm/i915/display/intel_ddi.h |  3 +++
> >  2 files changed, 12 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 6bbfe0762cafa..5ff7d23775d82 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -454,15 +454,19 @@ static u32 bdw_trans_port_sync_master_select(enum transcoder master_transcoder)
> >  		return master_transcoder + 1;
> >  }
> >  
> > -static void
> > +void
> >  intel_ddi_config_transcoder_dp2(struct intel_encoder *encoder,
> > -				const struct intel_crtc_state *crtc_state)
> > +				const struct intel_crtc_state *crtc_state,
> > +				bool enable)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> >  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> >  	u32 val = 0;
> >  
> > -	if (intel_dp_is_uhbr(crtc_state))
> > +	if (!HAS_DP20(i915))
> > +		return;
> > +
> > +	if (enable && intel_dp_is_uhbr(crtc_state))
> >  		val = TRANS_DP2_128B132B_CHANNEL_CODING;
> >  
> >  	intel_de_write(i915, TRANS_DP2_CTL(cpu_transcoder), val);
> > @@ -2549,7 +2553,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >  	/*
> >  	 * 6.b If DP v2.0/128b mode - Configure TRANS_DP2_CTL register settings.
> >  	 */
> > -	intel_ddi_config_transcoder_dp2(encoder, crtc_state);
> > +	intel_ddi_config_transcoder_dp2(encoder, crtc_state, true);
> >  
> >  	/*
> >  	 * 6.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
> > @@ -2686,8 +2690,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >  	 */
> >  	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
> >  
> > -	if (HAS_DP20(dev_priv))
> > -		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
> > +	intel_ddi_config_transcoder_dp2(encoder, crtc_state, true);
> >  
> >  	/*
> >  	 * 7.b Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
> > index 1aa2e3a190aee..bf27b2fbb08e9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.h
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.h
> > @@ -65,6 +65,9 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
> >  void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
> >  				       const struct intel_crtc_state *crtc_state);
> >  void intel_ddi_disable_transcoder_clock(const  struct intel_crtc_state *crtc_state);
> > +void intel_ddi_config_transcoder_dp2(struct intel_encoder *encoder,
> > +				     const struct intel_crtc_state *crtc_state,
> > +				     bool enable);
> >  void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
> >  				   const struct intel_crtc_state *crtc_state,
> >  				   bool enabled);
> 
> -- 
> Jani Nikula, Intel
