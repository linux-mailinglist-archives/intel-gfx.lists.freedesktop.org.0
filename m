Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ABEA15D991
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 15:33:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33B436F94F;
	Fri, 14 Feb 2020 14:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F1896E392
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 14:33:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 06:33:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="228503753"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 14 Feb 2020 06:32:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Feb 2020 16:32:57 +0200
Date: Fri, 14 Feb 2020 16:32:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20200214143257.GK13686@intel.com>
References: <20200214105316.16076-1-kishore.kadiyala@intel.com>
 <20200214131009.GI13686@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F823E797C@BGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F823E797C@BGSMSX104.gar.corp.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] Add support for Color encoding YCBCR_BT2020
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kadiyala, Kishore" <kishore.kadiyala@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 14, 2020 at 02:27:35PM +0000, Shankar, Uma wrote:
> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Friday, February 14, 2020 6:40 PM
> > To: Kadiyala, Kishore <kishore.kadiyala@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.co=
m>
> > Subject: Re: [Intel-gfx] [PATCH] Add support for Color encoding YCBCR_B=
T2020
> > =

> > On Fri, Feb 14, 2020 at 04:23:16PM +0530, Kishore Kadiyala wrote:
> > > Currently the plane property doesn't have support for YCBCR_BT2020,
> > > which enables the corresponding color conversion mode on plane CSC.
> > >
> > > Signed-off-by: Kishore Kadiyala <kishore.kadiyala@intel.com>
> > > Cc: Uma Shankar <uma.shankar@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_sprite.c | 9 +++++++--
> > >  1 file changed, 7 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > index 7abeefe8dce5..5169a7260d7c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > @@ -3011,6 +3011,7 @@ skl_universal_plane_create(struct drm_i915_priv=
ate
> > *dev_priv,
> > >  	struct intel_plane *plane;
> > >  	enum drm_plane_type plane_type;
> > >  	unsigned int supported_rotations;
> > > +	unsigned int supported_csc;
> > >  	unsigned int possible_crtcs;
> > >  	const u64 *modifiers;
> > >  	const u32 *formats;
> > > @@ -3088,9 +3089,13 @@ skl_universal_plane_create(struct drm_i915_pri=
vate
> > *dev_priv,
> > >  					   DRM_MODE_ROTATE_0,
> > >  					   supported_rotations);
> > >
> > > +	supported_csc =3D BIT(DRM_COLOR_YCBCR_BT601) |
> > > +BIT(DRM_COLOR_YCBCR_BT709);
> > > +
> > > +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> > > +		supported_csc |=3D BIT(DRM_COLOR_YCBCR_BT2020);
> > =

> > Missing the actual code to enable it on glk and icl+ sdr planes, so thi=
s will not work.
> =

> Yeah this need to be handled for Non HDR planes.
> =

> > IIRC there was also some kind of hw fail related to some BT.something c=
onversions.
> > But I can't remember if that was in the RGB->RGB or
> > YUV->RGB logic.
> =

> Will try to check this out. What kind of fails Ville, was it not all work=
ing or artifacts ?

IIRC a wrong coefficient was used in one of the hardcoded hw
matrices. Should be listed on the bspec w/a page.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
