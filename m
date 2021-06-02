Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6623989FC
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 14:47:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 749C16EC8A;
	Wed,  2 Jun 2021 12:47:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 943C16EC8A
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 12:47:26 +0000 (UTC)
IronPort-SDR: T9vzOaz2Im1X+gBjqCAbwrtfyb7TRYW2d4BCp+2BUQNvrcyHoLg7FJGX+wldm4l+eDPItXTqTy
 VJ3nNQiKR8kw==
X-IronPort-AV: E=McAfee;i="6200,9189,10002"; a="200766602"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="200766602"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 05:47:25 -0700
IronPort-SDR: Yxx4QW3ouJHzBrp8Z84ePxHN+lBMzE02QnxohiXKA9yAIrZEjVG9BBY3kR5eVfUfsHz1T9Up8B
 FqJlGZSXEa4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="399711371"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 02 Jun 2021 05:47:25 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 2 Jun 2021 05:47:24 -0700
Received: from irsmsx603.ger.corp.intel.com (163.33.146.9) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 2 Jun 2021 18:17:21 +0530
Received: from irsmsx603.ger.corp.intel.com ([163.33.146.9]) by
 irsmsx603.ger.corp.intel.com ([163.33.146.9]) with mapi id 15.01.2242.008;
 Wed, 2 Jun 2021 13:47:20 +0100
From: "Varide, Nischal" <nischal.varide@intel.com>
To: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/xelpd: Enabling dithering after
 the CC1
Thread-Index: AQHXUhnhDyr8vVQeM0mDfI1+KxoZkqr1ux+AgAAf3wCACRGZ4IAByZww
Date: Wed, 2 Jun 2021 12:47:20 +0000
Message-ID: <0b0dea2127c44fb8ae7e0326c1fa891e@intel.com>
References: <20210526181728.14817-1-bhanuprakash.modem@intel.com>
 <20210526181728.14817-2-bhanuprakash.modem@intel.com>
 <87o8cxbngy.fsf@intel.com>
 <CO6PR11MB5569B1A2A203BD64EEF631318D249@CO6PR11MB5569.namprd11.prod.outlook.com>
 <da778d209abe4240989188f7f8b95a1b@intel.com>
In-Reply-To: <da778d209abe4240989188f7f8b95a1b@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/xelpd: Enabling dithering
 after the CC1
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

-----Original Message-----
From: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>
Sent: Wednesday, May 26, 2021 9:29 PM
To: Jani Nikula <jani.nikula@linux.intel.com>; intel-gfx@lists.freedesktop.org; Varide, Nischal <nischal.varide@intel.com>; Shankar, Uma <uma.shankar@intel.com>; Gupta, Anshuman <anshuman.gupta@intel.com>
Subject: RE: [Intel-gfx] [PATCH 1/2] drm/i915/xelpd: Enabling dithering after the CC1

> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, May 26, 2021 7:34 PM
> To: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>; intel- 
> gfx@lists.freedesktop.org; Varide, Nischal <nischal.varide@intel.com>; 
> Shankar, Uma <uma.shankar@intel.com>; Gupta, Anshuman 
> <anshuman.gupta@intel.com>
> Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/xelpd: Enabling 
> dithering after the CC1
> 
> On Wed, 26 May 2021, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
> > From: Nischal Varide <nischal.varide@intel.com>
> >
> > If the panel is 12bpc then Dithering is not enabled in the Legacy 
> > dithering block , instead its Enabled after the C1 CC1 pipe post 
> > color space conversion.For a 6bpc pannel Dithering is enabled in 
> > Legacy block.
> >
> > Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> 
> When you're sending someone else's patches, you need to add your own 
> Signed-off-by here.

Patch 2/2 in this series has a dependency on this patch. And I haven't made any changes in this patch, so not added my Signed-off-by :-)

