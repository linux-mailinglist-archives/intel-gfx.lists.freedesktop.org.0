Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADD61B5F87
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 17:38:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2D376E8DE;
	Thu, 23 Apr 2020 15:38:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6D616E8DE
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 15:38:52 +0000 (UTC)
IronPort-SDR: be+nl/OkF6BuNgNgU1hl7r/9HI9TpZLtxu6cCQ2f2i/OlvNmFQKP/yghl7cdBTZPSA8uPSf/pR
 BNEOW1yBRDyg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 08:38:52 -0700
IronPort-SDR: 00GJvyX2W5A4Y1QnHv05sKnlWJhK1GTqMEMmjF7QzQw/6AxHTSL/Cj46wOwsCgMUWKvwps+Ecm
 4sl5rNFebmOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="274268663"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 23 Apr 2020 08:38:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Apr 2020 18:38:46 +0300
Date: Thu, 23 Apr 2020 18:38:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200423153846.GE6112@intel.com>
References: <20200422161917.17389-1-ville.syrjala@linux.intel.com>
 <20200422161917.17389-3-ville.syrjala@linux.intel.com>
 <20200422192005.GA28167@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422192005.GA28167@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 3/6] drm/i915: Use drm_rect to store the
 pfit window pos/size
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

On Wed, Apr 22, 2020 at 12:20:06PM -0700, Manasi Navare wrote:
> On Wed, Apr 22, 2020 at 07:19:14PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Make things a bit more abstract by replacing the pch_pfit.pos/size
> > raw register values with a drm_rect. Makes it slighly more convenient
> > to eg. compute the scaling factors.
> > =

> > v2: Use drm_rect_init()
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 101 +++++++++++-------
> >  .../drm/i915/display/intel_display_types.h    |   3 +-
> >  drivers/gpu/drm/i915/display/intel_panel.c    |  13 ++-
> >  3 files changed, 67 insertions(+), 50 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 96d0768ecf5d..6bb87965801e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6096,10 +6096,8 @@ static int skl_update_scaler_crtc(struct intel_c=
rtc_state *crtc_state)
> >  	int width, height;
> >  =

> >  	if (crtc_state->pch_pfit.enabled) {
> > -		u32 pfit_size =3D crtc_state->pch_pfit.size;
> > -
> > -		width =3D pfit_size >> 16;
> > -		height =3D pfit_size & 0xffff;
> > +		width =3D drm_rect_width(&crtc_state->pch_pfit.dst);
> > +		height =3D drm_rect_height(&crtc_state->pch_pfit.dst);
> >  	} else {
> >  		width =3D adjusted_mode->crtc_hdisplay;
> >  		height =3D adjusted_mode->crtc_vdisplay;
> > @@ -6219,11 +6217,20 @@ static void skl_pfit_enable(const struct intel_=
crtc_state *crtc_state)
> >  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > -	enum pipe pipe =3D crtc->pipe;
> >  	const struct intel_crtc_scaler_state *scaler_state =3D
> >  		&crtc_state->scaler_state;
> > +	struct drm_rect src =3D {
> > +		.x2 =3D crtc_state->pipe_src_w << 16,
> > +		.y2 =3D crtc_state->pipe_src_h << 16,
> =

> Its not clear to me why we left shift by 16 for both src_w and src_h? Whe=
re can I find the format of
> how this is stored?
> =

> Other than that everything else looks good in terms of replacing with drm=
_rect()
> =

> Manasi
> =

<snip>
> > -	hscale =3D (crtc_state->pipe_src_w << 16) / pfit_w;
> > -	vscale =3D (crtc_state->pipe_src_h << 16) / pfit_h;

Same <<16 was here already. skl_scaler_calc_phase() wants
the scaling factor in .16 binary fixed point. Also =

drm_rect_calc_{h,v}scale() assumes the src coordinates
to be .16 and returns the result in .16 as well.

> > +	hscale =3D drm_rect_calc_hscale(&src, dst, 0, INT_MAX);
> > +	vscale =3D drm_rect_calc_vscale(&src, dst, 0, INT_MAX);
> >  =

> >  	uv_rgb_hphase =3D skl_scaler_calc_phase(1, hscale, false);
> >  	uv_rgb_vphase =3D skl_scaler_calc_phase(1, vscale, false);
-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
