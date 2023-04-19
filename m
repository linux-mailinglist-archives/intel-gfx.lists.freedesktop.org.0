Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4236E7E53
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 17:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CAA10E1B9;
	Wed, 19 Apr 2023 15:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE22B10E1B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 15:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681918453; x=1713454453;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=1uMCsZhgWYCFl2+83h9bDjiAe87wNzayZQyumnh4plk=;
 b=mOI0SsK17WIG97rLkqC8sqrp/+W3y+sOsrl4WBRuspLBmNuUC4mdre/C
 q2M41A7HhGO5qXV0J/yl/OYgObXDATSMFD1gj1lkfYRabb1OUyZoQAbhp
 MEMXQVej73YIVW1PnBOy9She3hkNprtl4FzMcm8HSr/jXh3mVltpbgFRN
 n1Q834r0xnc8+9eF8bqKy/fJfy9tyA36g5icb2uS3zDxUjNa0blxx9iaD
 1yGSnsKYS+st7E+8sXJWWODURQ8JM4XV03VjMJu/Hb4GaNzpw2T0wDsgb
 lJvFRUJ56dTzYhPUpww7cJD6XZISZnoWS62e9czQOhdvXhW6SdChDWl4L A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="325095120"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="325095120"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:34:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="641816440"
X-IronPort-AV: E=Sophos;i="5.99,208,1677571200"; d="scan'208";a="641816440"
Received: from yedidyal-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.47.37])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2023 08:34:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230418175528.13117-10-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
 <20230418175528.13117-10-ville.syrjala@linux.intel.com>
Date: Wed, 19 Apr 2023 18:34:00 +0300
Message-ID: <87v8hryjh3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 09/15] drm/i915: Define bitmasks for ilk
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

On Tue, 18 Apr 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Define and use the bitmasks for the x/y components
> of the ilk+ panel filter window pos/size registers.

This reduces the field sizes by 3-4 bits. Maybe that's what they're in
the spec, but it's at least worth mentioning here.

BR,
Jani.

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++----
>  drivers/gpu/drm/i915/i915_reg.h              |  8 ++++++++
>  2 files changed, 16 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index fb49d0ed61b4..626a5f41a1f1 100644
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
> index 3c02f6c70733..75e1f30adda1 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4020,8 +4020,16 @@
>  #define   PF_FILTER_EDGE_SOFTEN		REG_FIELD_PREP(PF_FILTER_EDGE_MASK, 3)
>  #define _PFA_WIN_SZ		0x68074
>  #define _PFB_WIN_SZ		0x68874
> +#define   PF_WIN_XSIZE_MASK	REG_GENMASK(28, 16)
> +#define   PF_WIN_XSIZE(w)	REG_FIELD_PREP(PF_WIN_XSIZE_MASK, (w))
> +#define   PF_WIN_YSIZE_MASK	REG_GENMASK(11, 0)
> +#define   PF_WIN_YSIZE(h)	REG_FIELD_PREP(PF_WIN_YSIZE_MASK, (h))
>  #define _PFA_WIN_POS		0x68070
>  #define _PFB_WIN_POS		0x68870
> +#define   PF_WIN_XPOS_MASK	REG_GENMASK(28, 16)
> +#define   PF_WIN_XPOS(x)	REG_FIELD_PREP(PF_WIN_XPOS_MASK, (x))
> +#define   PF_WIN_YPOS_MASK	REG_GENMASK(11, 0)
> +#define   PF_WIN_YPOS(y)	REG_FIELD_PREP(PF_WIN_YPOS_MASK, (y))
>  #define _PFA_VSCALE		0x68084
>  #define _PFB_VSCALE		0x68884
>  #define _PFA_HSCALE		0x68090

--=20
Jani Nikula, Intel Open Source Graphics Center
