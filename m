Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B81125D29
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 10:01:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8772C6E0D0;
	Thu, 19 Dec 2019 09:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA2BB6E0D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 09:01:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 01:01:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="241085106"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by fmsmga004.fm.intel.com with ESMTP; 19 Dec 2019 01:01:18 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 IRSMSX107.ger.corp.intel.com ([169.254.10.222]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 09:01:18 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 01/15] drm/framebuffer: Format modifier for
 Intel Gen-12 render compression
Thread-Index: AQHVtb3ZIuirFLOqv0yQ35a5fOZ4EafBKkIA
Date: Thu, 19 Dec 2019 09:01:17 +0000
Message-ID: <2a9976fea8f785995f64dae6d1f8389c3c09f832.camel@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-2-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <B3320A85E83627449D916A8E8DDC64C8@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/15] drm/framebuffer: Format modifier for
 Intel Gen-12 render compression
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

On Wed, 2019-12-18 at 18:10 +0200, Imre Deak wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> Gen-12 has a new compression format, add a new modifier to indicate
> that.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Nanley G Chery <nanley.g.chery@intel.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  include/uapi/drm/drm_fourcc.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> =

> diff --git a/include/uapi/drm/drm_fourcc.h
> b/include/uapi/drm/drm_fourcc.h
> index 8caaaf7ff91b..5ba481f49931 100644
> --- a/include/uapi/drm/drm_fourcc.h
> +++ b/include/uapi/drm/drm_fourcc.h
> @@ -410,6 +410,17 @@ extern "C" {
>  #define I915_FORMAT_MOD_Y_TILED_CCS	fourcc_mod_code(INTEL, 4)
>  #define I915_FORMAT_MOD_Yf_TILED_CCS	fourcc_mod_code(INTEL, 5)
>  =

> +/*
> + * Intel color control surfaces (CCS) for Gen-12 render compression.
> + *
> + * The main surface is Y-tiled and at plane index 0, the CCS is
> linear and
> + * at index 1. A 64B CCS cache line corresponds to an area of 4x1
> tiles in
> + * main surface. In other words, 4 bits in CCS map to a main surface
> cache
> + * line pair. The main surface pitch is required to be a multiple of
> four
> + * Y-tile widths.
> + */
> +#define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS fourcc_mod_code(INTEL,
> 6)
> +
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized
> macroblocks
>   *
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
