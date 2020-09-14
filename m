Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6698E268D73
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 16:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96C9B6E4B0;
	Mon, 14 Sep 2020 14:24:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F29326E4B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 14:24:16 +0000 (UTC)
IronPort-SDR: KQyTPQhdvEKTReap9XQpFuQjichoVVpP5IL+2H4R1nU2IxntYPf3LWRT6RCGDiFbXFHIacXm8C
 6hZGKs6Y1boQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="139097658"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="139097658"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 07:24:12 -0700
IronPort-SDR: MPk84vwIZMUdI3QOxguKheJlJEDLLymg+FrTvUhxxF2F5hoC2S3tTMnHZd2OD7NY2ZbsRHdvmi
 OSzDFyWgpW5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="306182924"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 14 Sep 2020 07:24:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Sep 2020 17:24:06 +0300
Date: Mon, 14 Sep 2020 17:24:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200914142406.GN6112@intel.com>
References: <20200901010924.235808-1-jose.souza@intel.com>
 <20200901010924.235808-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901010924.235808-2-jose.souza@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: Fix state of PSR2 sub
 features
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

On Mon, Aug 31, 2020 at 06:09:22PM -0700, Jos=E9 Roberto de Souza wrote:
> In case PSR2 is disabled by debugfs dc3co_enabled and
> psr2_sel_fetch_enabled were still being set causing some code paths
> to be executed were it should not.
> We have tests for PSR1 and PSR2 so keep those features disabled when
> PSR1 is active but PSR2 is supported is important.
> =

> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 4e09ae61d4aa..6698d0209879 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -962,12 +962,14 @@ static void intel_psr_enable_locked(struct drm_i915=
_private *dev_priv,
>  	dev_priv->psr.psr2_enabled =3D intel_psr2_enabled(dev_priv, crtc_state);
>  	dev_priv->psr.busy_frontbuffer_bits =3D 0;
>  	dev_priv->psr.pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> -	dev_priv->psr.dc3co_enabled =3D !!crtc_state->dc3co_exitline;
> +	dev_priv->psr.dc3co_enabled =3D !!crtc_state->dc3co_exitline &&
> +				      dev_priv->psr.psr2_enabled;
>  	dev_priv->psr.transcoder =3D crtc_state->cpu_transcoder;
>  	/* DC5/DC6 requires at least 6 idle frames */
>  	val =3D usecs_to_jiffies(intel_get_frame_time_us(crtc_state) * 6);
>  	dev_priv->psr.dc3co_exit_delay =3D val;
> -	dev_priv->psr.psr2_sel_fetch_enabled =3D crtc_state->enable_psr2_sel_fe=
tch;
> +	dev_priv->psr.psr2_sel_fetch_enabled =3D crtc_state->enable_psr2_sel_fe=
tch &&
> +					       dev_priv->psr.psr2_enabled;
>  =

>  	/*
>  	 * If a PSR error happened and the driver is reloaded, the EDP_PSR_IIR
> @@ -1178,7 +1180,7 @@ void intel_psr2_program_trans_man_trk_ctl(const str=
uct intel_crtc_state *crtc_st
>  	struct i915_psr *psr =3D &dev_priv->psr;
>  =

>  	if (!HAS_PSR2_SEL_FETCH(dev_priv) ||
> -	    !crtc_state->enable_psr2_sel_fetch)
> +	    !dev_priv->psr.psr2_sel_fetch_enabled)
>  		return;
>  =

>  	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(psr->transcoder),
> @@ -1189,8 +1191,9 @@ void intel_psr2_sel_fetch_update(struct intel_atomi=
c_state *state,
>  				 struct intel_crtc *crtc)
>  {
>  	struct intel_crtc_state *crtc_state =3D intel_atomic_get_new_crtc_state=
(state, crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  =

> -	if (!crtc_state->enable_psr2_sel_fetch)
> +	if (!dev_priv->psr.psr2_sel_fetch_enabled)

This looks rather sketchy. AFAICS this gets called during atomic_check()
so looking at stuff outside the crtc state is very suspicious.

>  		return;
>  =

>  	crtc_state->psr2_man_track_ctl =3D PSR2_MAN_TRK_CTL_ENABLE |
> -- =

> 2.28.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
