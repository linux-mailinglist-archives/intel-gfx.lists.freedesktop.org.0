Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8032C35159D
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 16:23:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 638D66ECC4;
	Thu,  1 Apr 2021 14:23:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D0C96ECC4
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Apr 2021 14:23:04 +0000 (UTC)
IronPort-SDR: rQhDq6cjtKGwzKbvhpcADoHnuSgQH7RDLPziyp3Nj2iUTaV0qN03VoSRGmNHDz3pVAjZfWOUEQ
 GyCOADI5QkKA==
X-IronPort-AV: E=McAfee;i="6000,8403,9941"; a="191732846"
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="191732846"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2021 07:23:03 -0700
IronPort-SDR: 2bQH3CqBvrP8fnZw/D9shWRz1VtSvakBFVhezWwYqzaAbRNTW795IB4YO5otX8EeJl8L/LBDvN
 oyQGyk2hD6dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,296,1610438400"; d="scan'208";a="446278680"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 01 Apr 2021 07:23:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 01 Apr 2021 17:23:01 +0300
Date: Thu, 1 Apr 2021 17:23:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YGXXRQ3TbenjHh8/@intel.com>
References: <20210330184254.6290-1-ville.syrjala@linux.intel.com>
 <20210330184254.6290-2-ville.syrjala@linux.intel.com>
 <87k0pmmafb.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87k0pmmafb.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Reuse intel_adjusted_rate()
 for pfit pixel rate adjustment
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

On Thu, Apr 01, 2021 at 03:55:20PM +0300, Jani Nikula wrote:
> On Tue, 30 Mar 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Replace the hand rolled pfit downscale calculations with
> > intel_adjusted_rate().
> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_atomic_plane.c |  6 ++---
> >  .../gpu/drm/i915/display/intel_atomic_plane.h |  4 ++++
> >  drivers/gpu/drm/i915/display/intel_display.c  | 23 +++++--------------
> >  3 files changed, 13 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/driver=
s/gpu/drm/i915/display/intel_atomic_plane.c
> > index 3f830b70b0c1..5f0a5ea474eb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -133,9 +133,9 @@ intel_plane_destroy_state(struct drm_plane *plane,
> >  	kfree(plane_state);
> >  }
> >  =

> > -static unsigned int intel_adjusted_rate(const struct drm_rect *src,
> > -					const struct drm_rect *dst,
> > -					unsigned int rate)
> > +unsigned int intel_adjusted_rate(const struct drm_rect *src,
> > +				 const struct drm_rect *dst,
> > +				 unsigned int rate)
> >  {
> >  	unsigned int src_w, src_h, dst_w, dst_h;
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/driver=
s/gpu/drm/i915/display/intel_atomic_plane.h
> > index 5c78a087ed86..dc4d05e75e1c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > @@ -10,6 +10,7 @@
> >  =

> >  struct drm_plane;
> >  struct drm_property;
> > +struct drm_rect;
> >  struct intel_atomic_state;
> >  struct intel_crtc;
> >  struct intel_crtc_state;
> > @@ -18,6 +19,9 @@ struct intel_plane_state;
> >  =

> >  extern const struct drm_plane_helper_funcs intel_plane_helper_funcs;
> >  =

> > +unsigned int intel_adjusted_rate(const struct drm_rect *src,
> > +				 const struct drm_rect *dst,
> > +				 unsigned int rate);
> >  unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crt=
c_state,
> >  				    const struct intel_plane_state *plane_state);
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index d74b263c5f4e..472e691286c6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -3978,7 +3978,7 @@ static bool intel_crtc_supports_double_wide(const=
 struct intel_crtc *crtc)
> >  static u32 ilk_pipe_pixel_rate(const struct intel_crtc_state *crtc_sta=
te)
> >  {
> >  	u32 pixel_rate =3D crtc_state->hw.pipe_mode.crtc_clock;
> > -	unsigned int pipe_w, pipe_h, pfit_w, pfit_h;
> > +	struct drm_rect src;
> >  =

> >  	/*
> >  	 * We only use IF-ID interlacing. If we ever use
> > @@ -3988,23 +3988,12 @@ static u32 ilk_pipe_pixel_rate(const struct int=
el_crtc_state *crtc_state)
> >  	if (!crtc_state->pch_pfit.enabled)
> >  		return pixel_rate;
> >  =

> > -	pipe_w =3D crtc_state->pipe_src_w;
> > -	pipe_h =3D crtc_state->pipe_src_h;
> > +	drm_rect_init(&src, 0, 0,
> > +		      crtc_state->pipe_src_w << 16,
> > +		      crtc_state->pipe_src_h << 16);
> >  =

> > -	pfit_w =3D drm_rect_width(&crtc_state->pch_pfit.dst);
> > -	pfit_h =3D drm_rect_height(&crtc_state->pch_pfit.dst);
> > -
> > -	if (pipe_w < pfit_w)
> > -		pipe_w =3D pfit_w;
> =

> So this is src_w =3D max(src_w, dst_w) and gets turned into dst_w =3D
> min(src_w, dst_w) instead? Ditto for _h. Does it end up being the same
> thing after the division?

Yes. The min/max just gets rid of the upscaling case,
ie. causes the division to be just x/x=3D=3D1 when dst>src.
Doesn't matter if we use the min or max approach to
achieve that result.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
