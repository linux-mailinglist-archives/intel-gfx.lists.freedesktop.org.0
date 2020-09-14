Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 646E6268C6F
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 15:44:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFADA89DA9;
	Mon, 14 Sep 2020 13:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F00589DA9
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 13:44:16 +0000 (UTC)
IronPort-SDR: i5jEnvp+fAo+UpXMt4NChsZO3reJ6Q+HRohU+bNXbltcibzG0z9rXe248iX0qqx36geRq4d3yC
 uIFwq56VoDJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9743"; a="158361706"
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="158361706"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 06:44:16 -0700
IronPort-SDR: T6WWY13lCW4i2QVu+5Jp3vk46iZx6/B2pANuJ6F9vP81MetAzjSvurLf+j4Y2XHx9sKJZ5/ewY
 tu3Hs/u855oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,426,1592895600"; d="scan'208";a="343124155"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 14 Sep 2020 06:44:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 14 Sep 2020 16:44:13 +0300
Date: Mon, 14 Sep 2020 16:44:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200914134413.GL6112@intel.com>
References: <20200206201204.31704-1-ville.syrjala@linux.intel.com>
 <20200206201204.31704-2-ville.syrjala@linux.intel.com>
 <87d02syyf5.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d02syyf5.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Use fb->format->is_yuv for
 the g4x+ sprite RGB vs. YUV check
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

On Fri, Sep 11, 2020 at 09:13:18PM +0300, Jani Nikula wrote:
> On Thu, 06 Feb 2020, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > g4x+ sprites have an extra cdclk limitation listed for RGB formats.
> > For some random reason I chose to use cpp>=3D4 as the check for that.
> > While that does actually work let's deobfuscate it by checking
> > for !is_yuv instead. I suspect is_yuv didn't exist way back when
> > I originally write the code.
> =

> Mmh, there are formats with cpp >=3D 4 && is_yuv =3D=3D true making this =
look
> like a functional change... but I presume those are not relevant and/or
> this change is the right thing to do anyway.

This only applies to g4x/ilk/snb which only support
YUYV/etc. (cpp=3D=3D2), and 32/64bpp RGB (cpp=3D=3D4/8).

> =

> Acked-by: Jani Nikula <jani.nikula@intel.com>
> =

> >
> > Also drop the duplicate comment.
> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_sprite.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/=
drm/i915/display/intel_sprite.c
> > index 6e2e22d9bbaa..f95fe2c99468 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -1624,8 +1624,8 @@ static int g4x_sprite_min_cdclk(const struct inte=
l_crtc_state *crtc_state,
> >  	limit -=3D decimate;
> >  =

> >  	/* -10% for RGB */
> > -	if (fb->format->cpp[0] >=3D 4)
> > -		limit--; /* -10% for RGB */
> > +	if (!fb->format->is_yuv)
> > +		limit--;
> >  =

> >  	/*
> >  	 * We should also do -10% if sprite scaling is enabled
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
