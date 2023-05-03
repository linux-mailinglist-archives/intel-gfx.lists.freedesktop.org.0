Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0EE6F5315
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 10:22:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DA0610E1FA;
	Wed,  3 May 2023 08:22:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 299A810E201
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 08:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683102152; x=1714638152;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Qg8vrkAwzjkZjTG2jHgaZSfW7e6/AiUHhb6iJKek3t0=;
 b=dBwnIHNqrQjZt57JOWCHByD/wck1M5aerV1sMrJsVigynkgSPaCkE6uu
 vlJgA5h9iM397HugF9uyaIKsg+1cHmuDmZOBCGRfu3+C3FrJWocbc++9J
 SHFRqsq9TsyTjOvFpRelZ0pestb3lVWpf32iTk4iADhtvzc9q3qFZ8asA
 wQD9EO6PVtGnPCBcbAYhiJHkyEXpzLejtN7Mf2yvhobI3dZvtbbUF6JyJ
 4nTmlQZEcuT+gomhVUNQfJAJlQ27wXLhHGd4cOV5hXaKmhc79E/5dREU2
 wFYVJmyKwKPLz1gTj1iDH9vjIT/C41DdQBKe88ZbUHbkWbFyIQ9JchtNa w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="337736107"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="337736107"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:22:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="699284083"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="699284083"
Received: from ebrosekx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.204])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:22:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230426135019.7603-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
 <20230426135019.7603-6-ville.syrjala@linux.intel.com>
Date: Wed, 03 May 2023 11:22:26 +0300
Message-ID: <87fs8d25a5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915: Define bitmasks for skl+
 scaler window pos/size
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

On Wed, 26 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Define and use the bitmasks for the x/y components
> of the skl+ scaler window pos/size registers.
>
> We stick to the full 16 bits mask here even though the
> hardware limits are actually lower. The current (ADL)
> hardware maximums are in fact: 14 bits for X size, 13 bits
> for X pos, 13 bits for Y size/pos. Yes, that is correct,
> X pos has less bits than the X size for some reason. But
> that  doesn't actually matter for now as we don't currently
> even support such wide displays without the use of bigjoiner
> (due to max plane width limit).
>
> v2: Switch back to full 16bit masks since that's what
>     we use transcoder timign regs and PIPESRC as well
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 14 ++++++++------
>  drivers/gpu/drm/i915/i915_reg.h           |  8 ++++++++
>  2 files changed, 16 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index 4437d130293a..1e7c97243fcf 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -754,9 +754,9 @@ void skl_pfit_enable(const struct intel_crtc_state *c=
rtc_state)
>  	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, id),
>  			  PS_Y_PHASE(0) | PS_UV_RGB_PHASE(uv_rgb_hphase));
>  	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, id),
> -			  x << 16 | y);
> +			  PS_WIN_XPOS(x) | PS_WIN_YPOS(y));
>  	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
> -			  width << 16 | height);
> +			  PS_WIN_XSIZE(width) | PS_WIN_YSIZE(height));
>  }
>=20=20
>  void
> @@ -816,9 +816,9 @@ skl_program_plane_scaler(struct intel_plane *plane,
>  	intel_de_write_fw(dev_priv, SKL_PS_HPHASE(pipe, scaler_id),
>  			  PS_Y_PHASE(y_hphase) | PS_UV_RGB_PHASE(uv_rgb_hphase));
>  	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(pipe, scaler_id),
> -			  (crtc_x << 16) | crtc_y);
> +			  PS_WIN_XPOS(crtc_x) | PS_WIN_YPOS(crtc_y));
>  	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, scaler_id),
> -			  (crtc_w << 16) | crtc_h);
> +			  PS_WIN_XSIZE(crtc_w) | PS_WIN_YSIZE(crtc_h));
>  }
>=20=20
>  static void skl_detach_scaler(struct intel_crtc *crtc, int id)
> @@ -880,8 +880,10 @@ void skl_scaler_get_config(struct intel_crtc_state *=
crtc_state)
>  		size =3D intel_de_read(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, i));
>=20=20
>  		drm_rect_init(&crtc_state->pch_pfit.dst,
> -			      pos >> 16, pos & 0xffff,
> -			      size >> 16, size & 0xffff);
> +			      REG_FIELD_GET(PS_WIN_XPOS_MASK, pos),
> +			      REG_FIELD_GET(PS_WIN_YPOS_MASK, pos),
> +			      REG_FIELD_GET(PS_WIN_XSIZE_MASK, size),
> +			      REG_FIELD_GET(PS_WIN_YSIZE_MASK, size));
>=20=20
>  		scaler_state->scalers[i].in_use =3D true;
>  		break;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 530bc961088f..b6f691107571 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4106,12 +4106,20 @@
>  #define _PS_WIN_POS_1B      0x68970
>  #define _PS_WIN_POS_2B      0x68A70
>  #define _PS_WIN_POS_1C      0x69170
> +#define   PS_WIN_XPOS_MASK			REG_GENMASK(31, 16)
> +#define   PS_WIN_XPOS(x)			REG_FIELD_PREP(PS_WIN_XPOS_MASK, (x))
> +#define   PS_WIN_YPOS_MASK			REG_GENMASK(15, 0)
> +#define   PS_WIN_YPOS(y)			REG_FIELD_PREP(PS_WIN_YPOS_MASK, (y))
>=20=20
>  #define _PS_WIN_SZ_1A       0x68174
>  #define _PS_WIN_SZ_2A       0x68274
>  #define _PS_WIN_SZ_1B       0x68974
>  #define _PS_WIN_SZ_2B       0x68A74
>  #define _PS_WIN_SZ_1C       0x69174
> +#define   PS_WIN_XSIZE_MASK			REG_GENMASK(31, 16)
> +#define   PS_WIN_XSIZE(w)			REG_FIELD_PREP(PS_WIN_XSIZE_MASK, (w))
> +#define   PS_WIN_YSIZE_MASK			REG_GENMASK(15, 0)
> +#define   PS_WIN_YSIZE(h)			REG_FIELD_PREP(PS_WIN_YSIZE_MASK, (h))
>=20=20
>  #define _PS_VSCALE_1A       0x68184
>  #define _PS_VSCALE_2A       0x68284

--=20
Jani Nikula, Intel Open Source Graphics Center
