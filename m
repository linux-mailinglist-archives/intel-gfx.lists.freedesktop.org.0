Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B752A820E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 16:21:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C72D86ED29;
	Thu,  5 Nov 2020 15:21:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C5E06ED29
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 15:21:35 +0000 (UTC)
IronPort-SDR: YjY6Z+qlIkXKMQjbF1nHoD90CQA74ADQrebpKwd+ZBkt+RnkwZHUlAFKEdklgCiaseH3QGzUqB
 iCySF96pYauA==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="254104070"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="254104070"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 07:21:34 -0800
IronPort-SDR: aduQehn8cA0o4a92gwIzDIYaAXerum1T3RZTZBRaSmBHsJH4eEUmJFfg3quMq1pWPdRFMZY/ya
 cVpW3ElRrIpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="358462563"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 05 Nov 2020 07:21:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Nov 2020 17:21:31 +0200
Date: Thu, 5 Nov 2020 17:21:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201105152131.GW6112@intel.com>
References: <20201102211906.4893-1-manasi.d.navare@intel.com>
 <20201102211906.4893-5-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201102211906.4893-5-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 5/6] drm/i915/dp: Prep for bigjoiner
 atomic check
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

On Mon, Nov 02, 2020 at 01:19:05PM -0800, Manasi Navare wrote:
> No functional changes here. Just pass intel_atomic_state
> along with crtc_state to certain atomic_check functions.
> This will lay the foundation for adding bigjoiner master/slave
> states in atomic check.
> =

> v2:
> * More prep with intel_atomic_state (Ville)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic.c  |  9 +++++----
>  drivers/gpu/drm/i915/display/intel_atomic.h  |  3 ++-
>  drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++--------
>  3 files changed, 20 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/dr=
m/i915/display/intel_atomic.c
> index 86be032bcf96..e243ce97b534 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> @@ -270,14 +270,15 @@ void intel_crtc_free_hw_state(struct intel_crtc_sta=
te *crtc_state)
>  	intel_crtc_put_color_blobs(crtc_state);
>  }
>  =

> -void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state)
> +void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
> +				 const struct intel_crtc_state *from_crtc_state)
>  {
>  	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
> -				  crtc_state->uapi.degamma_lut);
> +				  from_crtc_state->uapi.degamma_lut);
>  	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
> -				  crtc_state->uapi.gamma_lut);
> +				  from_crtc_state->uapi.gamma_lut);
>  	drm_property_replace_blob(&crtc_state->hw.ctm,
> -				  crtc_state->uapi.ctm);
> +				  from_crtc_state->uapi.ctm);

This patch still seems to do two totally separate things:
1) pass intel_atomic_State all over (for which there was another
   patch in the series as well?)
2) this intel_crtc_copy_color_blobs() change

I would split these up because the commit message doesn't
even mention the second change.

Each part looks fine on its own so with a proper split they are
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  }
>  =

>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gpu/dr=
m/i915/display/intel_atomic.h
> index 285de07011dc..62a3365ed5e6 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> @@ -43,7 +43,8 @@ struct drm_crtc_state *intel_crtc_duplicate_state(struc=
t drm_crtc *crtc);
>  void intel_crtc_destroy_state(struct drm_crtc *crtc,
>  			       struct drm_crtc_state *state);
>  void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state);
> -void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state);
> +void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
> +				 const struct intel_crtc_state *from_crtc_state);
>  struct drm_atomic_state *intel_atomic_state_alloc(struct drm_device *dev=
);
>  void intel_atomic_state_free(struct drm_atomic_state *state);
>  void intel_atomic_state_clear(struct drm_atomic_state *state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0bea90cdf242..ab10dfe705e4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13459,13 +13459,17 @@ static bool check_digital_port_conflicts(struct=
 intel_atomic_state *state)
>  }
>  =

>  static void
> -intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_crtc_state *crtc=
_state)
> +intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *st=
ate,
> +					   struct intel_crtc_state *crtc_state)
>  {
> -	intel_crtc_copy_color_blobs(crtc_state);
> +	const struct intel_crtc_state *from_crtc_state =3D crtc_state;
> +
> +	intel_crtc_copy_color_blobs(crtc_state, from_crtc_state);
>  }
>  =

>  static void
> -intel_crtc_copy_uapi_to_hw_state(struct intel_crtc_state *crtc_state)
> +intel_crtc_copy_uapi_to_hw_state(struct intel_atomic_state *state,
> +				 struct intel_crtc_state *crtc_state)
>  {
>  	crtc_state->hw.enable =3D crtc_state->uapi.enable;
>  	crtc_state->hw.active =3D crtc_state->uapi.active;
> @@ -13473,7 +13477,7 @@ intel_crtc_copy_uapi_to_hw_state(struct intel_crt=
c_state *crtc_state)
>  	crtc_state->hw.pipe_mode =3D crtc_state->hw.adjusted_mode =3D crtc_stat=
e->uapi.adjusted_mode;
>  	crtc_state->hw.scaling_filter =3D crtc_state->uapi.scaling_filter;
>  =

> -	intel_crtc_copy_uapi_to_hw_state_nomodeset(crtc_state);
> +	intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc_state);
>  }
>  =

>  static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *cr=
tc_state)
> @@ -13496,7 +13500,8 @@ static void intel_crtc_copy_hw_to_uapi_state(stru=
ct intel_crtc_state *crtc_state
>  }
>  =

>  static int
> -intel_crtc_prepare_cleared_state(struct intel_crtc_state *crtc_state)
> +intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
> +				 struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -13528,7 +13533,7 @@ intel_crtc_prepare_cleared_state(struct intel_crt=
c_state *crtc_state)
>  	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
>  	kfree(saved_state);
>  =

> -	intel_crtc_copy_uapi_to_hw_state(crtc_state);
> +	intel_crtc_copy_uapi_to_hw_state(state, crtc_state);
>  =

>  	return 0;
>  }
> @@ -15233,12 +15238,12 @@ static int intel_atomic_check(struct drm_device=
 *dev,
>  					    new_crtc_state, i) {
>  		if (!needs_modeset(new_crtc_state)) {
>  			/* Light copy */
> -			intel_crtc_copy_uapi_to_hw_state_nomodeset(new_crtc_state);
> +			intel_crtc_copy_uapi_to_hw_state_nomodeset(state, new_crtc_state);
>  =

>  			continue;
>  		}
>  =

> -		ret =3D intel_crtc_prepare_cleared_state(new_crtc_state);
> +		ret =3D intel_crtc_prepare_cleared_state(state, new_crtc_state);
>  		if (ret)
>  			goto fail;
>  =

> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
