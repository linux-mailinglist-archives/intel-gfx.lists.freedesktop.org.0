Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D54C69A9DD3
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 11:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77D1110E301;
	Tue, 22 Oct 2024 09:04:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kwvyp6wX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5E5F10E301
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 09:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729587862; x=1761123862;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=sRiYCwCvf8q+ljbS+li/kKjLLeTgPr3ITzzbA3quhJM=;
 b=kwvyp6wX19eciPhURBFR0zZITW8r1QojOKK2NdeLZCnt6D3DnOxQZPbF
 Q0zvmX+Augb0CYW6dNdW3oL7mlIC6f4Pnvte6ncJakUckP0I4ji9dZr8m
 3XjdduuFrA46Mw4w72/fmOh8/Pcuyid+N9Q6DIa1EwlK0XF1TtvAzwO+8
 8mAa/5S1ryx4P8n098NNMgOU08Ir5Jk9Tx8ddtfQCQUAERse6kNzluyjN
 BF1+Dx4d18H4H1YGErD+avEhEJj9HK4/+MA+G4abg75a188Rr56X7nv+t
 FudnGYS3YWKpl+QmwdwyyH5kv1fKjURcC4jzuLeVpkhAVpiZtGrtB9gk/ w==;
X-CSE-ConnectionGUID: JzgGZCgRSNWclcJv0qfD5g==
X-CSE-MsgGUID: cN/f7LOnQ72AFqeNz89TQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="33035545"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="33035545"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:04:22 -0700
X-CSE-ConnectionGUID: Md1TvGDmQuCcLUe5QmYCtg==
X-CSE-MsgGUID: B29GIyC8SHmhJcHTyNzidA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="117227759"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 02:04:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 9/9] drm/i915: Remove ckey/format checks from
 skl_update_scaler_plane()
In-Reply-To: <20241016143134.26903-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
 <20241016143134.26903-10-ville.syrjala@linux.intel.com>
Date: Tue, 22 Oct 2024 12:04:16 +0300
Message-ID: <8734kowltb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 16 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> skl_plane_check() already takes care to reject scaling when an
> unsupported pixel format or color keying is used. No need to
> replicate that in the scaler code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 77 +++--------------------
>  1 file changed, 10 insertions(+), 67 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index baa601d27815..7dbc99b02eaa 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -272,7 +272,6 @@ int skl_update_scaler_plane(struct intel_crtc_state *=
crtc_state,
>  		to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *dev_priv =3D to_i915(intel_plane->base.dev);
>  	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> -	int ret;
>  	bool force_detach =3D !fb || !plane_state->uapi.visible;
>  	bool need_scaler =3D false;
>=20=20
> @@ -281,72 +280,16 @@ int skl_update_scaler_plane(struct intel_crtc_state=
 *crtc_state,
>  	    fb && intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
>  		need_scaler =3D true;
>=20=20
> -	ret =3D skl_update_scaler(crtc_state, force_detach,
> -				drm_plane_index(&intel_plane->base),
> -				&plane_state->scaler_id,
> -				drm_rect_width(&plane_state->uapi.src) >> 16,
> -				drm_rect_height(&plane_state->uapi.src) >> 16,
> -				drm_rect_width(&plane_state->uapi.dst),
> -				drm_rect_height(&plane_state->uapi.dst),
> -				fb ? fb->format : NULL,
> -				fb ? fb->modifier : 0,
> -				need_scaler);
> -
> -	if (ret || plane_state->scaler_id < 0)
> -		return ret;
> -
> -	/* check colorkey */
> -	if (plane_state->ckey.flags) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[PLANE:%d:%s] scaling with color key not allowed",
> -			    intel_plane->base.base.id,
> -			    intel_plane->base.name);
> -		return -EINVAL;
> -	}
> -
> -	/* Check src format */
> -	switch (fb->format->format) {
> -	case DRM_FORMAT_RGB565:
> -	case DRM_FORMAT_XBGR8888:
> -	case DRM_FORMAT_XRGB8888:
> -	case DRM_FORMAT_ABGR8888:
> -	case DRM_FORMAT_ARGB8888:
> -	case DRM_FORMAT_XRGB2101010:
> -	case DRM_FORMAT_XBGR2101010:
> -	case DRM_FORMAT_ARGB2101010:
> -	case DRM_FORMAT_ABGR2101010:
> -	case DRM_FORMAT_YUYV:
> -	case DRM_FORMAT_YVYU:
> -	case DRM_FORMAT_UYVY:
> -	case DRM_FORMAT_VYUY:
> -	case DRM_FORMAT_NV12:
> -	case DRM_FORMAT_XYUV8888:
> -	case DRM_FORMAT_P010:
> -	case DRM_FORMAT_P012:
> -	case DRM_FORMAT_P016:
> -	case DRM_FORMAT_Y210:
> -	case DRM_FORMAT_Y212:
> -	case DRM_FORMAT_Y216:
> -	case DRM_FORMAT_XVYU2101010:
> -	case DRM_FORMAT_XVYU12_16161616:
> -	case DRM_FORMAT_XVYU16161616:
> -		break;
> -	case DRM_FORMAT_XBGR16161616F:
> -	case DRM_FORMAT_ABGR16161616F:
> -	case DRM_FORMAT_XRGB16161616F:
> -	case DRM_FORMAT_ARGB16161616F:
> -		if (DISPLAY_VER(dev_priv) >=3D 11)
> -			break;
> -		fallthrough;
> -	default:
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[PLANE:%d:%s] FB:%d unsupported scaling format 0x%x\n",
> -			    intel_plane->base.base.id, intel_plane->base.name,
> -			    fb->base.id, fb->format->format);
> -		return -EINVAL;
> -	}
> -
> -	return 0;
> +	return skl_update_scaler(crtc_state, force_detach,
> +				 drm_plane_index(&intel_plane->base),
> +				 &plane_state->scaler_id,
> +				 drm_rect_width(&plane_state->uapi.src) >> 16,
> +				 drm_rect_height(&plane_state->uapi.src) >> 16,
> +				 drm_rect_width(&plane_state->uapi.dst),
> +				 drm_rect_height(&plane_state->uapi.dst),
> +				 fb ? fb->format : NULL,
> +				 fb ? fb->modifier : 0,
> +				 need_scaler);
>  }
>=20=20
>  static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *sca=
ler_state,

--=20
Jani Nikula, Intel
