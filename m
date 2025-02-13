Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98688A34E60
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 20:22:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 389E210EB85;
	Thu, 13 Feb 2025 19:22:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d0/AzX2a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3364410EB85
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 19:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739474520; x=1771010520;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=fHtmw4zrgBEAMj84clUHLjrZQ+HRnSSd+XbB+9dCkh8=;
 b=d0/AzX2aHzKmP/xSjeH5/peZIVn8XFEmftcBSrojPQdHymt0opddkCG2
 YLuK/CY1PaGKFtofcxXO7SmfJgizCnSsMHcE6cU4S2t17rXPF9GixWaQK
 N3U+tD9yGBzAjrOsBpNispie7a8y81gVCbViZsyHd4j9jNT1GD5Vhg2A6
 osCWaFktUUb2aeLXy78Qr5+8IluskrqshrSKHqzwZ5dP1IsMFzlRejMk5
 19kW6GRwmDtruYXAfz71/YaN8x1eujZ2gEb/Fb5G6F7dxWwHFj96+mX+C
 NYiVZxGIJYaC4J7mnfUiiYBYKjEgClZtbQQN/vj+rLLnRpdgPwHy0Sbe5 A==;
X-CSE-ConnectionGUID: 47XMfgBrQLG4NOd7+wst+A==
X-CSE-MsgGUID: qHtIg9EiTi6HvuLxkHG3SQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="50823239"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="50823239"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:21:57 -0800
X-CSE-ConnectionGUID: QfmG3V3yQpO38AvQ07v0tw==
X-CSE-MsgGUID: IuKbXVwDQo2j8O7mVUdBfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113891411"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.30])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 11:21:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 10/12] drm/i915: Relocate intel_{rotation,
 remapped}_info_size()
In-Reply-To: <20250213150220.13580-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
 <20250213150220.13580-11-ville.syrjala@linux.intel.com>
Date: Thu, 13 Feb 2025 21:21:51 +0200
Message-ID: <87r041wsz4.fsf@intel.com>
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

