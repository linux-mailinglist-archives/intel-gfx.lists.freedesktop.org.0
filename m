Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C662FF859
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 00:01:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0344A6E974;
	Thu, 21 Jan 2021 23:01:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1052C6E974
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 23:01:53 +0000 (UTC)
IronPort-SDR: 5f+Hj3mSK+5C9LaI4Hzgv4i8bhXKqdc7VYy2r62vCwnGaLwCt185LXEgC5xyHbAJrXzwU6WmJ9
 q8PUmvY0OKDw==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="158540364"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="158540364"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:01:52 -0800
IronPort-SDR: LC7fsthVIzLR3BM7CA4BW92VTJ8A+sLZkzfP6fiF1vFpviedl1zlo5StokNEnidSkSKpnqbEs6
 GQ4JTUfAaslQ==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="467648023"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:01:52 -0800
Date: Thu, 21 Jan 2021 15:06:20 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210121230619.GF26641@labuser-Z97X-UD5H>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
 <20210113220935.4151-19-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113220935.4151-19-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 18/18] drm/i915: Fix vblank evasion with
 vrr
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

On Wed, Jan 13, 2021 at 02:09:35PM -0800, Manasi Navare wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> With vrr enabled the hardware no longer latches the registers
> automagically at vblank start. The point at which it will do the
> latching even when no push has been sent is the vmax decision
> boundary. That is the thing we need to evade to avoid our
> register latching to get split between two frames.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>

Makes sense to us vmax vblank start here with vrr enable

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_sprite.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 0e82d1629d2d..530ce0497559 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -101,7 +101,10 @@ void intel_pipe_update_start(const struct intel_crtc=
_state *new_crtc_state)
>  	if (new_crtc_state->uapi.async_flip)
>  		return;
>  =

> -	vblank_start =3D intel_mode_vblank_start(adjusted_mode);
> +	if (new_crtc_state->vrr.enable)
> +		vblank_start =3D intel_vrr_vmax_vblank_start(new_crtc_state);
> +	else
> +		vblank_start =3D intel_mode_vblank_start(adjusted_mode);
>  =

>  	/* FIXME needs to be calibrated sensibly */
>  	min =3D vblank_start - intel_usecs_to_scanlines(adjusted_mode,
> -- =

> 2.19.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
