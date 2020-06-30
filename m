Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB5720FD99
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 22:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10D8B89260;
	Tue, 30 Jun 2020 20:25:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DF3989260
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 20:25:32 +0000 (UTC)
IronPort-SDR: yW/3XqjvcgogdHBKSD+2FTiNadpGT8IqnsnOPU6hYZrgGq14FBR8pm0dNETch1+zXL88PtbJLk
 0Owtnv+D8Qvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="133828091"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="133828091"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 13:25:31 -0700
IronPort-SDR: 4/YXCyVZcpF0aLwZyR77utYoadMGATcKTtGqJ0H+2MvbGcRvzzFmzAKE/QNUQHm84iR079PfSv
 fdkyIvwqjuyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="425329355"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga004.jf.intel.com with ESMTP; 30 Jun 2020 13:25:31 -0700
Date: Tue, 30 Jun 2020 13:27:06 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200630202706.GA20459@intel.com>
References: <20200630112609.9998-1-stanislav.lisovskiy@intel.com>
 <20200630162909.GR6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200630162909.GR6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

Yes this logic suggested by Ville bumps up the min cdclock to
either the pixel rate or max cdclk freq whichever is the min so we dont
run into cdcclk not sufficient error for 8K since the 8K (3840 x 4320 1 til=
e) would
need  ~ 1066Mhz pixel rate.

Changing to this logic, you can count my r-b

Manasi
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
