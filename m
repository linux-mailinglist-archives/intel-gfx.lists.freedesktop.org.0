Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8582F75A1
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 10:41:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C850089F08;
	Fri, 15 Jan 2021 09:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70E5A89F08
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 09:41:08 +0000 (UTC)
IronPort-SDR: Aryi+f5esJ+EUK21cBaca6BlXlJCFMHSlxoWbkTwTkULlZce55xB5GLSzBFhG+wJtFRr8iZrEl
 w5Jx1W8mDQDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="242595193"
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="242595193"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 01:41:06 -0800
IronPort-SDR: 1HelsyBVSDTVFI0r/KV+8uqXp0jUOTAI5XeKCgHZ7Gm5vS37Bq9XCwKQTrlB5rjfzN+GJ2Kd8W
 Z4aD7xm0oOGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,349,1602572400"; d="scan'208";a="499872994"
Received: from irsmsx606.ger.corp.intel.com ([163.33.146.139])
 by orsmga004.jf.intel.com with ESMTP; 15 Jan 2021 01:41:06 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX606.ger.corp.intel.com (163.33.146.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 Jan 2021 09:41:05 +0000
Received: from irsmsx605.ger.corp.intel.com ([163.33.146.138]) by
 IRSMSX605.ger.corp.intel.com ([163.33.146.138]) with mapi id 15.01.1713.004;
 Fri, 15 Jan 2021 09:41:05 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v7 1/3] drm/framebuffer: Format modifier for
 Intel Gen 12 render compression with Clear Color
Thread-Index: AQHW6rHDy+Yt1od7NEqZuzSko92EPaoob2UA
Date: Fri, 15 Jan 2021 09:41:04 +0000
Message-ID: <d481d7cf7c3042d0b0cb096176822ab6@intel.com>
References: <20210114201314.783648-1-imre.deak@intel.com>
 <20210114201314.783648-2-imre.deak@intel.com>
In-Reply-To: <20210114201314.783648-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.0.76
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [163.33.253.164]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 1/3] drm/framebuffer: Format modifier for
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
Cc: "Chery, Nanley G" <nanley.g.chery@intel.com>,
 Rafael Antognolli <rafael.antognolli@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, "Nikula, Jani" <jani.nikula@intel.com>,
 "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>, "Kondapally,
 Kalyan" <kalyan.kondapally@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Imre
> Deak
> Sent: Thursday, January 14, 2021 10:13 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Chery, Nanley G <nanley.g.chery@intel.com>; Rafael Antognolli
> <rafael.antognolli@intel.com>; Daniel Vetter <daniel.vetter@ffwll.ch>;
> Nikula, Jani <jani.nikula@intel.com>; Pandiyan, Dhinakaran
> <dhinakaran.pandiyan@intel.com>; Kondapally, Kalyan
> <kalyan.kondapally@intel.com>
> Subject: [Intel-gfx] [PATCH v7 1/3] drm/framebuffer: Format modifier for
> Intel Gen 12 render compression with Clear Color
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
> Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
Looks ok to me.

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  include/uapi/drm/drm_fourcc.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/include/uapi/drm/drm_fourcc.h
> b/include/uapi/drm/drm_fourcc.h index 5f42a14481bd..f76de49c768f
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
