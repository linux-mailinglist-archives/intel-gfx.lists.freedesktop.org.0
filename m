Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA624126468
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 15:17:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 098B46EB81;
	Thu, 19 Dec 2019 14:17:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FDA06EB81
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 14:17:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 06:17:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="213019721"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by fmsmga007.fm.intel.com with ESMTP; 19 Dec 2019 06:17:11 -0800
Received: from irsmsx112.ger.corp.intel.com (10.108.20.5) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Dec 2019 14:17:08 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 irsmsx112.ger.corp.intel.com ([169.254.1.125]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 14:17:09 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 11/15] drm/framebuffer: Format modifier for
 Intel Gen-12 media compression
Thread-Index: AQHVtb3uoogXz1yFhk+mWCqoCztIvKfBgoGA
Date: Thu, 19 Dec 2019 14:17:07 +0000
Message-ID: <22b98923734456e15a7a2bf25182607c15966abb.camel@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-12-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-12-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <B9D25B4DEBC179408841632D8631E451@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 11/15] drm/framebuffer: Format modifier for
 Intel Gen-12 media compression
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
Cc: "Chery, Nanley G" <nanley.g.chery@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>, "Pandiyan,
 Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2019-12-18 at 18:11 +0200, Imre Deak wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> Gen-12 display can decompress surfaces compressed by the media
> engine, add
> a new modifier as the driver needs to know the surface was compressed
> by
> the media or render engine.
> =

> v2: Update code comment describing the color plane order for YUV
>     semiplanar formats.
> =

> Cc: Nanley G Chery <nanley.g.chery@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  include/uapi/drm/drm_fourcc.h | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> =

> diff --git a/include/uapi/drm/drm_fourcc.h
> b/include/uapi/drm/drm_fourcc.h
> index 5ba481f49931..8bc0b31597d8 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -421,6 +421,19 @@ extern "C" {
>   */
>  #define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS fourcc_mod_code(INTEL,
> 6)
>  =

> +/*
> + * Intel color control surfaces (CCS) for Gen-12 media compression
> + *
> + * The main surface is Y-tiled and at plane index 0, the CCS is
> linear and
> + * at index 1. A 64B CCS cache line corresponds to an area of 4x1
> tiles in
> + * main surface. In other words, 4 bits in CCS map to a main surface
> cache
> + * line pair. The main surface pitch is required to be a multiple of
> four
> + * Y-tile widths. For semi-planar formats like NV12, CCS planes
> follow the
> + * Y and UV planes i.e., planes 0 and 1 are used for Y and UV
> surfaces,
> + * planes 2 and 3 for the respective CCS.
> + */
> +#define I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS fourcc_mod_code(INTEL,
> 7)
> +
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized
> macroblocks
>   *
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
