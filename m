Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3A51270E3
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 23:48:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93D66E409;
	Thu, 19 Dec 2019 22:48:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60E356E409
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 22:48:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 14:48:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,333,1571727600"; d="scan'208";a="267353334"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Dec 2019 14:48:50 -0800
Date: Thu, 19 Dec 2019 14:48:50 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20191219224850.GF2712252@mdroper-desk1.amr.corp.intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-8-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218161105.30638-8-imre.deak@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 07/15] drm/i915/tgl: Make sure FBs have a
 correct CCS plane stride
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

On Wed, Dec 18, 2019 at 06:10:57PM +0200, Imre Deak wrote:
> The CCS plane stride must be fixed on TGL, as it's not configurable for
> the display. Instead the HW has a hardwired logic to determine it from
> the main plane stride. Make sure userspace passes in the correct stride.

Do you have a bspec page number reference for this?  I don't see it
mentioned anywhere obvious.


Matt

> =

> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 641ea24539eb..7c52591172e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2620,6 +2620,11 @@ bool is_ccs_modifier(u64 modifier)
>  	       modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
>  }
>  =

> +static int gen12_ccs_aux_stride(struct drm_framebuffer *fb, int ccs_plan=
e)
> +{
> +	return DIV_ROUND_UP(fb->pitches[ccs_to_main_plane(fb, ccs_plane)], 512)=
 * 64;
> +}
> +
>  u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>  			      u32 pixel_format, u64 modifier)
>  {
> @@ -16530,6 +16535,16 @@ static int intel_framebuffer_init(struct intel_f=
ramebuffer *intel_fb,
>  			goto err;
>  		}
>  =

> +		if (is_gen12_ccs_plane(fb, i)) {
> +			int ccs_aux_stride =3D gen12_ccs_aux_stride(fb, i);
> +
> +			if (fb->pitches[i] !=3D ccs_aux_stride) {
> +				DRM_DEBUG_KMS("ccs aux plane %d pitch (%d) must be %d\n",
> +					      i, fb->pitches[i], ccs_aux_stride);
> +				goto err;
> +			}
> +		}
> +
>  		fb->obj[i] =3D &obj->base;
>  	}
>  =

> -- =

> 2.22.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
