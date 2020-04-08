Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6111A1EBA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 12:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3056EA19;
	Wed,  8 Apr 2020 10:24:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC376EA19
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 10:24:38 +0000 (UTC)
IronPort-SDR: pq6+s2z4CdowTWuPEDha2OFLHXY/mUHHPzfQM0pRYlTBVgoh7seUU9N/l4RgwN4IY6KUaToHBh
 rPUgIG9LNk4w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 03:24:38 -0700
IronPort-SDR: nU5FhGjz7wKkS326rgaiX8z/FcFF7LEB+X4dhWY37YvorPsuF0lFgVK+JShNK9ZS1vAxFi0/V6
 bGKKU4TNuT/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; d="scan'208";a="240257609"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by orsmga007.jf.intel.com with ESMTP; 08 Apr 2020 03:24:38 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Apr 2020 03:24:38 -0700
Received: from bgsmsx109.gar.corp.intel.com (10.223.4.211) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 8 Apr 2020 03:24:37 -0700
Received: from bgsmsx101.gar.corp.intel.com ([169.254.1.36]) by
 BGSMSX109.gar.corp.intel.com ([169.254.10.57]) with mapi id 14.03.0439.000;
 Wed, 8 Apr 2020 15:54:34 +0530
From: "Kadiyala, Kishore" <kishore.kadiyala@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Add Plane color encoding
 support for YCBCR_BT2020
Thread-Index: AQHWDYJknt1l9kOMlkKmNU3clWzb4ahun/uAgABkfKA=
Date: Wed, 8 Apr 2020 10:24:34 +0000
Message-ID: <92C2E46C14A43E4BBF8F51564D4E955658808396@BGSMSX101.gar.corp.intel.com>
References: <20200408084734.8834-1-kishore.kadiyala@intel.com>
 <871royi9qq.fsf@intel.com>
In-Reply-To: <871royi9qq.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add Plane color encoding
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, April 8, 2020 3:24 PM
> To: Kadiyala, Kishore <kishore.kadiyala@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Kadiyala, Kishore <kishore.kadiyala@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add Plane color encoding support
> for YCBCR_BT2020
> 
> On Wed, 08 Apr 2020, Kishore Kadiyala <kishore.kadiyala@intel.com> wrote:
> > Currently the plane property doesn't have support for YCBCR_BT2020,
> > which enables the corresponding color conversion mode on plane CSC.
> > This propery setting is confined only to HDR Planes as there is
> > limitation in SDR Planes.
> >
> > V2: Enabling support for YCBCT_BT2020 for HDR planes on
> >     platforms GLK & ICL
> >
> > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_sprite.c | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > index deda351719db..4c25d90d16ce 100644
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
> > @@ -3105,9 +3106,14 @@ skl_universal_plane_create(struct
> drm_i915_private *dev_priv,
> >  					   DRM_MODE_ROTATE_0,
> >  					   supported_rotations);
> >
> > +	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) |
> > +BIT(DRM_COLOR_YCBCR_BT709);
> > +
> > +	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv) &&
> > +					(icl_is_hdr_plane(dev_priv, plane_id)))
> 
> This is incorrect and/or misleading in so many levels.
> 
> First, the precedence means this is
> 
> 	(gen >= 10 || (is_glk && icl_is_hdr_plane))
> 
> Second, it's odd to have an icl_ prefixed function used only on glk.
> 
> Third, icl_is_hdr_plane() internally has gen >= 11. So the right hand part of the ||
> is always false.
> 
> Fourth, there's no point in wrapping the icl_is_hdr_plane() in parens.
> 
> Fifth, does this really apply to gen 10 cnl?

Agree Jani,  could have been avoided
Will send updated patch

Thanks,
Kishore
> 
> BR,
> Jani.
> 
> 
> > +		supported_csc |= BIT(DRM_COLOR_YCBCR_BT2020);
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
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
