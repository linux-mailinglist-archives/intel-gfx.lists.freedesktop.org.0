Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8EC6F5303
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 10:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E04410E0CC;
	Wed,  3 May 2023 08:21:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE7E10E0CC
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 08:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683102065; x=1714638065;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=OoY6ckN95ZwmzLHgo5V5T4HHA61vTFUDxbnMeMILiaA=;
 b=Ljq5gtKyIo2F0DYMbikXvcio4T6m6yTOwIKABYuRfPzDXox80GYH/YeY
 8WLokHO4Ol5Wa7ufQSgiFKYWWbqnvTRVUa5qJB8GYy2kGH7I9cqgtHMjr
 Ln5LTbZeNoIHeuzHDrw240Wy3w/EtGDhSLL+E+zM+R9RJlm4e8pwgkgnp
 9LilQ691gZxJRsk6qmRhWU7fUS/hRDJT7Tl/M03Xe+2jQJs+M8Hy9ozM4
 8UHfRiTuFtorNp2a6ztsY4OYEM0XTYxKKQNC4elLjzKHjnQawlXDO81RC
 EIOLR7D4ab3W1qJx8f0dlMg6wWv9G1ToVI8jEoC5gjclLusOMapdPrjYq Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="434910579"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="434910579"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:21:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="727058521"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="727058521"
Received: from ebrosekx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.204])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:21:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230426135019.7603-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230426135019.7603-1-ville.syrjala@linux.intel.com>
 <20230426135019.7603-2-ville.syrjala@linux.intel.com>
Date: Wed, 03 May 2023 11:21:00 +0300
Message-ID: <87ild925cj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915: Define bitmasks for ilk
 pfit window pos/size
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
> of the ilk+ panel filter window pos/size registers.
>
> Note that we stick to the full 16 bit mask even though
> the actual hardware limits are lower (and somewhat
> platform dependent). BDW is actually limited to
> 13 bits horizontal and 12 bits vertical, with the high
> bits being hardwired to zero. HSW should have the same
> limits as BDW. And pre-HSW should be limited to 12bits
> in both directions as that's already the limit of the
> transcoder timing registers. Curiously on HSW and earlier
> platforms all 16 bits can actually be set, but presumably
> the hardware ignores the high bits.
>
> v2: Switch back to full 16bit masks since that's what
>     we use transcoder timign regs and PIPESRC as well
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++----
>  drivers/gpu/drm/i915/i915_reg.h              |  8 ++++++++
>  2 files changed, 16 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index bf391a6cd8d6..5e40a0ef3457 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -812,8 +812,10 @@ static void ilk_pfit_enable(const struct intel_crtc_=
state *crtc_state)
>  	else
>  		intel_de_write_fw(dev_priv, PF_CTL(pipe), PF_ENABLE |
>  				  PF_FILTER_MED_3x3);
> -	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe), x << 16 | y);
> -	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe), width << 16 | height);
> +	intel_de_write_fw(dev_priv, PF_WIN_POS(pipe),
> +			  PF_WIN_XPOS(x) | PF_WIN_YPOS(y));
> +	intel_de_write_fw(dev_priv, PF_WIN_SZ(pipe),
> +			  PF_WIN_XSIZE(width) | PF_WIN_YSIZE(height));
>  }
>=20=20
>  static void intel_crtc_dpms_overlay_disable(struct intel_crtc *crtc)
> @@ -3246,8 +3248,10 @@ static void ilk_get_pfit_config(struct intel_crtc_=
state *crtc_state)
>  	size =3D intel_de_read(dev_priv, PF_WIN_SZ(crtc->pipe));
>=20=20
>  	drm_rect_init(&crtc_state->pch_pfit.dst,
> -		      pos >> 16, pos & 0xffff,
> -		      size >> 16, size & 0xffff);
> +		      REG_FIELD_GET(PF_WIN_XPOS_MASK, pos),
> +		      REG_FIELD_GET(PF_WIN_YPOS_MASK, pos),
> +		      REG_FIELD_GET(PF_WIN_XSIZE_MASK, size),
> +		      REG_FIELD_GET(PF_WIN_YSIZE_MASK, size));
>=20=20
>  	/*
>  	 * We currently do not free assignements of panel fitters on
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index dde6e91055bd..f7294a9b5cfa 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4025,8 +4025,16 @@
>  #define   PF_FILTER_EDGE_SOFTEN		REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 3)
>  #define _PFA_WIN_SZ		0x68074
>  #define _PFB_WIN_SZ		0x68874
> +#define   PF_WIN_XSIZE_MASK	REG_GENMASK(31, 16)
> +#define   PF_WIN_XSIZE(w)	REG_FIELD_PREP(PF_WIN_XSIZE_MASK, (w))
> +#define   PF_WIN_YSIZE_MASK	REG_GENMASK(15, 0)
> +#define   PF_WIN_YSIZE(h)	REG_FIELD_PREP(PF_WIN_YSIZE_MASK, (h))
>  #define _PFA_WIN_POS		0x68070
>  #define _PFB_WIN_POS		0x68870
> +#define   PF_WIN_XPOS_MASK	REG_GENMASK(31, 16)
> +#define   PF_WIN_XPOS(x)	REG_FIELD_PREP(PF_WIN_XPOS_MASK, (x))
> +#define   PF_WIN_YPOS_MASK	REG_GENMASK(15, 0)
> +#define   PF_WIN_YPOS(y)	REG_FIELD_PREP(PF_WIN_YPOS_MASK, (y))
>  #define _PFA_VSCALE		0x68084
>  #define _PFB_VSCALE		0x68884
>  #define _PFA_HSCALE		0x68090

--=20
Jani Nikula, Intel Open Source Graphics Center
