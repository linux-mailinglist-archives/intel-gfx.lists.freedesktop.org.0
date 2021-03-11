Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE110337910
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:19:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3176D6EE54;
	Thu, 11 Mar 2021 16:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7B126EE54
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:19:22 +0000 (UTC)
IronPort-SDR: VeWntnqulaG6inN3w9X1+z2VOH/6qwVKcyqmxz9oaqTnQMB7hPdzCZe85PWSzf4ADcGeckGts9
 gjrj2HeQM3lA==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="188788876"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="188788876"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:19:22 -0800
IronPort-SDR: mQVXUaqUu3usAZHaxx744elHEqcb6mfbRDC7tc/PNcmvzOiGmD0Ij3fosVi7YODFFWVdhrf5jI
 7NB3Us8BnUgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="404118283"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 11 Mar 2021 08:19:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 18:19:19 +0200
Date: Thu, 11 Mar 2021 18:19:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpDBxIMwHxJh8cL@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-10-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-10-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/23] drm/i915/intel_fb: Pull
 is_surface_linear() from intel_display.c/skl_universal_plane.c
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 11, 2021 at 12:17:22AM +0200, Imre Deak wrote:
> Move is_surface_linear() to intel_fb.c and export it from here, also
> removing the duplicate definitions of it.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 6 ------
>  drivers/gpu/drm/i915/display/intel_fb.c            | 6 ++++++
>  drivers/gpu/drm/i915/display/intel_fb.h            | 2 ++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 6 ------
>  4 files changed, 8 insertions(+), 12 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 39584a82550d..deaf7ddadff1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1262,12 +1262,6 @@ static u32 intel_adjust_tile_offset(int *x, int *y,
>  	return new_offset;
>  }
>  =

> -static bool is_surface_linear(const struct drm_framebuffer *fb, int colo=
r_plane)
> -{
> -	return fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> -	       is_gen12_ccs_plane(fb, color_plane);
> -}
> -
>  static u32 intel_adjust_aligned_offset(int *x, int *y,
>  				       const struct drm_framebuffer *fb,
>  				       int color_plane,
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 977ee2acaed1..74157d5f2d7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -27,6 +27,12 @@ bool is_gen12_ccs_cc_plane(const struct drm_framebuffe=
r *fb, int plane)
>  	       plane =3D=3D 2;
>  }
>  =

> +bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane)
> +{
> +	return fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> +	       is_gen12_ccs_plane(fb, color_plane);
> +}
> +
>  int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane)
>  {
>  	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index 3cde53c75cb3..6ea220438f9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -14,6 +14,8 @@ bool is_ccs_plane(const struct drm_framebuffer *fb, int=
 plane);
>  bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
>  bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
>  =

> +bool is_surface_linear(const struct drm_framebuffer *fb, int color_plane=
);
> +
>  int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
>  int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plan=
e);
>  int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_pla=
ne);
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index 9a456b3d19a9..2f1a7b88f66a 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -562,12 +562,6 @@ icl_program_input_csc(struct intel_plane *plane,
>  			  PLANE_INPUT_CSC_POSTOFF(pipe, plane_id, 2), 0x0);
>  }
>  =

> -static bool is_surface_linear(const struct drm_framebuffer *fb, int colo=
r_plane)
> -{
> -	return fb->modifier =3D=3D DRM_FORMAT_MOD_LINEAR ||
> -	       is_gen12_ccs_plane(fb, color_plane);
> -}
> -
>  static unsigned int skl_plane_stride_mult(const struct drm_framebuffer *=
fb,
>  					  int color_plane, unsigned int rotation)
>  {
> -- =

> 2.25.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
