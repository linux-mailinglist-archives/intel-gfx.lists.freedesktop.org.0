Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B92B21037E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 07:57:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F1216E5CC;
	Wed,  1 Jul 2020 05:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90F196E5CC
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 05:57:21 +0000 (UTC)
IronPort-SDR: Xpy8aNT9NcDuqkxlWymXOeYw4ORvrtwjCIW0/mryisgLUX98UOefqfZ2QWgX8PrPTT4EgVcNWy
 MsBbIv1AdNyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="207985591"
X-IronPort-AV: E=Sophos;i="5.75,299,1589266800"; d="scan'208";a="207985591"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 22:57:20 -0700
IronPort-SDR: 6yxaextZfQt1tutC9s+Geh1otIkZ6IewIEFmtVH/S+1CuMW7pJTXvB9KmYxODcpml6m7WhnFyS
 r3BHP6DXJbAg==
X-IronPort-AV: E=Sophos;i="5.75,299,1589266800"; d="scan'208";a="454878627"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com (HELO
 intel.com) ([10.237.72.190])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 22:57:19 -0700
Date: Wed, 1 Jul 2020 08:57:09 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200701055708.GA8477@intel.com>
References: <20200630112609.9998-1-stanislav.lisovskiy@intel.com>
 <20200630162909.GR6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200630162909.GR6112@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Clamp min_cdclk to
 max_cdclk_freq to unblock 8K
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

On Tue, Jun 30, 2020 at 07:29:09PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Jun 30, 2020 at 02:26:09PM +0300, Stanislav Lisovskiy wrote:
> > We still need "Bump up CDCLK" workaround otherwise getting
> > underruns - however currently it blocks 8K as CDCLK =3D Pixel rate,
> > in 8K case would require CDCLK to be around 1 Ghz which is not
> > possible.
> > =

> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 14 +++++++++++++-
> >  1 file changed, 13 insertions(+), 1 deletion(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/d=
rm/i915/display/intel_cdclk.c
> > index 45f7f33d1144..01a5bc6b08c4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2080,9 +2080,21 @@ int intel_crtc_compute_min_cdclk(const struct in=
tel_crtc_state *crtc_state)
> >  	 * Explicitly stating here that this seems to be currently
> >  	 * rather a Hack, than final solution.
> >  	 */
> > -	if (IS_TIGERLAKE(dev_priv))
> > +	if (IS_TIGERLAKE(dev_priv)) {
> >  		min_cdclk =3D max(min_cdclk, (int)crtc_state->pixel_rate);
> >  =

> > +		/*
> > +		 * Clamp to max_cdclk_freq in order not to break an 8K,
> > +		 * but still leave W/A at place.
> > +		 */
> > +		min_cdclk =3D min(min_cdclk, (int)dev_priv->max_cdclk_freq);
> > +
> > +		/*
> > +		 * max_cdclk_freq check obviously not needed - just return.
> > +		 */
> > +		return min_cdclk;
> =

> Pointless return. But I think we should actually keep the max_cdclk
> check. Something like:
> =

> min_cdclk =3D max(min_cdclk,
> 		min(max_cdclk, pixel_rate));
> =

> Also what's with the (int) casts? There is min_t() if you
> actually need casts. But not sure why we need them though.

Don't like the casts either. Aware of min_t. Just remember that smth
prevented me from using it in initial patch. Will check once again
to figure out why I did so last time.

Regarding the check we actually you are proposing to do the same thing
as initially I check min_cdclk =3D max(min_cdclk, pixel_rate) and then
it gets to min_cdclk =3D min(min_cdclk, max_cdclk_freq). =


Just do it kind of in 2 steps in order not to change the =

original Bump CDCLK patch.

I.e min_cdclk still has to be more or equal than pixel rate, but always less
than max_cdclk_freq.

Stan

> =

> > +	}
> > +
> >  	if (min_cdclk > dev_priv->max_cdclk_freq) {
> >  		drm_dbg_kms(&dev_priv->drm,
> >  			    "required cdclk (%d kHz) exceeds max (%d kHz)\n",
> > -- =

> > 2.24.1.485.gad05a3d8e5
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
