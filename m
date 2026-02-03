Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GKvqJGTugWlAMwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:47:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01083D9458
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 13:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 574D410E102;
	Tue,  3 Feb 2026 12:47:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CtspQlGm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CD1510E102;
 Tue,  3 Feb 2026 12:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770122850; x=1801658850;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wLeDDx9y97jeXtCzsGUQxyRU2q3suaUrfG+cSpuf6CM=;
 b=CtspQlGmT84lkvEus+zcldIiu0kOlsBtRIpjcWWx/+KM2pDUYo5a/FVe
 MugSsHMFHy618tFkKdfxMWlVzi6oJcDuBkVi+BiH7ra1DrUcShHm2tXeP
 QBu8MqxoQhxaHOglzmRbrlcbNl3C3a+QGB7BoLW4XO1jxzjY/W23uDNeU
 KkFz1pvIrCi9bEeepgKOSUE74RBDsPemVAknF+OLdk2TjLrpbCWFD9yg9
 gs3FI0cqMyaAeEEW2B/w7XbU+y72NYki/V9HT9vX1quayhHmMD9Vg23Ke
 9kROqzfT604H0of2gyybNgPhNCG3EMu7EvgE+6I/lsNx4fraC1NeFzaNN w==;
X-CSE-ConnectionGUID: 2tGtKy1mSJeQaSyhqJ0Iag==
X-CSE-MsgGUID: p5qNawLJRuu4OBHdt9fG5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71198299"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="71198299"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:47:29 -0800
X-CSE-ConnectionGUID: lZQfLCeXQte2zpjPjsv/9w==
X-CSE-MsgGUID: SYkoEUnjRXeL1pU/HySudg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="209130518"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 04:47:26 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v3 15/19] drm/i915: Remove i915_reg.h from intel_fifo_underrun.c
In-Reply-To: <20260129211358.1240283-16-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-16-uma.shankar@intel.com>
Date: Tue, 03 Feb 2026 14:47:24 +0200
Message-ID: <4336e44d7e5c71453d26883b6d9f0cc0c90ab0b5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 01083D9458
X-Rspamd-Action: no action

On Fri, 30 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move GEN7_ERR_INT reg to common header to make intel_fifo_underrun.c
> free from including i915_reg.h.
>
> v2: Move GEN7_ERR_INT regs to display header (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  .../gpu/drm/i915/display/intel_display_regs.h | 23 +++++++++++++++++++
>  .../drm/i915/display/intel_fifo_underrun.c    |  1 -
>  drivers/gpu/drm/i915/i915_reg.h               | 23 -------------------
>  3 files changed, 23 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 23626ee2d4ce..ab2ef267c9ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -91,6 +91,29 @@
>  #define   DERRMR_PIPEC_VBLANK		(1 << 21)
>  #define   DERRMR_PIPEC_HBLANK		(1 << 22)
>  
> +#define GEN7_ERR_INT	_MMIO(0x44040)
> +#define   ERR_INT_POISON		(1 << 31)
> +#define   ERR_INT_INVALID_GTT_PTE	(1 << 29)
> +#define   ERR_INT_INVALID_PTE_DATA	(1 << 28)
> +#define   ERR_INT_SPRITE_C_FAULT	(1 << 23)
> +#define   ERR_INT_PRIMARY_C_FAULT	(1 << 22)
> +#define   ERR_INT_CURSOR_C_FAULT	(1 << 21)
> +#define   ERR_INT_SPRITE_B_FAULT	(1 << 20)
> +#define   ERR_INT_PRIMARY_B_FAULT	(1 << 19)
> +#define   ERR_INT_CURSOR_B_FAULT	(1 << 18)
> +#define   ERR_INT_SPRITE_A_FAULT	(1 << 17)
> +#define   ERR_INT_PRIMARY_A_FAULT	(1 << 16)
> +#define   ERR_INT_CURSOR_A_FAULT	(1 << 15)
> +#define   ERR_INT_MMIO_UNCLAIMED	(1 << 13)
> +#define   ERR_INT_PIPE_CRC_DONE_C	(1 << 8)
> +#define   ERR_INT_FIFO_UNDERRUN_C	(1 << 6)
> +#define   ERR_INT_PIPE_CRC_DONE_B	(1 << 5)
> +#define   ERR_INT_FIFO_UNDERRUN_B	(1 << 3)
> +#define   ERR_INT_PIPE_CRC_DONE_A	(1 << 2)
> +#define   ERR_INT_PIPE_CRC_DONE(pipe)	(1 << (2 + (pipe) * 3))
> +#define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
> +#define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
> +
>  #define VLV_IRQ_REGS		I915_IRQ_REGS(VLV_IMR, \
>  					      VLV_IER, \
>  					      VLV_IIR)
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index b413b3e871d8..bf047180def9 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -29,7 +29,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
>  #include "intel_display_regs.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b23ac1b8f495..611ae5861450 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -327,29 +327,6 @@
>  #define GEN7_MEDIA_MAX_REQ_COUNT	_MMIO(0x4070)
>  #define GEN7_GFX_MAX_REQ_COUNT		_MMIO(0x4074)
>  
> -#define GEN7_ERR_INT	_MMIO(0x44040)
> -#define   ERR_INT_POISON		(1 << 31)
> -#define   ERR_INT_INVALID_GTT_PTE	(1 << 29)
> -#define   ERR_INT_INVALID_PTE_DATA	(1 << 28)
> -#define   ERR_INT_SPRITE_C_FAULT	(1 << 23)
> -#define   ERR_INT_PRIMARY_C_FAULT	(1 << 22)
> -#define   ERR_INT_CURSOR_C_FAULT	(1 << 21)
> -#define   ERR_INT_SPRITE_B_FAULT	(1 << 20)
> -#define   ERR_INT_PRIMARY_B_FAULT	(1 << 19)
> -#define   ERR_INT_CURSOR_B_FAULT	(1 << 18)
> -#define   ERR_INT_SPRITE_A_FAULT	(1 << 17)
> -#define   ERR_INT_PRIMARY_A_FAULT	(1 << 16)
> -#define   ERR_INT_CURSOR_A_FAULT	(1 << 15)
> -#define   ERR_INT_MMIO_UNCLAIMED	(1 << 13)
> -#define   ERR_INT_PIPE_CRC_DONE_C	(1 << 8)
> -#define   ERR_INT_FIFO_UNDERRUN_C	(1 << 6)
> -#define   ERR_INT_PIPE_CRC_DONE_B	(1 << 5)
> -#define   ERR_INT_FIFO_UNDERRUN_B	(1 << 3)
> -#define   ERR_INT_PIPE_CRC_DONE_A	(1 << 2)
> -#define   ERR_INT_PIPE_CRC_DONE(pipe)	(1 << (2 + (pipe) * 3))
> -#define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
> -#define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
> -
>  #define FPGA_DBG		_MMIO(0x42300)
>  #define   FPGA_DBG_RM_NOCLAIM	REG_BIT(31)

-- 
Jani Nikula, Intel
