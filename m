Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9E9BD6626
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 23:37:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64CFB10E0EB;
	Mon, 13 Oct 2025 21:37:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SvzeNn4A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A1A810E0EB;
 Mon, 13 Oct 2025 21:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760391448; x=1791927448;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IKF5xa4LZacYMGKn41il5T6oUxMSLT0NVLY6QOXSvLE=;
 b=SvzeNn4AExh1r2mGI8ZtfzE9zQPBsd6I54+y9U+PdpjXVM8TmkEHo4RY
 uZW1ELR/mDWEiBTa0CPc5xjuar9RbhDOgG2HGGijIEg/u30dLiaotGPNe
 +Dt+yr+oGzC+9hW0khgyn5BI6gA9smNoE3xwk/G1Di+pAbr5kT87XLTHk
 0bSekiRZM7AJjA49RqKPAd05Kj0Tgbyrh3x1qdyXrue7ZJeT/8xB8iCnm
 wqMH2as4k+mbx1zc55KwaXqURzOCNyDBNBRh+Cays5Jim8inX5U1SK2Es
 e/NsDyer73nMUJobGD+vMt61HVPoe6NBtFkFb3ZD9+V8Y0qdfJHHgNNy1 w==;
X-CSE-ConnectionGUID: Z898TFodRr27/n8UHnh/4A==
X-CSE-MsgGUID: T/70FFh5Rr2t5KoLzokl5w==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="50101866"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="50101866"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 14:37:27 -0700
X-CSE-ConnectionGUID: ACAahRE1TeqJxBlRAPoeDQ==
X-CSE-MsgGUID: 7efZNEMWSOGpqbiL0Bylag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181264795"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 14:37:25 -0700
Date: Tue, 14 Oct 2025 00:37:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [RFC][PATCH 08/11] drm/i915/prefill: Introduce intel_prefill.c
Message-ID: <aO1xEiogrt3D0gfq@intel.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
 <20251008182559.20615-9-ville.syrjala@linux.intel.com>
 <DM4PR11MB6360152991460DADB9784817F4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB6360152991460DADB9784817F4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Oct 13, 2025 at 06:42:09PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, October 8, 2025 11:56 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org
> > Subject: [RFC][PATCH 08/11] drm/i915/prefill: Introduce intel_prefill.c
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Add a new helper thingy to deal with the pipe prefill latency.
> > 
> > We get three potentially useful thigns out of this:
> > - intel_prefill_vblank_too_short() used for checking the
> >   actual vblank/guardband length
> > - intel_prefill_min_guardband() to calculate a suitable guardband
> >   size based on some worst case scaling/etc. estimates
> > - intel_prefill_min_cdclk() used to calculate a minimum cdclk
> >   freqency required for very small vblank lengths (in case the
> >   otherwise compute minimum cdclk doesn't result in fast enough
> >   prefill).
> > 
> > The internal arithmetic is done terms of scanlines using .16 binary fixed point
> > represantion.
> 
> Nit: Typo in representation.
> 
> Only thing maybe left is the SDP related latency, which also can be planned for worst case.

Yeah, though SDP (and PSR) are separate from the pre-fill. So
they should be handled by the higher level guardband calculation
code, not by intel_prefill.

