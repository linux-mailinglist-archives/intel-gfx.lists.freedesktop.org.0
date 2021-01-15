Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F08E22F84A0
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 19:42:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 035F5899DE;
	Fri, 15 Jan 2021 18:42:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9ABF0899DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 18:42:36 +0000 (UTC)
IronPort-SDR: 2Sqhah/mzGlguHMNiHq92IO+ZEUdRh3ijKKI6yLxr3gcp9bKdEYz/Bi3DeIBAABD+iLzVxpIP3
 cuhRRcTCMtpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9865"; a="178739165"
X-IronPort-AV: E=Sophos;i="5.79,350,1602572400"; d="scan'208";a="178739165"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2021 10:42:33 -0800
IronPort-SDR: +AlRHj8oJXyNdcEdCy3BFnKvbZzpg052MQQjA6zl0kFTx0sYvkIAs61B6/PvEB0o+uHwOE20OE
 tSvViUqLU8eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,350,1602572400"; d="scan'208";a="405558724"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Jan 2021 10:42:33 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 Jan 2021 10:42:33 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 Jan 2021 10:42:32 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.1713.004;
 Fri, 15 Jan 2021 10:42:32 -0800
From: "Chery, Nanley G" <nanley.g.chery@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v7 1/3] drm/framebuffer: Format modifier for Intel Gen 12
 render compression with Clear Color
Thread-Index: AQHW6rG0dUhMO4TmX02HbMGDOMnbOKopBXUw
Date: Fri, 15 Jan 2021 18:42:32 +0000
Message-ID: <01ce83b13a7a4210a71b20deae8f9ce6@intel.com>
References: <20210114201314.783648-1-imre.deak@intel.com>
 <20210114201314.783648-2-imre.deak@intel.com>
In-Reply-To: <20210114201314.783648-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, "Kondapally,
 Kalyan" <kalyan.kondapally@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


> -----Original Message-----
> From: Imre Deak <imre.deak@intel.com>
> Sent: Thursday, January 14, 2021 12:13 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>; Ville Syrjala
> <ville.syrjala@linux.intel.com>; Pandiyan, Dhinakaran
> <dhinakaran.pandiyan@intel.com>; Kondapally, Kalyan
> <kalyan.kondapally@intel.com>; Rafael Antognolli
> <rafael.antognolli@intel.com>; Chery, Nanley G
> <nanley.g.chery@intel.com>; Daniel Vetter <daniel.vetter@ffwll.ch>; Nikula,
> Jani <jani.nikula@intel.com>
> Subject: [PATCH v7 1/3] drm/framebuffer: Format modifier for Intel Gen 12
> render compression with Clear Color
> 
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> Gen12 display can decompress surfaces compressed by render engine with
> Clear Color, add a new modifier as the driver needs to know the surface
> was compressed by render engine.
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
> ---
>  include/uapi/drm/drm_fourcc.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 

Acked-by: Nanley Chery <nanley.g.chery@intel.com>

> diff --git a/include/uapi/drm/drm_fourcc.h
> b/include/uapi/drm/drm_fourcc.h
> index 5f42a14481bd..f76de49c768f 100644
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
> + * The main surface is Y-tiled and is at plane index 0 whereas CCS is linear
> + * and at index 1. The clear color is stored at index 2, and the pitch should
> + * be ignored. The clear color structure is 256 bits. The first 128 bits
> + * represents Raw Clear Color Red, Green, Blue and Alpha color each
> represented
> + * by 32 bits. The raw clear color is consumed by the 3d engine and
> generates
> + * the converted clear color of size 64 bits. The first 32 bits store the Lower
> + * Converted Clear Color value and the next 32 bits store the Higher
> Converted
> + * Clear Color value when applicable. The Converted Clear Color values are
> + * consumed by the DE. The last 64 bits are used to store Color Discard
> Enable
> + * and Depth Clear Value Valid which are ignored by the DE. A CCS cache line
> + * corresponds to an area of 4x1 tiles in the main surface. The main surface
> + * pitch is required to be a multiple of 4 tile widths.
> + */
> +#define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC
> fourcc_mod_code(INTEL, 8)
> +
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
>   *
> --
> 2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
