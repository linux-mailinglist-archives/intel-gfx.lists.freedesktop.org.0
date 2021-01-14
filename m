Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 266AB2F6548
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 16:58:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FE796E432;
	Thu, 14 Jan 2021 15:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E408F6E432
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 15:58:22 +0000 (UTC)
IronPort-SDR: hKJLMX437jJtpi0DS+nTsFt0oh5t5axvK41DL23/xmAsi/3OzRPPPsyKOzyJ/C+7atluoRheS9
 hiFXu2GOxGag==
X-IronPort-AV: E=McAfee;i="6000,8403,9864"; a="178479622"
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="178479622"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 07:58:22 -0800
IronPort-SDR: 8WY9lHepWpr0Lpu1WJcGbQT/LAQnxMMWZE5CfsrMg/xyQNkR3NhokyJU067ssDKMDMdNJLHHgi
 OMlqISdL4/Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,347,1602572400"; d="scan'208";a="424981787"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 14 Jan 2021 07:58:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Jan 2021 17:58:18 +0200
Date: Thu, 14 Jan 2021 17:58:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YABqGgahKTt4by7t@intel.com>
References: <cover.1610622609.git.jani.nikula@intel.com>
 <64d46d7a4d1b62d721aa282a3fa16ed77f10ab5e.1610622609.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64d46d7a4d1b62d721aa282a3fa16ed77f10ab5e.1610622609.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915: move is_ccs_modifier to an
 inline
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
Cc: Dave Airlie <airlied@redhat.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 14, 2021 at 01:13:53PM +0200, Jani Nikula wrote:
> From: Dave Airlie <airlied@redhat.com>
> =

> There is no need for this to be out of line.
> =

> Signed-off-by: Dave Airlie <airlied@redhat.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c       | 8 --------
>  drivers/gpu/drm/i915/display/intel_display.h       | 1 -
>  drivers/gpu/drm/i915/display/intel_display_types.h | 8 ++++++++
>  3 files changed, 8 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index ab9d164345e5..7398927e1627 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1791,14 +1791,6 @@ intel_get_format_info(const struct drm_mode_fb_cmd=
2 *cmd)
>  	}
>  }
>  =

> -bool is_ccs_modifier(u64 modifier)
> -{
> -	return modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> -	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
> -	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
> -	       modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
> -}
> -
>  static int gen12_ccs_aux_stride(struct drm_framebuffer *fb, int ccs_plan=
e)
>  {
>  	return DIV_ROUND_UP(fb->pitches[skl_ccs_to_main_plane(fb, ccs_plane)],
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 0b2fed58badf..f4214e161a9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -508,7 +508,6 @@ void intel_link_compute_m_n(u16 bpp, int nlanes,
>  			    int pixel_clock, int link_clock,
>  			    struct intel_link_m_n *m_n,
>  			    bool constant_n, bool fec_enable);
> -bool is_ccs_modifier(u64 modifier);
>  void lpt_disable_clkout_dp(struct drm_i915_private *dev_priv);
>  u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>  			      u32 pixel_format, u64 modifier);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 179c277e5cf7..a2cd4bf9e246 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1862,6 +1862,14 @@ static inline u32 intel_fdi_link_freq(struct drm_i=
915_private *dev_priv,
>  		return dev_priv->fdi_pll_freq;
>  }
>  =

> +static inline bool is_ccs_modifier(u64 modifier)
> +{
> +	return modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS ||
> +	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS ||
> +	       modifier =3D=3D I915_FORMAT_MOD_Y_TILED_CCS ||
> +	       modifier =3D=3D I915_FORMAT_MOD_Yf_TILED_CCS;
> +}
> +
>  static inline bool is_ccs_plane(const struct drm_framebuffer *fb, int pl=
ane)
>  {
>  	if (!is_ccs_modifier(fb->modifier))
> -- =

> 2.20.1
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
