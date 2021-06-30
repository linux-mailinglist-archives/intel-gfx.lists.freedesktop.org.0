Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DD93B815B
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jun 2021 13:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB1246E992;
	Wed, 30 Jun 2021 11:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C54A46E0F2;
 Wed, 30 Jun 2021 11:36:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="205323835"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="205323835"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 04:36:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="558269236"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 30 Jun 2021 04:36:15 -0700
Received: from bgsmsx603.gar.corp.intel.com (10.109.78.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 04:36:14 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX603.gar.corp.intel.com (10.109.78.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 17:06:12 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Wed, 30 Jun 2021 17:06:12 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Harry Wentland <harry.wentland@amd.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Thread-Topic: [PATCH 04/21] drm/i915/xelpd: Define Degamma Lut range struct
 for HDR planes
Thread-Index: AQHXVs8kUUeAmGLzREqUBbFHfmv9YqspVtkAgAM8z2A=
Date: Wed, 30 Jun 2021 11:36:11 +0000
Message-ID: <bce1077600544c3d93ee045ddf9b9bfd@intel.com>
References: <20210601105218.29185-1-uma.shankar@intel.com>
 <20210601105218.29185-5-uma.shankar@intel.com>
 <cac45158-a7b9-c92e-eaf6-1067c29497e5@amd.com>
In-Reply-To: <cac45158-a7b9-c92e-eaf6-1067c29497e5@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/21] drm/i915/xelpd: Define Degamma Lut
 range struct for HDR planes
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
> From: dri-devel <dri-devel-bounces@lists.freedesktop.org> On Behalf Of Harry
> Wentland
> Sent: Monday, June 28, 2021 8:45 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org; dri-
> devel@lists.freedesktop.org
> Cc: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>
> Subject: Re: [PATCH 04/21] drm/i915/xelpd: Define Degamma Lut range struct for
> HDR planes
> 
> On 2021-06-01 6:52 a.m., Uma Shankar wrote:
> > Define the structure with XE_LPD degamma lut ranges. HDR and SDR
> > planes have different capabilities, implemented respective structure
> > for the HDR planes.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c | 52
> > ++++++++++++++++++++++
> >  1 file changed, 52 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> > b/drivers/gpu/drm/i915/display/intel_color.c
> > index dab892d2251b..c735d06a6b54 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -2093,6 +2093,58 @@ static void icl_read_luts(struct intel_crtc_state
> *crtc_state)
> >  	}
> >  }
> >
> > + /* FIXME input bpc? */
> > +__maybe_unused
> > +static const struct drm_color_lut_range d13_degamma_hdr[] = {
> > +	/* segment 1 */
> > +	{
> > +		.flags = (DRM_MODE_LUT_GAMMA |
> 
> Why are these using DRM_MODE_LUT_GAMMA and not
> DRM_MODE_LUT_DEGAMMA when the lut_type for this LUT is
> LUT_TYPE_DEGAMMA?

Thanks Harry for the comments.

Yeah this is an oversight, will fix this.
> 
> 
> > +			  DRM_MODE_LUT_REFLECT_NEGATIVE |
> > +			  DRM_MODE_LUT_INTERPOLATE |
> > +			  DRM_MODE_LUT_NON_DECREASING),
> > +		.count = 128,
> > +		.input_bpc = 24, .output_bpc = 16,
> 
> Why do we need more than 16 bpc for LUT? FP16 is enough to represent HDR in
> linear space. Wouldn't 16 bpc be enough?

Pipe sometimes works internally on higher precision (just to take care of rounding etc.), later the
extra data gets dropped at the end of the pipe. So from source side you are right, 16bpc is enough
but the lut precision can go higher.

> 
> > +		.start = 0, .end = (1 << 24) - 1,
> > +		.min = 0, .max = (1 << 24) - 1,
> > +	},
> > +	/* segment 2 */
> > +	{
> > +		.flags = (DRM_MODE_LUT_GAMMA |
> > +			  DRM_MODE_LUT_REFLECT_NEGATIVE |
> > +			  DRM_MODE_LUT_INTERPOLATE |
> > +			  DRM_MODE_LUT_REUSE_LAST |
> > +			  DRM_MODE_LUT_NON_DECREASING),
> > +		.count = 1,
> > +		.input_bpc = 24, .output_bpc = 16,
> > +		.start = (1 << 24) - 1, .end = 1 << 24,
> > +		.min = 0, .max = (1 << 27) - 1,
> 
> How can max be 1 << 27 if input_bpc is 24?

This is to take care of > 1.0 section. 1.0 to 3.0 and 3.0 to 7.0.
So we have 3.24 format for Lut to take care of this. 

Also, I have an action to update the series with UAPI doc and new naming for the property.
My apologies for being late on that one. Will update and send that out soon.

Thanks & Regards,
Uma Shankar
> 
> Harry
> 
> > +	},
> > +	/* Segment 3 */
> > +	{
> > +		.flags = (DRM_MODE_LUT_GAMMA |
> > +			  DRM_MODE_LUT_REFLECT_NEGATIVE |
> > +			  DRM_MODE_LUT_INTERPOLATE |
> > +			  DRM_MODE_LUT_REUSE_LAST |
> > +			  DRM_MODE_LUT_NON_DECREASING),
> > +		.count = 1,
> > +		.input_bpc = 24, .output_bpc = 16,
> > +		.start = 1 << 24, .end = 3 << 24,
> > +		.min = 0, .max = (1 << 27) - 1,
> > +	},
> > +	/* Segment 4 */
> > +	{
> > +		.flags = (DRM_MODE_LUT_GAMMA |
> > +			  DRM_MODE_LUT_REFLECT_NEGATIVE |
> > +			  DRM_MODE_LUT_INTERPOLATE |
> > +			  DRM_MODE_LUT_REUSE_LAST |
> > +			  DRM_MODE_LUT_NON_DECREASING),
> > +		.count = 1,
> > +		.input_bpc = 24, .output_bpc = 16,
> > +		.start = 3 << 24, .end = 7 << 24,
> > +		.min = 0, .max = (1 << 27) - 1,
> > +	},
> > +};
> > +
> >  void intel_color_init(struct intel_crtc *crtc)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
> >

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
