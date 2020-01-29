Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BD514C9D1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 12:36:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A772F6E317;
	Wed, 29 Jan 2020 11:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D36026E317
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 11:36:01 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 03:36:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,377,1574150400"; d="scan'208";a="277446085"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 29 Jan 2020 03:35:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Jan 2020 13:35:58 +0200
Date: Wed, 29 Jan 2020 13:35:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200129113558.GQ13686@intel.com>
References: <20200117091627.1697-1-matthew.s.atwood@intel.com>
 <20200128170538.GN13686@intel.com>
 <20200128173059.GO13686@intel.com>
 <20200128202835.GA3030@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128202835.GA3030@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1606054188;tgl
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

On Tue, Jan 28, 2020 at 12:28:35PM -0800, Manasi Navare wrote:
> On Tue, Jan 28, 2020 at 07:30:59PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Tue, Jan 28, 2020 at 07:05:38PM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Fri, Jan 17, 2020 at 04:16:28AM -0500, Matt Atwood wrote:
> > > > On Tiger Lake we do not support source keying in the pixel formats =
P010,
> > > > P012, P016.
> > > > =

> > > > Bspec: 52890
> > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_sprite.c | 13 +++++++++++++
> > > >  1 file changed, 13 insertions(+)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/=
gpu/drm/i915/display/intel_sprite.c
> > > > index fca77ec1e0dd..67176524e60f 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > @@ -2049,6 +2049,19 @@ static int skl_plane_check_fb(const struct i=
ntel_crtc_state *crtc_state,
> > > >  	unsigned int rotation =3D plane_state->hw.rotation;
> > > >  	struct drm_format_name_buf format_name;
> > > >  =

> > > > +	/* Wa_1606054188;tgl
> > > > +	 *
> > > > +	 * TODO: Add format RGB64i when implemented
> > > > +	 *
> > > > +	 */
> > > > +	if (IS_GEN(dev_priv, 12) &&
> > > > +	    (plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE))
> =

> Yes I agree here no need to have paranthesis just =

> =

> if (IS_GEN(dev_priv, 12) && plane_state->ckey.flags & I915_SET_COLORKEY_S=
OURCE)
> should suffice since bitwise & higher precedence than logical AND
> =

> > > > +		if (fb->format->format & (DRM_FORMAT_P010 | DRM_FORMAT_P012
> > > > +		    | DRM_FORMAT_P016)) {
> > =

> > Oh, and that | stuff is actually just nonsense. That's not a
> > bitfield or anything like that. I'd just add a small
> > intel_format_is_p01x() function etc.
> =

> Yes I agree with Ville. The DRM_FORMAT_ is a 4CC format identifie not a b=
itfield
> so you would need to define a static function something like:
> =

> static bool intel_format_is_p01x()
> {
> 	if(format =3D=3D DRM_FORMAT_P010 ||
> 	format =3D=3D DRM_FORMAT_P012 ||
> 	format =3D=3D DRM_FORMAT_P016)
> 		return true;

switch()

> =

> 	return false;
> }
> =

> Look at lookup_format_info() for reference.
> Hope this helps.
> =

> Manasi
> =

> > =

> > > =

> > > if (a && b && c)
> > > =

> > > Needless parens.
> > > =

> > > Continuing | should go to the end. Also alignment is borked.
> > > =

> > > > +			DRM_DEBUG_KMS("GEN12 does not support source color key planes i=
n formats P01x\n");
> > > =

> > > Feels a bit overly verbose:
> > > "Source color keying not supported with P01x formats\n"
> > > =

> > > > +			return -EINVAL;
> > > > +		}
> > > > +
> > > >  	if (!fb)
> > > >  		return 0;
> > > =

> > > What Manasi said. In fact pls move the thing to the end of the functi=
on
> > > because I have more color key checks queued up in a branch and IIRC
> > > I put them to the very end of the function.
> > > =

> > > >  =

> > > > -- =

> > > > 2.21.1
> > > > =

> > > > _______________________________________________
> > > > Intel-gfx mailing list
> > > > Intel-gfx@lists.freedesktop.org
> > > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > > =

> > > -- =

> > > Ville Syrj=E4l=E4
> > > Intel
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel
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
