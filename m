Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB1E371097
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 04:58:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 223D26E85A;
	Mon,  3 May 2021 02:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F556E85A
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 02:57:56 +0000 (UTC)
IronPort-SDR: BT5txePbg5W/YOVRJLNpbOiJCdwPMBfziATdLNrX2CIONYHq9Hpu5+Lw357zhAS/nDnox2IzoK
 eifOb681TPVw==
X-IronPort-AV: E=McAfee;i="6200,9189,9972"; a="197753288"
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="197753288"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2021 19:57:55 -0700
IronPort-SDR: ZJZmUYKZYaZSYZjS/Ximp9RqrU+PZTj++FUdIEWImXjZJpNdK25tRaRdVXWHpKQYr2kX2r7VKK
 R+dZXm3vdQXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,268,1613462400"; d="scan'208";a="462058183"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 02 May 2021 19:57:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 May 2021 05:57:52 +0300
Date: Mon, 3 May 2021 05:57:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YI9msBowjN8JKWBZ@intel.com>
References: <20210430212744.88171-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210430212744.88171-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/tgl+: Add new sequence
 step for MST + FEC
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 30, 2021 at 02:27:44PM -0700, Jos=E9 Roberto de Souza wrote:
> For DP 1.4 sinks + MST + FEC it is required to prevent a FEC stall
> signaling.

We don't use FEC with MST.

> =

> BSpec: 49190
> BSpec: 54128
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 28 +++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h             |  1 +
>  2 files changed, 29 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 9e406d9722c5..e7b636ba6982 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -376,6 +376,30 @@ static void intel_mst_disable_dp(struct intel_atomic=
_state *state,
>  					  old_crtc_state, old_conn_state);
>  }
>  =

> +static void intel_mst_config_fec(struct intel_encoder *encoder,
> +				 const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +	if (DISPLAY_VER(i915) >=3D 12 && crtc_state->fec_enable &&
> +	    intel_dp->dpcd[DP_DPCD_REV] =3D=3D DP_DPCD_REV_14)
> +		intel_de_rmw(i915, CHICKEN_TRANS(crtc_state->cpu_transcoder),
> +			     0, PREVENT_FEC_STALL_SIGNALING);
> +}
> +
> +static void intel_mst_unconfig_fec(struct intel_encoder *encoder,
> +				   const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +
> +	if (DISPLAY_VER(i915) >=3D 12 && crtc_state->fec_enable &&
> +	    intel_dp->dpcd[DP_DPCD_REV] =3D=3D DP_DPCD_REV_14)
> +		intel_de_rmw(i915, CHICKEN_TRANS(crtc_state->cpu_transcoder),
> +			     PREVENT_FEC_STALL_SIGNALING, 0);
> +}
> +
>  static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  				      struct intel_encoder *encoder,
>  				      const struct intel_crtc_state *old_crtc_state,
> @@ -400,6 +424,8 @@ static void intel_mst_post_disable_dp(struct intel_at=
omic_state *state,
>  =

>  	intel_disable_pipe(old_crtc_state);
>  =

> +	intel_mst_unconfig_fec(encoder, old_crtc_state);
> +
>  	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
>  =

>  	clear_act_sent(encoder, old_crtc_state);
> @@ -563,6 +589,8 @@ static void intel_mst_enable_dp(struct intel_atomic_s=
tate *state,
>  =

>  	drm_dp_update_payload_part2(&intel_dp->mst_mgr);
>  =

> +	intel_mst_config_fec(encoder, pipe_config);
> +
>  	intel_enable_pipe(pipe_config);
>  =

>  	intel_crtc_vblank_on(pipe_config);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 9ffd173f8b7f..6fe7aebed4f9 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8086,6 +8086,7 @@ enum {
>  #define  HSW_FRAME_START_DELAY_MASK	(3 << 27)
>  #define  HSW_FRAME_START_DELAY(x)	((x) << 27) /* 0-3 */
>  #define  VSC_DATA_SEL_SOFTWARE_CONTROL	(1 << 25) /* GLK and CNL+ */
> +#define  PREVENT_FEC_STALL_SIGNALING	BIT(23)
>  #define  DDI_TRAINING_OVERRIDE_ENABLE	(1 << 19)
>  #define  DDI_TRAINING_OVERRIDE_VALUE	(1 << 18)
>  #define  DDIE_TRAINING_OVERRIDE_ENABLE	(1 << 17) /* CHICKEN_TRANS_A only=
 */
> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
