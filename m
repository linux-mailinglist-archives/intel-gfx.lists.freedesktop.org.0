Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88FE711D15C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 16:49:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAF286E180;
	Thu, 12 Dec 2019 15:49:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7E496E180
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 15:49:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 07:49:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,306,1571727600"; d="scan'208";a="245773484"
Received: from invictus.jf.intel.com (HELO InViCtUs) ([10.54.75.159])
 by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2019 07:49:04 -0800
Date: Thu, 12 Dec 2019 07:49:14 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191212154914.GA21507@InViCtUs>
References: <20191126002635.5779-1-radhakrishna.sripada@intel.com>
 <20191126002635.5779-2-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191126002635.5779-2-radhakrishna.sripada@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v7 1/7] drm/framebuffer: Format modifier for
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, nanley.g.chery@intel.com,
 dhinakaran.pandiyan@intel.com, ville.syrjala@intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 25, 2019 at 04:26:29PM -0800, Radhakrishna Sripada wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> Gen-12 has a new compression format, add a new modifier to indicate that.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Nanley G Chery <nanley.g.chery@intel.com>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  include/uapi/drm/drm_fourcc.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> =

> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
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
> + * The main surface is Y-tiled and at plane index 0, the CCS is linear a=
nd
> + * at index 1. A 64B CCS cache line corresponds to an area of 4x1 tiles =
in
> + * main surface. In other words, 4 bits in CCS map to a main surface cac=
he
> + * line pair. The main surface pitch is required to be a multiple of four
> + * Y-tile widths.
> + */
> +#define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS fourcc_mod_code(INTEL, 6)
> +
>  /*
>   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
>   *
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
