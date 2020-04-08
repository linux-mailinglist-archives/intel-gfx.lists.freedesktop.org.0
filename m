Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 402C31A23BF
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 16:06:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 834296EA75;
	Wed,  8 Apr 2020 14:06:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB4FC6EA75
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 14:06:12 +0000 (UTC)
IronPort-SDR: XdNyzkybmG2/hJw9fz7VLhToN6j5FTqmjZFmWgc68dMqYwQm/NqMBli/DR0C+febB/PMlWYKl+
 t0ArpqvCnJ8A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 07:06:12 -0700
IronPort-SDR: MSTZW6tt9g4HMUWVZNmtW5C6IYwiP/RJSqx5DBKzvP8DALK+qKyZsvY2BpphwVvUBnXik9IKEk
 PtDITfAwb7Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,358,1580803200"; d="scan'208";a="251567995"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga003.jf.intel.com with ESMTP; 08 Apr 2020 07:06:11 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Apr 2020 07:06:11 -0700
Received: from bgsmsx153.gar.corp.intel.com (10.224.23.4) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Apr 2020 07:06:10 -0700
Received: from bgsmsx101.gar.corp.intel.com ([169.254.1.36]) by
 BGSMSX153.gar.corp.intel.com ([169.254.2.23]) with mapi id 14.03.0439.000;
 Wed, 8 Apr 2020 19:36:07 +0530
From: "Kadiyala, Kishore" <kishore.kadiyala@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, =?iso-8859-1?Q?Ville_Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v3] drm/i915: Add Plane color encoding support for
 YCBCR_BT2020
Thread-Index: AQHWDZbRpKCBlFlC106z4JFzibgPu6hu0BIAgAAKU4CAAAQSgIAABH2AgABdNPA=
Date: Wed, 8 Apr 2020 14:06:06 +0000
Message-ID: <92C2E46C14A43E4BBF8F51564D4E955658808699@BGSMSX101.gar.corp.intel.com>
References: <20200408111347.5156-1-kishore.kadiyala@intel.com>
 <20200408124630.GQ6112@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82449A78@BGSMSX104.gar.corp.intel.com>
 <20200408133801.GS6112@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82449F1E@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F82449F1E@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Add Plane color encoding
 support for YCBCR_BT2020
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Shankar, Uma <uma.shankar@intel.com>
> Sent: Wednesday, April 8, 2020 7:24 PM
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Kadiyala, Kishore <kishore.kadiyala@intel.com>; intel-
> gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: RE: [PATCH v3] drm/i915: Add Plane color encoding support for
> YCBCR_BT2020
> =

> =

> =

