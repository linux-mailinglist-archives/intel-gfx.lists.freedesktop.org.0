Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F60493CC8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 16:17:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9080410E2B1;
	Wed, 19 Jan 2022 15:17:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51AF410E235
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 15:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642605430; x=1674141430;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=bdlekhqWFjQmxm3wL95Zh671pSpVb6oeMZW+jV1H/Oo=;
 b=VDqok8WZJ24cNMVhnVTBoOaEICjwmkdrh33WLWYrJYwL7pILzPO7MUcl
 2VgryfzWo7DtWVW1FWFugwBo5e0CCYV45p+OnUevOMC9maI75t5B6U5Pn
 4P+KcwyPgcr+sAyP+qhsrL9ukCYvF1r9cgoPhulMFLklhQvJ3UyaLRRu9
 mX42AkWdJvZAJ9v0Ql/1H1joSVg6qPNoyV5x+FuD7FxRmXpPebJacaJOX
 Yr5BtzM4WyWgBVcDFX45CJMwa40Y7prlAmDouMefdMIewxUO2RHV8yakl
 7lZC7mLyBo7CgAgFN3GoVEKym/wrS5zckwTvOgAj2NpT05tVvC+HrlZg0 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="331438700"
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="331438700"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 07:17:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="518206170"
Received: from elenadel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.196])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 07:17:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220119122150.12941-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220119122150.12941-1-ville.syrjala@linux.intel.com>
Date: Wed, 19 Jan 2022 17:17:05 +0200
Message-ID: <87o847bvri.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 19 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> dg2_ddi_pre_enable_dp() has outlived its usefulness so eliminate
> it.
>
> The one thing that tgl_ddi_pre_enable_dp() is missing that we
> need is intel_ddi_config_transcoder_dp2(). So we'll bring that
> over.
>
> tgl_ddi_pre_enable_dp() does also have a few things that
> dg2_ddi_pre_enable_dp() didn't have:
> - icl_program_mg_dp_mode() -> nop due to intel_phy_is_tc()=3D=3Dfalse on =
DG2
> - intel_ddi_power_up_lanes() -> nop due to intel_phy_is_combo()=3D=3Dfals=
e on DG2
> - intel_ddi_mso_configure() -> only matters for MSO panels
>
> Another slight difference is that dg2_ddi_pre_enable_dp() was
> missing a bigjoiner check around intel_dsc_enable(), which
> tgl_ddi_pre_enable_dp() does have.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

