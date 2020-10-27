Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78ADA29C98A
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 21:07:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7006EC2F;
	Tue, 27 Oct 2020 20:06:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 103606EC2F
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 20:06:57 +0000 (UTC)
IronPort-SDR: WVA/cMQzoj48LhziM7Q/S3LBgmYGEBKARKyOoQmdTwxfrk2SbMPpihnRMZBM4v/SnAvEVNchLm
 O0Xdw8g2oJhg==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="165565607"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="165565607"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 13:06:56 -0700
IronPort-SDR: 1LuBho9h0FmbqC4IoYvrtUXAPDXDQvM4qy05k8X56Dskp+xh/6b/lzElrKycPyQtx+QyIfAWIQ
 8NhQpnIfWxCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="304008230"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 27 Oct 2020 13:06:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Oct 2020 22:06:53 +0200
Date: Tue, 27 Oct 2020 22:06:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201027200653.GR6112@intel.com>
References: <20201027193034.28721-1-manasi.d.navare@intel.com>
 <20201027193034.28721-4-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027193034.28721-4-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/dp: Prep for bigjoiner atomic
 check
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

On Tue, Oct 27, 2020 at 12:30:32PM -0700, Manasi Navare wrote:
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
>  drivers/gpu/drm/i915/display/intel_atomic.c  |  9 ++---
>  drivers/gpu/drm/i915/display/intel_atomic.h  |  3 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 35 +++++++++++---------
>  3 files changed, 27 insertions(+), 20 deletions(-)
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
>  }

Exhibit a

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
> index ab00c99975f5..cabda5a02e9e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -12661,7 +12661,7 @@ static bool encoders_cloneable(const struct intel=
_encoder *a,
>  			  b->cloneable & (1 << a->type));
>  }
>  =

> -static bool check_single_encoder_cloning(struct drm_atomic_state *state,
> +static bool check_single_encoder_cloning(struct intel_atomic_state *stat=
e,
>  					 struct intel_crtc *crtc,
>  					 struct intel_encoder *encoder)

Exhibit b

Pretty much still looks like two independent patches squashed to one.

>  {
> @@ -12670,7 +12670,7 @@ static bool check_single_encoder_cloning(struct d=
rm_atomic_state *state,
>  	struct drm_connector_state *connector_state;
>  	int i;
>  =

> -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> +	for_each_new_connector_in_state(&state->base, connector, connector_stat=
e, i) {
>  		if (connector_state->crtc !=3D &crtc->base)
>  			continue;
>  =

> @@ -13446,13 +13446,17 @@ static bool check_digital_port_conflicts(struct=
 intel_atomic_state *state)
>  }
>  =

>  static void
> -intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_crtc_state *crtc=
_state)
> +intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state *st=
ate,
> +					   struct intel_crtc_state *crtc_state)

Since we're going to the trouble of changing all the calling conventions
I suspect we should just take this all the way and pass in state+crtc
rather than state+crtc_state.

See eg. commit 7451a074bf2f ("drm/i915: Change .crtc_enable/disable()
calling convention")

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
> @@ -13460,7 +13464,7 @@ intel_crtc_copy_uapi_to_hw_state(struct intel_crt=
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
> @@ -13483,7 +13487,8 @@ static void intel_crtc_copy_hw_to_uapi_state(stru=
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
> @@ -13515,16 +13520,16 @@ intel_crtc_prepare_cleared_state(struct intel_c=
rtc_state *crtc_state)
>  	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
>  	kfree(saved_state);
>  =

> -	intel_crtc_copy_uapi_to_hw_state(crtc_state);
> +	intel_crtc_copy_uapi_to_hw_state(state, crtc_state);
>  =

>  	return 0;
>  }
>  =

>  static int
> -intel_modeset_pipe_config(struct intel_crtc_state *pipe_config)
> +intel_modeset_pipe_config(struct intel_atomic_state *state,
> +			  struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_crtc *crtc =3D pipe_config->uapi.crtc;
> -	struct drm_atomic_state *state =3D pipe_config->uapi.state;
>  	struct drm_i915_private *i915 =3D to_i915(pipe_config->uapi.crtc->dev);
>  	struct drm_connector *connector;
>  	struct drm_connector_state *connector_state;
> @@ -13566,7 +13571,7 @@ intel_modeset_pipe_config(struct intel_crtc_state=
 *pipe_config)
>  			       &pipe_config->pipe_src_w,
>  			       &pipe_config->pipe_src_h);
>  =

> -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> +	for_each_new_connector_in_state(&state->base, connector, connector_stat=
e, i) {
>  		struct intel_encoder *encoder =3D
>  			to_intel_encoder(connector_state->best_encoder);
>  =

> @@ -13604,7 +13609,7 @@ intel_modeset_pipe_config(struct intel_crtc_state=
 *pipe_config)
>  	 * adjust it according to limitations or connector properties, and also
>  	 * a chance to reject the mode entirely.
>  	 */
> -	for_each_new_connector_in_state(state, connector, connector_state, i) {
> +	for_each_new_connector_in_state(&state->base, connector, connector_stat=
e, i) {
>  		struct intel_encoder *encoder =3D
>  			to_intel_encoder(connector_state->best_encoder);
>  =

> @@ -15216,19 +15221,19 @@ static int intel_atomic_check(struct drm_device=
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

>  		if (!new_crtc_state->hw.enable)
>  			continue;
>  =

> -		ret =3D intel_modeset_pipe_config(new_crtc_state);
> +		ret =3D intel_modeset_pipe_config(state, new_crtc_state);
>  		if (ret)
>  			goto fail;
>  	}
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
