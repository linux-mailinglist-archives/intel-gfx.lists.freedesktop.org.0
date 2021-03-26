Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB68134AC97
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 17:34:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2592D6F400;
	Fri, 26 Mar 2021 16:34:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73C2C6F400
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 16:34:46 +0000 (UTC)
IronPort-SDR: trWimX8JR31Pgi8/iB231OXdA0v6pvGbS4kWNJMUZyACngh0EqvurRPo1xuTigrTjumtpbSCsh
 qP7TK6AI1BjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="170557991"
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="170557991"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:34:46 -0700
IronPort-SDR: Hwu+rlCWrQBV4fFhYQjjA8eQ6aXPSqlwFMCgHpqywwPj8nbJUP8HD8i0RS4jgUVBqz+ojfR0kq
 4p+q8O7OrzDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,281,1610438400"; d="scan'208";a="443415208"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 26 Mar 2021 09:34:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 26 Mar 2021 18:34:43 +0200
Date: Fri, 26 Mar 2021 18:34:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YF4NI0QFWfN+kX3f@intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
 <20210325214808.2071517-18-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325214808.2071517-18-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 17/25] drm/i915: Store the normal view FB
 pitch in FB's intel_fb_view
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

On Thu, Mar 25, 2021 at 11:48:00PM +0200, Imre Deak wrote:
> Instead of special casing getting the pitch for the normal view, store
> it during FB creation to the FB normal view struct and retrive it from
> there during atomic check, as it's done for the rotated view. A
> follow-up patch does the same for a new FB remapped view.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index b223e16eb6a22..31fd8480f707e 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -484,12 +484,14 @@ static bool intel_plane_can_remap(const struct inte=
l_plane_state *plane_state)
>  	return true;
>  }
>  =

> -int intel_fb_pitch(const struct drm_framebuffer *fb, int color_plane, un=
signed int rotation)
> +int intel_fb_pitch(const struct drm_framebuffer *drm_fb, int color_plane=
, unsigned int rotation)
>  {
> +	struct intel_framebuffer *fb =3D to_intel_framebuffer(drm_fb);
> +
>  	if (drm_rotation_90_or_270(rotation))
> -		return to_intel_framebuffer(fb)->rotated_view.color_plane[color_plane]=
.pitch;
> +		return fb->rotated_view.color_plane[color_plane].pitch;
>  	else
> -		return fb->pitches[color_plane];
> +		return fb->normal_view.color_plane[color_plane].pitch;
>  }
>  =

>  static bool intel_plane_needs_remap(const struct intel_plane_state *plan=
e_state)
> @@ -744,6 +746,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915,=
 struct drm_framebuffer *fb
>  		 */
>  		intel_fb->normal_view.color_plane[i].x =3D x;
>  		intel_fb->normal_view.color_plane[i].y =3D y;
> +		intel_fb->normal_view.color_plane[i].pitch =3D intel_fb->base.pitches[=
i];
>  =

>  		offset =3D calc_plane_aligned_offset(intel_fb, i, &x, &y);
>  =

> -- =

> 2.25.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