The modeset step bspec references could use a cleanup too. If they
aren't stable number&letter combos for *one* platform, let alone many,
we should probably just remove them.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 117 +----------------------
>  1 file changed, 4 insertions(+), 113 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 4e93eac926a5..2f20abc5122d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2289,116 +2289,6 @@ static void intel_ddi_mso_configure(const struct =
intel_crtc_state *crtc_state)
>  		     OVERLAP_PIXELS_MASK, dss1);
>  }
>=20=20
> -static void dg2_ddi_pre_enable_dp(struct intel_atomic_state *state,
> -				  struct intel_encoder *encoder,
> -				  const struct intel_crtc_state *crtc_state,
> -				  const struct drm_connector_state *conn_state)
> -{
> -	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> -	bool is_mst =3D intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST);
> -
> -	intel_dp_set_link_params(intel_dp, crtc_state->port_clock,
> -				 crtc_state->lane_count);
> -
> -	/*
> -	 * We only configure what the register value will be here.  Actual
> -	 * enabling happens during link training farther down.
> -	 */
> -	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
> -
> -	/*
> -	 * 1. Enable Power Wells
> -	 *
> -	 * This was handled at the beginning of intel_atomic_commit_tail(),
> -	 * before we called down into this function.
> -	 */
> -
> -	/* 2. Enable Panel Power if PPS is required */
> -	intel_pps_on(intel_dp);
> -
> -	/*
> -	 * 3. Enable the port PLL.
> -	 */
> -	intel_ddi_enable_clock(encoder, crtc_state);
> -
> -	/* 4. Enable IO power */
> -	if (!intel_tc_port_in_tbt_alt_mode(dig_port))
> -		dig_port->ddi_io_wakeref =3D intel_display_power_get(dev_priv,
> -								   dig_port->ddi_io_power_domain);
> -
> -	/*
> -	 * 5. The rest of the below are substeps under the bspec's "Enable and
> -	 * Train Display Port" step.  Note that steps that are specific to
> -	 * MST will be handled by intel_mst_pre_enable_dp() before/after it
> -	 * calls into this function.  Also intel_mst_pre_enable_dp() only calls
> -	 * us when active_mst_links=3D=3D0, so any steps designated for "single
> -	 * stream or multi-stream master transcoder" can just be performed
> -	 * unconditionally here.
> -	 */
> -
> -	/*
> -	 * 5.a Configure Transcoder Clock Select to direct the Port clock to the
> -	 * Transcoder.
> -	 */
> -	intel_ddi_enable_pipe_clock(encoder, crtc_state);
> -
> -	/* 5.b Configure transcoder for DP 2.0 128b/132b */
> -	intel_ddi_config_transcoder_dp2(encoder, crtc_state);
> -
> -	/*
> -	 * 5.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
> -	 * Transport Select
> -	 */
> -	intel_ddi_config_transcoder_func(encoder, crtc_state);
> -
> -	/*
> -	 * 5.d Configure & enable DP_TP_CTL with link training pattern 1
> -	 * selected
> -	 *
> -	 * This will be handled by the intel_dp_start_link_train() farther
> -	 * down this function.
> -	 */
> -
> -	/* 5.e Configure voltage swing and related IO settings */
> -	encoder->set_signal_levels(encoder, crtc_state);
> -
> -	if (!is_mst)
> -		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
> -
> -	intel_dp_configure_protocol_converter(intel_dp, crtc_state);
> -	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
> -	/*
> -	 * DDI FEC: "anticipates enabling FEC encoding sets the FEC_READY bit
> -	 * in the FEC_CONFIGURATION register to 1 before initiating link
> -	 * training
> -	 */
> -	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
> -	intel_dp_check_frl_training(intel_dp);
> -	intel_dp_pcon_dsc_configure(intel_dp, crtc_state);
> -
> -	/*
> -	 * 5.h Follow DisplayPort specification training sequence (see notes for
> -	 *     failure handling)
> -	 * 5.i If DisplayPort multi-stream - Set DP_TP_CTL link training to Idle
> -	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
> -	 *     (timeout after 800 us)
> -	 */
> -	intel_dp_start_link_train(intel_dp, crtc_state);
> -
> -	/* 5.j Set DP_TP_CTL link training to Normal */
> -	if (!is_trans_port_sync_mode(crtc_state))
> -		intel_dp_stop_link_train(intel_dp, crtc_state);
> -
> -	/* 5.k Configure and enable FEC if needed */
> -	intel_ddi_enable_fec(encoder, crtc_state);
> -
> -	intel_dsc_dp_pps_write(encoder, crtc_state);
> -
> -	intel_dsc_enable(crtc_state);
> -}
> -
>  static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				  struct intel_encoder *encoder,
>  				  const struct intel_crtc_state *crtc_state,
> @@ -2472,6 +2362,9 @@ static void tgl_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	 */
>  	intel_ddi_enable_pipe_clock(encoder, crtc_state);
>=20=20
> +	if (HAS_DP20(dev_priv))
> +		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
> +
>  	/*
>  	 * 7.b Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
>  	 * Transport Select
> @@ -2612,9 +2505,7 @@ static void intel_ddi_pre_enable_dp(struct intel_at=
omic_state *state,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>=20=20
> -	if (IS_DG2(dev_priv))
> -		dg2_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
> -	else if (DISPLAY_VER(dev_priv) >=3D 12)
> +	if (DISPLAY_VER(dev_priv) >=3D 12)
>  		tgl_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);
>  	else
>  		hsw_ddi_pre_enable_dp(state, encoder, crtc_state, conn_state);

--=20
Jani Nikula, Intel Open Source Graphics Center
