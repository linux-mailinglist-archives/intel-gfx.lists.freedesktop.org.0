Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IO4qOjse+Wlw5wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 00:31:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE4C4C466C
	for <lists+intel-gfx@lfdr.de>; Tue, 05 May 2026 00:31:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C2910E8A6;
	Mon,  4 May 2026 22:31:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iUinv9QU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A3D910E8A0;
 Mon,  4 May 2026 22:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777933880; x=1809469880;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=dGrZuk3q2POKdynNAdFyqLYdmKFLe6pAiN/H5wRVdJ0=;
 b=iUinv9QUX1dsXggu13m+Z12uhCm2MK4RwAbk+eWmHF7/Bqqx4FYvCJcu
 z8OnF2y0RzF0eaXZkIage1ZRFBIvkT6rUvZP3twHvVINnluWqBtKExZ62
 IPWtImb0DyqcpejUbsuaTvSc/KzuHgwhEc6aJIK9Ibwl9MTTJA9Bq0Uqm
 0FIVPQu4u2dsz6nrX98bMj4wM8YMaX82U+Mt0FTTdBOewHvJKGKL/tTrM
 y0kcaWHSIwQRoilid+V29UUm+BoiY8Ei0CHfRljXXezPpeg0p81aQBSd/
 wMDXOw72hrzKD2d0UrNSonZtntdyiYztH0qrmbgDd9hrD7MZ3CGZcfSyO Q==;
X-CSE-ConnectionGUID: atnp21gzQjeoZ8E/6tcGxg==
X-CSE-MsgGUID: LytG80CfRC2QCyIN7h/CbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78897702"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="78897702"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:31:17 -0700
X-CSE-ConnectionGUID: pDvLNjNDRk+QhB3X3kvq4Q==
X-CSE-MsgGUID: uK7F9fVVTw+Ecy1f3FWVig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="237405696"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:31:16 -0700
Date: Tue, 5 May 2026 00:31:14 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 2/4] drm/i915/display: add struct intel_irq_regs and use it
In-Reply-To: <ed3401c39890fd02fb01510fc194f02e2dda4ebc.1775653994.git.jani.nikula@intel.com>
Message-ID: <4467f546-984f-0367-1356-38374c6ae2b9@intel.com>
References: <cover.1775653994.git.jani.nikula@intel.com>
 <ed3401c39890fd02fb01510fc194f02e2dda4ebc.1775653994.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1008125863-1777932803=:12090"
Content-ID: <d099449f-1a41-ffe2-a94b-2f4f2862967f@intel.com>
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
X-Rspamd-Queue-Id: 5EE4C4C466C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+,1:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1008125863-1777932803=:12090
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <45d67f39-b65c-05f0-9fac-751c98196268@intel.com>

