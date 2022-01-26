Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF7A49CC8C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 15:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AA6810E5B8;
	Wed, 26 Jan 2022 14:43:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D55D710E5B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 14:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643208179; x=1674744179;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hzphm6+cSmpUpQs6r5V5m85OAJlrwh5llXaZ17a3rFI=;
 b=E5Aec3IQdVlQqKGD2rfbbJAqK2rt0Ohy1E2sRy6UQAIunfVAtOdUyGmW
 kTc/kxBFiO8PrUPjUAtP8kx8+AnlSHOX9lfq0njlKmmlK3LgUqq9aTjao
 zOLDy14e7jjuP+pUOTh6P4CNlW+Lg6pDReQn2d6zZiAEab/Em0gAqzlpQ
 5KbUP1D5kIlYIfUMjoskLDn+vGMX2Eza/J69T2StiKvWf/XF4CXqppnJX
 hkq3IgOTP+0j0ZQHCKi4k7EfW/GCJu83l99DNSh6+rhpyvpzd/7zokBi/
 2F0ENaimc5Pfk37RyGPKMF0pIJEi1MYLM992ni0p1CVs7k+7jO99Otnkf Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10238"; a="332916252"
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="332916252"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:42:59 -0800
X-IronPort-AV: E=Sophos;i="5.88,318,1635231600"; d="scan'208";a="535200138"
Received: from nbasu-mobl.ger.corp.intel.com (HELO localhost) ([10.252.16.197])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2022 06:42:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211112193813.8224-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211112193813.8224-1-ville.syrjala@linux.intel.com>
 <20211112193813.8224-7-ville.syrjala@linux.intel.com>
Date: Wed, 26 Jan 2022 16:42:52 +0200
Message-ID: <87a6fizhg3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 6/9] drm/i915: Clean up PIPESRC defines
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

On Fri, 12 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use REG_GENMASK() & co. when dealing with PIPESRC.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c    | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display.c | 7 ++++---
>  drivers/gpu/drm/i915/i915_reg.h              | 4 ++++
>  3 files changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/=
i915/display/i9xx_plane.c
> index 2194f74101ae..f586e39cb378 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -1048,8 +1048,8 @@ i9xx_get_initial_plane_config(struct intel_crtc *cr=
tc,
>  	plane_config->base =3D base;
>=20=20
>  	val =3D intel_de_read(dev_priv, PIPESRC(pipe));
> -	fb->width =3D ((val >> 16) & 0xfff) + 1;
> -	fb->height =3D ((val >> 0) & 0xfff) + 1;

I guess the mask width change is worth noting in the commit message.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +	fb->width =3D REG_FIELD_GET(PIPESRC_WIDTH_MASK, val) + 1;
> +	fb->height =3D REG_FIELD_GET(PIPESRC_HEIGHT_MASK, val) + 1;
>=20=20
>  	val =3D intel_de_read(dev_priv, DSPSTRIDE(i9xx_plane));
>  	fb->pitches[0] =3D val & 0xffffffc0;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 4e29032b29d6..e1959a17805c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3236,7 +3236,8 @@ static void intel_set_pipe_src_size(const struct in=
tel_crtc_state *crtc_state)
>  	 * always be the user's requested size.
>  	 */
>  	intel_de_write(dev_priv, PIPESRC(pipe),
> -		       ((crtc_state->pipe_src_w - 1) << 16) | (crtc_state->pipe_src_h =
- 1));
> +		       PIPESRC_WIDTH(crtc_state->pipe_src_w - 1) |
> +		       PIPESRC_HEIGHT(crtc_state->pipe_src_h - 1));
>  }
>=20=20
>  static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc=
_state)
> @@ -3307,8 +3308,8 @@ static void intel_get_pipe_src_size(struct intel_cr=
tc *crtc,
>  	u32 tmp;
>=20=20
>  	tmp =3D intel_de_read(dev_priv, PIPESRC(crtc->pipe));
> -	pipe_config->pipe_src_h =3D (tmp & 0xffff) + 1;
> -	pipe_config->pipe_src_w =3D ((tmp >> 16) & 0xffff) + 1;
> +	pipe_config->pipe_src_w =3D REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1;
> +	pipe_config->pipe_src_h =3D REG_FIELD_GET(PIPESRC_HEIGHT_MASK, tmp) + 1;
>  }
>=20=20
>  static void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index eea009e76e15..211e2b415e50 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4476,6 +4476,10 @@ enum {
>  #define _VSYNC_A	0x60014
>  #define _EXITLINE_A	0x60018
>  #define _PIPEASRC	0x6001c
> +#define   PIPESRC_WIDTH_MASK	REG_GENMASK(31, 16)
> +#define   PIPESRC_WIDTH(w)	REG_FIELD_PREP(PIPESRC_WIDTH_MASK, (w))
> +#define   PIPESRC_HEIGHT_MASK	REG_GENMASK(15, 0)
> +#define   PIPESRC_HEIGHT(h)	REG_FIELD_PREP(PIPESRC_HEIGHT_MASK, (h))
>  #define _BCLRPAT_A	0x60020
>  #define _VSYNCSHIFT_A	0x60028
>  #define _PIPE_MULT_A	0x6002c

--=20
Jani Nikula, Intel Open Source Graphics Center
