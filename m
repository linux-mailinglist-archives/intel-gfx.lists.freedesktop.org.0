Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CADEA1264AA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 15:29:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B14E16E0F2;
	Thu, 19 Dec 2019 14:29:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 023CF6E0F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 14:29:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 06:29:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="267236189"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Dec 2019 06:29:00 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 IRSMSX154.ger.corp.intel.com ([169.254.12.207]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 14:28:59 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 14/15] drm/framebuffer: Format modifier for
 Intel Gen 12 render compression with Clear Color
Thread-Index: AQHVtb3jA7tx3juz2UaX+qa4BZEnJqfBhdAA
Date: Thu, 19 Dec 2019 14:28:59 +0000
Message-ID: <26fb0ef14633a9b92fae62f517a8fa301b19541d.camel@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-15-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-15-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <7F42B9D92F40FE4481B93FE1A800CBB4@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 14/15] drm/framebuffer: Format modifier for
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
Cc: "Kondapally, Kalyan" <kalyan.kondapally@intel.com>, "Chery,
 Nanley G" <nanley.g.chery@intel.com>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2019-12-18 at 18:11 +0200, Imre Deak wrote:
> From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> Gen12 display can decompress surfaces compressed by render engine
> with
> Clear Color, add a new modifier as the driver needs to know the
> surface
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

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  include/uapi/drm/drm_fourcc.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/include/uapi/drm/drm_fourcc.h
> b/include/uapi/drm/drm_fourcc.h
> index 8bc0b31597d8..1c9c3991cab6 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -434,6 +434,25 @@ extern "C" {
>   */
>  #define I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS fourcc_mod_code(INTEL,
> 7)
>  
> +/*
> + * Intel Color Control Surface with Clear Color (CCS) for Gen-12
> render
> + * compression.
> + *
> + * The main surface is Y-tiled and is at plane index 0 whereas CCS
> is linear
> + * and at index 1. The clear color is stored at index 2, and the
> pitch should
> + * be ignored. The clear color structure is 256 bits. The first 128
> bits
> + * represents Raw Clear Color Red, Green, Blue and Alpha color each
> represented
> + * by 32 bits. The raw clear color is consumed by the 3d engine and
> generates
> + * the converted clear color of size 64 bits. The first 32 bits
> store the Lower
> + * Converted Clear Color value and the next 32 bits store the Higher
> Converted
> + * Clear Color value when applicable. The Converted Clear Color
> values are
> + * consumed by the DE. The last 64 bits are used to store Color
> Discard Enable
> + * and Depth Clear Value Valid which are ignored by the DE. A CCS
> cache line
> + * corresponds to an area of 4x1 tiles in the main surface. The main
> surface
> + * pitch is required to be a multiple of 4 tile widths.
> + */
> +#define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC
> fourcc_mod_code(INTEL, 8)
> +
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized
> macroblocks
>   *
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
