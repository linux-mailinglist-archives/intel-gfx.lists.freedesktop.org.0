Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0222778C2
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 20:57:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 334A66EB4F;
	Thu, 24 Sep 2020 18:57:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283136EB50
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 18:57:18 +0000 (UTC)
IronPort-SDR: O+NFZ/NzPLQVHQbsEav/mDRQvoO8WnEU6C176+Mg9GziOSmjE7zOoKgZ5GDi0UKJDPLY6iuEBZ
 3K+mkjUKBqsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="225449423"
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400"; d="scan'208";a="225449423"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2020 11:57:17 -0700
IronPort-SDR: qTMZR13i7ULCQgCQW6UL4R/Rbz3wUIiL82gaAPEAf3k99rjcxgfOp6F8TWIndG9NyVwp5y4Qlq
 crUvnQ0J/bvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,299,1596524400"; d="scan'208";a="292202947"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 24 Sep 2020 11:57:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Sep 2020 21:57:14 +0300
Date: Thu, 24 Sep 2020 21:57:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200924185714.GO6112@intel.com>
References: <20200924184805.294493-1-imre.deak@intel.com>
 <20200924184805.294493-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924184805.294493-4-imre.deak@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915: Factor out a helper to
 disable the DPCD training pattern
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

On Thu, Sep 24, 2020 at 09:48:02PM +0300, Imre Deak wrote:
> To prepare for a follow-up LTTPR change factor out a helper to disable
> the training pattern in DPCD. We'll need to do this for each LTTPR
> (without programming the port to output the idle pattern) when training
> in LTTPR non-transparent mode.
> =

> While at it also move the disable-link-training logic from
> intel_dp_set_link_train() to intel_dp_stop_link_train(), since the
> latter is the only user of this.
> =

> v2:
> - Move the disable-link-training logic to intel_dp_stop_link_train()
>   (Ville)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 32 +++++++++----------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/driv=
ers/gpu/drm/i915/display/intel_dp_link_training.c
> index 78b0f165fadd..38d4553670a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -91,25 +91,17 @@ intel_dp_set_link_train(struct intel_dp *intel_dp,
>  			u8 dp_train_pat)
>  {
>  	u8 buf[sizeof(intel_dp->train_set) + 1];
> -	int ret, len;
> +	int len;
>  =

>  	intel_dp_program_link_training_pattern(intel_dp, dp_train_pat);
>  =

>  	buf[0] =3D dp_train_pat;
> -	if (intel_dp_training_pattern_symbol(dp_train_pat) =3D=3D
> -	    DP_TRAINING_PATTERN_DISABLE) {
> -		/* don't write DP_TRAINING_LANEx_SET on disable */
> -		len =3D 1;
> -	} else {
> -		/* DP_TRAINING_LANEx_SET follow DP_TRAINING_PATTERN_SET */
> -		memcpy(buf + 1, intel_dp->train_set, intel_dp->lane_count);
> -		len =3D intel_dp->lane_count + 1;
> -	}
> +	/* DP_TRAINING_LANEx_SET follow DP_TRAINING_PATTERN_SET */
> +	memcpy(buf + 1, intel_dp->train_set, intel_dp->lane_count);
> +	len =3D intel_dp->lane_count + 1;
>  =

> -	ret =3D drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
> -				buf, len);
> -
> -	return ret =3D=3D len;
> +	return drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
> +				 buf, len) =3D=3D len;

Much nicer without the silly if() cluttering things.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  }
>  =

>  static bool
> @@ -392,6 +384,13 @@ intel_dp_link_training_channel_equalization(struct i=
ntel_dp *intel_dp)
>  	return channel_eq;
>  }
>  =

> +static bool intel_dp_disable_dpcd_training_pattern(struct intel_dp *inte=
l_dp)
> +{
> +	u8 val =3D DP_TRAINING_PATTERN_DISABLE;
> +
> +	return drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET, &val,=
 1) =3D=3D 1;
> +}
> +
>  /**
>   * intel_dp_stop_link_train - stop link training
>   * @intel_dp: DP struct
> @@ -411,8 +410,9 @@ void intel_dp_stop_link_train(struct intel_dp *intel_=
dp)
>  {
>  	intel_dp->link_trained =3D true;
>  =

> -	intel_dp_set_link_train(intel_dp,
> -				DP_TRAINING_PATTERN_DISABLE);
> +	intel_dp_program_link_training_pattern(intel_dp,
> +					       DP_TRAINING_PATTERN_DISABLE);
> +	intel_dp_disable_dpcd_training_pattern(intel_dp);
>  }
>  =

>  static bool
> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