On Wed, 8 Apr 2026, Jani Nikula wrote:
> Add struct intel_irq_regs, a display version of struct i915_irq_regs,
> and use it. The goal is to reduce the dependency on i915 core types and
> headers.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
> .../gpu/drm/i915/display/intel_display_irq.c  |  4 +-
> .../drm/i915/display/intel_display_reg_defs.h | 10 ++++
> .../gpu/drm/i915/display/intel_display_regs.h | 48 +++++++++----------
> 3 files changed, 36 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 365e467dddaf..8b6b4709989e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -30,7 +30,7 @@
> #include "intel_psr.h"
> #include "intel_psr_regs.h"
>
> -static void irq_reset(struct intel_display *display, struct i915_irq_regs regs)
> +static void irq_reset(struct intel_display *display, struct intel_irq_regs regs)
> {
> 	intel_de_write(display, regs.imr, 0xffffffff);
> 	intel_de_posting_read(display, regs.imr);
> @@ -63,7 +63,7 @@ static void assert_iir_is_zero(struct intel_display *display, intel_reg_t reg)
> 	intel_de_posting_read(display, reg);
> }
>
> -static void irq_init(struct intel_display *display, struct i915_irq_regs regs,
> +static void irq_init(struct intel_display *display, struct intel_irq_regs regs,
> 		     u32 imr_val, u32 ier_val)
> {
> 	assert_iir_is_zero(display, regs.iir);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> index cb46863693cd..d044967aa6d9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_reg_defs.h
> @@ -10,6 +10,16 @@
>
> typedef i915_reg_t intel_reg_t;
>
> +/* A triplet for IMR/IER/IIR registers. */
> +struct intel_irq_regs {
> +	intel_reg_t imr;
> +	intel_reg_t ier;
> +	intel_reg_t iir;
> +};
> +
> +#define INTEL_IRQ_REGS(_imr, _ier, _iir) \
> +	((const struct intel_irq_regs){ .imr = (_imr), .ier = (_ier), .iir = (_iir) })
> +
> #define VLV_DISPLAY_BASE		0x180000
>
> /*
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index dada8dc27ea4..4fc18e5ee239 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -105,9 +105,9 @@
> #define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
> #define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
>
> -#define VLV_IRQ_REGS		I915_IRQ_REGS(VLV_IMR, \
> -					      VLV_IER, \
> -					      VLV_IIR)
> +#define VLV_IRQ_REGS		INTEL_IRQ_REGS(VLV_IMR, \
> +					       VLV_IER, \
> +					       VLV_IIR)
>
> #define VLV_EIR		_MMIO(VLV_DISPLAY_BASE + 0x20b0)
> #define VLV_EMR		_MMIO(VLV_DISPLAY_BASE + 0x20b4)
> @@ -1116,9 +1116,9 @@
> #define DEIIR   _MMIO(0x44008)
> #define DEIER   _MMIO(0x4400c)
>
> -#define DE_IRQ_REGS		I915_IRQ_REGS(DEIMR, \
> -					      DEIER, \
> -					      DEIIR)
> +#define DE_IRQ_REGS		INTEL_IRQ_REGS(DEIMR, \
> +					       DEIER, \
> +					       DEIIR)
>
> #define DIGITAL_PORT_HOTPLUG_CNTRL	_MMIO(0x44030)
> #define  DIGITAL_PORTA_HOTPLUG_ENABLE		(1 << 4)
> @@ -1407,9 +1407,9 @@
> #define  GEN8_PIPE_VSYNC		REG_BIT(1)
> #define  GEN8_PIPE_VBLANK		REG_BIT(0)
>
> -#define GEN8_DE_PIPE_IRQ_REGS(pipe)	I915_IRQ_REGS(GEN8_DE_PIPE_IMR(pipe), \
> -						      GEN8_DE_PIPE_IER(pipe), \
> -						      GEN8_DE_PIPE_IIR(pipe))
> +#define GEN8_DE_PIPE_IRQ_REGS(pipe)	INTEL_IRQ_REGS(GEN8_DE_PIPE_IMR(pipe), \
> +						       GEN8_DE_PIPE_IER(pipe), \
> +						       GEN8_DE_PIPE_IIR(pipe))

Should I send a patch with s/pipe/_pipe applied to
GEN8_DE_PIPE_IRQ_REGS()? In case it is just a nit from checkpatch:

Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

>
> #define _HPD_PIN_DDI(hpd_pin)	((hpd_pin) - HPD_PORT_A)
> #define _HPD_PIN_TC(hpd_pin)	((hpd_pin) - HPD_PORT_TC1)
> @@ -1446,9 +1446,9 @@
> #define  TGL_DE_PORT_AUX_DDIB		REG_BIT(1)
> #define  TGL_DE_PORT_AUX_DDIA		REG_BIT(0)
>
> -#define GEN8_DE_PORT_IRQ_REGS		I915_IRQ_REGS(GEN8_DE_PORT_IMR, \
> -						      GEN8_DE_PORT_IER, \
> -						      GEN8_DE_PORT_IIR)
> +#define GEN8_DE_PORT_IRQ_REGS		INTEL_IRQ_REGS(GEN8_DE_PORT_IMR, \
> +						       GEN8_DE_PORT_IER, \
> +						       GEN8_DE_PORT_IIR)
>
> /* interrupts */
> #define DE_MASTER_IRQ_CONTROL   (1 << 31)
> @@ -1499,9 +1499,9 @@
> #define  XELPDP_PMDEMAND_RSP		REG_BIT(3)
> #define  XE2LPD_DBUF_OVERLAP_DETECTED	REG_BIT(1)
>
> -#define GEN8_DE_MISC_IRQ_REGS		I915_IRQ_REGS(GEN8_DE_MISC_IMR, \
> -						      GEN8_DE_MISC_IER, \
> -						      GEN8_DE_MISC_IIR)
> +#define GEN8_DE_MISC_IRQ_REGS		INTEL_IRQ_REGS(GEN8_DE_MISC_IMR, \
> +						       GEN8_DE_MISC_IER, \
> +						       GEN8_DE_MISC_IIR)
>
> #define GEN11_DISPLAY_INT_CTL		_MMIO(0x44200)
> #define  GEN11_DISPLAY_IRQ_ENABLE	(1 << 31)
> @@ -1533,9 +1533,9 @@
> 						 GEN11_TBT_HOTPLUG(HPD_PORT_TC2) | \
> 						 GEN11_TBT_HOTPLUG(HPD_PORT_TC1))
>
> -#define GEN11_DE_HPD_IRQ_REGS		I915_IRQ_REGS(GEN11_DE_HPD_IMR, \
> -						      GEN11_DE_HPD_IER, \
> -						      GEN11_DE_HPD_IIR)
> +#define GEN11_DE_HPD_IRQ_REGS		INTEL_IRQ_REGS(GEN11_DE_HPD_IMR, \
> +						       GEN11_DE_HPD_IER, \
> +						       GEN11_DE_HPD_IIR)
>
> #define GEN11_TBT_HOTPLUG_CTL				_MMIO(0x44030)
> #define GEN11_TC_HOTPLUG_CTL				_MMIO(0x44038)
> @@ -1557,9 +1557,9 @@
> #define  XELPDP_TBT_HOTPLUG(hpd_pin)		REG_BIT(_HPD_PIN_TC(hpd_pin))
> #define  XELPDP_TBT_HOTPLUG_MASK		REG_GENMASK(3, 0)
>
> -#define PICAINTERRUPT_IRQ_REGS			I915_IRQ_REGS(PICAINTERRUPT_IMR, \
> -							      PICAINTERRUPT_IER, \
> -							      PICAINTERRUPT_IIR)
> +#define PICAINTERRUPT_IRQ_REGS			INTEL_IRQ_REGS(PICAINTERRUPT_IMR, \
> +							       PICAINTERRUPT_IER, \
> +							       PICAINTERRUPT_IIR)
>
> #define XELPDP_PORT_HOTPLUG_CTL(hpd_pin)	_MMIO(0x16F270 + (_HPD_PIN_TC(hpd_pin) * 0x200))
> #define  XELPDP_TBT_HOTPLUG_ENABLE		REG_BIT(6)
> @@ -1875,9 +1875,9 @@
> #define SDEIIR  _MMIO(0xc4008)
> #define SDEIER  _MMIO(0xc400c)
>
> -#define SDE_IRQ_REGS			I915_IRQ_REGS(SDEIMR, \
> -						      SDEIER, \
> -						      SDEIIR)
> +#define SDE_IRQ_REGS			INTEL_IRQ_REGS(SDEIMR, \
> +						       SDEIER, \
> +						       SDEIIR)
>
> #define SERR_INT			_MMIO(0xc4040)
> #define  SERR_INT_POISON		(1 << 31)
> -- 
> 2.47.3
>
>
--8323329-1008125863-1777932803=:12090--
