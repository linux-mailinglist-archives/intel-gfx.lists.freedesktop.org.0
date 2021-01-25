Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36DD0302465
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 12:42:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F9389C9D;
	Mon, 25 Jan 2021 11:42:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2319189C9D
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 11:42:12 +0000 (UTC)
IronPort-SDR: TMrBD69l2I65v5Um3/qgGRY2xQYUTulISXIVPBRfda96rE5szENagZUArKuGrokN0rh4ydlgxa
 o9MKKMq+JpJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="167387060"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="167387060"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 03:42:11 -0800
IronPort-SDR: UqQYupAM2IzczpqlgHCfaa2M+Wr7BXs9d0kwnnecbZABOAoR6KaifZs8Df4nRIg+/JrsZsoH7R
 6H0AhLC9jZIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="429253903"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 25 Jan 2021 03:42:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Jan 2021 13:42:08 +0200
Date: Mon, 25 Jan 2021 13:42:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <YA6ukB0Pq8HzczJw@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
 <20210122232647.22688-15-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210122232647.22688-15-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [CI v5 15/18] drm/i915/display: Helpers for VRR
 vblank min and max start
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

On Fri, Jan 22, 2021 at 03:26:44PM -0800, Manasi Navare wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> With VRR the earliest the registers can get latched are at
> flipline decision boundary, calculate that as vrr_vmin_vblank_start()
> and the latest the regsiters can get latched are vmax decision boundary
> calculate that as vrr_vmax_vblank_start()
> =

> v2:
> * Remove TODO and adjust extra scanline const (Manasi)
> =

> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 36 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.h |  2 ++
>  2 files changed, 38 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index c71254563a10..49ff5add90e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -45,6 +45,42 @@ intel_vrr_check_modeset(struct intel_atomic_state *sta=
te)
>  	}
>  }
>  =

> +/*
> + * Without VRR registers get latched at:
> + *  vblank_start
> + *
> + * With VRR the earliest registers can get latched is:
> + *  intel_vrr_vmin_vblank_start(), which if we want to maintain
> + *  the correct min vtotal is >=3Dvblank_start+1
> + *
> + * The latest point registers can get latched is the vmax decision bound=
ary:
> + *  intel_vrr_vmax_vblank_start()
> + *
> + * Between those two points the vblank exit starts (and hence registers =
get
> + * latched) ASAP after a push is sent.
> + *
> + * framestart_delay is programmable 0-3.

"1-4" now

> + */
> +static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *c=
rtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +
> +	/* The hw imposes the extra scanline before frame start */
> +	return crtc_state->vrr.pipeline_full + i915->framestart_delay + 1;
> +}
> +
> +int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_stat=
e)
> +{
> +	/* Min vblank actually determined by flipline that is always >=3Dvmin+1=
 */
> +	return crtc_state->vrr.vmin + 1 - intel_vrr_vblank_exit_length(crtc_sta=
te);
> +}
> +
> +int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_stat=
e)
> +{
> +	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
> +}
> +
>  void
>  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			 struct drm_connector_state *conn_state)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i=
915/display/intel_vrr.h
> index 7610051edad2..d8b6b45557ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -27,5 +27,7 @@ void intel_vrr_send_push(const struct intel_crtc_state =
*crtc_state);
>  void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
>  void intel_vrr_get_config(struct intel_crtc *crtc,
>  			  struct intel_crtc_state *crtc_state);
> +int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_stat=
e);
> +int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_stat=
e);
>  =

>  #endif /* __INTEL_VRR_H__ */
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
