Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YN1eCa4UcmksawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:14:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 879FE667C8
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:14:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6084110E094;
	Thu, 22 Jan 2026 12:14:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W/wi9MtT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D949E10E094;
 Thu, 22 Jan 2026 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769084074; x=1800620074;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Xm0XE7FgEHXocqOrIlZ/GB7i6BlrX2QBTYd22+iTcpE=;
 b=W/wi9MtTPVyyPOkGMfLAYOi3XNU0gR0+T3uvut2a85V5YZLyQx3uvdkN
 HT6QpuQx2M21cK0E6m6/rwk8Dckc3Jm+ZNIwp+St6xsYUAifvk7iqu4Nw
 lQ0xc7m08k1RiJFitVpy0eHjYjI+RDC2PaboPkNeSeCk+Erd8EwkmhX4/
 rU/ZQDDIFAI4jGTBobikjWnvIxN61hX+fw2+EQEo91hhqxf2uyXlICrgC
 Soxe9qK6xQBHHU16K6NEoK0EQOn5bJm6B5HcW7TIC/t0QfnMTp1gvduFw
 XLFwmFBtLpW7MLsnSLpg480eptO8EBLJIQZIHuQ3JHN8nhvynu0VIeh+m w==;
X-CSE-ConnectionGUID: 52CVXRxgTkyEeciSETTtJw==
X-CSE-MsgGUID: YzMi+hvjQOGS5rIfBTID3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="81435322"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="81435322"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:14:33 -0800
X-CSE-ConnectionGUID: LCWham2XSO66gxIiE7PCBA==
X-CSE-MsgGUID: gMB7XKQaTxCG4sl5ECnURw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="211575921"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:14:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v2 15/19] drm/{i915, xe}: Remove i915_reg.h from
 intel_fifo_underrun.c
In-Reply-To: <20260121232414.707192-16-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-16-uma.shankar@intel.com>
Date: Thu, 22 Jan 2026 14:14:28 +0200
Message-ID: <c164173e1696e5d8fee8b5be0bbc90fa4f5aff1a@intel.com>
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 879FE667C8
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move GEN7_ERR_INT reg to common header to make intel_fifo_underrun.c
> free from including i915_reg.h.

I think these should be in a display register header, not the common
one. The users are display and gvt, apart from a single use in
gt_record_global_regs() which should be moved to display. I can send a
patch for that.

BR,
Jani.



>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  .../drm/i915/display/intel_fifo_underrun.c    |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h               | 23 -------------------
>  include/drm/intel/intel_gmd_common_regs.h     | 23 +++++++++++++++++++
>  3 files changed, 24 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index b413b3e871d8..c834be759e40 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -28,8 +28,8 @@
>  #include <linux/seq_buf.h>
>  
>  #include <drm/drm_print.h>
> +#include <drm/intel/intel_gmd_common_regs.h>
>  
> -#include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
>  #include "intel_display_regs.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 62d58d7cfa7a..0af2c9c8dc0f 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -326,29 +326,6 @@
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
>  
> diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
> index 049349c365e3..2b2a7f21529a 100644
> --- a/include/drm/intel/intel_gmd_common_regs.h
> +++ b/include/drm/intel/intel_gmd_common_regs.h
> @@ -169,4 +169,27 @@
>  #define   INSTPM_TLB_INVALIDATE	(1 << 9)
>  #define   INSTPM_SYNC_FLUSH	(1 << 5)
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
>  #endif

-- 
Jani Nikula, Intel
