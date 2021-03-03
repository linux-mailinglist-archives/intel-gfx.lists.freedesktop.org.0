Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 022BA32B956
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 17:54:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BFFD6E9B8;
	Wed,  3 Mar 2021 16:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F706E9B8
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 16:54:30 +0000 (UTC)
IronPort-SDR: IUEx6YuZpJcixvBbPET6p8cQm7Xk9p5HWnuk0O83K4OXGwFYlq2l2UPDIPbvqxeu/E5o6w03EG
 MXcYl/dt+kLg==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="186583199"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="186583199"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 08:54:30 -0800
IronPort-SDR: HrYGVM7qfULjm/sQcUjj5bzYHdDdA4U1EYvADTo3lVKSumBWF2INSEjDawgHNbDDZa6RbGOrQ9
 PIPvRj00aTpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="374158762"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 03 Mar 2021 08:54:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Mar 2021 18:54:27 +0200
Date: Wed, 3 Mar 2021 18:54:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <YD+/Q45My7lyi0ow@intel.com>
References: <20210303164201.31301-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210303164201.31301-1-gwan-gyeong.mun@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: Move dc3co_exitline
 variable to struct intel_psr
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

On Wed, Mar 03, 2021 at 06:41:59PM +0200, Gwan-gyeong Mun wrote:
> dc3co_exitline is indirectly called by intel_psr_compute_config().
> And it will not be changed until the next calling of
> intel_psr_compute_config(). So in order to use dc3co_exitline without
> intel_crtc_state on other psr internal function, it moves dc3co_exitline
> variable to struct intel_psr.
> And it removes a dc3co_enabled variable from struct intel_psr.
> =

> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h |  3 +--
>  drivers/gpu/drm/i915/display/intel_psr.c           | 11 +++++------
>  2 files changed, 6 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 1a76e1d9de7a..f69bd1caebbf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1002,7 +1002,6 @@ struct intel_crtc_state {
>  	bool has_psr;
>  	bool has_psr2;
>  	bool enable_psr2_sel_fetch;
> -	u32 dc3co_exitline;
>  =

>  	/*
>  	 * Frequence the dpll for the port should run at. Differs from the
> @@ -1453,7 +1452,7 @@ struct intel_psr {
>  	bool sink_not_reliable;
>  	bool irq_aux_error;
>  	u16 su_x_granularity;
> -	bool dc3co_enabled;
> +	u32 dc3co_exitline;
>  	u32 dc3co_exit_delay;
>  	struct delayed_work dc3co_work;
>  	struct drm_dp_vsc_sdp vsc;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index cd434285e3b7..976826653143 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -637,7 +637,7 @@ static void tgl_dc3co_disable_work(struct work_struct=
 *work)
>  =

>  static void tgl_disallow_dc3co_on_psr2_exit(struct intel_dp *intel_dp)
>  {
> -	if (!intel_dp->psr.dc3co_enabled)
> +	if (!intel_dp->psr.dc3co_exitline)
>  		return;
>  =

>  	cancel_delayed_work(&intel_dp->psr.dc3co_work);
> @@ -679,7 +679,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *in=
tel_dp,
>  	if (drm_WARN_ON(&dev_priv->drm, exit_scanlines > crtc_vdisplay))
>  		return;
>  =

> -	crtc_state->dc3co_exitline =3D crtc_vdisplay - exit_scanlines;
> +	intel_dp->psr.dc3co_exitline =3D crtc_vdisplay - exit_scanlines;

Thou shalt not mutate externally visible state in .compute_config().
You either want to make a copy of it or just compute it on the spot in
the psr_enable(). The first option is a good choice when you can also
hook into into the readout+state checker.

>  }
>  =

>  static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> @@ -938,7 +938,7 @@ static void intel_psr_enable_source(struct intel_dp *=
intel_dp,
>  =

>  	psr_irq_control(intel_dp);
>  =

> -	if (crtc_state->dc3co_exitline) {
> +	if (intel_dp->psr.dc3co_exitline) {
>  		u32 val;
>  =

>  		/*
> @@ -947,7 +947,7 @@ static void intel_psr_enable_source(struct intel_dp *=
intel_dp,
>  		 */
>  		val =3D intel_de_read(dev_priv, EXITLINE(cpu_transcoder));
>  		val &=3D ~EXITLINE_MASK;
> -		val |=3D crtc_state->dc3co_exitline << EXITLINE_SHIFT;
> +		val |=3D intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT;
>  		val |=3D EXITLINE_ENABLE;
>  		intel_de_write(dev_priv, EXITLINE(cpu_transcoder), val);
>  	}
> @@ -972,7 +972,6 @@ static void intel_psr_enable_locked(struct intel_dp *=
intel_dp,
>  	intel_dp->psr.psr2_enabled =3D crtc_state->has_psr2;
>  	intel_dp->psr.busy_frontbuffer_bits =3D 0;
>  	intel_dp->psr.pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> -	intel_dp->psr.dc3co_enabled =3D !!crtc_state->dc3co_exitline;
>  	intel_dp->psr.transcoder =3D crtc_state->cpu_transcoder;
>  	/* DC5/DC6 requires at least 6 idle frames */
>  	val =3D usecs_to_jiffies(intel_get_frame_time_us(crtc_state) * 6);
> @@ -1761,7 +1760,7 @@ tgl_dc3co_flush(struct intel_dp *intel_dp, unsigned=
 int frontbuffer_bits,
>  {
>  	mutex_lock(&intel_dp->psr.lock);
>  =

> -	if (!intel_dp->psr.dc3co_enabled)
> +	if (!intel_dp->psr.dc3co_exitline)
>  		goto unlock;
>  =

>  	if (!intel_dp->psr.psr2_enabled || !intel_dp->psr.active)
> -- =

> 2.30.1
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
