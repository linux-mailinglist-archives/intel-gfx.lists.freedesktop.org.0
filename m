Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DUFB9oLcmksawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:36:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0F96617A
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 12:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A3D10E980;
	Thu, 22 Jan 2026 11:36:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G0A+SRu9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 821CE10E98A;
 Thu, 22 Jan 2026 11:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769081814; x=1800617814;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=memREqZU5vkSQkIvjsRfAYZRvebhBCPJCQWOcsKZqrQ=;
 b=G0A+SRu9thUPB4lkzQYwdIdaUNT7n320dh+6BBwBVOhNGxP0WiqaDdyX
 uGTilAKQXt2CpB2XHkfDIgrZOrS5uOYvQY6jks7z6QjrIfq+ZX55woNzW
 I2XxS+iL6GNxa6l1ElWs9IHOrXBw8m5DkCJPBqmeAMutPzumgOQpCQcuy
 kSb5oggvFVlVLHoLel/2paKeuum6m0pMJ1rgYA5UaErepG+UNzI+3sWWQ
 5+U+UcWrN68k/fDm58JRwbXmu1FfD2PoQcTrG8r7rrybAoJOsvBXTQ64T
 5hfzQiTcWYREfb/qoPP5FP2Sx7KN5MMUA3cc5/9MULZvvwqdXVXHWAL0M w==;
X-CSE-ConnectionGUID: boxYrMHjQpaFaQ+BIJXTrA==
X-CSE-MsgGUID: YW29G6gjRYi6sFeDrhC/zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70222341"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="70222341"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:36:54 -0800
X-CSE-ConnectionGUID: wGijcoQcTN+Y4es4MkWYtA==
X-CSE-MsgGUID: qdSTgfmJQROPHTjbk3S6jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="210856117"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 03:36:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v2 06/19] drm/{i915, xe}: Remove i915_reg.h from
 intel_display_device.c
In-Reply-To: <20260121232414.707192-7-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-7-uma.shankar@intel.com>
Date: Thu, 22 Jan 2026 13:36:48 +0200
Message-ID: <e3b2fb8eefcfe7362bd24cd626a8ee7d2c4f4fce@intel.com>
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
X-Rspamd-Queue-Id: 7B0F96617A
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Move GU_CNTL_PROTECTED to common header, this helps
> intel_display_device.c free from i915_reg.h dependency.

This doesn't mention the GMD ID stuff.

>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_regs.h   | 3 +++
>  drivers/gpu/drm/i915/i915_reg.h                     | 8 --------
>  include/drm/intel/intel_gmd_common_regs.h           | 5 +++++
>  4 files changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 471f236c9ddf..f7cc4198a870 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -9,8 +9,8 @@
>  #include <drm/drm_drv.h>
>  #include <drm/drm_print.h>
>  #include <drm/intel/pciids.h>
> +#include <drm/intel/intel_gmd_common_regs.h>
>  
> -#include "i915_reg.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_de.h"
>  #include "intel_display.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 5136b7166775..3447ee229354 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -6,6 +6,9 @@
>  
>  #include "intel_display_reg_defs.h"
>  
> +#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
> +#define   DEPRESENT			REG_BIT(9)
> +
>  #define _GEN7_PIPEA_DE_LOAD_SL	0x70068
>  #define _GEN7_PIPEB_DE_LOAD_SL	0x71068
>  #define GEN7_PIPE_DE_LOAD_SL(pipe) _MMIO_PIPE(pipe, _GEN7_PIPEA_DE_LOAD_SL, _GEN7_PIPEB_DE_LOAD_SL)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 35122c997b8a..fac24a649d61 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -117,9 +117,6 @@
>   *  #define GEN8_BAR                    _MMIO(0xb888)
>   */
>  
> -#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
> -#define   DEPRESENT			REG_BIT(9)
> -
>  #define GU_CNTL				_MMIO(0x101010)
>  #define   LMEM_INIT			REG_BIT(7)
>  #define   DRIVERFLR			REG_BIT(31)
> @@ -925,11 +922,6 @@
>  #define   MASK_WAKEMEM				REG_BIT(13)
>  #define   DDI_CLOCK_REG_ACCESS			REG_BIT(7)
>  
> -#define GMD_ID_DISPLAY				_MMIO(0x510a0)
> -#define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
> -#define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
> -#define   GMD_ID_STEP				REG_GENMASK(5, 0)
> -
>  /* PCH */
>  
>  #define SDEISR  _MMIO(0xc4000)
> diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
> index 8e9a574c87d9..489d59379ab0 100644
> --- a/include/drm/intel/intel_gmd_common_regs.h
> +++ b/include/drm/intel/intel_gmd_common_regs.h
> @@ -105,4 +105,9 @@
>  #define     PCODE_MBOX_DOMAIN_NONE		0x0
>  #define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
>  
> +#define GMD_ID_DISPLAY				_MMIO(0x510a0)
> +#define   GMD_ID_ARCH_MASK			REG_GENMASK(31, 22)
> +#define   GMD_ID_RELEASE_MASK			REG_GENMASK(21, 14)
> +#define   GMD_ID_STEP				REG_GENMASK(5, 0)

Only display uses GMD_ID_DISPLAY register. I'd put this in display regs,
and define the register contents with GMD_ID_DISPLAY_* even if the
register contents are identical for display and non-display GMD
registers.

Main point is, we should use the common regs file as little as possible.

BR,
Jani.

> +
>  #endif

-- 
Jani Nikula, Intel
