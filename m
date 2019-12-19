Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFDE126F4F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 22:04:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DC686E3F9;
	Thu, 19 Dec 2019 21:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E60196E3F9
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 21:04:16 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 13:04:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,333,1571727600"; d="scan'208";a="298826438"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga001.jf.intel.com with ESMTP; 19 Dec 2019 13:04:14 -0800
Date: Thu, 19 Dec 2019 13:04:14 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20191219210414.GD2712252@mdroper-desk1.amr.corp.intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-4-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218161105.30638-4-imre.deak@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 18, 2019 at 06:10:53PM +0200, Imre Deak wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> Easier to read if all the alignment changes are in one place and contained
> within a function.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 31 ++++++++++----------
>  1 file changed, 16 insertions(+), 15 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 928a581336a7..9c27cf651e08 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2589,7 +2589,22 @@ intel_fb_stride_alignment(const struct drm_framebu=
ffer *fb, int color_plane)
>  		else
>  			return 64;
>  	} else {
> -		return intel_tile_width_bytes(fb, color_plane);
> +		u32 tile_width =3D intel_tile_width_bytes(fb, color_plane);
> +
> +		/*
> +		 * Display WA #0531: skl,bxt,kbl,glk
> +		 *
> +		 * Render decompression and plane width > 3840
> +		 * combined with horizontal panning requires the
> +		 * plane stride to be a multiple of 4. We'll just
> +		 * require the entire fb to accommodate that to avoid
> +		 * potential runtime errors at plane configuration time.
> +		 */
> +		if (IS_GEN(dev_priv, 9) && is_ccs_modifier(fb->modifier) &&
> +		    color_plane =3D=3D 0 && fb->width > 3840)
> +			tile_width *=3D 4;
> +
> +		return tile_width;
>  	}
>  }
>  =

> @@ -16341,20 +16356,6 @@ static int intel_framebuffer_init(struct intel_f=
ramebuffer *intel_fb,
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
> -		 * potential runtime errors at plane configuration time.
> -		 */
> -		if (IS_GEN(dev_priv, 9) && i =3D=3D 0 && fb->width > 3840 &&
> -		    is_ccs_modifier(fb->modifier))
> -			stride_alignment *=3D 4;
> -
>  		if (fb->pitches[i] & (stride_alignment - 1)) {
>  			DRM_DEBUG_KMS("plane %d pitch (%d) must be at least %u byte aligned\n=
",
>  				      i, fb->pitches[i], stride_alignment);
> -- =

> 2.22.0
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
