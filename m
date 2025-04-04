Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 293FBA7BDA7
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 15:21:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CFF10EBAC;
	Fri,  4 Apr 2025 13:21:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H5EQi0Mj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE3A510EBAC
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Apr 2025 13:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743772917; x=1775308917;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=GbEORVM1BEPED3RrsWMWznLyA4eRzdyXOTAPhGjU1c4=;
 b=H5EQi0Mjb637s83Nbi58PBvPBwh1MdvgNeRyIjS7iardw/q7oFYZyNO8
 P8E2HJ87XhQoTEwuvKP6u+ZvqcE0eJ//sjvDWI2+s61MJ3BWONpmV9KBW
 SRzV/2zQTbi726KYHOKaRPBbjrOkYnV9x/6Qyj25c2Ukxy2bfZuglF7AV
 sraQmo3I/uHj1MjzcUL+5KfGux1umMvWtphvpizJ2jR4qSD7CByXPyRIk
 uQ//iakHn8Y5injiuNHlWJrKffX6DUdb4CQvUiRIEuxYm9IIAgXSDpAcZ
 NuwZbkgVohyAo3OybJlXn5KnV9plCyar3lKUDBlI8dhj0i4O32jeo1JrQ w==;
X-CSE-ConnectionGUID: +ri7u5uUSJy6y6wVoUm+Hw==
X-CSE-MsgGUID: gWzxb9MnSvSH9JDlTVjORw==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="45102510"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="45102510"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 06:21:56 -0700
X-CSE-ConnectionGUID: 8ZIkDkp0SaeE79YfjHCXdw==
X-CSE-MsgGUID: zWxzRX7YQXSmrVZ3ivUpVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="128220345"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.234])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 06:21:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915/dsi: Assert that vfp+vsync+vbp == vtotal
 on BXT/GLK
In-Reply-To: <20250314150136.22564-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
 <20250314150136.22564-3-ville.syrjala@linux.intel.com>
Date: Fri, 04 Apr 2025 16:21:51 +0300
Message-ID: <87a58wyscw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 14 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Windows code seems to do some dodgy looking +/-1 adjustments
> to some of the vertical timings. Not sure if that's correct
> or not, but let's at least cross check some of the values
> we got from the hardware to double check whether the GOP
> did the same or not.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 661de51dfd22..cdab04727c7d 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1024,7 +1024,7 @@ static void bxt_dsi_get_pipe_config(struct intel_en=
coder *encoder,
>  	unsigned int lane_count =3D intel_dsi->lane_count;
>  	unsigned int bpp, fmt;
>  	enum port port;
> -	u16 hactive, hfp, hsync, hbp, vfp, vsync;
> +	u16 hactive, hfp, hsync, hbp, vfp, vsync, vbp;
>  	u16 hfp_sw, hsync_sw, hbp_sw;
>  	u16 crtc_htotal_sw, crtc_hsync_start_sw, crtc_hsync_end_sw,
>  				crtc_hblank_start_sw, crtc_hblank_end_sw;
> @@ -1088,6 +1088,7 @@ static void bxt_dsi_get_pipe_config(struct intel_en=
coder *encoder,
>=20=20
>  	/* vertical values are in terms of lines */
>  	vfp =3D intel_de_read(display, MIPI_VFP_COUNT(display, port));
> +	vbp =3D intel_de_read(display, MIPI_VBP_COUNT(display, port));
>  	vsync =3D intel_de_read(display, MIPI_VSYNC_PADDING_COUNT(display, port=
));
>=20=20
>  	adjusted_mode->crtc_htotal =3D hactive + hfp + hsync + hbp;
> @@ -1096,6 +1097,8 @@ static void bxt_dsi_get_pipe_config(struct intel_en=
coder *encoder,
>  	adjusted_mode->crtc_hblank_start =3D adjusted_mode->crtc_hdisplay;
>  	adjusted_mode->crtc_hblank_end =3D adjusted_mode->crtc_htotal;
>=20=20
> +	drm_WARN_ON(display->drm, adjusted_mode->crtc_vdisplay +
> +		    vfp + vsync + vbp !=3D adjusted_mode->crtc_vtotal);
>  	adjusted_mode->crtc_vsync_start =3D vfp + adjusted_mode->crtc_vdisplay;
>  	adjusted_mode->crtc_vsync_end =3D vsync + adjusted_mode->crtc_vsync_sta=
rt;
>  	adjusted_mode->crtc_vblank_start =3D adjusted_mode->crtc_vdisplay;

--=20
Jani Nikula, Intel