> 
> Looks Good to me.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                |   1 +
> >  drivers/gpu/drm/i915/display/intel_prefill.c | 167 +++++++++++++++++++
> > drivers/gpu/drm/i915/display/intel_prefill.h |  48 ++++++
> >  drivers/gpu/drm/xe/Makefile                  |   1 +
> >  4 files changed, 217 insertions(+)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_prefill.c
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_prefill.h
> > 
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile index
> > 78a45a6681df..088a6c6cd138 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -351,6 +351,7 @@ i915-y += \
> >  	display/intel_panel.o \
> >  	display/intel_pfit.o \
> >  	display/intel_pps.o \
> > +	display/intel_prefill.o \
> >  	display/intel_qp_tables.o \
> >  	display/intel_sdvo.o \
> >  	display/intel_snps_hdmi_pll.o \
> > diff --git a/drivers/gpu/drm/i915/display/intel_prefill.c
> > b/drivers/gpu/drm/i915/display/intel_prefill.c
> > new file mode 100644
> > index 000000000000..8b9c14e5c505
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_prefill.c
> > @@ -0,0 +1,167 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright © 2025 Intel Corporation
> > + */
> > +
> > +#include <linux/debugfs.h>
> > +
> > +#include <drm/drm_print.h>
> > +
> > +#include "intel_cdclk.h"
> > +#include "intel_display_core.h"
> > +#include "intel_display_types.h"
> > +#include "intel_prefill.h"
> > +#include "intel_vdsc.h"
> > +#include "skl_scaler.h"
> > +#include "skl_watermark.h"
> > +
> > +static unsigned int prefill_usecs_to_lines(const struct
> > +intel_crtc_state *crtc_state, unsigned int usecs) {
> > +	const struct drm_display_mode *pipe_mode = &crtc_state-
> > >hw.pipe_mode;
> > +
> > +	return DIV_ROUND_UP_ULL(mul_u32_u32(pipe_mode->crtc_clock,
> > usecs << 16),
> > +				pipe_mode->crtc_htotal * 1000);
> > +}
> > +
> > +static void _intel_prefill_init(struct intel_prefill_ctx *ctx,
> > +				const struct intel_crtc_state *crtc_state) {
> > +	ctx->prefill.fixed = crtc_state->framestart_delay;
> > +
> > +	/* 20 usec for translation walks/etc. */
> > +	ctx->prefill.fixed += prefill_usecs_to_lines(crtc_state, 20);
> > +
> > +	ctx->prefill.dsc = intel_vdsc_prefill_lines(crtc_state);
> > +
> > +	ctx->prefill.full = 0;
> > +}
> > +
> > +static void intel_prefill_init_nocdclk_worst(struct intel_prefill_ctx *ctx,
> > +					     const struct intel_crtc_state
> > *crtc_state) {
> > +	_intel_prefill_init(ctx, crtc_state);
> > +
> > +	ctx->prefill.wm0 = skl_wm0_prefill_lines_worst(crtc_state);
> > +	ctx->prefill.scaler_1st = skl_scaler_1st_prefill_lines_worst(crtc_state);
> > +	ctx->prefill.scaler_2nd =
> > +skl_scaler_2nd_prefill_lines_worst(crtc_state);
> > +
> > +	ctx->adj.scaler_1st = skl_scaler_1st_prefill_adjustment_worst(crtc_state);
> > +	ctx->adj.scaler_2nd =
> > +skl_scaler_2nd_prefill_adjustment_worst(crtc_state);
> > +}
> > +
> > +static void intel_prefill_init_nocdclk(struct intel_prefill_ctx *ctx,
> > +				       const struct intel_crtc_state *crtc_state) {
> > +	_intel_prefill_init(ctx, crtc_state);
> > +
> > +	ctx->prefill.wm0 = skl_wm0_prefill_lines(crtc_state);
> > +	ctx->prefill.scaler_1st = skl_scaler_1st_prefill_lines(crtc_state);
> > +	ctx->prefill.scaler_2nd = skl_scaler_2nd_prefill_lines(crtc_state);
> > +
> > +	ctx->adj.scaler_1st = skl_scaler_1st_prefill_adjustment(crtc_state);
> > +	ctx->adj.scaler_2nd = skl_scaler_2nd_prefill_adjustment(crtc_state);
> > +}
> > +
> > +static unsigned int prefill_adjust(unsigned int value, unsigned int
> > +factor) {
> > +	return DIV_ROUND_UP_ULL(mul_u32_u32(value, factor), 0x10000); }
> > +
> > +static unsigned int prefill_lines_nocdclk(const struct
> > +intel_prefill_ctx *ctx) {
> > +	unsigned int prefill = 0;
> > +
> > +	prefill += ctx->prefill.dsc;
> > +	prefill = prefill_adjust(prefill, ctx->adj.scaler_2nd);
> > +
> > +	prefill += ctx->prefill.scaler_2nd;
> > +	prefill = prefill_adjust(prefill, ctx->adj.scaler_1st);
> > +
> > +	prefill += ctx->prefill.scaler_1st;
> > +	prefill += ctx->prefill.wm0;
> > +
> > +	return prefill;
> > +}
> > +
> > +static unsigned int prefill_lines_cdclk(const struct intel_prefill_ctx
> > +*ctx) {
> > +	return prefill_adjust(prefill_lines_nocdclk(ctx), ctx->adj.cdclk); }
> > +
> > +static unsigned int prefill_lines_full(const struct intel_prefill_ctx
> > +*ctx) {
> > +	return ctx->prefill.fixed + prefill_lines_cdclk(ctx); }
> > +
> > +void intel_prefill_init_worst(struct intel_prefill_ctx *ctx,
> > +			      const struct intel_crtc_state *crtc_state) {
> > +	intel_prefill_init_nocdclk_worst(ctx, crtc_state);
> > +
> > +	ctx->adj.cdclk = intel_cdclk_prefill_adjustment_worst(crtc_state);
> > +
> > +	ctx->prefill.full = prefill_lines_full(ctx); }
> > +
> > +void intel_prefill_init(struct intel_prefill_ctx *ctx,
> > +			const struct intel_crtc_state *crtc_state,
> > +			const struct intel_cdclk_state *cdclk_state) {
> > +	intel_prefill_init_nocdclk(ctx, crtc_state);
> > +
> > +	ctx->adj.cdclk = intel_cdclk_prefill_adjustment(crtc_state,
> > +cdclk_state);
> > +
> > +	ctx->prefill.full = prefill_lines_full(ctx); }
> > +
> > +static unsigned int prefill_lines_with_latency(const struct intel_prefill_ctx *ctx,
> > +					       const struct intel_crtc_state
> > *crtc_state,
> > +					       unsigned int latency_us)
> > +{
> > +	return ctx->prefill.full + prefill_usecs_to_lines(crtc_state,
> > +latency_us); }
> > +
> > +int intel_prefill_min_guardband(const struct intel_prefill_ctx *ctx,
> > +				const struct intel_crtc_state *crtc_state,
> > +				unsigned int latency_us)
> > +{
> > +	unsigned int prefill = prefill_lines_with_latency(ctx, crtc_state,
> > +latency_us);
> > +
> > +	return DIV_ROUND_UP(prefill, 0x10000); }
> > +
> > +static int intel_guardband(const struct intel_crtc_state *crtc_state) {
> > +	const struct drm_display_mode *pipe_mode = &crtc_state-
> > >hw.pipe_mode;
> > +
> > +	if (crtc_state->vrr.enable)
> > +		return crtc_state->vrr.guardband;
> > +	else
> > +		return pipe_mode->crtc_vblank_end - pipe_mode-
> > >crtc_vblank_start; }
> > +
> > +static int intel_prefill_guardband(const struct intel_crtc_state
> > +*crtc_state) {
> > +	return intel_guardband(crtc_state) << 16; }
> > +
> > +bool intel_prefill_vblank_too_short(const struct intel_prefill_ctx *ctx,
> > +				    const struct intel_crtc_state *crtc_state,
> > +				    unsigned int latency_us)
> > +{
> > +	unsigned int guardband = intel_prefill_guardband(crtc_state);
> > +	unsigned int prefill = prefill_lines_with_latency(ctx, crtc_state,
> > +latency_us);
> > +
> > +	return guardband < prefill;
> > +}
> > +
> > +int intel_prefill_min_cdclk(const struct intel_prefill_ctx *ctx,
> > +			    const struct intel_crtc_state *crtc_state) {
> > +	unsigned int prefill_unadjusted = prefill_lines_nocdclk(ctx);
> > +	unsigned int prefill_available = intel_prefill_guardband(crtc_state) -
> > +		ctx->prefill.fixed;
> > +
> > +	return intel_cdclk_min_cdclk_for_prefill(crtc_state, prefill_unadjusted,
> > +						 prefill_available);
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_prefill.h
> > b/drivers/gpu/drm/i915/display/intel_prefill.h
> > new file mode 100644
> > index 000000000000..0f07660261dc
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_prefill.h
> > @@ -0,0 +1,48 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright © 2025 Intel Corporation
> > + */
> > +
> > +#ifndef __INTEL_PREFILL_H__
> > +#define __INTEL_PREFILL_H__
> > +
> > +#include <linux/types.h>
> > +
> > +struct intel_cdclk_state;
> > +struct intel_crtc_state;
> > +
> > +struct intel_prefill_ctx {
> > +	/* .16 scanlines */
> > +	struct {
> > +		unsigned int fixed;
> > +		unsigned int wm0;
> > +		unsigned int scaler_1st;
> > +		unsigned int scaler_2nd;
> > +		unsigned int dsc;
> > +		unsigned int full;
> > +	} prefill;
> > +
> > +	/* .16 adjustment factors */
> > +	struct {
> > +		unsigned int cdclk;
> > +		unsigned int scaler_1st;
> > +		unsigned int scaler_2nd;
> > +	} adj;
> > +};
> > +
> > +void intel_prefill_init_worst(struct intel_prefill_ctx *ctx,
> > +			      const struct intel_crtc_state *crtc_state); void
> > +intel_prefill_init(struct intel_prefill_ctx *ctx,
> > +			const struct intel_crtc_state *crtc_state,
> > +			const struct intel_cdclk_state *cdclk_state);
> > +
> > +bool intel_prefill_vblank_too_short(const struct intel_prefill_ctx *ctx,
> > +				    const struct intel_crtc_state *crtc_state,
> > +				    unsigned int latency_us);
> > +int intel_prefill_min_guardband(const struct intel_prefill_ctx *ctx,
> > +				const struct intel_crtc_state *crtc_state,
> > +				unsigned int latency_us);
> > +int intel_prefill_min_cdclk(const struct intel_prefill_ctx *ctx,
> > +			    const struct intel_crtc_state *crtc_state);
> > +
> > +#endif /* __INTEL_PREFILL_H__ */
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile index
> > 84321fad3265..1be020cc417d 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -300,6 +300,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> >  	i915-display/intel_pmdemand.o \
> >  	i915-display/intel_pch.o \
> >  	i915-display/intel_pps.o \
> > +	i915-display/intel_prefill.o \
> >  	i915-display/intel_psr.o \
> >  	i915-display/intel_qp_tables.o \
> >  	i915-display/intel_quirks.o \
> > --
> > 2.49.1
> 

-- 
Ville Syrjälä
Intel
