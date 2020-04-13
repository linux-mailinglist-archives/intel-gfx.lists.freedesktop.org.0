Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F1B1A62EC
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2020 08:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6530C6E18E;
	Mon, 13 Apr 2020 06:12:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 390206E18E
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Apr 2020 06:11:59 +0000 (UTC)
IronPort-SDR: HE5AQDMwEzPS39n9IyeLxJs6bbbmANlcpqVMk00CbCzmrfksAdOrybbjpf7bcY+9j6p+9+p3J+
 bHnvqe1AWSVg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2020 23:11:58 -0700
IronPort-SDR: ioktnSurrQ/3Vkx5kW5ocw1w4obA1rnAQqJHu7nx9pmskhq2+HMY8xY9Cn8W90ho19trgfqoya
 +84/7tD/UIUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,377,1580803200"; d="scan'208";a="245067283"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 12 Apr 2020 23:11:58 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 12 Apr 2020 23:11:58 -0700
Received: from bgsmsx110.gar.corp.intel.com (10.223.4.212) by
 FMSMSX113.amr.corp.intel.com (10.18.116.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 12 Apr 2020 23:11:57 -0700
Received: from bgsmsx101.gar.corp.intel.com ([169.254.1.75]) by
 BGSMSX110.gar.corp.intel.com ([169.254.11.79]) with mapi id 14.03.0439.000;
 Mon, 13 Apr 2020 11:41:54 +0530
From: "Kadiyala, Kishore" <kishore.kadiyala@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH v5] drm/i915: Add Plane color encoding support for
 YCBCR_BT2020
Thread-Index: AQHWDbEnebmkPEB/KEiZom68s+4PXqhwrKoAgAXsq3A=
Date: Mon, 13 Apr 2020 06:11:53 +0000
Message-ID: <92C2E46C14A43E4BBF8F51564D4E95565881AA7A@BGSMSX101.gar.corp.intel.com>
References: <20200408142227.21000-1-kishore.kadiyala@intel.com>
 <20200409171302.GX6112@intel.com>
In-Reply-To: <20200409171302.GX6112@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915: Add Plane color encoding
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, April 9, 2020 10:43 PM
> To: Kadiyala, Kishore <kishore.kadiyala@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [PATCH v5] drm/i915: Add Plane color encoding support for
> YCBCR_BT2020
> =

> On Wed, Apr 08, 2020 at 07:52:27PM +0530, Kishore Kadiyala wrote:
> > Currently the plane property doesn't have support for YCBCR_BT2020,
> > which enables the corresponding color conversion mode on plane CSC.
> > Enabling the plane property for the planes for GLK & ICL+ platforms.
> >
> > V2: Enabling support for YCBCT_BT2020 for HDR planes on
> >     platforms GLK & ICL
> >
> > V3: Refined the condition check to handle GLK & ICL+ HDR planes
> >     Also added BT2020 handling in glk_plane_color_ctl.
> >
> > V4: Combine If-else into single If
> >
> > V5: Drop the checking for HDR planes and enable YCBCR_BT2020
> >     for platforms GLK & ICL+.
> >
> > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Kishore Kadiyala <kishore.kadiyala@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
> > drivers/gpu/drm/i915/display/intel_sprite.c  |  9 +++++++--
> >  2 files changed, 16 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 70ec301fe6e3..f2dfa61a49fa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4808,11 +4808,17 @@ u32 glk_plane_color_ctl(const struct
> intel_crtc_state *crtc_state,
> >  	plane_color_ctl |=3D glk_plane_color_ctl_alpha(plane_state);
> >
> >  	if (fb->format->is_yuv && !icl_is_hdr_plane(dev_priv, plane->id)) {
> > -		if (plane_state->hw.color_encoding =3D=3D
> DRM_COLOR_YCBCR_BT709)
> > +		switch (plane_state->hw.color_encoding) {
> > +		case DRM_COLOR_YCBCR_BT709:
> >  			plane_color_ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> > -		else
> > +			break;
> > +		case DRM_COLOR_YCBCR_BT2020:
> > +			plane_color_ctl |=3D
> > +
> 	PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
> > +			break;
> > +		default:
> >  			plane_color_ctl |=3D
> PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709;
> =

> IIRC the spec has been fixed in the meantime, so as a followup can you re=
name
> this to YUV601_TO_RGB601?


Sure Ville

Thanks,
Kishore
> > -
> > +		}
> >  		if (plane_state->hw.color_range =3D=3D
> DRM_COLOR_YCBCR_FULL_RANGE)
> >  			plane_color_ctl |=3D
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
> >  	} else if (fb->format->is_yuv) {
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > index deda351719db..0072525046a1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -3031,6 +3031,7 @@ skl_universal_plane_create(struct drm_i915_private
> *dev_priv,
> >  	struct intel_plane *plane;
> >  	enum drm_plane_type plane_type;
> >  	unsigned int supported_rotations;
> > +	unsigned int supported_csc;
> >  	const u64 *modifiers;
> >  	const u32 *formats;
> >  	int num_formats;
> > @@ -3105,9 +3106,13 @@ skl_universal_plane_create(struct
> drm_i915_private *dev_priv,
> >  					   DRM_MODE_ROTATE_0,
> >  					   supported_rotations);
> >
> > +	supported_csc =3D BIT(DRM_COLOR_YCBCR_BT601) |
> > +BIT(DRM_COLOR_YCBCR_BT709);
> > +
> > +	if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv))
> > +		supported_csc |=3D BIT(DRM_COLOR_YCBCR_BT2020);
> > +
> >  	drm_plane_create_color_properties(&plane->base,
> > -					  BIT(DRM_COLOR_YCBCR_BT601) |
> > -					  BIT(DRM_COLOR_YCBCR_BT709),
> > +					  supported_csc,
> >
> BIT(DRM_COLOR_YCBCR_LIMITED_RANGE) |
> >
> BIT(DRM_COLOR_YCBCR_FULL_RANGE),
> >  					  DRM_COLOR_YCBCR_BT709,
> > --
> > 2.17.1
> =

> --
> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
