Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4602C5053
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 09:24:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AF0A6E889;
	Thu, 26 Nov 2020 08:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AFEB6E8B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Nov 2020 08:24:41 +0000 (UTC)
IronPort-SDR: Gr0H834I7NpRicjdAom2+UaKQJ7CSRCHDYtwnOxyXpKXupzyiQLasWcRSp0IW+0kOA6JQZ6bkd
 YyVK+8kE/tvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9816"; a="168747572"
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="168747572"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 00:24:29 -0800
IronPort-SDR: CdBVqaB7g8lrhLwneGBm9cZsO+Frf5nvD1EsHJafgNGw7iNLuG8K8dZECDqSJiP5sLEvlJqJAG
 e7juIm3iCDWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,371,1599548400"; d="scan'208";a="313950783"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by fmsmga007.fm.intel.com with ESMTP; 26 Nov 2020 00:24:26 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 26 Nov 2020 08:24:26 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Thu, 26 Nov 2020 08:24:26 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/framebuffer: Format modifier for
 Intel Gen 12 render compression with Clear Color
Thread-Index: AQHWwcY12sJeeVeUwEWp+P7o2V8zganaF2nA
Date: Thu, 26 Nov 2020 08:24:25 +0000
Message-ID: <868d62ecfa3441b09426869cfcd1f18e@intel.com>
References: <20201123182631.1740781-1-imre.deak@intel.com>
In-Reply-To: <20201123182631.1740781-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/framebuffer: Format modifier for
 Intel Gen 12 render compression with Clear Color
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
Cc: Rafael Antognolli <rafael.antognolli@intel.com>, "Kondapally,
 Kalyan" <kalyan.kondapally@intel.com>, "Chery,
 Nanley G" <nanley.g.chery@intel.com>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> Deak
> Sent: Monday, November 23, 2020 8:27 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Chery, Nanley G <nanley.g.chery@intel.com>; Rafael Antognolli
> <rafael.antognolli@intel.com>; Pandiyan, Dhinakaran
> <dhinakaran.pandiyan@intel.com>; Kondapally, Kalyan
> <kalyan.kondapally@intel.com>
> Subject: [Intel-gfx] [PATCH 1/2] drm/framebuffer: Format modifier for Intel
> Gen 12 render compression with Clear Color
> 
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> Gen12 display can decompress surfaces compressed by render engine with
> Clear Color, add a new modifier as the driver needs to know the surface was
> compressed by render engine.
> 
> V2: Description changes as suggested by Rafael.
> V3: Mention the Clear Color size of 64 bits in the comments(DK)
> v4: Fix trailing whitespaces
> v5: Explain Clear Color in the documentation.
> v6: Documentation Nitpicks(Nanley)
> 
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Cc: Kalyan Kondapally <kalyan.kondapally@intel.com>
> Cc: Rafael Antognolli <rafael.antognolli@intel.com>
> Cc: Nanley Chery <nanley.g.chery@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  include/uapi/drm/drm_fourcc.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/include/uapi/drm/drm_fourcc.h
> b/include/uapi/drm/drm_fourcc.h index ca48ed0e6bc1..0a1b2c4c4bee
> 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -527,6 +527,25 @@ extern "C" {
>   */
>  #define I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS
> fourcc_mod_code(INTEL, 7)
> 
> +/*
> + * Intel Color Control Surface with Clear Color (CCS) for Gen-12 render
> + * compression.
> + *
> + * The main surface is Y-tiled and is at plane index 0 whereas CCS is
> +linear
> + * and at index 1. The clear color is stored at index 2, and the pitch
> +should
> + * be ignored. The clear color structure is 256 bits. The first 128
> +bits
> + * represents Raw Clear Color Red, Green, Blue and Alpha color each
> +represented
> + * by 32 bits. The raw clear color is consumed by the 3d engine and
> +generates
> + * the converted clear color of size 64 bits. The first 32 bits store
> +the Lower
> + * Converted Clear Color value and the next 32 bits store the Higher
> +Converted
> + * Clear Color value when applicable. The Converted Clear Color values
> +are
> + * consumed by the DE. The last 64 bits are used to store Color Discard
> +Enable
> + * and Depth Clear Value Valid which are ignored by the DE. A CCS cache
> +line
> + * corresponds to an area of 4x1 tiles in the main surface. The main
> +surface
> + * pitch is required to be a multiple of 4 tile widths.
> + */
> +#define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC
> fourcc_mod_code(INTEL,
> +8)
> +
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
>   *
> --
> 2.25.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