- Bhanu

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_color.c   | 15 +++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_display.c |  7 ++++++-
> >  drivers/gpu/drm/i915/i915_reg.h              |  3 ++-
> >  3 files changed, 23 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_color.c
> b/drivers/gpu/drm/i915/display/intel_color.c
> > index dab892d2251b..4ad5bd849695 100644
> > --- a/drivers/gpu/drm/i915/display/intel_color.c
> > +++ b/drivers/gpu/drm/i915/display/intel_color.c
> > @@ -1605,6 +1605,20 @@ static u32 icl_csc_mode(const struct 
> > intel_crtc_state
> *crtc_state)
> >  	return csc_mode;
> >  }
> >
> > +static u32 dither_after_cc1_12bpc(const struct intel_crtc_state
> *crtc_state)
> > +{
> > +	u32 gamma_mode = crtc_state->gamma_mode;
> > +	struct drm_i915_private *i915 =
> > +to_i915(crtc_state->uapi.crtc->dev);
> > +
> > +	if (DISPLAY_VER(i915) >= 13) {
> > +		if (!crtc_state->dither_force_disable &&
> > +		    (crtc_state->pipe_bpp == 36))
> > +			gamma_mode |= GAMMA_MODE_DITHER_AFTER_CC1;
> > +	}
> > +
> > +	return gamma_mode;
> > +}
> > +
> >  static int icl_color_check(struct intel_crtc_state *crtc_state)  {
> >  	int ret;
> > @@ -1615,6 +1629,7 @@ static int icl_color_check(struct 
> > intel_crtc_state
> *crtc_state)
> >
> >  	crtc_state->gamma_mode = icl_gamma_mode(crtc_state);
> >
> > +	crtc_state->gamma_mode = dither_after_cc1_12bpc(crtc_state);
> 
> We don't really do the kind of thing where you need a sequence of 
> calls where one depends on the other, adding to the same state member.
> At a glance, this just looks wrong, superficially overwriting the 
> previously set value. I'd just add the check at the end of icl_gamma_mode().


Yes ,agree and will do the needful here.


> 
> >  	crtc_state->csc_mode = icl_csc_mode(crtc_state);
> >
> >  	crtc_state->preload_luts = intel_can_preload_luts(crtc_state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> > index 0bb2e582c87f..1a658bdaeab6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5741,7 +5741,12 @@ static void bdw_set_pipemisc(const struct
> intel_crtc_state *crtc_state)
> >  		break;
> >  	}
> >
> > -	if (crtc_state->dither)
> > +	/*
> > +	 * If 12bpc panel then, Enables dithering after the CC1 pipe
> > +	 * post color space conversion and not here
> > +	 */
> > +
> > +	if (crtc_state->dither && (crtc_state->pipe_bpp != 36))
> 
> This now duplicates the pipe_bpp condition in two places, which seems 
> a bit fragile. Maybe the check should be on gamma_mode? It would 
> remove the need for the whole comment above.
There are two bits for controlling the dithering one at pipe level and other at gamma level, 
So the checks at two places .
 
> >  		val |= PIPEMISC_DITHER_ENABLE | PIPEMISC_DITHER_TYPE_SP;
> >
> >  	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 || 
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> > index 4dbe79009c0e..5700097475c0 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -6155,7 +6155,7 @@ enum {
> >  #define   PIPEMISC_DITHER_8_BPC		(0 << 5)
> >  #define   PIPEMISC_DITHER_10_BPC	(1 << 5)
> >  #define   PIPEMISC_DITHER_6_BPC		(2 << 5)
> > -#define   PIPEMISC_DITHER_12_BPC	(3 << 5)
> > +#define   PIPEMISC_DITHER_12_BPC	(4 << 5)
> 
> We already use the macro. You can't just replace this like this 
> without an explanation. Why would this not break existing stuff?
 This is by referring a wrong register in bspec, not needed and removing it
> >  #define   PIPEMISC_DITHER_ENABLE	(1 << 4)
> >  #define   PIPEMISC_DITHER_TYPE_MASK	(3 << 2)
> >  #define   PIPEMISC_DITHER_TYPE_SP	(0 << 2)
> > @@ -7726,6 +7726,7 @@ enum {
> >  #define  GAMMA_MODE_MODE_12BIT	(2 << 0)
> >  #define  GAMMA_MODE_MODE_SPLIT	(3 << 0) /* ivb-bdw */
> >  #define  GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED	(3 << 0) /* icl + */
> > +#define  GAMMA_MODE_DITHER_AFTER_CC1 (1 << 26)
> 
> The bits are supposed to be defined in the order from highest to 
> lowest bit. See the big comment at the beginning of the file.
Yes..Noted

> It's confusing that this is named GAMMA_MODE_ while it's not included 
> in GAMMA_MODE_MASK (and likely shouldn't be).

Yes..can change the name to GAMMA_DITHER_AFTER_CC1
>
> >  /* DMC */
> >  #define DMC_PROGRAM(i)		_MMIO(0x80000 + (i) * 4)
> 
> --
> Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
