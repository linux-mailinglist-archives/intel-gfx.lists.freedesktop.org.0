Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D84B2F37C2
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 18:58:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2C7B89C55;
	Tue, 12 Jan 2021 17:58:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 996B989C55
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 17:58:28 +0000 (UTC)
IronPort-SDR: JR7CBpNvTQHamOQaclJ+SgLr3HeVjpmV2AxDFLZIEwcNWZqkXEOxiOxiBuLrg68JAgydQ5VOe2
 6eSnQRvEgglQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="157859893"
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="157859893"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 09:58:28 -0800
IronPort-SDR: E20Lt/VMhlR5qzD+lM8z08cSrweapHtHPxufDWtUeKaCO8x654kzK5rwAEomG0ICWBJg7RkGzE
 wboni1HON3rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="389238496"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 12 Jan 2021 09:58:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Jan 2021 19:58:24 +0200
Date: Tue, 12 Jan 2021 19:58:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <X/3jQE6ni7PaGmod@intel.com>
References: <20201229172201.4155327-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201229172201.4155327-1-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Move
 intel_dp_set_signal_levels() to intel_dp_link_training.c
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

On Tue, Dec 29, 2020 at 07:22:00PM +0200, Imre Deak wrote:
> intel_dp_set_signal_levels() is needed for link training, so move it to
> intel_dp_link_training.c.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c        | 18 ------------------
>  drivers/gpu/drm/i915/display/intel_dp.h        |  3 ---
>  .../drm/i915/display/intel_dp_link_training.c  | 18 ++++++++++++++++++
>  .../drm/i915/display/intel_dp_link_training.h  |  2 ++
>  4 files changed, 20 insertions(+), 21 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index f0e8aaac413c..88a6033d6867 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5003,24 +5003,6 @@ ivb_cpu_edp_set_signal_levels(struct intel_dp *int=
el_dp,
>  	intel_de_posting_read(dev_priv, intel_dp->output_reg);
>  }
>  =

> -void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
> -				const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	u8 train_set =3D intel_dp->train_set[0];
> -
> -	drm_dbg_kms(&dev_priv->drm, "Using vswing level %d%s\n",
> -		    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
> -		    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "");
> -	drm_dbg_kms(&dev_priv->drm, "Using pre-emphasis level %d%s\n",
> -		    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> -		    DP_TRAIN_PRE_EMPHASIS_SHIFT,
> -		    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
> -		    " (max)" : "");
> -
> -	intel_dp->set_signal_levels(intel_dp, crtc_state);
> -}
> -
>  void
>  intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
>  				       const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 4280a09fd8fd..4ebda4e43003 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -96,9 +96,6 @@ void
>  intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
>  				       const struct intel_crtc_state *crtc_state,
>  				       u8 dp_train_pat);
> -void
> -intel_dp_set_signal_levels(struct intel_dp *intel_dp,
> -			   const struct intel_crtc_state *crtc_state);
>  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
>  			   u8 *link_bw, u8 *rate_select);
>  bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 91d3979902d0..7876e781f698 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -334,6 +334,24 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
>  	return drm_dp_dpcd_write(&intel_dp->aux, reg, buf, len) =3D=3D len;
>  }
>  =

> +void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
> +				const struct intel_crtc_state *crtc_state)

Can't it be static now? Hmm, apparently not due to the ad-hoc phy test
code. Oh well.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +{
> +	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> +	u8 train_set =3D intel_dp->train_set[0];
> +
> +	drm_dbg_kms(&dev_priv->drm, "Using vswing level %d%s\n",
> +		    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
> +		    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "");
> +	drm_dbg_kms(&dev_priv->drm, "Using pre-emphasis level %d%s\n",
> +		    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
> +		    DP_TRAIN_PRE_EMPHASIS_SHIFT,
> +		    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
> +		    " (max)" : "");
> +
> +	intel_dp->set_signal_levels(intel_dp, crtc_state);
> +}
> +
>  static bool
>  intel_dp_reset_link_train(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.h
> index 86905aa24db7..c3110c032bc2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> @@ -17,6 +17,8 @@ void intel_dp_get_adjust_train(struct intel_dp *intel_d=
p,
>  			       const struct intel_crtc_state *crtc_state,
>  			       enum drm_dp_phy dp_phy,
>  			       const u8 link_status[DP_LINK_STATUS_SIZE]);
> +void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
> +				const struct intel_crtc_state *crtc_state);
>  void intel_dp_start_link_train(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state);
>  void intel_dp_stop_link_train(struct intel_dp *intel_dp,
> -- =

> 2.25.1
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
