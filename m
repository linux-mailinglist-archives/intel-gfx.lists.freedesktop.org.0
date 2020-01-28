Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87AF514C1D8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 22:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A1C6E130;
	Tue, 28 Jan 2020 21:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D595B6E130
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 21:00:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 12:27:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,375,1574150400"; d="scan'208";a="222859890"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga007.fm.intel.com with ESMTP; 28 Jan 2020 12:27:32 -0800
Date: Tue, 28 Jan 2020 12:28:35 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200128202835.GA3030@intel.com>
References: <20200117091627.1697-1-matthew.s.atwood@intel.com>
 <20200128170538.GN13686@intel.com>
 <20200128173059.GO13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128173059.GO13686@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

On Tue, Jan 28, 2020 at 07:30:59PM +0200, Ville Syrj=E4l=E4 wrote:
> On Tue, Jan 28, 2020 at 07:05:38PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Jan 17, 2020 at 04:16:28AM -0500, Matt Atwood wrote:
> > > On Tiger Lake we do not support source keying in the pixel formats P0=
10,
> > > P012, P016.
> > > =

> > > Bspec: 52890
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_sprite.c | 13 +++++++++++++
> > >  1 file changed, 13 insertions(+)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gp=
u/drm/i915/display/intel_sprite.c
> > > index fca77ec1e0dd..67176524e60f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > @@ -2049,6 +2049,19 @@ static int skl_plane_check_fb(const struct int=
el_crtc_state *crtc_state,
> > >  	unsigned int rotation =3D plane_state->hw.rotation;
> > >  	struct drm_format_name_buf format_name;
> > >  =

> > > +	/* Wa_1606054188;tgl
> > > +	 *
> > > +	 * TODO: Add format RGB64i when implemented
> > > +	 *
> > > +	 */
> > > +	if (IS_GEN(dev_priv, 12) &&
> > > +	    (plane_state->ckey.flags & I915_SET_COLORKEY_SOURCE))

Yes I agree here no need to have paranthesis just =


if (IS_GEN(dev_priv, 12) && plane_state->ckey.flags & I915_SET_COLORKEY_SOU=
RCE)
should suffice since bitwise & higher precedence than logical AND

> > > +		if (fb->format->format & (DRM_FORMAT_P010 | DRM_FORMAT_P012
> > > +		    | DRM_FORMAT_P016)) {
> =

> Oh, and that | stuff is actually just nonsense. That's not a
> bitfield or anything like that. I'd just add a small
> intel_format_is_p01x() function etc.

Yes I agree with Ville. The DRM_FORMAT_ is a 4CC format identifie not a bit=
field
so you would need to define a static function something like:

static bool intel_format_is_p01x()
{
	if(format =3D=3D DRM_FORMAT_P010 ||
	format =3D=3D DRM_FORMAT_P012 ||
	format =3D=3D DRM_FORMAT_P016)
		return true;

	return false;
}

Look at lookup_format_info() for reference.
Hope this helps.

Manasi

> =

> > =

> > if (a && b && c)
> > =

> > Needless parens.
> > =

> > Continuing | should go to the end. Also alignment is borked.
> > =

> > > +			DRM_DEBUG_KMS("GEN12 does not support source color key planes in =
formats P01x\n");
> > =

> > Feels a bit overly verbose:
> > "Source color keying not supported with P01x formats\n"
> > =

> > > +			return -EINVAL;
> > > +		}
> > > +
> > >  	if (!fb)
> > >  		return 0;
> > =

> > What Manasi said. In fact pls move the thing to the end of the function
> > because I have more color key checks queued up in a branch and IIRC
> > I put them to the very end of the function.
> > =

> > >  =

> > > -- =

> > > 2.21.1
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
