Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B95494093
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 20:16:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D933910EDE7;
	Wed, 19 Jan 2022 19:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88A2510EDE6
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 19:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642619763; x=1674155763;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qOvSgVcqM0zvCDjQiWwlLjoHIjXNBvlEZ7VlpT447dw=;
 b=bWNI91Kp+K6FMvy5gkupKy3VW07AW1KtAp8SiBK72VYDLttKW9u/xLL7
 kYRVvpSqrdmL2ErjmUMn/70870haD9SwtU02zJaSZhy2yJTn+sYMtW44O
 NCz0FcDI6caQTtCidxDUi7UoXokaj4UE1Omj4lpc29VyRdOArRN+kb07P
 1PrXbx3a4HhQJWoFFR2zOrLAxeio/LIooiqYrxb5ximCbfhJSAEs7LpH/
 86EVvOUWtuAvMdhJZpr7anW7cAxU6+V+Lb5vEnJb2uq1Z+798yCyDg5vw
 /CWAj5h/+kfKBTnfJqxB7YKqP2urC05dt6C0UlQ1d7OFCUEWWa40A83UH A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="244959742"
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="244959742"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 10:54:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,300,1635231600"; d="scan'208";a="532429819"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 10:54:36 -0800
Date: Wed, 19 Jan 2022 11:09:47 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20220119190942.GA20150@labuser-Z97X-UD5H>
References: <20220119122150.12941-1-ville.syrjala@linux.intel.com>
 <87o847bvri.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o847bvri.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Nuke dg2_ddi_pre_enable_dp()
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

On Wed, Jan 19, 2022 at 05:17:05PM +0200, Jani Nikula wrote:
> On Wed, 19 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > dg2_ddi_pre_enable_dp() has outlived its usefulness so eliminate
> > it.
> >
> > The one thing that tgl_ddi_pre_enable_dp() is missing that we
> > need is intel_ddi_config_transcoder_dp2(). So we'll bring that
> > over.
> >
> > tgl_ddi_pre_enable_dp() does also have a few things that
> > dg2_ddi_pre_enable_dp() didn't have:
> > - icl_program_mg_dp_mode() -> nop due to intel_phy_is_tc()==false on DG2
> > - intel_ddi_power_up_lanes() -> nop due to intel_phy_is_combo()==false on DG2
> > - intel_ddi_mso_configure() -> only matters for MSO panels
> >
> > Another slight difference is that dg2_ddi_pre_enable_dp() was
> > missing a bigjoiner check around intel_dsc_enable(), which
> > tgl_ddi_pre_enable_dp() does have.

Thanks Ville for this patch, I was just comparing differences between dg2_pre_enable_dp and tgl_pre_enable_dp
in regards to a bug and there is totally no need for two functions with the checks you have here.

For the bigjoiner check aroind intel_dsc_enable(), I think the function intel_dsc_dp_pps_write(encoder, crtc_state);
also needs to be moved into that check. 
And then this functions needs to be called from icl_ddi_bigjoiner_pre_enable() where we call intel_dsc_enable

