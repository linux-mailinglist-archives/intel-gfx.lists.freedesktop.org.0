Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D98287550
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 15:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4AD6E123;
	Thu,  8 Oct 2020 13:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A35F16E123
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 13:38:57 +0000 (UTC)
IronPort-SDR: HcoF44ITAmQREznPcDXeusPQiNU9wUnliIKUHKDtVm7ld4e8DX6GvkAwkvuhMH1P0m1eAAVig7
 SPQFbqMo6uaA==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="229519313"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="229519313"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 06:38:56 -0700
IronPort-SDR: /SH8VUloscHlm+wFsnTurW49MTCkLG5JLcEdIjzf1Fcxz603IkPo2swGtSrrogyY+WxQMzOMjA
 jPthlxxRzhNA==
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="519347488"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 06:38:55 -0700
Date: Thu, 8 Oct 2020 16:38:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201008133851.GB1784305@ideak-desk.fi.intel.com>
References: <20201008101608.8652-1-ville.syrjala@linux.intel.com>
 <20201008101608.8652-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008101608.8652-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Skip aux plane stuff when
 there is no aux plane
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 08, 2020 at 01:16:07PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> when the hardware isn't going to use the aux plane there's no
> real point in dealing with the relevant hardware restrictions.
> So let's just skip all that when not necessary.
> =

> We can now also remove the offset=3D~0xfff behaviour for unused
> color planes. Let's just zero out everyting so as to not leave
> stale garbage behind to confuse people debugging the code.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++++-----
>  drivers/gpu/drm/i915/display/intel_sprite.c  |  6 +++---
>  2 files changed, 12 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 44fd7059838f..34ba34f84b2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2001,13 +2001,17 @@ static int ccs_to_main_plane(const struct drm_fra=
mebuffer *fb, int ccs_plane)
>  	return ccs_plane - fb->format->num_planes / 2;
>  }
>  =

> -/* Return either the main plane's CCS or - if not a CCS FB - UV plane */
>  int intel_main_to_aux_plane(const struct drm_framebuffer *fb, int main_p=
lane)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(fb->dev);
> +
>  	if (is_ccs_modifier(fb->modifier))
>  		return main_to_ccs_plane(fb, main_plane);
> -
> -	return 1;
> +	else if (INTEL_GEN(i915) < 11 &&
> +		 intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> +		return 1;
> +	else
> +		return 0;
>  }
>  =

>  bool
> @@ -3933,7 +3937,7 @@ static int skl_check_main_surface(struct intel_plan=
e_state *plane_state)
>  	 * main surface offset, and it must be non-negative. Make
>  	 * sure that is what we will get.
>  	 */
> -	if (offset > aux_offset)
> +	if (aux_plane && offset > aux_offset)
>  		offset =3D intel_plane_adjust_aligned_offset(&x, &y, plane_state, 0,
>  							   offset, aux_offset & ~(alignment - 1));
>  =

> @@ -4131,7 +4135,7 @@ int skl_check_plane_surface(struct intel_plane_stat=
e *plane_state)
>  	}
>  =

>  	for (i =3D fb->format->num_planes; i < ARRAY_SIZE(plane_state->color_pl=
ane); i++) {
> -		plane_state->color_plane[i].offset =3D ~0xfff;
> +		plane_state->color_plane[i].offset =3D 0;
>  		plane_state->color_plane[i].x =3D 0;
>  		plane_state->color_plane[i].y =3D 0;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/dr=
m/i915/display/intel_sprite.c
> index 2da11ab6343c..bf8c82a2b213 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -656,7 +656,6 @@ skl_program_plane(struct intel_plane *plane,
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	int aux_plane =3D intel_main_to_aux_plane(fb, color_plane);
>  	u32 aux_dist =3D plane_state->color_plane[aux_plane].offset - surf_addr;
> -	u32 aux_stride =3D skl_plane_stride(plane_state, aux_plane);
>  	int crtc_x =3D plane_state->uapi.dst.x1;
>  	int crtc_y =3D plane_state->uapi.dst.y1;
>  	u32 x =3D plane_state->color_plane[color_plane].x;
> @@ -691,6 +690,9 @@ skl_program_plane(struct intel_plane *plane,
>  		crtc_y =3D 0;
>  	}
>  =

> +	if (INTEL_GEN(dev_priv) < 12 && aux_plane)
> +		aux_dist |=3D skl_plane_stride(plane_state, aux_plane);
> +
>  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  =

>  	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id), stride);
> @@ -699,8 +701,6 @@ skl_program_plane(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
>  			  (src_h << 16) | src_w);
>  =

> -	if (INTEL_GEN(dev_priv) < 12)
> -		aux_dist |=3D aux_stride;
>  	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id), aux_dist);
>  =

>  	if (icl_is_hdr_plane(dev_priv, plane_id))
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
