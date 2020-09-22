Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6E2274301
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 15:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F906E86B;
	Tue, 22 Sep 2020 13:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90FA26E86B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 13:27:08 +0000 (UTC)
IronPort-SDR: vy6ESpWYaJmkJxSPevWMwSex3iWsDPIpjauqTg2QCkeBO3j1CLe+0Zh12t9RmyVnPwcsERZm/1
 X4eSeiVNN2JA==
X-IronPort-AV: E=McAfee;i="6000,8403,9751"; a="222194635"
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="222194635"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 06:27:08 -0700
IronPort-SDR: O2IeJ2zCn56XWpnJyVH5D80otf1v9lnLhGZGBDZ68kw27mRoWiVCIwWbnXaNiZe9LlA0NMAutq
 dVM7xKWLanEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,290,1596524400"; d="scan'208";a="348485976"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 22 Sep 2020 06:27:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Sep 2020 16:27:05 +0300
Date: Tue, 22 Sep 2020 16:27:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200922132705.GS6112@intel.com>
References: <20200922125106.30540-1-imre.deak@intel.com>
 <20200922125106.30540-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922125106.30540-4-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Simplify the link training
 functions
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

On Tue, Sep 22, 2020 at 03:51:02PM +0300, Imre Deak wrote:
> Split the prepare, link training, fallback-handling steps into their own
> functions for clarity and as a preparation for the upcoming LTTPR changes.
> =

> While at it also add some documentation to exported functions.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 80 ++++++++++++++-----
>  1 file changed, 62 insertions(+), 18 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 6d13d00db5e6..0c3809891bd2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -162,14 +162,13 @@ static bool intel_dp_link_max_vswing_reached(struct=
 intel_dp *intel_dp)
>  	return true;
>  }
>  =

> -/* Enable corresponding port and start training pattern 1 */
> -static bool
> -intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
> +/*
> + * Prepare link training by configuring the link parameters and enabling=
 the
> + * corresponding port.
> + */
> +static void intel_dp_prepare_link_train(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> -	u8 voltage;
> -	int voltage_tries, cr_tries, max_cr_tries;
> -	bool max_vswing_reached =3D false;
>  	u8 link_config[2];
>  	u8 link_bw, rate_select;
>  =

> @@ -203,6 +202,16 @@ intel_dp_link_training_clock_recovery(struct intel_d=
p *intel_dp)
>  	drm_dp_dpcd_write(&intel_dp->aux, DP_DOWNSPREAD_CTRL, link_config, 2);
>  =

>  	intel_dp->DP |=3D DP_PORT_EN;

I guess we no longer actually enable the port here? The comment ^ still says
we do.

Hmm. Seems we do enable the port on ddi platforms, but not on older
platforms. I guess the docs could still use a tweak to reflect
reality a bit better.

> +}
> +
> +/* Perform the link training clock recovery phase using training pattern=
 1. */
> +static bool
> +intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	u8 voltage;
> +	int voltage_tries, cr_tries, max_cr_tries;
> +	bool max_vswing_reached =3D false;
>  =

>  	/* clock recovery */
>  	if (!intel_dp_reset_link_train(intel_dp,
> @@ -325,6 +334,10 @@ static u32 intel_dp_training_pattern(struct intel_dp=
 *intel_dp)
>  	return DP_TRAINING_PATTERN_2;
>  }
>  =

> +/*
> + * Perform the link training channel equalization phase using one of tra=
ining
> + * pattern 2, 3 or 4 depending on the the source and sink capabilities.
> + */
>  static bool
>  intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp)
>  {
> @@ -395,6 +408,15 @@ intel_dp_link_training_channel_equalization(struct i=
ntel_dp *intel_dp)
>  =

>  }
>  =

> +/**
> + * intel_dp_stop_link_train - stop link training
> + * @intel_dp: DP struct
> + *
> + * Stop the link training of the @intel_dp port, programming the port to
> + * output an idle pattern =


I don't think we use the idle pattern on all platforms.

BTW intel_dp_set_idle_link_train() looks pretty pointless. Could just
inline it into its only caller, or at least move it into
intel_dp_link_training.c.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> on the link and  disabling the training pattern in
> + * the sink's DPCD.
> + * This function must be called after intel_dp_start_link_train().
> + */
>  void intel_dp_stop_link_train(struct intel_dp *intel_dp)
>  {
>  	intel_dp->link_trained =3D true;
> @@ -403,30 +425,37 @@ void intel_dp_stop_link_train(struct intel_dp *inte=
l_dp)
>  				DP_TRAINING_PATTERN_DISABLE);
>  }
>  =

> -void
> -intel_dp_start_link_train(struct intel_dp *intel_dp)
> +static bool
> +intel_dp_link_train(struct intel_dp *intel_dp)
>  {
>  	struct intel_connector *intel_connector =3D intel_dp->attached_connecto=
r;
> +	bool ret =3D false;
> +
> +	intel_dp_prepare_link_train(intel_dp);
>  =

>  	if (!intel_dp_link_training_clock_recovery(intel_dp))
> -		goto failure_handling;
> +		goto out;
> +
>  	if (!intel_dp_link_training_channel_equalization(intel_dp))
> -		goto failure_handling;
> +		goto out;
>  =

> -	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> -		    "[CONNECTOR:%d:%s] Link Training Passed at Link Rate =3D %d, Lane =
count =3D %d",
> -		    intel_connector->base.base.id,
> -		    intel_connector->base.name,
> -		    intel_dp->link_rate, intel_dp->lane_count);
> -	return;
> +	ret =3D true;
>  =

> - failure_handling:
> +out:
>  	drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
> -		    "[CONNECTOR:%d:%s] Link Training failed at link rate =3D %d, lane =
count =3D %d",
> +		    "[CONNECTOR:%d:%s] Link Training %s at Link Rate =3D %d, Lane coun=
t =3D %d",
>  		    intel_connector->base.base.id,
>  		    intel_connector->base.name,
> +		    ret ? "passed" : "failed",
>  		    intel_dp->link_rate, intel_dp->lane_count);
>  =

> +	return ret;
> +}
> +
> +static void intel_dp_schedule_fallback_link_training(struct intel_dp *in=
tel_dp)
> +{
> +	struct intel_connector *intel_connector =3D intel_dp->attached_connecto=
r;
> +
>  	if (intel_dp->hobl_active) {
>  		drm_dbg_kms(&dp_to_i915(intel_dp)->drm,
>  			    "Link Training failed with HOBL active, not enabling it from now =
on");
> @@ -440,3 +469,18 @@ intel_dp_start_link_train(struct intel_dp *intel_dp)
>  	/* Schedule a Hotplug Uevent to userspace to start modeset */
>  	schedule_work(&intel_connector->modeset_retry_work);
>  }
> +
> +/**
> + * intel_dp_start_link_train - start link training
> + * @intel_dp: DP struct
> + *
> + * Start the link training of the @intel_dp port, scheduling a fallback
> + * retraining with reduced link rate/lane parameters if the link training
> + * fails.
> + * After calling this function intel_dp_stop_link_train() must be called.
> + */
> +void intel_dp_start_link_train(struct intel_dp *intel_dp)
> +{
> +	if (!intel_dp_link_train(intel_dp))
> +		intel_dp_schedule_fallback_link_training(intel_dp);
> +}
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
