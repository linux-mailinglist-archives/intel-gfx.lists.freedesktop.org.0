Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED993633C97
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:35:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48D6010E0CD;
	Tue, 22 Nov 2022 12:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54A4E10E0CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669120544; x=1700656544;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=nvtmWlRM3SJMYWzNVpdSMbo+htYG4Bds5wblCKK7QGE=;
 b=e+L/WSCAVwwLL04nfiVZaFTxJrm5bHNIVBwOORcPTz4OhEWntDOEaBj2
 VTzNsEDYVybtP/rMiD22HDNKYcPQPy/PL6HlnZF2tarn77Y8GXHhLbOWg
 h1E9t/ExmDmRjmK9qQXUis3Q6Hpc6dtViUDqhG7bptwQ+8EzPzYgGSbbO
 diVW06ZBE1mxp9YlQ/gIMP5UCudhg9pi1g5WsfTY6zsJ+qbMwJFelMDMg
 TCPVGApbFV/Qdr9whAUQsWb8pB2/39jrd+uFbVs3nes5CHaMBJDozPx1I
 EC2J2lfLjotQGXpMtF0IP5xfmdq50MXPMAW0Qfg0+U8w1LlAwfQzHKvN9 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="301352430"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="301352430"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:35:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="672469694"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="672469694"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:35:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221122120825.26338-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
 <20221122120825.26338-8-ville.syrjala@linux.intel.com>
Date: Tue, 22 Nov 2022 14:35:40 +0200
Message-ID: <87leo3xj37.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/dvo: Use REG_BIT() & co. for
 DVO registers
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

