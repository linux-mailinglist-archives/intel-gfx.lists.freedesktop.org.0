Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67237278D8E
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 18:03:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC886ED41;
	Fri, 25 Sep 2020 16:03:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5A476ED41
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 16:03:54 +0000 (UTC)
IronPort-SDR: S3pKdNDQpGB0WOaI2F9duBDKLYeUPZKfEezNUk8jaiWnheNNJBkpySneNVaCv0NcGzN9gKmO5M
 x2xq6dlP0zTA==
X-IronPort-AV: E=McAfee;i="6000,8403,9755"; a="179643280"
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="179643280"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 09:03:53 -0700
IronPort-SDR: ci0zwpIRAiEIHFlvlxLNEGscUzorNZX9b+NITVgbSwfqphCYl72uU5EFuSJbowoCtIvd4PcNKz
 gx4e8beqk3aQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,302,1596524400"; d="scan'208";a="343664369"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 25 Sep 2020 09:03:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 19:03:50 +0300
Date: Fri, 25 Sep 2020 19:03:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200925160350.GS6112@intel.com>
References: <20200924184805.294493-1-imre.deak@intel.com>
 <20200924184805.294493-6-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924184805.294493-6-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915: Switch to LTTPR
 transparent mode link training
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

On Thu, Sep 24, 2020 at 09:48:04PM +0300, Imre Deak wrote:
> By default LTTPRs should be in transparent link training mode,
> nevertheless in this patch we switch to this default mode explicitly.
> =

> The DP Standard recommends this, supposedly because an LTTPR may be left
> in the non-transparent mode (by BIOS, previous kernel, or after reset
> due to a firmware bug). I haven't seen this happening, but let's follow
> the DP Standard.
> =

> v2:
> - Add a code comment about the explicit disabling of non-transparent
>   mode.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 ++
>  .../drm/i915/display/intel_dp_link_training.c | 52 +++++++++++++++++++
>  .../drm/i915/display/intel_dp_link_training.h |  2 +
>  4 files changed, 58 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 3d4bf9b6a0a2..b04921eba73b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1280,6 +1280,7 @@ struct intel_dp {
>  	u8 downstream_ports[DP_MAX_DOWNSTREAM_PORTS];
>  	u8 edp_dpcd[EDP_DISPLAY_CTL_CAP_SIZE];
>  	u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
> +	u8 lttpr_common_caps[DP_LTTPR_COMMON_CAP_SIZE];
>  	u8 fec_capable;
>  	/* source rates */
>  	int num_source_rates;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index b21f42193a11..64bf4aa384d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4726,6 +4726,9 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
>  {
>  	int ret;
>  =

> +	if (!intel_dp_is_edp(intel_dp))
> +		intel_dp_lttpr_init(intel_dp);

I was initially a bit confused why this is before we read dpcd[], but
looks like the spec says that is the expected order.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
>  	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd))
>  		return false;
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 38d4553670a1..4f8f42cc25fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -34,6 +34,52 @@ intel_dp_dump_link_status(const u8 link_status[DP_LINK=
_STATUS_SIZE])
>  		      link_status[3], link_status[4], link_status[5]);
>  }
>  =

> +static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp)
> +{
> +	if (drm_dp_read_lttpr_common_caps(&intel_dp->aux,
> +					  intel_dp->lttpr_common_caps) < 0) {
> +		memset(intel_dp->lttpr_common_caps, 0,
> +		       sizeof(intel_dp->lttpr_common_caps));
> +		return false;
> +	}
> +
> +	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> +		    "LTTPR common capabilities: %*ph\n",
> +		    (int)sizeof(intel_dp->lttpr_common_caps),
> +		    intel_dp->lttpr_common_caps);
> +
> +	return true;
> +}
> +
> +static bool
> +intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enab=
le)
> +{
> +	u8 val =3D enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
> +			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
> +
> +	return drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1)=
 =3D=3D 1;
> +}
> +
> +/**
> + * intel_dp_lttpr_init - detect LTTPRs and init the LTTPR link training =
mode
> + * @intel_dp: Intel DP struct
> + *
> + * Read the LTTPR common capabilities and switch to transparent link tra=
ining
> + * mode.
> + */
> +int intel_dp_lttpr_init(struct intel_dp *intel_dp)
> +{
> +	intel_dp_read_lttpr_common_caps(intel_dp);
> +
> +	/*
> +	 * See DP Standard v2.0 3.6.6.1. about the explicit disabling of
> +	 * non-transparent mode.
> +	 */
> +	intel_dp_set_lttpr_transparent_mode(intel_dp, true);
> +
> +	return 0;
> +}
> +
>  static u8 dp_voltage_max(u8 preemph)
>  {
>  	switch (preemph & DP_TRAIN_PRE_EMPHASIS_MASK) {
> @@ -471,6 +517,12 @@ static void intel_dp_schedule_fallback_link_training=
(struct intel_dp *intel_dp)
>   */
>  void intel_dp_start_link_train(struct intel_dp *intel_dp)
>  {
> +	/*
> +	 * TODO: Reiniting LTTPRs here won't be needed once proper connector
> +	 * HW state readout is added.
> +	 */
> +	intel_dp_lttpr_init(intel_dp);
> +
>  	if (!intel_dp_link_train(intel_dp))
>  		intel_dp_schedule_fallback_link_training(intel_dp);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.h
> index 518d834dbc98..3536ce73a123 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
> @@ -10,6 +10,8 @@
>  =

>  struct intel_dp;
>  =

> +int intel_dp_lttpr_init(struct intel_dp *intel_dp);
> +
>  void intel_dp_get_adjust_train(struct intel_dp *intel_dp,
>  			       const u8 link_status[DP_LINK_STATUS_SIZE]);
>  void intel_dp_start_link_train(struct intel_dp *intel_dp);
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