On Thu, 13 Feb 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Move intel_{rotation,remapped}_info_size() into intel_fb.c as
> that seems a slightly better place than intel_display.c. I suppose
> these should live somewhere outside the display code as they are
> also used by the gem code.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 36 --------------------
>  drivers/gpu/drm/i915/display/intel_display.h |  4 ---
>  drivers/gpu/drm/i915/display/intel_fb.c      | 36 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fb.h      |  5 +++
>  drivers/gpu/drm/i915/i915_vma.c              |  2 +-
>  5 files changed, 42 insertions(+), 41 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 4800fefd6321..c38c37afc154 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -601,42 +601,6 @@ void intel_disable_transcoder(const struct intel_crt=
c_state *old_crtc_state)
>  		intel_wait_for_pipe_off(old_crtc_state);
>  }
>=20=20
> -unsigned int intel_rotation_info_size(const struct intel_rotation_info *=
rot_info)
> -{
> -	unsigned int size =3D 0;
> -	int i;
> -
> -	for (i =3D 0 ; i < ARRAY_SIZE(rot_info->plane); i++)
> -		size +=3D rot_info->plane[i].dst_stride * rot_info->plane[i].width;
> -
> -	return size;
> -}
> -
> -unsigned int intel_remapped_info_size(const struct intel_remapped_info *=
rem_info)
> -{
> -	unsigned int size =3D 0;
> -	int i;
> -
> -	for (i =3D 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
> -		unsigned int plane_size;
> -
> -		if (rem_info->plane[i].linear)
> -			plane_size =3D rem_info->plane[i].size;
> -		else
> -			plane_size =3D rem_info->plane[i].dst_stride * rem_info->plane[i].hei=
ght;
> -
> -		if (plane_size =3D=3D 0)
> -			continue;
> -
> -		if (rem_info->plane_alignment)
> -			size =3D ALIGN(size, rem_info->plane_alignment);
> -
> -		size +=3D plane_size;
> -	}
> -
> -	return size;
> -}
> -
>  /*
>   * Convert the x/y offsets into a linear offset.
>   * Only valid with 0/180 degree rotation, which is fine since linear
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index d3afd134f70e..a7bd82662adf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -59,8 +59,6 @@ struct intel_link_m_n;
>  struct intel_plane;
>  struct intel_plane_state;
>  struct intel_power_domain_mask;
> -struct intel_remapped_info;
> -struct intel_rotation_info;
>  struct pci_dev;
>  struct work_struct;
>=20=20
> @@ -467,8 +465,6 @@ unsigned int intel_fb_xy_to_linear(int x, int y,
>  				   int plane);
>  void intel_add_fb_offsets(int *x, int *y,
>  			  const struct intel_plane_state *state, int plane);
> -unsigned int intel_rotation_info_size(const struct intel_rotation_info *=
rot_info);
> -unsigned int intel_remapped_info_size(const struct intel_remapped_info *=
rem_info);
>  bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);
>  void intel_encoder_destroy(struct drm_encoder *encoder);
>  struct drm_display_mode *
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 5875af2b61e6..c1923b4c13d6 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -1891,6 +1891,42 @@ static void intel_plane_remap_gtt(struct intel_pla=
ne_state *plane_state)
>  	}
>  }
>=20=20
> +unsigned int intel_rotation_info_size(const struct intel_rotation_info *=
rot_info)
> +{
> +	unsigned int size =3D 0;
> +	int i;
> +
> +	for (i =3D 0 ; i < ARRAY_SIZE(rot_info->plane); i++)
> +		size +=3D rot_info->plane[i].dst_stride * rot_info->plane[i].width;
> +
> +	return size;
> +}
> +
> +unsigned int intel_remapped_info_size(const struct intel_remapped_info *=
rem_info)
> +{
> +	unsigned int size =3D 0;
> +	int i;
> +
> +	for (i =3D 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
> +		unsigned int plane_size;
> +
> +		if (rem_info->plane[i].linear)
> +			plane_size =3D rem_info->plane[i].size;
> +		else
> +			plane_size =3D rem_info->plane[i].dst_stride * rem_info->plane[i].hei=
ght;
> +
> +		if (plane_size =3D=3D 0)
> +			continue;
> +
> +		if (rem_info->plane_alignment)
> +			size =3D ALIGN(size, rem_info->plane_alignment);
> +
> +		size +=3D plane_size;
> +	}
> +
> +	return size;
> +}
> +
>  void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int=
 rotation,
>  			struct intel_fb_view *view)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index 63728520eb06..d04d9274bb71 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -19,6 +19,8 @@ struct intel_fb_view;
>  struct intel_framebuffer;
>  struct intel_plane;
>  struct intel_plane_state;
> +struct intel_remapped_info;
> +struct intel_rotation_info;
>=20=20
>  #define INTEL_PLANE_CAP_NONE		0
>  #define INTEL_PLANE_CAP_CCS_RC		BIT(0)
> @@ -80,6 +82,9 @@ bool intel_fb_needs_pot_stride_remap(const struct intel=
_framebuffer *fb);
>  bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
>  bool intel_fb_supports_90_270_rotation(const struct intel_framebuffer *f=
b);
>=20=20
> +unsigned int intel_rotation_info_size(const struct intel_rotation_info *=
rot_info);
> +unsigned int intel_remapped_info_size(const struct intel_remapped_info *=
rem_info);
> +
>  int intel_fill_fb_info(struct intel_display *display, struct intel_frame=
buffer *fb);
>  void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int=
 rotation,
>  			struct intel_fb_view *view);
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_=
vma.c
> index 61b49007ecd4..632e316f8b05 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -26,7 +26,7 @@
>  #include <linux/dma-fence-array.h>
>  #include <drm/drm_gem.h>
>=20=20
> -#include "display/intel_display.h"
> +#include "display/intel_fb.h"

More specific includes from outside of display are always welcome!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  #include "display/intel_frontbuffer.h"
>  #include "gem/i915_gem_lmem.h"
>  #include "gem/i915_gem_object_frontbuffer.h"

--=20
Jani Nikula, Intel
