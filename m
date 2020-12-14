Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D882DA3BE
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 23:57:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DDEC6E054;
	Mon, 14 Dec 2020 22:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3231C6E054
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Dec 2020 22:57:08 +0000 (UTC)
IronPort-SDR: Bx2aRy+4A9Fo1AEn9xFCvdys9QXi7ky44Vtua0hIoC3531Lr2alOm1KD6KGBCt9XOB8UthX6Mg
 P7+GzM8Z3pmQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="174937713"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="174937713"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 14:57:07 -0800
IronPort-SDR: M9f4AjKNZ4oEnvnKpvQUS9JUPZv170hq1gNRBYvBwseXbLu3xQf4niSIqDX+g5pH1FUWlO+1ga
 c5vtXJ5IyrAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="351626075"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 14 Dec 2020 14:57:07 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Dec 2020 14:57:06 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 BGSMSX604.gar.corp.intel.com (10.67.234.6) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 15 Dec 2020 04:27:03 +0530
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.1713.004;
 Tue, 15 Dec 2020 04:27:03 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Andres Calderon Jaramillo <andrescj@google.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Prevent double YUV range correction on
 HDR planes
Thread-Index: AQHW0mc48eW/5ImNekysZtw4zTvSo6n3M0Iw
Date: Mon, 14 Dec 2020 22:57:03 +0000
Message-ID: <9448bc8ea67a49d6a1ebf208824e5472@intel.com>
References: <20201214221934.2478240-1-andrescj@google.com>
In-Reply-To: <20201214221934.2478240-1-andrescj@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Prevent double YUV range
 correction on HDR planes
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
Cc: Andres Calderon Jaramillo <andrescj@chromium.org>,
 "seanpaul@chromium.org" <seanpaul@chromium.org>, "Venkatesh Reddy,
 Sushma" <sushma.venkatesh.reddy@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: andrescj via sendgmr <andrescj@andrescj-cros-specialist.c.googlers.com>
> On Behalf Of Andres Calderon Jaramillo
> Sent: Tuesday, December 15, 2020 3:50 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Venkatesh Reddy, Sushma
> <sushma.venkatesh.reddy@intel.com>; seanpaul@chromium.org; Andres
> Calderon Jaramillo <andrescj@chromium.org>
> Subject: [PATCH] drm/i915/display: Prevent double YUV range correction on HDR
> planes
> 
> From: Andres Calderon Jaramillo <andrescj@chromium.org>
> 
> Prevent the ICL HDR plane pipeline from performing YUV color range correction
> twice when the input is in limited range.
> 
> Before this patch the following could happen: user space gives us a YUV buffer in
> limited range; per the pipeline in [1], the plane would first go through a "YUV
> Range correct" stage that expands the range; the plane would then go through
> the "Input CSC" stage which would also expand the range because
> icl_program_input_csc() would use a matrix and an offset that assume limited-
> range input; this would ultimately cause dark and light colors to appear darker
> and lighter than they should respectively.
> 
> This is an issue because if a buffer switches between being scanned out and
> being composited with the GPU, the user will see a color difference.
> If this switching happens quickly and frequently, the user will perceive this as a
> flickering.
> 
> [1] https://01.org/sites/default/files/documentation/intel-gfx-prm-osrc-icllp-
> vol12-displayengine_0.pdf#page=281

Change looks good to me, double conversion should not be done.
Plane input csc coefficients take care of the limited range.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Andres Calderon Jaramillo <andrescj@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 761be8deaa9b..aeea344b06ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4811,6 +4811,13 @@ u32 glk_plane_color_ctl(const struct intel_crtc_state
> *crtc_state,
>  			plane_color_ctl |=
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
>  	} else if (fb->format->is_yuv) {
>  		plane_color_ctl |= PLANE_COLOR_INPUT_CSC_ENABLE;
> +
> +		/*
> +		 * Disable the YUV range correction stage because the input CSC
> +		 * stage already takes care of range conversion by using separate
> +		 * matrices and offsets depending on the color range.
> +		 */
> +		plane_color_ctl |=
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
>  	}
> 
>  	return plane_color_ctl;
> --
> 2.29.2.684.gfbc64c5ab5-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
