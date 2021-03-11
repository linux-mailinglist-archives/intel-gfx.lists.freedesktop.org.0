Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 895A6337934
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C42DE6EE5E;
	Thu, 11 Mar 2021 16:23:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B19E6EE60
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:23:26 +0000 (UTC)
IronPort-SDR: IwwvoFxXAzC487DjrRMTiAQbfu17mcepmGsymN/BTK3aA/rSMfrEKKvxtM527A6RX7wRpry9JE
 c1nJ0HMn2+sw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="168610939"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="168610939"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:23:25 -0800
IronPort-SDR: Cl7Vsc3fulvJMvPbQiyGJT6Ot8enLqv37ecHZLs4/xH2y+ugC12ZLYT0r+CGr6RK8WLzYIY2vt
 SmtbrGo/CzKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="372373181"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 11 Mar 2021 08:23:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 18:23:22 +0200
Date: Thu, 11 Mar 2021 18:23:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpD+rXkkP28VJZx@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-13-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-13-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 12/23] drm/i915/intel_fb: Unexport
 intel_fb_check_stride()
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

On Thu, Mar 11, 2021 at 12:17:25AM +0200, Imre Deak wrote:
> After the previous patch we can unexport intel_fb_check_stride(), which
> isn't needed by intel_display.c.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_fb.h | 2 --
>  2 files changed, 1 insertion(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index f0efff22c145..c06c0875612d 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -824,7 +824,7 @@ void intel_fill_fb_ggtt_view(struct i915_ggtt_view *v=
iew,
>  	}
>  }
>  =

> -int intel_plane_check_stride(const struct intel_plane_state *plane_state)
> +static int intel_plane_check_stride(const struct intel_plane_state *plan=
e_state)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i9=
15/display/intel_fb.h
> index 59f8715e0bda..042946f452f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.h
> +++ b/drivers/gpu/drm/i915/display/intel_fb.h
> @@ -28,8 +28,6 @@ int main_to_ccs_plane(const struct drm_framebuffer *fb,=
 int main_plane);
>  int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plan=
e);
>  int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_pla=
ne);
>  =

> -int intel_plane_check_stride(const struct intel_plane_state *plane_state=
);
> -
>  unsigned int intel_tile_size(const struct drm_i915_private *dev_priv);
>  unsigned int intel_tile_height(const struct drm_framebuffer *fb, int col=
or_plane);
>  unsigned int intel_tile_row_size(const struct drm_framebuffer *fb, int c=
olor_plane);
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
