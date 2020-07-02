Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF35212D18
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 21:26:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D6B46E111;
	Thu,  2 Jul 2020 19:26:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13A056E111
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 19:26:03 +0000 (UTC)
IronPort-SDR: pwhfxuRdzqxueAbAfUAEbIHdRUVpD7/dzgWYY58WqpQVShJnjkajion0+OulHk9vWad6iqzjK2
 9ksgdlj1J8Gw==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="146093804"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="146093804"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 12:26:03 -0700
IronPort-SDR: 3jnbvsUoNGHjUNBsKN306s49gZRSpdqyeFInOUCV93xwOWiCYirPTQ/K9k0YNTJ4IPEwlHlgMU
 KkQAdMhYbg5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="278212934"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga003.jf.intel.com with ESMTP; 02 Jul 2020 12:26:03 -0700
Date: Thu, 2 Jul 2020 12:27:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200702192741.GA32432@intel.com>
References: <20200702182450.6804-1-ville.syrjala@linux.intel.com>
 <20200702182450.6804-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200702182450.6804-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Fix the training pattern
 debug print
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

On Thu, Jul 02, 2020 at 09:24:50PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Currently we claim to use TPS7 when using TPS4. That is just
> confusing, so let's fix the debug print.
> =

> And while we're touching this let's add the customary
> encoder id/name as well.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 26 ++++++++++++++++++++-----
>  1 file changed, 21 insertions(+), 5 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 5ac182357fc9..eba97b1f5839 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4353,17 +4353,33 @@ void intel_dp_set_signal_levels(struct intel_dp *=
intel_dp)
>  	intel_dp->set_signal_levels(intel_dp);
>  }
>  =

> +static char dp_training_pattern_name(u8 train_pat)
> +{
> +	switch (train_pat) {
> +	case DP_TRAINING_PATTERN_1:
> +	case DP_TRAINING_PATTERN_2:
> +	case DP_TRAINING_PATTERN_3:
> +		return '0' + train_pat;
> +	case DP_TRAINING_PATTERN_4:
> +		return '4';
> +	default:
> +		return '?';

Shouldnt this be a WARN? If we just return a ? it might result into failure=
 without any warn

Other than that I like that now it will say TPS4 instead of misleading TPS7
So with a default WARN,

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> +	}
> +}
> +
>  void
>  intel_dp_program_link_training_pattern(struct intel_dp *intel_dp,
>  				       u8 dp_train_pat)
>  {
> -	struct drm_i915_private *dev_priv =3D dp_to_i915(intel_dp);
> -	u8 train_pat_mask =3D drm_dp_training_pattern_mask(intel_dp->dpcd);
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	u8 train_pat =3D dp_train_pat & drm_dp_training_pattern_mask(intel_dp->=
dpcd);
>  =

> -	if (dp_train_pat & train_pat_mask)
> +	if (train_pat)
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "Using DP training pattern TPS%d\n",
> -			    dp_train_pat & train_pat_mask);
> +			    "[ENCODER:%d:%s] Using DP training pattern TPS%c\n",
> +			    encoder->base.base.id, encoder->base.name,
> +			    dp_training_pattern_name(train_pat));
>  =

>  	intel_dp->set_link_train(intel_dp, dp_train_pat);
>  }
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
