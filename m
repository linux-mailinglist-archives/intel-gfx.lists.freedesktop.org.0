Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B949C268C7E
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 15:48:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8826F6E045;
	Mon, 14 Sep 2020 13:48:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286B46E1F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 13:48:38 +0000 (UTC)
IronPort-SDR: FVZGEB9POxbrAX5S6Z5UTsnRrmWBP54+TQBA+Qv/AyuhJw5Q3r8wl65Zu+qGDFk38CfSL4ws22
 aUzaLIt61pAQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9743"; a="139091614"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="139091614"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 06:48:37 -0700
IronPort-SDR: 0IIAygaBb9XBIWroyjiUYngHgoF1x5+u2cy8JnsN7+p+0cXlhlrGzOkpQ+MLTYs1KZKKTnnewt
 4wJvxI7WqLqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="345436176"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 14 Sep 2020 06:48:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Sep 2020 16:48:34 +0300
Date: Mon, 14 Sep 2020 16:48:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200914134834.GM6112@intel.com>
References: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
 <87ft7oyyvb.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87ft7oyyvb.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix g4x+ sprite dotclock
 limit for upscaling
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

On Fri, Sep 11, 2020 at 09:03:36PM +0300, Jani Nikula wrote:
> On Thu, 06 Feb 2020, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Even if we're not doing downscaling we should account for
> > some of the extra dotclock limitations for g4x+ sprites. In
> > particular we must never exceed the 90% rule, and with RGB
> > that limits actually drops to 80%.
> >
> > So instead of bailing out when upscaling let's clamp the
> > scaling factor appropriately and go through the rest of
> > calculation normally. By luck we already did the full
> > calculations for the 1:1 case.
> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_sprite.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/=
drm/i915/display/intel_sprite.c
> > index 7abeefe8dce5..6e2e22d9bbaa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -1611,8 +1611,7 @@ static int g4x_sprite_min_cdclk(const struct inte=
l_crtc_state *crtc_state,
> >  	hscale =3D drm_rect_calc_hscale(&plane_state->uapi.src,
> >  				      &plane_state->uapi.dst,
> >  				      0, INT_MAX);
> > -	if (hscale < 0x10000)
> > -		return pixel_rate;
> > +	hscale =3D max(hscale, 0x10000u);
> =

> It bugs me that drm_rect seems to be used for both integer and 16.16
> fixed point and whatnot.

In theory it can use any arbitrary precision. There are a few
functions which do assume .0 or .16 though.

> =

> It also gives me an uneasy feeling that hscale is uint while
> drm_rect_calc_hscale() may return -ERANGE... but I guess shouldn't
> happen.

Yeah, should not happen since we've already done this
same calculation (+check for <0) earlier. I've occasionally
pondered about stashing the h/vscale from that first check
into the plane state so we wouldn't have to redo it here.
But I never found sufficient motivation to actually do it.

> =

> All in all,
> =

> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Ta.

> =

> =

> >  =

> >  	/* Decimation steps at 2x,4x,8x,16x */
> >  	decimate =3D ilog2(hscale >> 16);
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