> > -----Original Message-----
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Sent: Wednesday, April 8, 2020 7:08 PM
> > To: Shankar, Uma <uma.shankar@intel.com>
> > Cc: Kadiyala, Kishore <kishore.kadiyala@intel.com>;
> > intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> > Subject: Re: [PATCH v3] drm/i915: Add Plane color encoding support for
> > YCBCR_BT2020
> >
> > On Wed, Apr 08, 2020 at 01:23:27PM +0000, Shankar, Uma wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Sent: Wednesday, April 8, 2020 6:17 PM
> > > > To: Kadiyala, Kishore <kishore.kadiyala@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > > <uma.shankar@intel.com>; Nikula, Jani <jani.nikula@intel.com>
> > > > Subject: Re: [PATCH v3] drm/i915: Add Plane color encoding support
> > > > for
> > > > YCBCR_BT2020
> > > >
> > > > On Wed, Apr 08, 2020 at 04:43:47PM +0530, Kishore Kadiyala wrote:
> > > > > Currently the plane property doesn't have support for
> > > > > YCBCR_BT2020, which enables the corresponding color conversion
> > > > > mode on
> > plane CSC.
> > > > > In ICL+ platforms , this property setting is confined only to
> > > > > HDR Planes as there is limitation in SDR Planes and while in GLK
> > > > > it set for all planes.
> > > > >
> > > > > V2: Enabling support for YCBCT_BT2020 for HDR planes on
> > > > >     platforms GLK & ICL
> > > > >
> > > > > V3: Refined the condition check to handle GLK & ICL+ HDR planes
> > > > >     Also added BT2020 handling in glk_plane_color_ctl.
> > > > >
> > > > > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > > > > Cc: Uma Shankar <uma.shankar@intel.com>
> > > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > > Signed-off-by: Kishore Kadiyala <kishore.kadiyala@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
> > > > > drivers/gpu/drm/i915/display/intel_sprite.c  | 17
> > > > > +++++++++++++++--
> > > > >  2 files changed, 24 insertions(+), 5 deletions(-)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > index 70ec301fe6e3..f2dfa61a49fa 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > @@ -4808,11 +4808,17 @@ u32 glk_plane_color_ctl(const struct
> > > > > intel_crtc_state
> > > > *crtc_state,
> > > > >  	plane_color_ctl |=3D glk_plane_color_ctl_alpha(plane_state);
> > > > >
> > > > >  	if (fb->format->is_yuv && !icl_is_hdr_plane(dev_priv, plane->id=
)) {
> > > > > -		if (plane_state->hw.color_encoding =3D=3D
> > > > DRM_COLOR_YCBCR_BT709)
> > > > > +		switch (plane_state->hw.color_encoding) {
> > > > > +		case DRM_COLOR_YCBCR_BT709:
> > > > >  			plane_color_ctl |=3D
> > > > PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> > > > > -		else
> > > > > +			break;
> > > > > +		case DRM_COLOR_YCBCR_BT2020:
> > > > > +			plane_color_ctl |=3D
> > > > > +
> > > > 	PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
> > > > > +			break;
> > > > > +		default:
> > > > >  			plane_color_ctl |=3D
> > > > PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709;
> > > > > -
> > > > > +		}
> > > > >  		if (plane_state->hw.color_range =3D=3D
> > > > DRM_COLOR_YCBCR_FULL_RANGE)
> > > > >  			plane_color_ctl |=3D
> > > > PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> > > > >  	} else if (fb->format->is_yuv) { diff --git
> > > > > a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > > index deda351719db..237c4b951f02 100644
> > > > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > > > @@ -3031,6 +3031,7 @@ skl_universal_plane_create(struct
> > > > > drm_i915_private
> > > > *dev_priv,
> > > > >  	struct intel_plane *plane;
> > > > >  	enum drm_plane_type plane_type;
> > > > >  	unsigned int supported_rotations;
> > > > > +	unsigned int supported_csc;
> > > > >  	const u64 *modifiers;
> > > > >  	const u32 *formats;
> > > > >  	int num_formats;
> > > > > @@ -3105,9 +3106,21 @@ skl_universal_plane_create(struct
> > > > > drm_i915_private
> > > > *dev_priv,
> > > > >  					   DRM_MODE_ROTATE_0,
> > > > >  					   supported_rotations);
> > > > >
> > > > > +	supported_csc =3D BIT(DRM_COLOR_YCBCR_BT601) |
> > > > > +BIT(DRM_COLOR_YCBCR_BT709);
> > > > > +
> > > > > +	/*
> > > > > +	 * Setting the CSC BT2020 for all the planes in case of GLK
> > > > > +	 * While for ICL+ platforms it is set only for HDR planes 1
> through 3
> > > > > +	 * as there are issues seen with SDR planes
> > > >
> > > > What issues are those?
> > >
> > > There was an issue on some of the hardcoded matrix values used in
> > > SDR planes, hence it would be good to not enable BT2020 conversion
> > > on SDR planes in ICL+ till this gets resolved.
> > > Reference WA: #220884772
> > > "Incorrect plane CSC coefficients for sRGB to Bt2020 :
> > > SDR planes PLANE_COLOR_CTL Plane CSC Mode 100b, RGB709 to RGB2020,
> > > uses hardcoded R-Y coefficient of 0.75 instead of 0.625, resulting
> > > in incorrect BT2020 color conversion. WA: Limit RGB709 to RGB2020
> > > conversion to
> > the HDR capable planes"
> >
> > That only matters for RGB->RGB conversion, which has nothing to do
> > with this patch.
> =

> Oh yeah my bad, this is just for RGB specific conversion only, please ign=
ore my
> comments.

I will drop the HDR plane check and post the updated.

Regards,
Kishore
> =

> > >
> > > @Kishore : Please add this as comment here.
> > >
> > > > > +	 */
> > > > > +	if ((INTEL_GEN(dev_priv) =3D=3D 10) ||  IS_GEMINILAKE(dev_priv))
> > > > > +		supported_csc |=3D BIT(DRM_COLOR_YCBCR_BT2020);
> > > > > +	else
> > > > > +		if (icl_is_hdr_plane(dev_priv, plane_id))
> > > > > +			supported_csc |=3D
> BIT(DRM_COLOR_YCBCR_BT2020);
> > > > > +
> > > > >  	drm_plane_create_color_properties(&plane->base,
> > > > > -					  BIT(DRM_COLOR_YCBCR_BT601) |
> > > > > -					  BIT(DRM_COLOR_YCBCR_BT709),
> > > > > +					  supported_csc,
> > > > >
> > > > BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
> > > > >
> BIT(DRM_COLOR_YCBCR_FULL_RANGE),
> > > > >  					  DRM_COLOR_YCBCR_BT709,
> > > > > --
> > > > > 2.17.1
> > > >
> > > > --
> > > > Ville Syrj=E4l=E4
> > > > Intel
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
