Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 382EC2B0E6E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 20:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C416E406;
	Thu, 12 Nov 2020 19:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 829276E406
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 19:45:51 +0000 (UTC)
IronPort-SDR: meTT5N1l4Yg3KKjYy9XnLrWMFwnVlpNfH+H5Q6ID3qSzQn675+jPgPi9UybvYvaD4uwkq6yaLL
 Mva875Ez9M1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="150219616"
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="150219616"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:45:50 -0800
IronPort-SDR: nCt5B7F8tY23x/3FDymCKTEhIZhtZbMMuw8RJ9Ea5dyezcfoWPl0/zLZ0BNpua6LTaJQIjUaKP
 BGE0NK3E6DDA==
X-IronPort-AV: E=Sophos;i="5.77,472,1596524400"; d="scan'208";a="474396816"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 11:45:50 -0800
Date: Thu, 12 Nov 2020 11:48:12 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201112194812.GC15399@labuser-Z97X-UD5H>
References: <20201112191718.16683-1-ville.syrjala@linux.intel.com>
 <20201112191718.16683-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112191718.16683-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Move hw.active assignment
 into intel_crtc_get_pipe_config()
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

On Thu, Nov 12, 2020 at 09:17:15PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> No reason to make the callers of intel_crtc_get_pipe_config()
> populate hw.active. Let's do it in intel_crtc_get_pipe_config()
> itself. hw.enable we leave up to the callers since it's slightly
> different for readout vs. state check.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a8287414937c..889642bef192 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11412,7 +11412,12 @@ static bool intel_crtc_get_pipe_config(struct in=
tel_crtc_state *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  =

> -	return i915->display.get_pipe_config(crtc, crtc_state);
> +	if (!i915->display.get_pipe_config(crtc, crtc_state))
> +		return false;
> +
> +	crtc_state->hw.active =3D true;
> +
> +	return true;

In that case this function can just return a void right, we are not catchin=
g the return value in the caller anyways now

With that change

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

>  }
>  =

>  static u32 intel_cursor_base(const struct intel_plane_state *plane_state)
> @@ -14430,7 +14435,7 @@ verify_crtc_state(struct intel_crtc *crtc,
>  =

>  	pipe_config->hw.enable =3D new_crtc_state->hw.enable;
>  =

> -	pipe_config->hw.active =3D intel_crtc_get_pipe_config(pipe_config);
> +	intel_crtc_get_pipe_config(pipe_config);
>  =

>  	/* we keep both pipes enabled on 830 */
>  	if (IS_I830(dev_priv) && pipe_config->hw.active)
> @@ -18742,8 +18747,9 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  		intel_crtc_free_hw_state(crtc_state);
>  		intel_crtc_state_reset(crtc_state, crtc);
>  =

> -		crtc_state->hw.active =3D crtc_state->hw.enable =3D
> -			intel_crtc_get_pipe_config(crtc_state);
> +		intel_crtc_get_pipe_config(crtc_state);
> +
> +		crtc_state->hw.enable =3D crtc_state->hw.active;
>  =

>  		crtc->base.enabled =3D crtc_state->hw.enable;
>  		crtc->active =3D crtc_state->hw.active;
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
