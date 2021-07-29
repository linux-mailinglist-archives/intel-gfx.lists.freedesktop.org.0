Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1C03D9F15
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 10:01:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4E76E983;
	Thu, 29 Jul 2021 08:01:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D73D36E51B
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 08:01:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212862963"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="212862963"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 01:01:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="518092360"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jul 2021 01:01:36 -0700
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 29 Jul 2021 09:01:35 +0100
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2242.010;
 Thu, 29 Jul 2021 13:31:34 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Fix the 12 BPC bits for PIPE_MISC reg
Thread-Index: AQHXfFnrwIK0w+XWRUupT2hIFSx9B6tZojzg
Date: Thu, 29 Jul 2021 08:01:34 +0000
Message-ID: <77eb4fa7722a488ebe653c37bad259e5@intel.com>
References: <1626668714-17780-1-git-send-email-ankit.k.nautiyal@intel.com>
In-Reply-To: <1626668714-17780-1-git-send-email-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the 12 BPC bits for PIPE_MISC
 reg
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Monday, July 19, 2021 9:55 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Nikula, Jani <jani.nikula@intel.com>;
> ville.syrjala@linux.intel.com
> Subject: [PATCH] drm/i915: Fix the 12 BPC bits for PIPE_MISC reg

Append display in header.
> 
> From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> 
> Till DISPLAY12 the PIPE_MISC bits 5-7 are used to set the Dithering BPC, with valid
> values of 6, 8, 10 BPC.
> For ADLP+ these bits are used to set the PORT OUTPUT BPC, with valid values of: 6,
> 8, 10, 12 BPC, and need to be programmed whether dithering is enabled or not.
> 
> This patch:
> -corrects the bits 5-7 for PIPE MISC register for 12 BPC.
> -renames the bits and mask to have generic names for these bits for dithering bpc
> and port output bpc.
> 

I guess we have 2 issues here. One is wrong definition of 12bpc for dither which seems not
even there in hw before display 12 platforms.  Other one is the port output bpc fix.
Would suggest to split this patch in 2 addressing these issues separately. Send 1st patch as
Fixme (with commit it is fixing), and other as normal feature addition.


> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 23 +++++++++++++----------
>  drivers/gpu/drm/i915/i915_reg.h              | 16 +++++++++++-----
>  2 files changed, 24 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 65ddb6c..dc4869f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5760,16 +5760,18 @@ static void bdw_set_pipemisc(const struct
> intel_crtc_state *crtc_state)
> 
>  	switch (crtc_state->pipe_bpp) {
>  	case 18:
> -		val |= PIPEMISC_DITHER_6_BPC;
> +		val |= PIPEMISC_6_BPC;
>  		break;
>  	case 24:
> -		val |= PIPEMISC_DITHER_8_BPC;
> +		val |= PIPEMISC_8_BPC;
>  		break;
>  	case 30:
> -		val |= PIPEMISC_DITHER_10_BPC;
> +		val |= PIPEMISC_10_BPC;
>  		break;
>  	case 36:
> -		val |= PIPEMISC_DITHER_12_BPC;
> +		/* Port output 12BPC defined for ADLP+ */
> +		if (DISPLAY_VER(dev_priv) > 12)
> +			val |= PIPEMISC_12_BPC_ADLP;

We have 12 bpc in TRANS_DDI_FUNC_CTRL for BDW+, so what happens to dithering
if we have 12bpc enabled. We should confirm this.

>  		break;
>  	default:
>  		MISSING_CASE(crtc_state->pipe_bpp);
> @@ -5822,15 +5824,16 @@ int bdw_get_pipemisc_bpp(struct intel_crtc *crtc)
> 
>  	tmp = intel_de_read(dev_priv, PIPEMISC(crtc->pipe));
> 
> -	switch (tmp & PIPEMISC_DITHER_BPC_MASK) {
> -	case PIPEMISC_DITHER_6_BPC:
> +	switch (tmp & PIPEMISC_BPC_MASK) {
> +	case PIPEMISC_6_BPC:
>  		return 18;
> -	case PIPEMISC_DITHER_8_BPC:
> +	case PIPEMISC_8_BPC:
>  		return 24;
> -	case PIPEMISC_DITHER_10_BPC:
> +	case PIPEMISC_10_BPC:
>  		return 30;
> -	case PIPEMISC_DITHER_12_BPC:
> -		return 36;
> +	/* PORT OUTPUT 12 BPC defined for ADLP+ */
> +	case PIPEMISC_12_BPC_ADLP:
> +		return DISPLAY_VER(dev_priv) > 12 ? 36 : 0;

Returning 0 seems odd, as this will give bpp as 0 which is not right.
We should throw a WARN since getting 12bpc set in pipe_misc is not expected (as not supported)
on pre gen12.

To me there is some discrepancy here, as transcoder output supports 12bpc so dithering
also should have that. If not we have a issue with DSI since it tries to get pipe_bpp from
bdw_get_pipemisc. Please check this out once.

>  	default:
>  		MISSING_CASE(tmp);
>  		return 0;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 943fe48..963d87d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6166,11 +6166,17 @@ enum {
>  #define   PIPEMISC_HDR_MODE_PRECISION	(1 << 23) /* icl+ */
>  #define   PIPEMISC_OUTPUT_COLORSPACE_YUV  (1 << 11)
>  #define   PIPEMISC_PIXEL_ROUNDING_TRUNC	REG_BIT(8) /* tgl+ */
> -#define   PIPEMISC_DITHER_BPC_MASK	(7 << 5)
> -#define   PIPEMISC_DITHER_8_BPC		(0 << 5)
> -#define   PIPEMISC_DITHER_10_BPC	(1 << 5)
> -#define   PIPEMISC_DITHER_6_BPC		(2 << 5)
> -#define   PIPEMISC_DITHER_12_BPC	(3 << 5)
> +/*
> + * For Display < 13, Bits 5-7 of PIPE MISC represent DITHER BPC with
> + * valid values of: 6, 8, 10 BPC.
> + * ADLP+, the bits 5-7 represent PORT OUTPUT BPC with valid values of:
> + * 6, 8, 10, 12 BPC.
> + */
> +#define   PIPEMISC_BPC_MASK		(7 << 5)
> +#define   PIPEMISC_8_BPC		(0 << 5)
> +#define   PIPEMISC_10_BPC		(1 << 5)
> +#define   PIPEMISC_6_BPC		(2 << 5)
> +#define   PIPEMISC_12_BPC_ADLP		(4 << 5) /* adlp+ */
>  #define   PIPEMISC_DITHER_ENABLE	(1 << 4)
>  #define   PIPEMISC_DITHER_TYPE_MASK	(3 << 2)
>  #define   PIPEMISC_DITHER_TYPE_SP	(0 << 2)
> --
> 2.8.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
