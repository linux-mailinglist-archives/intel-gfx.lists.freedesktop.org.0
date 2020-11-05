Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD592A81EF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 16:14:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC59B6E174;
	Thu,  5 Nov 2020 15:14:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 546FC6E174
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 15:14:45 +0000 (UTC)
IronPort-SDR: HBJ+V2XOYy/7SHS+cXO+Zq6kB6r3kErblLAym8uH1w7gKbhLi6MWdiyPMbYuuqmzMbpFdGGDeQ
 8mRvMEnc2eCQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="231022673"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="231022673"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 07:14:43 -0800
IronPort-SDR: kyjsDu6i+TdEK43XWNKMFYDXuoW/vWGGUN7jlGhmEBYmwE416iBdfhG3CmvlZkV2k2hCgArzGN
 H5nosMI3V8cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="337264904"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 05 Nov 2020 07:14:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Nov 2020 17:14:40 +0200
Date: Thu, 5 Nov 2020 17:14:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201105151440.GU6112@intel.com>
References: <20201102211906.4893-1-manasi.d.navare@intel.com>
 <20201102211906.4893-4-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201102211906.4893-4-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 4/6] drm/i915: Pass intel_atomic_state
 instead of drm_atomic_state
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

On Mon, Nov 02, 2020 at 01:19:04PM -0800, Manasi Navare wrote:
> No functional changes, to align with previous cleanups pass
> intel_atomic_state instead of drm_atomic_state.
> Also pass this intel_atomic_state with crtc_state to
> some of the atomic_check functions.
> =

> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e8cdfab69c91..0bea90cdf242 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -12671,7 +12671,7 @@ static bool encoders_cloneable(const struct intel=
_encoder *a,
>  			  b->cloneable & (1 << a->type));
>  }
>  =

> -static bool check_single_encoder_cloning(struct drm_atomic_state *state,
> +static bool check_single_encoder_cloning(struct intel_atomic_state *stat=
e,
>  					 struct intel_crtc *crtc,
>  					 struct intel_encoder *encoder)
>  {
> @@ -12680,7 +12680,7 @@ static bool check_single_encoder_cloning(struct d=
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

> @@ -13534,10 +13534,10 @@ intel_crtc_prepare_cleared_state(struct intel_c=
rtc_state *crtc_state)
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
> @@ -13579,7 +13579,7 @@ intel_modeset_pipe_config(struct intel_crtc_state=
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

> @@ -13617,7 +13617,7 @@ intel_modeset_pipe_config(struct intel_crtc_state=
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

> @@ -15245,7 +15245,7 @@ static int intel_atomic_check(struct drm_device *=
dev,
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
