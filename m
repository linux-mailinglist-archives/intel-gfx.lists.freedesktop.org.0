Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F6E2FF7F4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 23:32:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEFF46E928;
	Thu, 21 Jan 2021 22:32:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EBFA6E928
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 22:32:28 +0000 (UTC)
IronPort-SDR: UcnRcFChVYfVpwIYzaPUaEPF8N+kdsSfqVIsLFqJvQBJCeBTODtt7l3GnyTCvl6FOys+v3UnCG
 y+gEvA1eYIiQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="178578874"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="178578874"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 14:32:26 -0800
IronPort-SDR: 1BY1r/Sw42gYTj6Pdj255Y4gwGUCaJjGvIr4rhm8pAMihmmQC87JYI2fCewtfQxxRMOG29PMpl
 c7vP7mCfdheg==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="356683161"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 14:32:26 -0800
Date: Thu, 21 Jan 2021 14:36:53 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210121223653.GA26331@labuser-Z97X-UD5H>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
 <20210113220935.4151-5-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113220935.4151-5-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 04/18] drm/i915: Extract
 intel_mode_vblank_start()
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

On Wed, Jan 13, 2021 at 02:09:21PM -0800, Manasi Navare wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> We want to calculate the vblank_start for vblank evasion
> differently for vrr. To make that nicer lets first extract
> the current non-vrr case to a helper.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index cf3589fd0ddb..ced6af7cdc84 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -62,6 +62,16 @@ int intel_usecs_to_scanlines(const struct drm_display_=
mode *adjusted_mode,
>  			    1000 * adjusted_mode->crtc_htotal);
>  }
>  =

> +static int intel_mode_vblank_start(const struct drm_display_mode *mode)
> +{
> +	int vblank_start =3D mode->crtc_vblank_start;
> +
> +	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
> +		vblank_start =3D DIV_ROUND_UP(vblank_start, 2);
> +
> +	return vblank_start;
> +}
> +
>  /**
>   * intel_pipe_update_start() - start update of a set of display registers
>   * @new_crtc_state: the new crtc state
> @@ -90,9 +100,7 @@ void intel_pipe_update_start(const struct intel_crtc_s=
tate *new_crtc_state)
>  	if (new_crtc_state->uapi.async_flip)
>  		return;
>  =

> -	vblank_start =3D adjusted_mode->crtc_vblank_start;
> -	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> -		vblank_start =3D DIV_ROUND_UP(vblank_start, 2);
> +	vblank_start =3D intel_mode_vblank_start(adjusted_mode);
>  =

>  	/* FIXME needs to be calibrated sensibly */
>  	min =3D vblank_start - intel_usecs_to_scanlines(adjusted_mode,
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
