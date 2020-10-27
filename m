Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE1A29C9C2
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 21:09:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 460446E0DB;
	Tue, 27 Oct 2020 20:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 078736E0DB
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 20:09:24 +0000 (UTC)
IronPort-SDR: eSopvNE5DgZqxQA2xiSLuiDTYeeIO0ceKgTuNiKcji4BbhxPDdDdDZodWrm2Am8+/eYjFj8IY3
 r0WEwpjb7ADA==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="232339988"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="232339988"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 13:09:23 -0700
IronPort-SDR: ws42vJ/8fkeUDEwp0Wxbx9BgrKOSzCDHSHlQQEj0y2ApZVWrGX1XYEFzTkk3ehRmA7N9umNXhq
 hKz0hwE3Cn9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="355670792"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 27 Oct 2020 13:09:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 27 Oct 2020 22:09:20 +0200
Date: Tue, 27 Oct 2020 22:09:20 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201027200920.GS6112@intel.com>
References: <20201027193034.28721-1-manasi.d.navare@intel.com>
 <20201027193034.28721-5-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027193034.28721-5-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/dp: Call hw.adjusted_mode as
 hw_mode for clarity
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

On Tue, Oct 27, 2020 at 12:30:33PM -0700, Manasi Navare wrote:
> No functional changes just use hw_mode to retrive
> hw.adjusted_mode during HW state readout for clarity
> in bigjoiner case.

Still don't understnad what this has to do with bigjoiner. Looks
like a simple introduction of a strangely named local variable to
me?

> =

> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 +++++++++++---------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index cabda5a02e9e..b000dd68977f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9119,20 +9119,22 @@ static void intel_get_pipe_src_size(struct intel_=
crtc *crtc,
>  void intel_mode_from_pipe_config(struct drm_display_mode *mode,
>  				 struct intel_crtc_state *pipe_config)
>  {
> -	mode->hdisplay =3D pipe_config->hw.adjusted_mode.crtc_hdisplay;
> -	mode->htotal =3D pipe_config->hw.adjusted_mode.crtc_htotal;
> -	mode->hsync_start =3D pipe_config->hw.adjusted_mode.crtc_hsync_start;
> -	mode->hsync_end =3D pipe_config->hw.adjusted_mode.crtc_hsync_end;
> +	struct drm_display_mode *hw_mode =3D &pipe_config->hw.adjusted_mode;
>  =

> -	mode->vdisplay =3D pipe_config->hw.adjusted_mode.crtc_vdisplay;
> -	mode->vtotal =3D pipe_config->hw.adjusted_mode.crtc_vtotal;
> -	mode->vsync_start =3D pipe_config->hw.adjusted_mode.crtc_vsync_start;
> -	mode->vsync_end =3D pipe_config->hw.adjusted_mode.crtc_vsync_end;
> +	mode->hdisplay =3D hw_mode->crtc_hdisplay;
> +	mode->htotal =3D hw_mode->crtc_htotal;
> +	mode->hsync_start =3D hw_mode->crtc_hsync_start;
> +	mode->hsync_end =3D hw_mode->crtc_hsync_end;
>  =

> -	mode->flags =3D pipe_config->hw.adjusted_mode.flags;
> +	mode->vdisplay =3D hw_mode->crtc_vdisplay;
> +	mode->vtotal =3D hw_mode->crtc_vtotal;
> +	mode->vsync_start =3D hw_mode->crtc_vsync_start;
> +	mode->vsync_end =3D hw_mode->crtc_vsync_end;
> +
> +	mode->flags =3D hw_mode->flags;
>  	mode->type =3D DRM_MODE_TYPE_DRIVER;
>  =

> -	mode->clock =3D pipe_config->hw.adjusted_mode.crtc_clock;
> +	mode->clock =3D hw_mode->crtc_clock;
>  =

>  	drm_mode_set_name(mode);
>  }
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
