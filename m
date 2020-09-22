Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 918902742BB
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 15:14:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC2289EF7;
	Tue, 22 Sep 2020 13:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A53B689F41
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 13:14:30 +0000 (UTC)
IronPort-SDR: 1zvDCiuxd5m835BOSVqgwn1sA3nxnOG8yvyxSOaMdgENQuGQIXjVWsyFNvAUKBbkb3G6yYzuaM
 YsAWf6d0sYfw==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="140605494"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="140605494"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 06:14:27 -0700
IronPort-SDR: yWm7nHetAgJhPES/OgCMLce0NAqHSi0FHgo3G5m3pns8kI1K/qTmAy2jLhi+eU3cK0ZO2jgPfq
 IK2kuYyAh3EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="346929480"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 22 Sep 2020 06:14:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Sep 2020 16:14:24 +0300
Date: Tue, 22 Sep 2020 16:14:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200922131424.GR6112@intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
 <20200922125106.30540-3-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922125106.30540-3-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Move intel_dp_get_link_status
 to intel_dp_link_training.c
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

On Tue, Sep 22, 2020 at 03:51:01PM +0300, Imre Deak wrote:
> The link status is used to communicate the parameters of the link
> training with the DPRX and determine if the link training is successful
> or a retraining is needed. Accordingly move the function to read the
> link status to intel_dp_link_training.c
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c          | 11 -----------
>  drivers/gpu/drm/i915/display/intel_dp.h          |  2 --
>  .../drm/i915/display/intel_dp_link_training.c    | 16 ++++++++++++++++
>  .../drm/i915/display/intel_dp_link_training.h    |  3 +++
>  4 files changed, 19 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 2a4a9c0e7427..ee93a00a4d5e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4126,17 +4126,6 @@ static void chv_dp_post_pll_disable(struct intel_a=
tomic_state *state,
>  	chv_phy_post_pll_disable(encoder, old_crtc_state);
>  }
>  =

> -/*
> - * Fetch AUX CH registers 0x202 - 0x207 which contain
> - * link status information
> - */
> -bool
> -intel_dp_get_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LI=
NK_STATUS_SIZE])
> -{
> -	return drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS, link_status,
> -				DP_LINK_STATUS_SIZE) =3D=3D DP_LINK_STATUS_SIZE;
> -}
> -
>  static u8 intel_dp_voltage_max_2(struct intel_dp *intel_dp)
>  {
>  	return DP_TRAIN_VOLTAGE_SWING_LEVEL_2;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index 08a1c0aa8b94..34ae7988a554 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -100,8 +100,6 @@ void intel_dp_compute_rate(struct intel_dp *intel_dp,=
 int port_clock,
>  			   u8 *link_bw, u8 *rate_select);
>  bool intel_dp_source_supports_hbr2(struct intel_dp *intel_dp);
>  bool intel_dp_source_supports_hbr3(struct intel_dp *intel_dp);
> -bool
> -intel_dp_get_link_status(struct intel_dp *intel_dp, u8 *link_status);
>  =

>  bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp);
>  int intel_dp_link_required(int pixel_clock, int bpp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index f8b53c5b5777..6d13d00db5e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -34,6 +34,22 @@ intel_dp_dump_link_status(const u8 link_status[DP_LINK=
_STATUS_SIZE])
>  		      link_status[3], link_status[4], link_status[5]);
>  }
>  =

> +/**
> + * intel_dp_get_link_status - get the link status information for the DP=
RX
> + * @intel_dp: DP struct
> + * @link_status: buffer to return the status in
> + *
> + * Fetch the AUX DPCD registers for the DPRX link status.
> + *
> + * Returns true if the information was read successfully, false otherwis=
e.
> + */
> +bool
> +intel_dp_get_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LI=
NK_STATUS_SIZE])
> +{
> +	return drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS, link_status,
> +				DP_LINK_STATUS_SIZE) =3D=3D DP_LINK_STATUS_SIZE;
> +}
> +
>  static u8 dp_voltage_max(u8 preemph)
>  {
>  	switch (preemph & DP_TRAIN_PRE_EMPHASIS_MASK) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.h
> index 01f1dabbb060..47c97f4a0d57 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> @@ -10,6 +10,9 @@
>  =

>  struct intel_dp;
>  =

> +bool intel_dp_get_link_status(struct intel_dp *intel_dp,
> +			      u8 link_status[DP_LINK_STATUS_SIZE]);
> +

Do we still need it outside? Hmm, I guess we do.

Oh well
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>  			       const u8 link_status[DP_LINK_STATUS_SIZE]);
>  void intel_dp_start_link_train(struct intel_dp *intel_dp);
> -- =

> 2.17.1
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
