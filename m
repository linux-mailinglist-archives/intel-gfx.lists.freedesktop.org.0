Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FEA39E52D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jun 2021 19:19:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06BEC6E96A;
	Mon,  7 Jun 2021 17:19:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A296E964;
 Mon,  7 Jun 2021 17:19:50 +0000 (UTC)
IronPort-SDR: oudmvHwT5JhENi6Yd0c2VC2MLteT3jICSRhFDzY+a7+qqJseyBQX6s5L9eITInej9nP+CALPpu
 Ln9E+2i6gQaA==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="201646290"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="201646290"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2021 10:19:49 -0700
IronPort-SDR: 4HeXbWujpVBs9EeyLE/hMU9ZHk1aixKsKb49ysYevJCJm4X31Plui13SmScTxrr0OCHNrSIlWj
 czcClR7PvoLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; d="scan'208";a="484850949"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga002.fm.intel.com with ESMTP; 07 Jun 2021 10:19:49 -0700
Received: from bgsmsx606.gar.corp.intel.com (10.67.234.8) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 7 Jun 2021 10:19:48 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX606.gar.corp.intel.com (10.67.234.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 7 Jun 2021 22:49:46 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.008;
 Mon, 7 Jun 2021 22:49:46 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Harry Wentland <harry.wentland@amd.com>, Pekka Paalanen
 <ppaalanen@gmail.com>
Thread-Topic: [PATCH 01/21] drm: Add Enhanced Gamma and color lut range
 attributes
Thread-Index: AQHXVs8hSnwv/9woJ0GcfBgiln/9M6sAGuaAgAERibCAAnTRAIAFMypw
Date: Mon, 7 Jun 2021 17:19:46 +0000
Message-ID: <64e3d50625ba420a90e68b6359cdea65@intel.com>
References: <20210601105218.29185-1-uma.shankar@intel.com>
 <20210601105218.29185-2-uma.shankar@intel.com>
 <20210602123335.29045e06@eldfell>
 <2015b90626a04860808eb02fa5f8a117@intel.com>
 <f51cbf2d-69c7-bd7c-379a-a74724ad6d87@amd.com>
In-Reply-To: <f51cbf2d-69c7-bd7c-379a-a74724ad6d87@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/21] drm: Add Enhanced Gamma and color lut
 range attributes
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
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Harry Wentland <harry.wentland@amd.com>
> Sent: Friday, June 4, 2021 8:53 PM
> To: Shankar, Uma <uma.shankar@intel.com>; Pekka Paalanen
> <ppaalanen@gmail.com>
> Cc: intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org; Modem,
> Bhanuprakash <bhanuprakash.modem@intel.com>
> Subject: Re: [PATCH 01/21] drm: Add Enhanced Gamma and color lut range
> attributes
> 
> On 2021-06-02 4:26 p.m., Shankar, Uma wrote:
> >
> >
> >> -----Original Message-----
> >> From: Pekka Paalanen <ppaalanen@gmail.com>
> >> Sent: Wednesday, June 2, 2021 3:04 PM
> >> To: Shankar, Uma <uma.shankar@intel.com>
> >> Cc: intel-gfx@lists.freedesktop.org; dri-devel@lists.freedesktop.org;
> >> Modem, Bhanuprakash <bhanuprakash.modem@intel.com>
> >> Subject: Re: [PATCH 01/21] drm: Add Enhanced Gamma and color lut
> >> range attributes
> >>
> >> On Tue,  1 Jun 2021 16:21:58 +0530
> >> Uma Shankar <uma.shankar@intel.com> wrote:
> >>
> >>> Existing LUT precision structure is having only 16 bit precision.
> >>> This is not enough for upcoming enhanced hardwares and advance
> >>> usecases like HDR processing. Hence added a new structure with 32
> >>> bit precision values.
> >>>
> >>> This also defines a new structure to define color lut ranges, along
> >>> with related macro definitions and enums. This will help describe
> >>> multi segmented lut ranges in the hardware.
> >>>
> >>> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> >>> ---
> >>>  include/uapi/drm/drm_mode.h | 58
> >>> +++++++++++++++++++++++++++++++++++++
> >>>  1 file changed, 58 insertions(+)
> >>>
> >>> diff --git a/include/uapi/drm/drm_mode.h
> >>> b/include/uapi/drm/drm_mode.h index 9b6722d45f36..d0ce48d2e732
> >>> 100644
> >>> --- a/include/uapi/drm/drm_mode.h
> >>> +++ b/include/uapi/drm/drm_mode.h
> >>> @@ -819,6 +819,64 @@ struct hdr_output_metadata {
> >>>  	};
> >>>  };
> >>>
> >>> +/*
> >>> + * DRM_MODE_LUT_GAMMA|DRM_MODE_LUT_DEGAMMA is legal and
> means
> >> the LUT
> >>> + * can be used for either purpose, but not simultaneously. To
> >>> + expose
> >>> + * modes that support gamma and degamma simultaneously the gamma
> >>> + mode
> >>> + * must declare distinct DRM_MODE_LUT_GAMMA and
> >> DRM_MODE_LUT_DEGAMMA
> >>> + * ranges.
> >>> + */
> >>> +/* LUT is for gamma (after CTM) */
> >>> +#define DRM_MODE_LUT_GAMMA BIT(0)
> >>> +/* LUT is for degamma (before CTM) */ #define DRM_MODE_LUT_DEGAMMA
> >>> +BIT(1)
> >>> +/* linearly interpolate between the points */ #define
> >>> +DRM_MODE_LUT_INTERPOLATE BIT(2)
> >>> +/*
> >>> + * the last value of the previous range is the
> >>> + * first value of the current range.
> >>> + */
> >>> +#define DRM_MODE_LUT_REUSE_LAST BIT(3)
> >>> +/* the curve must be non-decreasing */ #define
> >>> +DRM_MODE_LUT_NON_DECREASING BIT(4)
> >>> +/* the curve is reflected across origin for negative inputs */
> >>> +#define DRM_MODE_LUT_REFLECT_NEGATIVE BIT(5)
> >>> +/* the same curve (red) is used for blue and green channels as well
> >>> +*/ #define DRM_MODE_LUT_SINGLE_CHANNEL BIT(6)
> >>> +
> >>> +struct drm_color_lut_range {
> >>> +	/* DRM_MODE_LUT_* */
> >>> +	__u32 flags;
> >>> +	/* number of points on the curve */
> >>> +	__u16 count;
> >>> +	/* input/output bits per component */
> >>> +	__u8 input_bpc, output_bpc;
> >>> +	/* input start/end values */
> >>> +	__s32 start, end;
> >>> +	/* output min/max values */
> >>> +	__s32 min, max;
> >>> +};
> >>> +
> >>> +enum lut_type {
> >>
> >> Unprefixed type name in UAPI headers is probably not a good idea.
> >
> > Ok, will rename these.
> >
> >>> +	LUT_TYPE_DEGAMMA = 0,
> >>> +	LUT_TYPE_GAMMA = 1,
> >>> +};
> >>
> >> All the above stuff seems to be the same in your other patch series'
> >> patch "[PATCH 1/9] drm: Add gamma mode property". Is this series
> >> replacing the series "[PATCH 0/9] Enhance pipe color support for
> >> multi segmented luts" or what does this mean?
> >
> > The concept and idea is similar and the range definition is also
> > common. But this series focuses on plane color management while the other one
> is for pipe/crtc color features.
> > Hence separated and floated them as unique series for review.
> >
> 
> Might be better in this case to combine both patchsets. It wasn't entirely clear to me
> whether I could base one patchset on top of the other (doesn't look like it) and what
> base to apply them on. I had success applying the plane stuff on drm-next and the
> crtc stuff on drm-intel.

Sure Harry, I guess its better to combine both the series to avoid any confusions.
I will send out next version with some more UAPI documentation based on the feedback
received.

Regards,
Uma Shankar
> 
> Harry
> 
> > Regards,
> > Uma Shankar
> >>
> >> Thanks,
> >> pq
> >>
> >>> +
> >>> +/*
> >>> + * Creating 64 bit palette entries for better data
> >>> + * precision. This will be required for HDR and
> >>> + * similar color processing usecases.
> >>> + */
> >>> +struct drm_color_lut_ext {
> >>> +	/*
> >>> +	 * Data is U32.32 fixed point format.
> >>> +	 */
> >>> +	__u64 red;
> >>> +	__u64 green;
> >>> +	__u64 blue;
> >>> +	__u64 reserved;
> >>> +};
> >>> +
> >>>  #define DRM_MODE_PAGE_FLIP_EVENT 0x01  #define
> >>> DRM_MODE_PAGE_FLIP_ASYNC 0x02  #define
> >>> DRM_MODE_PAGE_FLIP_TARGET_ABSOLUTE 0x4
> >

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
