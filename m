Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA9E6E7E85
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD9310E9FB;
	Wed, 19 Apr 2023 15:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 225B810E9FB
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681918891; x=1713454891;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=fdqkGqLeE77r+7ghR8j2Nmv0dq1QHF8U3pHYw30QX5o=;
 b=XT902+qNFkM0CCTJsEosfVHnKsisPKuEHeu0bn2nkbA6J7Fg89CSdheU
 699GRvwXb0nzkZndtpwhNRIbYJdvExpnkGcI14wGyxBewNdCDsm5+0/Ez
 CXTWT+8DbJ0Fid+mVxFd43NO2e2Epi4BzBdRp+h3T8af34CgB4JDkzPEG
 mLlgQun2vCfyUUL7F/z8bwG40aD1Ax8QtW78rVvj3m37ES//d74wGCs1+
 0p4MJaU1Dxjy8VczmBC6STW1qj//cdvABc6ZVxtBTZensbg4DoP9dDYHx
 iDDZ+pQIieM5B5ybYQhOJ+11463cx28os2FDtx5wcNvY7O1jB+NbMlNjz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="342964325"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="342964325"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="937714826"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="937714826"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:41:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418175528.13117-14-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-14-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:41:26 +0300
Message-ID: <87h6tbyj4p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 13/15] drm/i915: Define bitmasks for sik+
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

On Tue, 18 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Define and use the bitmasks for the x/y components
> of the skl+ scaler window pos/size registers.

This too should mention the change of mask size.

Typo in subject, *skl+

BR,
Jani.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
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
> index a5ae291de55b..68581864fb44 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4101,12 +4101,20 @@
>  #define _PS_WIN_POS_1B      0x68970
>  #define _PS_WIN_POS_2B      0x68A70
>  #define _PS_WIN_POS_1C      0x69170
> +#define   PS_WIN_XPOS_MASK			REG_GENMASK(28, 16)
> +#define   PS_WIN_XPOS(x)			REG_FIELD_PREP(PS_WIN_XPOS_MASK, (x))
> +#define   PS_WIN_YPOS_MASK			REG_GENMASK(12, 0)
> +#define   PS_WIN_YPOS(y)			REG_FIELD_PREP(PS_WIN_YPOS_MASK, (y))
>=20=20
>  #define _PS_WIN_SZ_1A       0x68174
>  #define _PS_WIN_SZ_2A       0x68274
>  #define _PS_WIN_SZ_1B       0x68974
>  #define _PS_WIN_SZ_2B       0x68A74
>  #define _PS_WIN_SZ_1C       0x69174
> +#define   PS_WIN_XSIZE_MASK			REG_GENMASK(29, 16)
> +#define   PS_WIN_XSIZE(w)			REG_FIELD_PREP(PS_WIN_XSIZE_MASK, (w))
> +#define   PS_WIN_YSIZE_MASK			REG_GENMASK(12, 0)
> +#define   PS_WIN_YSIZE(h)			REG_FIELD_PREP(PS_WIN_YSIZE_MASK, (h))
>=20=20
>  #define _PS_VSCALE_1A       0x68184
>  #define _PS_VSCALE_2A       0x68284

--=20
Jani Nikula, Intel Open Source Graphics Center
