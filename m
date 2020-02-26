Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B1E170134
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 15:30:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 046366E994;
	Wed, 26 Feb 2020 14:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 879146E994
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 14:30:31 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 06:30:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,488,1574150400"; d="scan'208";a="271752059"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 26 Feb 2020 06:30:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2020 16:30:21 +0200
Date: Wed, 26 Feb 2020 16:30:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Bob Paauwe <bob.j.paauwe@intel.com>
Message-ID: <20200226143021.GI13686@intel.com>
References: <20200219211551.20125-1-bob.j.paauwe@intel.com>
 <20200219211551.20125-2-bob.j.paauwe@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219211551.20125-2-bob.j.paauwe@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Adding YUV444 packed format
 support for skl+ (V14)
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 19, 2020 at 01:15:51PM -0800, Bob Paauwe wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> =

> PLANE_CTL_FORMAT_AYUV is already supported, according to hardware specifi=
cation.
> =

> v2: Edited commit message, removed redundant whitespaces.
> =

> v3: Fixed fallthrough logic for the format switch cases.
> =

> v4: Yet again fixed fallthrough logic, to reuse code from other case
>     labels.
> =

> v5: Started to use XYUV instead of AYUV, as we don't use alpha.
> =

> v6: Removed unneeded initializer for new XYUV format.
> =

> v7: Added scaling support for DRM_FORMAT_XYUV
> =

> v8: Edited commit message to be more clear about skl+, renamed
>     PLANE_CTL_FORMAT_AYUV to PLANE_CTL_FORMAT_XYUV as this format
>     doesn't support per-pixel alpha. Fixed minor code issues.
> =

> v9: Moved DRM format check to proper place in intel_framebuffer_init.
> =

> v10: Added missing XYUV format to sprite planes for skl+.
> =

> v11: Changed DRM_FORMAT_XYUV to be DRM_FORMAT_XYUV8888.
> =

> v12: Fixed rebase conflicts
> =

> V13: Rebased.
>      Added format to ICL format lists.
> =

> V14: Added format to TGL format lists.
>      Rebased.
> =

> v12:
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Bob Paauwe <bob.j.paauwe@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
>  drivers/gpu/drm/i915/display/intel_sprite.c  | 6 ++++++
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  3 files changed, 12 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 61ba1f2256a0..919270b7e240 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3331,6 +3331,8 @@ int skl_format_to_fourcc(int format, bool rgb_order=
, bool alpha)
>  		return DRM_FORMAT_RGB565;
>  	case PLANE_CTL_FORMAT_NV12:
>  		return DRM_FORMAT_NV12;
> +	case PLANE_CTL_FORMAT_XYUV:
> +		return DRM_FORMAT_XYUV8888;
>  	case PLANE_CTL_FORMAT_P010:
>  		return DRM_FORMAT_P010;
>  	case PLANE_CTL_FORMAT_P012:
> @@ -4570,6 +4572,8 @@ static u32 skl_plane_ctl_format(u32 pixel_format)
>  	case DRM_FORMAT_XRGB16161616F:
>  	case DRM_FORMAT_ARGB16161616F:
>  		return PLANE_CTL_FORMAT_XRGB_16161616F;
> +	case DRM_FORMAT_XYUV8888:
> +		return PLANE_CTL_FORMAT_XYUV;
>  	case DRM_FORMAT_YUYV:
>  		return PLANE_CTL_FORMAT_YUV422 | PLANE_CTL_YUV422_YUYV;
>  	case DRM_FORMAT_YVYU:
> @@ -6186,6 +6190,7 @@ static int skl_update_scaler_plane(struct intel_crt=
c_state *crtc_state,
>  	case DRM_FORMAT_UYVY:
>  	case DRM_FORMAT_VYUY:
>  	case DRM_FORMAT_NV12:
> +	case DRM_FORMAT_XYUV8888:
>  	case DRM_FORMAT_P010:
>  	case DRM_FORMAT_P012:
>  	case DRM_FORMAT_P016:
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 7abeefe8dce5..8a95a1e7448a 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -2483,6 +2483,7 @@ static const u32 skl_plane_formats[] =3D {
>  	DRM_FORMAT_YVYU,
>  	DRM_FORMAT_UYVY,
>  	DRM_FORMAT_VYUY,
> +	DRM_FORMAT_XYUV8888,
>  };
>  =

>  static const u32 skl_planar_formats[] =3D {
> @@ -2501,6 +2502,7 @@ static const u32 skl_planar_formats[] =3D {
>  	DRM_FORMAT_UYVY,
>  	DRM_FORMAT_VYUY,
>  	DRM_FORMAT_NV12,
> +	DRM_FORMAT_XYUV8888,
>  };
>  =

>  static const u32 glk_planar_formats[] =3D {
> @@ -2572,6 +2574,7 @@ static const u32 icl_sdr_uv_plane_formats[] =3D {
>  	DRM_FORMAT_XVYU2101010,
>  	DRM_FORMAT_XVYU12_16161616,
>  	DRM_FORMAT_XVYU16161616,
> +	DRM_FORMAT_XYUV8888,

Would be more consistent if this was placed just before
DRM_FORMAT_XVYU2101010 in all cases.

Also we seem to be missing glk_planar_formats[] and
icl_sdr_y_plane_formats[] entirely.

>  };
>  =

>  static const u32 icl_hdr_plane_formats[] =3D {
> @@ -2603,6 +2606,7 @@ static const u32 icl_hdr_plane_formats[] =3D {
>  	DRM_FORMAT_XVYU2101010,
>  	DRM_FORMAT_XVYU12_16161616,
>  	DRM_FORMAT_XVYU16161616,
> +	DRM_FORMAT_XYUV8888,
>  };
>  =

>  static const u64 skl_plane_format_modifiers_noccs[] =3D {
> @@ -2770,6 +2774,7 @@ static bool skl_plane_format_mod_supported(struct d=
rm_plane *_plane,
>  	case DRM_FORMAT_UYVY:
>  	case DRM_FORMAT_VYUY:
>  	case DRM_FORMAT_NV12:
> +	case DRM_FORMAT_XYUV8888:
>  	case DRM_FORMAT_P010:
>  	case DRM_FORMAT_P012:
>  	case DRM_FORMAT_P016:
> @@ -2834,6 +2839,7 @@ static bool gen12_plane_format_mod_supported(struct=
 drm_plane *_plane,
>  	case DRM_FORMAT_UYVY:
>  	case DRM_FORMAT_VYUY:
>  	case DRM_FORMAT_NV12:
> +	case DRM_FORMAT_XYUV8888:
>  	case DRM_FORMAT_P010:
>  	case DRM_FORMAT_P012:
>  	case DRM_FORMAT_P016:
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index b09c1d6dc0aa..17e6453d31d7 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6768,7 +6768,7 @@ enum {
>  #define   PLANE_CTL_FORMAT_P012			(5 << 24)
>  #define   PLANE_CTL_FORMAT_XRGB_16161616F	(6 << 24)
>  #define   PLANE_CTL_FORMAT_P016			(7 << 24)
> -#define   PLANE_CTL_FORMAT_AYUV			(8 << 24)
> +#define   PLANE_CTL_FORMAT_XYUV			(8 << 24)
>  #define   PLANE_CTL_FORMAT_INDEXED		(12 << 24)
>  #define   PLANE_CTL_FORMAT_RGB_565		(14 << 24)
>  #define   ICL_PLANE_CTL_FORMAT_MASK		(0x1f << 23)
> -- =

> 2.21.0

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
