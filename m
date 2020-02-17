Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C51F16087E
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 04:10:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D7546E43B;
	Mon, 17 Feb 2020 03:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A78ED6E43B
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Feb 2020 03:10:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Feb 2020 19:10:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,451,1574150400"; d="scan'208";a="235101273"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga003.jf.intel.com with ESMTP; 16 Feb 2020 19:10:03 -0800
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 16 Feb 2020 19:10:03 -0800
Received: from BGSMSX108.gar.corp.intel.com (10.223.4.192) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Sun, 16 Feb 2020 19:10:02 -0800
Received: from bgsmsx101.gar.corp.intel.com ([169.254.1.191]) by
 BGSMSX108.gar.corp.intel.com ([169.254.8.91]) with mapi id 14.03.0439.000;
 Mon, 17 Feb 2020 08:39:59 +0530
From: "Kadiyala, Kishore" <kishore.kadiyala@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] Add support for Color encoding YCBCR_BT2020
Thread-Index: AQHV4yT5fwaMvIKlAUaom/lUpfgqHqgaMI4AgASH+nA=
Date: Mon, 17 Feb 2020 03:09:58 +0000
Message-ID: <92C2E46C14A43E4BBF8F51564D4E9556587D6284@BGSMSX101.gar.corp.intel.com>
References: <20200214105316.16076-1-kishore.kadiyala@intel.com>
 <87tv3twgu3.fsf@intel.com>
In-Reply-To: <87tv3twgu3.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMWNhNzFhMzctMmNlYy00MjI0LWEzNDgtMTE0Y2E2Yzg2NGM4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicUI5V1Y3dGl3dHg0Wlh6ZXF6VGNYdDlnbUZOb2ppRGR0QmhsbWVcLzBFd1wvZXR5dzdZajFBNHA3aGZVdDdTdjAwIn0=
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Friday, February 14, 2020 4:56 PM
> To: Kadiyala, Kishore <kishore.kadiyala@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Kadiyala, Kishore <kishore.kadiyala@intel.com>
> Subject: Re: [Intel-gfx] [PATCH] Add support for Color encoding YCBCR_BT2020
> 
> On Fri, 14 Feb 2020, Kishore Kadiyala <kishore.kadiyala@intel.com> wrote:
> > Currently the plane property doesn't have support for YCBCR_BT2020,
> > which enables the corresponding color conversion mode on plane CSC.
> 
> Please prefix your patch subjects properly. "drm/i915: " at a minimum for stuff
> touching i915.

   Sure Jani, I'll include prefix from next time.

> 
> No need to resend for this, but for future reference.
  Ok 

Regards,
Kishore
> 
> BR,
> Jani.
> 
> 
> >
> > Signed-off-by: Kishore Kadiyala <kishore.kadiyala@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_sprite.c | 9 +++++++--
> >  1 file changed, 7 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > index 7abeefe8dce5..5169a7260d7c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > @@ -3011,6 +3011,7 @@ skl_universal_plane_create(struct drm_i915_private
> *dev_priv,
> >  	struct intel_plane *plane;
> >  	enum drm_plane_type plane_type;
> >  	unsigned int supported_rotations;
> > +	unsigned int supported_csc;
> >  	unsigned int possible_crtcs;
> >  	const u64 *modifiers;
> >  	const u32 *formats;
> > @@ -3088,9 +3089,13 @@ skl_universal_plane_create(struct
> drm_i915_private *dev_priv,
> >  					   DRM_MODE_ROTATE_0,
> >  					   supported_rotations);
> >
> > +	supported_csc = BIT(DRM_COLOR_YCBCR_BT601) |
> > +BIT(DRM_COLOR_YCBCR_BT709);
> > +
> > +	if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
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