On Tue, 22 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Polish the DVO port regisesters with REG_BIT()/etc.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dvo.c |  7 +--
>  drivers/gpu/drm/i915/i915_reg.h          | 63 +++++++++++++-----------
>  2 files changed, 37 insertions(+), 33 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index b36c3a620250..a5c464c82e5c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -148,7 +148,7 @@ static bool intel_dvo_get_hw_state(struct intel_encod=
er *encoder,
>=20=20
>  	tmp =3D intel_de_read(i915, DVO(port));
>=20=20
> -	*pipe =3D (tmp & DVO_PIPE_SEL_MASK) >> DVO_PIPE_SEL_SHIFT;
> +	*pipe =3D REG_FIELD_GET(DVO_PIPE_SEL_MASK, tmp);
>=20=20
>  	return tmp & DVO_ENABLE;
>  }
> @@ -291,7 +291,7 @@ static void intel_dvo_pre_enable(struct intel_atomic_=
state *state,
>  	/* Save the active data order, since I don't know what it should be set=
 to. */
>  	dvo_val =3D intel_de_read(i915, DVO(port)) &
>  		  (DVO_DEDICATED_INT_ENABLE |
> -		   DVO_PRESERVE_MASK | DVO_ACT_DATA_ORDER_GBRG);
> +		   DVO_PRESERVE_MASK | DVO_ACT_DATA_ORDER_MASK);
>  	dvo_val |=3D DVO_DATA_ORDER_FP | DVO_BORDER_ENABLE |
>  		   DVO_BLANK_ACTIVE_HIGH;
>=20=20
> @@ -303,7 +303,8 @@ static void intel_dvo_pre_enable(struct intel_atomic_=
state *state,
>  		dvo_val |=3D DVO_VSYNC_ACTIVE_HIGH;
>=20=20
>  	intel_de_write(i915, DVO_SRCDIM(port),
> -		       (adjusted_mode->crtc_hdisplay << DVO_SRCDIM_HORIZONTAL_SHIFT) |=
 (adjusted_mode->crtc_vdisplay << DVO_SRCDIM_VERTICAL_SHIFT));
> +		       DVO_SRCDIM_HORIZONTAL(adjusted_mode->crtc_hdisplay) |
> +		       DVO_SRCDIM_VERTICAL(adjusted_mode->crtc_vdisplay));
>  	intel_de_write(i915, DVO(port), dvo_val);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 464be86d6125..08fdc0107212 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2581,40 +2581,43 @@
>  #define _DVOB			0x61140
>  #define _DVOC			0x61160
>  #define DVO(port)		_MMIO_PORT((port), _DVOA, _DVOB)
> -#define   DVO_ENABLE			(1 << 31)
> -#define   DVO_PIPE_SEL_SHIFT		30
> -#define   DVO_PIPE_SEL_MASK		(1 << 30)
> -#define   DVO_PIPE_SEL(pipe)		((pipe) << 30)
> -#define   DVO_PIPE_STALL_UNUSED		(0 << 28)
> -#define   DVO_PIPE_STALL		(1 << 28)
> -#define   DVO_PIPE_STALL_TV		(2 << 28)
> -#define   DVO_PIPE_STALL_MASK		(3 << 28)
> -#define   DVO_INTERRUPT_SELECT		(1 << 27)
> -#define   DVO_DEDICATED_INT_ENABLE	(1 << 26)
> -#define   DVO_PRESERVE_MASK		(0x3 << 24)
> -#define   DVO_USE_VGA_SYNC		(1 << 15)
> -#define   DVO_DATA_ORDER_I740		(0 << 14)
> -#define   DVO_DATA_ORDER_FP		(1 << 14)
> -#define   DVO_VSYNC_DISABLE		(1 << 11)
> -#define   DVO_HSYNC_DISABLE		(1 << 10)
> -#define   DVO_VSYNC_TRISTATE		(1 << 9)
> -#define   DVO_HSYNC_TRISTATE		(1 << 8)
> -#define   DVO_BORDER_ENABLE		(1 << 7)
> -#define   DVO_ACT_DATA_ORDER_GBRG		(1 << 6)
> -#define   DVO_ACT_DATA_ORDER_RGGB		(0 << 6)
> -#define   DVO_ACT_DATA_ORDER_GBRG_ERRATA	(0 << 6)
> -#define   DVO_ACT_DATA_ORDER_RGGB_ERRATA	(1 << 6)
> -#define   DVO_VSYNC_ACTIVE_HIGH		(1 << 4)
> -#define   DVO_HSYNC_ACTIVE_HIGH		(1 << 3)
> -#define   DVO_BLANK_ACTIVE_HIGH		(1 << 2)
> -#define   DVO_OUTPUT_CSTATE_PIXELS	(1 << 1)	/* SDG only */
> -#define   DVO_OUTPUT_SOURCE_SIZE_PIXELS	(1 << 0)	/* SDG only */
> +#define   DVO_ENABLE				REG_BIT(31)
> +#define   DVO_PIPE_SEL_MASK			REG_BIT(30)
> +#define   DVO_PIPE_SEL(pipe)			REG_FIELD_PREP(DVO_PIPE_SEL_MASK, (pipe))
> +#define   DVO_PIPE_STALL_MASK			REG_GENMASK(29, 28)
> +#define   DVO_PIPE_STALL_UNUSED			REG_FIELD_PREP(DVO_PIPE_STALL_MASK, 0)
> +#define   DVO_PIPE_STALL			REG_FIELD_PREP(DVO_PIPE_STALL_MASK, 1)
> +#define   DVO_PIPE_STALL_TV			REG_FIELD_PREP(DVO_PIPE_STALL_MASK, 2)
> +#define   DVO_INTERRUPT_SELECT			REG_BIT(27)
> +#define   DVO_DEDICATED_INT_ENABLE		REG_BIT(26)
> +#define   DVO_PRESERVE_MASK			REG_GENMASK(25, 24)
> +#define   DVO_USE_VGA_SYNC			REG_BIT(15)
> +#define   DVO_DATA_ORDER_MASK			REG_BIT(14)
> +#define   DVO_DATA_ORDER_I740			REG_FIELD_PREP(DVO_DATA_ORDER_MASK, 0)
> +#define   DVO_DATA_ORDER_FP			REG_FIELD_PREP(DVO_DATA_ORDER_MASK, 1)
> +#define   DVO_VSYNC_DISABLE			REG_BIT(11)
> +#define   DVO_HSYNC_DISABLE			REG_BIT(10)
> +#define   DVO_VSYNC_TRISTATE			REG_BIT(9)
> +#define   DVO_HSYNC_TRISTATE			REG_BIT(8)
> +#define   DVO_BORDER_ENABLE			REG_BIT(7)
> +#define   DVO_ACT_DATA_ORDER_MASK		REG_BIT(6)
> +#define   DVO_ACT_DATA_ORDER_RGGB		REG_FIELD_PREP(DVO_ACT_DATA_ORDER_MAS=
K, 0)
> +#define   DVO_ACT_DATA_ORDER_GBRG		REG_FIELD_PREP(DVO_ACT_DATA_ORDER_MAS=
K, 1)
> +#define   DVO_ACT_DATA_ORDER_GBRG_ERRATA	REG_FIELD_PREP(DVO_ACT_DATA_ORD=
ER_MASK, 0)
> +#define   DVO_ACT_DATA_ORDER_RGGB_ERRATA	REG_FIELD_PREP(DVO_ACT_DATA_ORD=
ER_MASK, 1)
> +#define   DVO_VSYNC_ACTIVE_HIGH			REG_BIT(4)
> +#define   DVO_HSYNC_ACTIVE_HIGH			REG_BIT(3)
> +#define   DVO_BLANK_ACTIVE_HIGH			REG_BIT(2)
> +#define   DVO_OUTPUT_CSTATE_PIXELS		REG_BIT(1) /* SDG only */
> +#define   DVO_OUTPUT_SOURCE_SIZE_PIXELS		REG_BIT(0) /* SDG only */
>  #define _DVOA_SRCDIM		0x61124
>  #define _DVOB_SRCDIM		0x61144
>  #define _DVOC_SRCDIM		0x61164
>  #define DVO_SRCDIM(port)	_MMIO_PORT((port), _DVOA_SRCDIM, _DVOB_SRCDIM)
> -#define   DVO_SRCDIM_HORIZONTAL_SHIFT	12
> -#define   DVO_SRCDIM_VERTICAL_SHIFT	0
> +#define   DVO_SRCDIM_HORIZONTAL_MASK		REG_GENMASK(22, 12)
> +#define   DVO_SRCDIM_HORIZONTAL(x)		REG_FIELD_PREP(DVO_SRCDIM_HORIZONTAL=
_MASK, (x))
> +#define   DVO_SRCDIM_VERTICAL_MASK		REG_GENMASK(10, 0)
> +#define   DVO_SRCDIM_VERTICAL(x)		REG_FIELD_PREP(DVO_SRCDIM_VERTICAL_MAS=
K, (x))
>=20=20
>  /* LVDS port control */
>  #define LVDS			_MMIO(0x61180)

--=20
Jani Nikula, Intel Open Source Graphics Center
