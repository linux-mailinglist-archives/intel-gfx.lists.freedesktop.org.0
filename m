Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2593433F35
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 21:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D206F6E88C;
	Tue, 19 Oct 2021 19:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 148E76E88C
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 19:23:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10142"; a="228489059"
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="228489059"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 12:23:19 -0700
X-IronPort-AV: E=Sophos;i="5.87,164,1631602800"; d="scan'208";a="494256356"
Received: from jsanz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.211.239])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 12:23:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20211018094154.1407705-7-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211018094154.1407705-1-imre.deak@intel.com>
 <20211018094154.1407705-7-imre.deak@intel.com>
Date: Tue, 19 Oct 2021 22:23:14 +0300
Message-ID: <87fsswq0nx.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/dp: Sanitize link common rate
 array lookups
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

On Mon, 18 Oct 2021, Imre Deak <imre.deak@intel.com> wrote:
> Add an assert that lookups from the intel_dp->common_rates[] array
> are always valid.

The one thought I had here was that if we're adding helper functions for
accessing common rates, they should probably be of the form "this is the
rate I have now, give me a slower rate" instead of making the index part
of the interface. The index doesn't really mean anything, and if we want
to avoid overflows, it should be hidden from the interfaces.

But again, can be follow-up.

BR,
Jani.


>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 33 ++++++++++++-------------
>  1 file changed, 16 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index f8082eb8e7263..3869d454c10f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -267,10 +267,19 @@ static int intel_dp_common_len_rate_limit(const str=
uct intel_dp *intel_dp,
>  				       intel_dp->num_common_rates, max_rate);
>  }
>=20=20
> +static int intel_dp_common_rate(struct intel_dp *intel_dp, int index)
> +{
> +	if (drm_WARN_ON(&dp_to_i915(intel_dp)->drm,
> +			index < 0 || index >=3D intel_dp->num_common_rates))
> +		return 162000;
> +
> +	return intel_dp->common_rates[index];
> +}
> +
>  /* Theoretical max between source and sink */
>  static int intel_dp_max_common_rate(struct intel_dp *intel_dp)
>  {
> -	return intel_dp->common_rates[intel_dp->num_common_rates - 1];
> +	return intel_dp_common_rate(intel_dp, intel_dp->num_common_rates - 1);
>  }
>=20=20
>  /* Theoretical max between source and sink */
> @@ -610,13 +619,13 @@ int intel_dp_get_link_train_fallback_values(struct =
intel_dp *intel_dp,
>  	if (index > 0) {
>  		if (intel_dp_is_edp(intel_dp) &&
>  		    !intel_dp_can_link_train_fallback_for_edp(intel_dp,
> -							      intel_dp->common_rates[index - 1],
> +							      intel_dp_common_rate(intel_dp, index - 1),
>  							      lane_count)) {
>  			drm_dbg_kms(&i915->drm,
>  				    "Retrying Link training for eDP with same parameters\n");
>  			return 0;
>  		}
> -		intel_dp->max_link_rate =3D intel_dp->common_rates[index - 1];
> +		intel_dp->max_link_rate =3D intel_dp_common_rate(intel_dp, index - 1);
>  		intel_dp->max_link_lane_count =3D lane_count;
>  	} else if (lane_count > 1) {
>  		if (intel_dp_is_edp(intel_dp) &&
> @@ -1056,14 +1065,11 @@ static void intel_dp_print_rates(struct intel_dp =
*intel_dp)
>  int
>  intel_dp_max_link_rate(struct intel_dp *intel_dp)
>  {
> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
>  	int len;
>=20=20
>  	len =3D intel_dp_common_len_rate_limit(intel_dp, intel_dp->max_link_rat=
e);
> -	if (drm_WARN_ON(&i915->drm, len <=3D 0))
> -		return 162000;
>=20=20
> -	return intel_dp->common_rates[len - 1];
> +	return intel_dp_common_rate(intel_dp, len - 1);
>  }
>=20=20
>  int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
> @@ -1260,7 +1266,7 @@ intel_dp_compute_link_config_wide(struct intel_dp *=
intel_dp,
>  						   output_bpp);
>=20=20
>  		for (i =3D 0; i < intel_dp->num_common_rates; i++) {
> -			link_rate =3D intel_dp->common_rates[i];
> +			link_rate =3D intel_dp_common_rate(intel_dp, i);
>  			if (link_rate < limits->min_rate ||
>  			    link_rate > limits->max_rate)
>  				continue;
> @@ -1508,17 +1514,10 @@ intel_dp_compute_link_config(struct intel_encoder=
 *encoder,
>  		&pipe_config->hw.adjusted_mode;
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct link_config_limits limits;
> -	int common_len;
>  	int ret;
>=20=20
> -	common_len =3D intel_dp_common_len_rate_limit(intel_dp,
> -						    intel_dp->max_link_rate);
> -
> -	/* No common link rates between source and sink */
> -	drm_WARN_ON(encoder->base.dev, common_len <=3D 0);
> -
> -	limits.min_rate =3D intel_dp->common_rates[0];
> -	limits.max_rate =3D intel_dp->common_rates[common_len - 1];
> +	limits.min_rate =3D intel_dp_common_rate(intel_dp, 0);
> +	limits.max_rate =3D intel_dp_max_link_rate(intel_dp);
>=20=20
>  	limits.min_lane_count =3D 1;
>  	limits.max_lane_count =3D intel_dp_max_lane_count(intel_dp);

--=20
Jani Nikula, Intel Open Source Graphics Center
