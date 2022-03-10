Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2041E4D43A0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 10:37:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B239710FE5C;
	Thu, 10 Mar 2022 09:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9086710FE5C
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 09:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646905057; x=1678441057;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=UJCrYFw/RCgfAQb0+awSy2We59qfSENP5wZPYY6OlwE=;
 b=XB9PKamr6GJTOmqU4jhuznzdl1MgoLPpLI58T4jMkw/Q1hB1rMn/fPbg
 IE8CBCMNb41QDq8umZukZ/vtGUC6HNNvsCo6GkgfyDc/bxTPuAa3YXS53
 4EHeCkxjdu/igNN9UR2DQ2Swb3Q9RdJ5qlT/WSu2TpOvqjwHB/dFHCqyH
 6YcTHHQuJUgJ3o4e3xADaocZT1twSbNddIGutTMtlmcO+GiAN49S/+vgA
 yoQgwdQi+OT4mpD9B5Ga8IsxhM+OCg9GsPQKRAqzBIbT4s6HIWc167FEl
 +23aBvc7wRVvv7weaxzw1m4+g1/8qaD2CQ5l+pL8T6LFxT5FwOGKl/b5/ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255151512"
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="255151512"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:37:36 -0800
X-IronPort-AV: E=Sophos;i="5.90,170,1643702400"; d="scan'208";a="554566886"
Received: from mgherza1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.69])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2022 01:37:33 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220310004802.16310-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
 <20220310004802.16310-6-ville.syrjala@linux.intel.com>
Date: Thu, 10 Mar 2022 11:37:31 +0200
Message-ID: <87sfrqxi5g.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915: Program MSA timing delay on
 ilk/snb/ivb
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

On Thu, 10 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Grab the DRRS MSA timing delay value from the VBT
> and program things accordingly. Only ilk/snb/ivb have
> this so presumably on hsw+ we don't need it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>  drivers/gpu/drm/i915/display/intel_drrs.c          | 3 +++
>  drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
>  4 files changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 54db81c2cce6..b7c418677372 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3577,6 +3577,7 @@ static void ilk_set_pipeconf(const struct intel_crt=
c_state *crtc_state)
>  	val |=3D PIPECONF_GAMMA_MODE(crtc_state->gamma_mode);
>=20=20
>  	val |=3D PIPECONF_FRAME_START_DELAY(crtc_state->framestart_delay - 1);
> +	val |=3D PIPECONF_MSA_TIMING_DELAY(crtc_state->msa_timing_delay);
>=20=20
>  	intel_de_write(dev_priv, PIPECONF(pipe), val);
>  	intel_de_posting_read(dev_priv, PIPECONF(pipe));
> @@ -3865,6 +3866,8 @@ static bool ilk_get_pipe_config(struct intel_crtc *=
crtc,
>=20=20
>  	pipe_config->framestart_delay =3D REG_FIELD_GET(PIPECONF_FRAME_START_DE=
LAY_MASK, tmp) + 1;
>=20=20
> +	pipe_config->msa_timing_delay =3D REG_FIELD_GET(PIPECONF_MSA_TIMING_DEL=
AY_MASK, tmp);
> +
>  	pipe_config->csc_mode =3D intel_de_read(dev_priv,
>  					      PIPE_CSC_MODE(crtc->pipe));
>=20=20
> @@ -5345,8 +5348,8 @@ static void intel_dump_pipe_config(const struct int=
el_crtc_state *pipe_config,
>  				      &pipe_config->dp_m2_n2);
>  	}
>=20=20
> -	drm_dbg_kms(&dev_priv->drm, "framestart delay: %d\n",
> -		    pipe_config->framestart_delay);
> +	drm_dbg_kms(&dev_priv->drm, "framestart delay: %d, MSA timing delay: %d=
\n",
> +		    pipe_config->framestart_delay, pipe_config->msa_timing_delay);
>=20=20
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
> @@ -6243,6 +6246,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	PIPE_CONF_CHECK_X(output_types);
>=20=20
>  	PIPE_CONF_CHECK_I(framestart_delay);
> +	PIPE_CONF_CHECK_I(msa_timing_delay);
>=20=20
>  	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_hdisplay);
>  	PIPE_CONF_CHECK_I(hw.pipe_mode.crtc_htotal);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 5e8d7394a394..86b2fa675124 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1155,6 +1155,7 @@ struct intel_crtc_state {
>  	u8 update_planes;
>=20=20
>  	u8 framestart_delay; /* 1-4 */
> +	u8 msa_timing_delay; /* 0-3 */
>=20=20
>  	struct {
>  		u32 enable;
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 17bedecbd7b2..5b3711fe0674 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -83,6 +83,9 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
>  		return;
>  	}
>=20=20
> +	if (IS_IRONLAKE(i915) || IS_SANDYBRIDGE(i915) || IS_IVYBRIDGE(i915))
> +		pipe_config->msa_timing_delay =3D i915->vbt.edp.drrs_msa_timing_delay;
> +
>  	pipe_config->has_drrs =3D true;
>=20=20
>  	pixel_clock =3D connector->panel.downclock_mode->clock;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 70484f6f2b8b..c106fb23e245 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3706,6 +3706,8 @@
>  #define   PIPECONF_INTERLACE_IF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTER=
LACE_MASK_ILK, 4) /* ilk/snb only */
>  #define   PIPECONF_INTERLACE_PF_ID_DBL_ILK	REG_FIELD_PREP(PIPECONF_INTER=
LACE_MASK_ILK, 5) /* ilk/snb only */
>  #define   PIPECONF_EDP_RR_MODE_SWITCH		REG_BIT(20)
> +#define   PIPECONF_MSA_TIMING_DELAY_MASK	REG_GENMASK(19, 18) /* ilk/snb/=
ivb */
> +#define   PIPECONF_MSA_TIMING_DELAY(x)		REG_FIELD_PREP(PIPECONF_MSA_TIMI=
NG_DELAY_MASK, (x))
>  #define   PIPECONF_CXSR_DOWNCLOCK		REG_BIT(16)
>  #define   PIPECONF_EDP_RR_MODE_SWITCH_VLV	REG_BIT(14)
>  #define   PIPECONF_COLOR_RANGE_SELECT		REG_BIT(13)

--=20
Jani Nikula, Intel Open Source Graphics Center
