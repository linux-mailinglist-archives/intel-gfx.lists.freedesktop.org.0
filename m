Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF0815D66B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 12:16:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CAC76F8F2;
	Fri, 14 Feb 2020 11:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C48B16F8F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 11:16:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 03:16:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="222989548"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga007.jf.intel.com with ESMTP; 14 Feb 2020 03:16:50 -0800
Date: Fri, 14 Feb 2020 03:18:16 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200214111815.GA21065@intel.com>
References: <20200203074756.10549-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203074756.10549-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Introduce
 encoder->compute_config_late()
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Feb 02, 2020 at 11:47:54PM -0800, Manasi Navare wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Add an optional secondary encoder state compute hook. This gets
> called after the normak .compute_config() has been called for
> all the encoders in the state. Thus in the new hook we can rely
> on all derived state populated by .compute_config() to be already
> set up. Should be useful for MST and port sync master/slave
> transcoder selection.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 39 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  3 ++
>  2 files changed, 42 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index b0af37fb6d4a..2a2c9dd563e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -13522,6 +13522,35 @@ intel_modeset_pipe_config(struct intel_crtc_stat=
e *pipe_config)
>  	return 0;
>  }
>  =

> +static int
> +intel_modeset_pipe_config_late(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_atomic_state *state =3D
> +		to_intel_atomic_state(crtc_state->uapi.state);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_connector_state *conn_state;
> +	struct drm_connector *connector;
> +	int i;
> +
> +	for_each_new_connector_in_state(&state->base, connector,
> +					conn_state, i) {
> +		struct intel_encoder *encoder =3D
> +			to_intel_encoder(conn_state->best_encoder);
> +		int ret;
> +
> +		if (conn_state->crtc !=3D &crtc->base ||
> +		    !encoder->compute_config_late)
> +			continue;
> +
> +		ret =3D encoder->compute_config_late(encoder, crtc_state,
> +						   conn_state);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  bool intel_fuzzy_clock_check(int clock1, int clock2)
>  {
>  	int diff;
> @@ -14929,6 +14958,16 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  		ret =3D intel_modeset_pipe_config(new_crtc_state);
>  		if (ret)
>  			goto fail;
> +	}
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		if (!needs_modeset(new_crtc_state))
> +			continue;
> +
> +		ret =3D intel_modeset_pipe_config_late(new_crtc_state);
> +		if (ret)
> +			goto fail;
>  =

>  		intel_crtc_check_fastset(old_crtc_state, new_crtc_state);
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 7c6133a9c51b..96d84d027556 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -141,6 +141,9 @@ struct intel_encoder {
>  	int (*compute_config)(struct intel_encoder *,
>  			      struct intel_crtc_state *,
>  			      struct drm_connector_state *);
> +	int (*compute_config_late)(struct intel_encoder *,
> +				   struct intel_crtc_state *,
> +				   struct drm_connector_state *);
>  	void (*update_prepare)(struct intel_atomic_state *,
>  			       struct intel_encoder *,
>  			       struct intel_crtc *);
> -- =

> 2.19.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
