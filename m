Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2663D40C365
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 12:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D87306E8FC;
	Wed, 15 Sep 2021 10:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4EE66E8FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 10:12:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="244641790"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="244641790"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 03:12:30 -0700
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="544777955"
Received: from vmastnak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.245])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 03:12:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210913144440.23008-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-4-ville.syrjala@linux.intel.com>
Date: Wed, 15 Sep 2021 13:12:26 +0300
Message-ID: <87k0jiywol.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/16] drm/i915: Extract
 intel_dp_use_bigjoiner()
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

On Mon, 13 Sep 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Suck the "do we need bigjoiner?" checks into a helper instead of
> duplicating them in two differentt places.

Could've called it intel_dp_need_bigjoiner() but meh.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 19 ++++++++++++++-----
>  1 file changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 161c33b2c869..e898834cc5f9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -805,6 +805,17 @@ intel_dp_mode_valid_downstream(struct intel_connecto=
r *connector,
>  	return MODE_OK;
>  }
>=20=20
> +static bool intel_dp_use_bigjoiner(struct intel_dp *intel_dp,
> +				   int hdisplay, int clock)
> +{
> +	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +
> +	if (!intel_dp_can_bigjoiner(intel_dp))
> +		return false;
> +
> +	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> +}
> +
>  static enum drm_mode_status
>  intel_dp_mode_valid(struct drm_connector *connector,
>  		    struct drm_display_mode *mode)
> @@ -840,8 +851,7 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  	if (mode->clock < 10000)
>  		return MODE_CLOCK_LOW;
>=20=20
> -	if ((target_clock > max_dotclk || mode->hdisplay > 5120) &&
> -	    intel_dp_can_bigjoiner(intel_dp)) {
> +	if (intel_dp_use_bigjoiner(intel_dp, mode->hdisplay, target_clock)) {
>  		bigjoiner =3D true;
>  		max_dotclk *=3D 2;
>  	}
> @@ -1457,9 +1467,8 @@ intel_dp_compute_link_config(struct intel_encoder *=
encoder,
>  		    limits.max_lane_count, limits.max_rate,
>  		    limits.max_bpp, adjusted_mode->crtc_clock);
>=20=20
> -	if ((adjusted_mode->crtc_clock > i915->max_dotclk_freq ||
> -	     adjusted_mode->crtc_hdisplay > 5120) &&
> -	    intel_dp_can_bigjoiner(intel_dp))
> +	if (intel_dp_use_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
> +				   adjusted_mode->crtc_clock))
>  		pipe_config->bigjoiner =3D true;
>=20=20
>  	/*

--=20
Jani Nikula, Intel Open Source Graphics Center
