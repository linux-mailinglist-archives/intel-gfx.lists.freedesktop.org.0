Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E230D2FF85B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 00:02:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 558E26E975;
	Thu, 21 Jan 2021 23:02:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC5AD6E975
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 23:02:47 +0000 (UTC)
IronPort-SDR: gDbMVqPqWmKz4LauikaK75pFDpYphpcj7eRLRtKRJobjtZULeFt+HZS718Fr0iv000QCEg5U7Z
 q59DFAXtjWMw==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="166458724"
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="166458724"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:02:47 -0800
IronPort-SDR: UHQnurMkkvj8WN1svTEHEr7VXufS34fABV4w9fiZJp6XdQPX2FZIVzOlf3WYzbfvpvBzHFjZk4
 R/VrkCTYewuA==
X-IronPort-AV: E=Sophos;i="5.79,365,1602572400"; d="scan'208";a="403381167"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 15:02:47 -0800
Date: Thu, 21 Jan 2021 15:07:15 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210121230715.GG26641@labuser-Z97X-UD5H>
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
 <20210113220935.4151-6-manasi.d.navare@intel.com>
 <20210121225209.GB26331@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210121225209.GB26331@labuser-Z97X-UD5H>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v4 05/18] drm/i915: Extract
 intel_crtc_scanlines_since_frame_timestamp()
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

On Thu, Jan 21, 2021 at 02:52:11PM -0800, Navare, Manasi wrote:
> On Wed, Jan 13, 2021 at 02:09:22PM -0800, Manasi Navare wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Extract intel_crtc_scanlines_since_frame_timestamp() from
> > __intel_get_crtc_scanline_from_timestamp(). We'll reuse this
> > for VRR vblank timestamps.
> =

> I dont see the intel_crtc_scanlines_since_frame_timestamp() getting used
> later in the series.
> Should this be moved to the intel display poller rest of the patches you =
might have?
> =

> Manasi

Oh actually I did find where its being used to calculate the vblank timesta=
mps

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> =

> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 38 +++++++++++++++++++++------------
> >  1 file changed, 24 insertions(+), 14 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i91=
5_irq.c
> > index dd1971040bbc..8505ceca87d5 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -718,25 +718,15 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
> >  	return intel_uncore_read(&dev_priv->uncore, PIPE_FRMCOUNT_G4X(pipe));
> >  }
> >  =

> > -/*
> > - * On certain encoders on certain platforms, pipe
> > - * scanline register will not work to get the scanline,
> > - * since the timings are driven from the PORT or issues
> > - * with scanline register updates.
> > - * This function will use Framestamp and current
> > - * timestamp registers to calculate the scanline.
> > - */
> > -static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc =
*crtc)
> > +static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crt=
c *crtc)
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> >  	struct drm_vblank_crtc *vblank =3D
> >  		&crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
> >  	const struct drm_display_mode *mode =3D &vblank->hwmode;
> > -	u32 vblank_start =3D mode->crtc_vblank_start;
> > -	u32 vtotal =3D mode->crtc_vtotal;
> >  	u32 htotal =3D mode->crtc_htotal;
> >  	u32 clock =3D mode->crtc_clock;
> > -	u32 scanline, scan_prev_time, scan_curr_time, scan_post_time;
> > +	u32 scan_prev_time, scan_curr_time, scan_post_time;
> >  =

> >  	/*
> >  	 * To avoid the race condition where we might cross into the
> > @@ -763,8 +753,28 @@ static u32 __intel_get_crtc_scanline_from_timestam=
p(struct intel_crtc *crtc)
> >  						  PIPE_FRMTMSTMP(crtc->pipe));
> >  	} while (scan_post_time !=3D scan_prev_time);
> >  =

> > -	scanline =3D div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
> > -					clock), 1000 * htotal);
> > +	return div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
> > +				   clock), 1000 * htotal);
> > +}
> > +
> > +/*
> > + * On certain encoders on certain platforms, pipe
> > + * scanline register will not work to get the scanline,
> > + * since the timings are driven from the PORT or issues
> > + * with scanline register updates.
> > + * This function will use Framestamp and current
> > + * timestamp registers to calculate the scanline.
> > + */
> > +static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc =
*crtc)
> > +{
> > +	struct drm_vblank_crtc *vblank =3D
> > +		&crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
> > +	const struct drm_display_mode *mode =3D &vblank->hwmode;
> > +	u32 vblank_start =3D mode->crtc_vblank_start;
> > +	u32 vtotal =3D mode->crtc_vtotal;
> > +	u32 scanline;
> > +
> > +	scanline =3D intel_crtc_scanlines_since_frame_timestamp(crtc);
> >  	scanline =3D min(scanline, vtotal - 1);
> >  	scanline =3D (scanline + vblank_start) % vtotal;
> >  =

> > -- =

> > 2.19.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
