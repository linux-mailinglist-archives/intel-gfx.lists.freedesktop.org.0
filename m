Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 208BD2F37F8
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 19:10:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 342DC89D42;
	Tue, 12 Jan 2021 18:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D4C989D42
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 18:10:44 +0000 (UTC)
IronPort-SDR: lwdpnet4FPs2kmg60GU7gdTTSpDo9rI2F0Qqwg/Rz7MFBA4mFFqs8LImm+G2Z2Bqmz9zQ7VWUG
 uJq2HoaZFI7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="196712002"
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="196712002"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 10:10:43 -0800
IronPort-SDR: 6lgb/90eLQjRoW395p2JOEwrH0ACYoPuvq1KK+T2XxZZBBgkaQXe81C1GTOyqbK8m1CoxQ6QCq
 nqMlJmq5+N5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,342,1602572400"; d="scan'208";a="345283016"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 12 Jan 2021 10:10:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 Jan 2021 20:10:40 +0200
Date: Tue, 12 Jan 2021 20:10:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <X/3mIA6nvmhYK2SK@intel.com>
References: <20201229172201.4155327-1-imre.deak@intel.com>
 <20201229172201.4155327-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201229172201.4155327-2-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Fix LTTPR vswing/pre-emp
 setting in non-transparent mode
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

On Tue, Dec 29, 2020 at 07:22:01PM +0200, Imre Deak wrote:
> The DP PHY vswing/pre-emphasis level programming the driver does is
> related to the DPTX -> first LTTPR link segment only. Accordingly it
> should be only programmed when link training the first LTTPR and kept
> as-is when training subsequent LTTPRs and the DPRX. For these latter
> PHYs the vs/pe levels will be set in response to writing the
> DP_TRAINING_LANEx_SET_PHY_REPEATERy DPCD registers (by an upstream LTTPR
> TX PHY snooping this write access of its downstream LTTPR/DPRX RX PHY).
> The above is also described in DP Standard v2.0 under 3.6.6.1.
> =

> While at it simplify and add the LTTPR that is link trained to the debug
> message in intel_dp_set_signal_levels().
> =

> Fixes: b30edfd8d0b4 ("drm/i915: Switch to LTTPR non-transparent mode link=
 training")
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>  .../drm/i915/display/intel_dp_link_training.c | 19 +++++++++++--------
>  .../drm/i915/display/intel_dp_link_training.h |  3 ++-
>  3 files changed, 14 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 88a6033d6867..16c563f1a515 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6057,7 +6057,7 @@ static void intel_dp_process_phy_request(struct int=
el_dp *intel_dp,
>  =

>  	intel_dp_autotest_phy_ddi_disable(intel_dp, crtc_state);
>  =

> -	intel_dp_set_signal_levels(intel_dp, crtc_state);
> +	intel_dp_set_signal_levels(intel_dp, crtc_state, DP_PHY_DPRX);
>  =

>  	intel_dp_phy_pattern_update(intel_dp, crtc_state);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 7876e781f698..d8c6d7054d11 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -335,21 +335,24 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
>  }
>  =

>  void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
> -				const struct intel_crtc_state *crtc_state)
> +				const struct intel_crtc_state *crtc_state,
> +				enum drm_dp_phy dp_phy)
>  {
>  	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
>  	u8 train_set =3D intel_dp->train_set[0];
> +	char phy_name[10];
>  =

> -	drm_dbg_kms(&dev_priv->drm, "Using vswing level %d%s\n",
> +	drm_dbg_kms(&dev_priv->drm, "Using vswing level %d%s, pre-emphasis leve=
l %d%s, at %s\n",
>  		    train_set & DP_TRAIN_VOLTAGE_SWING_MASK,
> -		    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "");
> -	drm_dbg_kms(&dev_priv->drm, "Using pre-emphasis level %d%s\n",
> +		    train_set & DP_TRAIN_MAX_SWING_REACHED ? " (max)" : "",
>  		    (train_set & DP_TRAIN_PRE_EMPHASIS_MASK) >>
>  		    DP_TRAIN_PRE_EMPHASIS_SHIFT,
>  		    train_set & DP_TRAIN_MAX_PRE_EMPHASIS_REACHED ?
> -		    " (max)" : "");
> +		    " (max)" : "",
> +		    intel_dp_phy_name(dp_phy, phy_name, sizeof(phy_name)));
>  =

> -	intel_dp->set_signal_levels(intel_dp, crtc_state);
> +	if (intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy))
> +		intel_dp->set_signal_levels(intel_dp, crtc_state);

The function name is a bit misleading now I guess since we're not
actually setting the signal levels here for the LTTPRs. But since
the debug print is here I guess we want to still call this. And as
usual I can't think of a better name for this, so I'm willing
to accept that slight inconsistency.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  }
>  =

>  static bool
> @@ -359,7 +362,7 @@ intel_dp_reset_link_train(struct intel_dp *intel_dp,
>  			  u8 dp_train_pat)
>  {
>  	memset(intel_dp->train_set, 0, sizeof(intel_dp->train_set));
> -	intel_dp_set_signal_levels(intel_dp, crtc_state);
> +	intel_dp_set_signal_levels(intel_dp, crtc_state, dp_phy);
>  	return intel_dp_set_link_train(intel_dp, crtc_state, dp_phy, dp_train_p=
at);
>  }
>  =

> @@ -373,7 +376,7 @@ intel_dp_update_link_train(struct intel_dp *intel_dp,
>  			    DP_TRAINING_LANE0_SET_PHY_REPEATER(dp_phy);
>  	int ret;
>  =

> -	intel_dp_set_signal_levels(intel_dp, crtc_state);
> +	intel_dp_set_signal_levels(intel_dp, crtc_state, dp_phy);
>  =

>  	ret =3D drm_dp_dpcd_write(&intel_dp->aux, reg,
>  				intel_dp->train_set, crtc_state->lane_count);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.h
> index c3110c032bc2..6a1f76bd8c75 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> @@ -18,7 +18,8 @@ void intel_dp_get_adjust_train(struct intel_dp *intel_d=
p,
>  			       enum drm_dp_phy dp_phy,
>  			       const u8 link_status[DP_LINK_STATUS_SIZE]);
>  void intel_dp_set_signal_levels(struct intel_dp *intel_dp,
> -				const struct intel_crtc_state *crtc_state);
> +				const struct intel_crtc_state *crtc_state,
> +				enum drm_dp_phy dp_phy);
>  void intel_dp_start_link_train(struct intel_dp *intel_dp,
>  			       const struct intel_crtc_state *crtc_state);
>  void intel_dp_stop_link_train(struct intel_dp *intel_dp,
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
