Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E65802CB083
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 23:56:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BBDC6E940;
	Tue,  1 Dec 2020 22:56:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BAD96E940
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 22:56:09 +0000 (UTC)
IronPort-SDR: AXUX8P2JnK4N7Z4HfBZxwckpzwOs9zDTaUGNvWP102xtWua0rylXzSfzdSPIzGbqNgpK9WNZF+
 Rhh1ryF2ZncQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="152749720"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="152749720"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:56:08 -0800
IronPort-SDR: wT3dkSioxLvVP7w/GaMpNo2ZzVEpTz+isYbL4i75r7nvLsOBp+rcFjjW0XKWl9Abw5YHThyR95
 g+4EL+PT1T0w==
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="539318387"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 14:56:08 -0800
Date: Tue, 1 Dec 2020 14:59:05 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201201225905.GE22644@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-11-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022222709.29386-11-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915/display/vrr: Set
 IGNORE_MSA_PAR state in DP Sink
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

@Jani could you review this as well?

Manasi


On Thu, Oct 22, 2020 at 03:27:08PM -0700, Manasi Navare wrote:
> If VRR is enabled, the sink should ignore MSA parameters
> and regenerate incoming video stream without depending
> on these parameters. Hence set the MSA_TIMING_PAR_IGNORE_EN
> bit if VRR is enabled.
> Reset this bit on VRR disable.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 25 ++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 565155af3fb9..195449dfec1e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3322,6 +3322,22 @@ i915_reg_t dp_tp_status_reg(struct intel_encoder *=
encoder,
>  		return DP_TP_STATUS(encoder->port);
>  }
>  =

> +static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_d=
p *intel_dp,
> +							  const struct intel_crtc_state *crtc_state,
> +							  bool enable)
> +{
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +
> +	if (!crtc_state->vrr.enable)
> +		return;
> +
> +	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
> +			       enable ? DP_MSA_TIMING_PAR_IGNORE_EN : 0) <=3D 0)
> +		drm_dbg_kms(&i915->drm,
> +			    "Failed to set MSA_TIMING_PAR_IGNORE %s in the sink\n",
> +			    enable ? "enable" : "disable");
> +}
> +
>  static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
>  					const struct intel_crtc_state *crtc_state)
>  {
> @@ -3493,6 +3509,12 @@ static void tgl_ddi_pre_enable_dp(struct intel_ato=
mic_state *state,
>  	 */
>  	intel_dp_sink_set_fec_ready(intel_dp, crtc_state);
>  =

> +	/*
> +	 * Sink device should ignore MSA parameters and regenerate
> +	 * incoming video stream in case of VRR/Adaptive Sync
> +	 */
> +	intel_dp_sink_set_msa_timing_par_ignore_state(intel_dp, crtc_state, tru=
e);
> +
>  	/*
>  	 * 7.i Follow DisplayPort specification training sequence (see notes for
>  	 *     failure handling)
> @@ -4089,6 +4111,9 @@ static void intel_disable_ddi_dp(struct intel_atomi=
c_state *state,
>  	/* Disable the decompression in DP Sink */
>  	intel_dp_sink_set_decompression_state(intel_dp, old_crtc_state,
>  					      false);
> +	/* Disable Ignore_MSA bit in DP Sink */
> +	intel_dp_sink_set_msa_timing_par_ignore_state(intel_dp, old_crtc_state,
> +						      false);
>  }
>  =

>  static void intel_disable_ddi_hdmi(struct intel_atomic_state *state,
> -- =

> 2.19.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
