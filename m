Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB98E125DDE
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 10:42:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D3FF6EAF1;
	Thu, 19 Dec 2019 09:42:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FAFA6EAF1
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 09:42:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 01:42:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="222229256"
Received: from irsmsx108.ger.corp.intel.com ([163.33.3.3])
 by fmsmga001.fm.intel.com with ESMTP; 19 Dec 2019 01:42:13 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 IRSMSX108.ger.corp.intel.com ([169.254.11.217]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 09:42:12 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 03/15] drm/i915: Move CCS stride alignment
 W/A inside intel_fb_stride_alignment
Thread-Index: AQHVtb3WyIvPw/BiR0KNZWFYS92YO6fBNbEA
Date: Thu, 19 Dec 2019 09:42:12 +0000
Message-ID: <58ca9814c9f5ca9a7bbb2a07935720818cb59204.camel@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-4-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <D4D4210DDAAB3E42AFB7CEF37C3CD564@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/15] drm/i915: Move CCS stride alignment
 W/A inside intel_fb_stride_alignment
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
Cc: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2019-12-18 at 18:10 +0200, Imre Deak wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> Easier to read if all the alignment changes are in one place and
> contained
> within a function.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 31 ++++++++++------
> ----
>  1 file changed, 16 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 928a581336a7..9c27cf651e08 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2589,7 +2589,22 @@ intel_fb_stride_alignment(const struct
> drm_framebuffer *fb, int color_plane)
>  		else
>  			return 64;
>  	} else {
> -		return intel_tile_width_bytes(fb, color_plane);
> +		u32 tile_width =3D intel_tile_width_bytes(fb,
> color_plane);
> +
> +		/*
> +		 * Display WA #0531: skl,bxt,kbl,glk
> +		 *
> +		 * Render decompression and plane width > 3840
> +		 * combined with horizontal panning requires the
> +		 * plane stride to be a multiple of 4. We'll just
> +		 * require the entire fb to accommodate that to avoid
> +		 * potential runtime errors at plane configuration
> time.
> +		 */
> +		if (IS_GEN(dev_priv, 9) && is_ccs_modifier(fb-
> >modifier) &&
> +		    color_plane =3D=3D 0 && fb->width > 3840)
> +			tile_width *=3D 4;
> +
> +		return tile_width;
>  	}
>  }
>  =

> @@ -16341,20 +16356,6 @@ static int intel_framebuffer_init(struct
> intel_framebuffer *intel_fb,
>  		}
>  =

>  		stride_alignment =3D intel_fb_stride_alignment(fb, i);
> -
> -		/*
> -		 * Display WA #0531: skl,bxt,kbl,glk
> -		 *
> -		 * Render decompression and plane width > 3840
> -		 * combined with horizontal panning requires the
> -		 * plane stride to be a multiple of 4. We'll just
> -		 * require the entire fb to accommodate that to avoid
> -		 * potential runtime errors at plane configuration
> time.
> -		 */
> -		if (IS_GEN(dev_priv, 9) && i =3D=3D 0 && fb->width > 3840
> &&
> -		    is_ccs_modifier(fb->modifier))
> -			stride_alignment *=3D 4;
> -
>  		if (fb->pitches[i] & (stride_alignment - 1)) {
>  			DRM_DEBUG_KMS("plane %d pitch (%d) must be at
> least %u byte aligned\n",
>  				      i, fb->pitches[i],
> stride_alignment);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
