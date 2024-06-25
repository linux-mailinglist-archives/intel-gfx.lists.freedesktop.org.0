Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ACCC916086
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2024 09:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF1310E09C;
	Tue, 25 Jun 2024 07:58:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jDLYPye3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 850E510E5C2
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2024 07:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719302308; x=1750838308;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=apdXXvwt7HjukXOmeA4QNgcD3DUZqRysMUnTKhgpKi8=;
 b=jDLYPye3sFr9hNzVEtw7LmT2t6Trm15hDvKHXPCBYHs4AnNH+gvqMrEb
 RR3J42i7nbF6gAXjmEVmqhYlWz01U6eKs0WbAb3c3cPBT7QmCukCVovwj
 50N/EL7ZsZ3u01RziakL7ekNpJ7ImIafxKR3+UzKYYyMLjdvW9ejvlCh2
 wDHGK80QChgkoB70HiUYgOYVCruFmpSnaJGPdfpTY1flh2MO9RlEtRYMb
 V/CUGrrajeZBIiG4rs8OSprLXInmZYAkPa/fnRPICrlaGDHFEmPC8A9gq
 b7Rsw5EbyNKJzC8CO6N4cbc/BPGlW/jneVWHSr0OfMsNVfLqEMNNlUvge A==;
X-CSE-ConnectionGUID: wpqQOm3kQHWqbXu4gLjBEA==
X-CSE-MsgGUID: RAwPnRGKQvG/Ea8dw6X03A==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16266720"
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="16266720"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 00:58:27 -0700
X-CSE-ConnectionGUID: uPD0JI76QRuGvvow/SP0yQ==
X-CSE-MsgGUID: TDyrORuzTIS5+31hD7uqQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,263,1712646000"; d="scan'208";a="43429357"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.245])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 00:58:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 03/14] drm/i915/dsb: Hook up DSB error interrupts
In-Reply-To: <20240624191032.27333-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-4-ville.syrjala@linux.intel.com>
Date: Tue, 25 Jun 2024 10:58:20 +0300
Message-ID: <87ikxxe9nn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 24 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Enable all DSB error/fault interrupts so that we can see if
> anything goes terribly wrong.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 17 ++++++
>  drivers/gpu/drm/i915/display/intel_dsb.c      | 58 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dsb.h      |  6 ++
>  drivers/gpu/drm/i915/i915_reg.h               |  4 ++
>  4 files changed, 85 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index 5219ba295c74..7169db984651 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -14,6 +14,7 @@
>  #include "intel_display_trace.h"
>  #include "intel_display_types.h"
>  #include "intel_dp_aux.h"
> +#include "intel_dsb.h"
>  #include "intel_fdi_regs.h"
>  #include "intel_fifo_underrun.h"
>  #include "intel_gmbus.h"
> @@ -1143,6 +1144,17 @@ void gen8_de_irq_handler(struct drm_i915_private *=
dev_priv, u32 master_ctl)
>=20=20
>  		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe), iir);
>=20=20
> +		if (HAS_DSB(dev_priv)) {
> +			if (iir & GEN12_DSB_INT(INTEL_DSB_0))
> +				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_0);
> +
> +			if (iir & GEN12_DSB_INT(INTEL_DSB_1))
> +				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_1);
> +
> +			if (iir & GEN12_DSB_INT(INTEL_DSB_2))
> +				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_2);
> +		}
> +
>  		if (iir & GEN8_PIPE_VBLANK)
>  			intel_handle_vblank(dev_priv, pipe);
>=20=20
> @@ -1718,6 +1730,11 @@ void gen8_de_irq_postinstall(struct drm_i915_priva=
te *dev_priv)
>  			de_port_masked |=3D DSI0_TE | DSI1_TE;
>  	}
>=20=20
> +	if (HAS_DSB(dev_priv))
> +		de_pipe_masked |=3D GEN12_DSB_INT(INTEL_DSB_0) |
> +			GEN12_DSB_INT(INTEL_DSB_1) |
> +			GEN12_DSB_INT(INTEL_DSB_2);
> +
>  	de_pipe_enables =3D de_pipe_masked |
>  		GEN8_PIPE_VBLANK |
>  		gen8_de_pipe_underrun_mask(dev_priv) |
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index 2ab3765f6c06..ded696363258 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -339,6 +339,42 @@ static u32 dsb_chicken(struct intel_crtc *crtc)
>  		return DSB_SKIP_WAITS_EN;
>  }
>=20=20
> +static u32 dsb_error_int_status(struct intel_display *display)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);

I think this is redundant, you can just pass display to DISPLAY_VER().