With that:

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> The modeset step bspec references could use a cleanup too. If they
> aren't stable number&letter combos for *one* platform, let alone many,
> we should probably just remove them.
> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 117 +----------------------
> >  1 file changed, 4 insertions(+), 113 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 4e93eac926a5..2f20abc5122d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2289,116 +2289,6 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
> >  		     OVERLAP_PIXELS_MASK, dss1);
> >  }
> >  
> > -static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
> > -				  struct intel_encoder *encoder,
> > -				  const struct intel_crtc_state *crtc_state,
> > -				  const struct drm_connector_state *conn_state)
> > -{
> > -	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> > -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> > -	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > -	bool is_mst = intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> > -
> > -	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
> > -				 crtc_state->lane_count);
> > -
> > -	/*
> > -	 * We only configure what the register value will be here.  Actual
> > -	 * enabling happens during link training farther down.
> > -	 */
> > -	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
> > -
> > -	/*
> > -	 * 1. Enable Power Wells
> > -	 *
> > -	 * This was handled at the beginning of intel_atomic_commit_tail(),
> > -	 * before we called down into this function.
> > -	 */
> > -
> > -	/* 2. Enable Panel Power if PPS is required */
> > -	intel_pps_on(intel_dp);
> > -
> > -	/*
> > -	 * 3. Enable the port PLL.
> > -	 */
> > -	intel_ddi_enable_clock(encoder, crtc_state);
> > -
> > -	/* 4. Enable IO power */
> > -	if (!intel_tc_port_in_tbt_alt_mode(dig_port))
> > -		dig_port->ddi_io_wakeref = intel_display_power_get(dev_priv,
> > -								   dig_port->ddi_io_power_domain);
> > -
> > -	/*
> > -	 * 5. The rest of the below are substeps under the bspec's "Enable and
> > -	 * Train Display Port" step.  Note that steps that are specific to
> > -	 * MST will be handled by intel_mst_pre_enable_dp() before/after it
> > -	 * calls into this function.  Also intel_mst_pre_enable_dp() only calls
> > -	 * us when active_mst_links==0, so any steps designated for "single
> > -	 * stream or multi-stream master transcoder" can just be performed
> > -	 * unconditionally here.
> > -	 */
> > -
> > -	/*
> > -	 * 5.a Configure Transcoder Clock Select to direct the Port clock to the
> > -	 * Transcoder.
> > -	 */
> > -	intel_ddi_enable_pipe_clock(encoder, crtc_state);
> > -
> > -	/* 5.b Configure transcoder for DP 2.0 128b/132b */
> > -	intel_ddi_config_transcoder_dp2(encoder, crtc_state);
> > -
> > -	/*
> > -	 * 5.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
> > -	 * Transport Select
> > -	 */
> > -	intel_ddi_config_transcoder_func(encoder, crtc_state);
> > -
> > -	/*
> > -	 * 5.d Configure & enable DP_TP_CTL with link training pattern 1
> > -	 * selected
> > -	 *
> > -	 * This will be handled by the intel_dp_start_link_train() farther
> > -	 * down this function.
> > -	 */
> > -
> > -	/* 5.e Configure voltage swing and related IO settings */
> > -	encoder->set_signal_levels(encoder, crtc_state);
> > -
> > -	if (!is_mst)
> > -		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
> > -
> > -	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
> > -	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
> > -	/*
> > -	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
> > -	 * in the FEC_CONFIGURATION register to 1 before initiating link
> > -	 * training
> > -	 */
> > -	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
> > -	intel_dp_check_frl_training(intel_dp);
> > -	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
> > -
> > -	/*
> > -	 * 5.h Follow DisplayPort specification training sequence (see notes for
> > -	 *     failure handling)
> > -	 * 5.i If DisplayPort multi-stream - Set DP_TP_CTL link training to Idle
> > -	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
> > -	 *     (timeout after 800 us)
> > -	 */
> > -	intel_dp_start_link_train(intel_dp, crtc_state);
> > -
> > -	/* 5.j Set DP_TP_CTL link training to Normal */
> > -	if (!is_trans_port_sync_mode(crtc_state))
> > -		intel_dp_stop_link_train(intel_dp, crtc_state);
> > -
> > -	/* 5.k Configure and enable FEC if needed */
> > -	intel_ddi_enable_fec(encoder, crtc_state);
> > -
> > -	intel_dsc_dp_pps_write(encoder, crtc_state);
> > -
> > -	intel_dsc_enable(crtc_state);
> > -}
> > -
> >  static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >  				  struct intel_encoder *encoder,
> >  				  const struct intel_crtc_state *crtc_state,
> > @@ -2472,6 +2362,9 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >  	 */
> >  	intel_ddi_enable_pipe_clock(encoder, crtc_state);
> >  
> > +	if (HAS_DP20(dev_priv))
> > +		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
> > +
> >  	/*
> >  	 * 7.b Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
> >  	 * Transport Select
> > @@ -2612,9 +2505,7 @@ static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  
> > -	if (IS_DG2(dev_priv))
> > -		dg2_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
> > -	else if (DISPLAY_VER(dev_priv) >= 12)
> > +	if (DISPLAY_VER(dev_priv) >= 12)
> >  		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
> >  	else
> >  		hsw_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
