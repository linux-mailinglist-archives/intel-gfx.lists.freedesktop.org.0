Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4667A29CA80
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Oct 2020 21:41:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B44B76EC52;
	Tue, 27 Oct 2020 20:41:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD906EC48
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Oct 2020 20:41:22 +0000 (UTC)
IronPort-SDR: MGuS3vt2jRP96d3/sO8zOkvQGPyYcxzKtR9Bs+giOy9xqHy4+MqL30OR2z94kGwYl8AYJv6ji3
 Op44yYDjg1yA==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="252859476"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="252859476"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 13:41:22 -0700
IronPort-SDR: hNI7pFkHNHzeHT4aHQPnoSJJzMB+6ea5lAVaKZ1lq+kEl4S6srQj2VKwBiQkD+aurwz6J9PO+d
 XGf4npb3d15w==
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="350736312"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 13:41:21 -0700
Date: Tue, 27 Oct 2020 13:43:15 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201027204315.GA29088@labuser-Z97X-UD5H>
References: <20201027193034.28721-1-manasi.d.navare@intel.com>
 <20201027193034.28721-5-manasi.d.navare@intel.com>
 <20201027200920.GS6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027200920.GS6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

On Tue, Oct 27, 2020 at 10:09:20PM +0200, Ville Syrj=E4l=E4 wrote:
> On Tue, Oct 27, 2020 at 12:30:33PM -0700, Manasi Navare wrote:
> > No functional changes just use hw_mode to retrive
> > hw.adjusted_mode during HW state readout for clarity
> > in bigjoiner case.
> =

> Still don't understnad what this has to do with bigjoiner. Looks
> like a simple introduction of a strangely named local variable to
> me?

SHould I just drop this then? Or just reword the commit message to remove
bigjoiner related stuff?

Manasi
> =

> > =

> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 22 +++++++++++---------
> >  1 file changed, 12 insertions(+), 10 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index cabda5a02e9e..b000dd68977f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -9119,20 +9119,22 @@ static void intel_get_pipe_src_size(struct inte=
l_crtc *crtc,
> >  void intel_mode_from_pipe_config(struct drm_display_mode *mode,
> >  				 struct intel_crtc_state *pipe_config)
> >  {
> > -	mode->hdisplay =3D pipe_config->hw.adjusted_mode.crtc_hdisplay;
> > -	mode->htotal =3D pipe_config->hw.adjusted_mode.crtc_htotal;
> > -	mode->hsync_start =3D pipe_config->hw.adjusted_mode.crtc_hsync_start;
> > -	mode->hsync_end =3D pipe_config->hw.adjusted_mode.crtc_hsync_end;
> > +	struct drm_display_mode *hw_mode =3D &pipe_config->hw.adjusted_mode;
> >  =

> > -	mode->vdisplay =3D pipe_config->hw.adjusted_mode.crtc_vdisplay;
> > -	mode->vtotal =3D pipe_config->hw.adjusted_mode.crtc_vtotal;
> > -	mode->vsync_start =3D pipe_config->hw.adjusted_mode.crtc_vsync_start;
> > -	mode->vsync_end =3D pipe_config->hw.adjusted_mode.crtc_vsync_end;
> > +	mode->hdisplay =3D hw_mode->crtc_hdisplay;
> > +	mode->htotal =3D hw_mode->crtc_htotal;
> > +	mode->hsync_start =3D hw_mode->crtc_hsync_start;
> > +	mode->hsync_end =3D hw_mode->crtc_hsync_end;
> >  =

> > -	mode->flags =3D pipe_config->hw.adjusted_mode.flags;
> > +	mode->vdisplay =3D hw_mode->crtc_vdisplay;
> > +	mode->vtotal =3D hw_mode->crtc_vtotal;
> > +	mode->vsync_start =3D hw_mode->crtc_vsync_start;
> > +	mode->vsync_end =3D hw_mode->crtc_vsync_end;
> > +
> > +	mode->flags =3D hw_mode->flags;
> >  	mode->type =3D DRM_MODE_TYPE_DRIVER;
> >  =

> > -	mode->clock =3D pipe_config->hw.adjusted_mode.crtc_clock;
> > +	mode->clock =3D hw_mode->crtc_clock;
> >  =

> >  	drm_mode_set_name(mode);
> >  }
> > -- =

> > 2.19.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
