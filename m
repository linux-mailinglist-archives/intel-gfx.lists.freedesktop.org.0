Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB751C71A3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 15:28:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 429E56E05C;
	Wed,  6 May 2020 13:28:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 774CC6E05C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 13:28:20 +0000 (UTC)
IronPort-SDR: 4lYCQWAKRHsvzfTTjmStWe1AR3XZhn6Li+fcWPh4Ra5hKxlcv55Y6mUMX25uGb3CZpDG4PPIPr
 KrjVcLKQPZyg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 06:28:19 -0700
IronPort-SDR: sWrloS58EV0+nM1gK8x1rj3uwZiHy2vbYfm7jQmYTtQgLAT3mtzA80JmEzQApbVgP8vPf008iC
 S59ee731DdLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,359,1583222400"; d="scan'208";a="304799257"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 06 May 2020 06:28:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 May 2020 16:28:16 +0300
Date: Wed, 6 May 2020 16:28:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200506132815.GS6112@intel.com>
References: <20200430125822.21985-1-ville.syrjala@linux.intel.com>
 <20200506131720.GA16576@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506131720.GA16576@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix glk watermark calculations
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

On Wed, May 06, 2020 at 04:17:20PM +0300, Lisovskiy, Stanislav wrote:
> On Thu, Apr 30, 2020 at 03:58:21PM +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > GLK wants the +1 adjustement for the "blocks per line" value
> > for x-tile/y-tile, just like cnl+.
> > =

> > Also the x-tile and linear cases are almost identical. The only
> > difference is this +1 which is always done for glk+, and only
> > done for linear on skl/bxt. Let's unify it to a single branch
> > with a special case for the +1, just like we do for y-tile.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 15 ++++++++-------
> >  1 file changed, 8 insertions(+), 7 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/int=
el_pm.c
> > index bfb180fe8047..65a3236ce277 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -4810,7 +4810,7 @@ skl_wm_method1(const struct drm_i915_private *dev=
_priv, u32 pixel_rate,
> >  	wm_intermediate_val =3D latency * pixel_rate * cpp;
> >  	ret =3D div_fixed16(wm_intermediate_val, 1000 * dbuf_block_size);
> >  =

> > -	if (INTEL_GEN(dev_priv) >=3D 10)
> > +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> >  		ret =3D add_fixed16_u32(ret, 1);
> >  =

> >  	return ret;
> > @@ -4945,18 +4945,19 @@ skl_compute_wm_params(const struct intel_crtc_s=
tate *crtc_state,
> >  					   wp->y_min_scanlines,
> >  					   wp->dbuf_block_size);
> >  =

> > -		if (INTEL_GEN(dev_priv) >=3D 10)
> > +		if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> >  			interm_pbpl++;
> >  =

> >  		wp->plane_blocks_per_line =3D div_fixed16(interm_pbpl,
> >  							wp->y_min_scanlines);
> > -	} else if (wp->x_tiled && IS_GEN(dev_priv, 9)) {
> > -		interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line,
> > -					   wp->dbuf_block_size);
> > -		wp->plane_blocks_per_line =3D u32_to_fixed16(interm_pbpl);
> >  	} else {
> >  		interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line,
> > -					   wp->dbuf_block_size) + 1;
> > +					   wp->dbuf_block_size);
> > +
> > +		if (!wp->x_tiled ||
> > +		    INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> > +			interm_pbpl++;
> > +
> =

> Is it so that we want +1 here only for x-tile,y-tile for GLK?
> Because I guess if you have linear mapping and GLK, this will do +1 as we=
ll.

glk+ always wants the +1.
pre-glk wants +1 only for linear.

> =

> With this clarified,
> =

> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> =

> >  		wp->plane_blocks_per_line =3D u32_to_fixed16(interm_pbpl);
> >  	}
> >  =

> > -- =

> > 2.24.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