> +	u32 errors;
> +
> +	errors =3D DSB_GTT_FAULT_INT_STATUS |
> +		DSB_RSPTIMEOUT_INT_STATUS |
> +		DSB_POLL_ERR_INT_STATUS;
> +
> +	/*
> +	 * All the non-existing status bits operate as
> +	 * normal r/w bits, so any attempt to clear them
> +	 * will just end up setting them. Never do that so
> +	 * we won't mistake them for actual error interrupts.
> +	 */
> +	if (DISPLAY_VER(i915) >=3D 14)
> +		errors |=3D DSB_ATS_FAULT_INT_STATUS;
> +
> +	return errors;
> +}
> +
> +static u32 dsb_error_int_en(struct intel_display *display)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);

Ditto.

> +	u32 errors;
> +
> +	errors =3D DSB_GTT_FAULT_INT_EN |
> +		DSB_RSPTIMEOUT_INT_EN |
> +		DSB_POLL_ERR_INT_EN;
> +
> +	if (DISPLAY_VER(i915) >=3D 14)
> +		errors |=3D DSB_ATS_FAULT_INT_EN;
> +
> +	return errors;
> +}
> +
>  static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
>  			      int dewake_scanline)
>  {
> @@ -363,6 +399,10 @@ static void _intel_dsb_commit(struct intel_dsb *dsb,=
 u32 ctrl,
>  	intel_de_write_fw(display, DSB_CHICKEN(pipe, dsb->id),
>  			  dsb_chicken(crtc));
>=20=20
> +	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb->id),
> +			  dsb_error_int_status(display) | DSB_PROG_INT_STATUS |
> +			  dsb_error_int_en(display));
> +
>  	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
>  			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
>=20=20
> @@ -430,6 +470,9 @@ void intel_dsb_wait(struct intel_dsb *dsb)
>  	dsb->free_pos =3D 0;
>  	dsb->ins_start_offset =3D 0;
>  	intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id), 0);
> +
> +	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb->id),
> +			  dsb_error_int_status(display) | DSB_PROG_INT_STATUS);
>  }
>=20=20
>  /**
> @@ -513,3 +556,18 @@ void intel_dsb_cleanup(struct intel_dsb *dsb)
>  	intel_dsb_buffer_cleanup(&dsb->dsb_buf);
>  	kfree(dsb);
>  }
> +
> +void intel_dsb_irq_handler(struct intel_display *display,
> +			   enum pipe pipe, enum intel_dsb_id dsb_id)
> +{
> +	struct intel_crtc *crtc =3D intel_crtc_for_pipe(to_i915(display->drm), =
pipe);
> +	u32 tmp, errors;
> +
> +	tmp =3D intel_de_read_fw(display, DSB_INTERRUPT(pipe, dsb_id));
> +	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb_id), tmp);
> +
> +	errors =3D tmp & dsb_error_int_status(display);
> +	if (errors)
> +		drm_err(display->drm, "[CRTC:%d:%s] / DSB %d error interrupt: 0x%x\n",
> +			crtc->base.base.id, crtc->base.name, dsb_id, errors);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i=
915/display/intel_dsb.h
> index bb42749f2ea4..84fc2f8434d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -13,8 +13,11 @@
>  struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_display;
>  struct intel_dsb;
>=20=20
> +enum pipe;
> +
>  enum intel_dsb_id {
>  	INTEL_DSB_0,
>  	INTEL_DSB_1,
> @@ -41,4 +44,7 @@ void intel_dsb_commit(struct intel_dsb *dsb,
>  		      bool wait_for_vblank);
>  void intel_dsb_wait(struct intel_dsb *dsb);
>=20=20
> +void intel_dsb_irq_handler(struct intel_display *display,
> +			   enum pipe pipe, enum intel_dsb_id dsb_id);
> +
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 0e3d79227e3c..49a9761ca313 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2515,6 +2515,10 @@
>  #define  GEN11_PIPE_PLANE7_FLIP_DONE	REG_BIT(18) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE6_FLIP_DONE	REG_BIT(17) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE5_FLIP_DONE	REG_BIT(16) /* icl+ */
> +#define  GEN12_DSB_2_INT		REG_BIT(15) /* tgl+ */
> +#define  GEN12_DSB_1_INT		REG_BIT(14) /* tgl+ */
> +#define  GEN12_DSB_0_INT		REG_BIT(13) /* tgl+ */
> +#define  GEN12_DSB_INT(dsb_id)		REG_BIT(13 + (dsb_id))
>  #define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
>  #define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
>  #define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */

--=20
Jani Nikula, Intel
