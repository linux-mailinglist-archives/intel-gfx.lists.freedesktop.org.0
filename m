Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C99E12628F
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 13:48:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF4C26EB60;
	Thu, 19 Dec 2019 12:48:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 064F16EB60
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 12:48:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 04:48:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="390524285"
Received: from irsmsx154.ger.corp.intel.com ([163.33.192.96])
 by orsmga005.jf.intel.com with ESMTP; 19 Dec 2019 04:48:00 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 IRSMSX154.ger.corp.intel.com ([169.254.12.207]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 12:47:59 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 07/15] drm/i915/tgl: Make sure FBs have a
 correct CCS plane stride
Thread-Index: AQHVtb3jBMZRD3L+nEaNCvbKCUhqyKfBaZmA
Date: Thu, 19 Dec 2019 12:47:59 +0000
Message-ID: <d67d528fa9e41e129191d6b33d30e31844a48efd.camel@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-8-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-8-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <D719935E4F5EFE429AF953E0613802CC@intel.com>
MIME-Version: 1.0
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
Cc: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2019-12-18 at 18:10 +0200, Imre Deak wrote:
> The CCS plane stride must be fixed on TGL, as it's not configurable
> for
> the display. Instead the HW has a hardwired logic to determine it
> from
> the main plane stride. Make sure userspace passes in the correct
> stride.
> =

> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 641ea24539eb..7c52591172e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2620,6 +2620,11 @@ bool is_ccs_modifier(u64 modifier)
>  	       modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
>  }
>  =

> +static int gen12_ccs_aux_stride(struct drm_framebuffer *fb, int
> ccs_plane)
> +{
> +	return DIV_ROUND_UP(fb->pitches[ccs_to_main_plane(fb,
> ccs_plane)], 512) * 64;
> +}
> +
>  u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>  			      u32 pixel_format, u64 modifier)
>  {
> @@ -16530,6 +16535,16 @@ static int intel_framebuffer_init(struct
> intel_framebuffer *intel_fb,
>  			goto err;
>  		}
>  =

> +		if (is_gen12_ccs_plane(fb, i)) {
> +			int ccs_aux_stride =3D gen12_ccs_aux_stride(fb,
> i);
> +
> +			if (fb->pitches[i] !=3D ccs_aux_stride) {
> +				DRM_DEBUG_KMS("ccs aux plane %d pitch
> (%d) must be %d\n",
> +					      i, fb->pitches[i],
> ccs_aux_stride);
> +				goto err;
> +			}
> +		}
> +
>  		fb->obj[i] =3D &obj->base;
>  	}
>  =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
