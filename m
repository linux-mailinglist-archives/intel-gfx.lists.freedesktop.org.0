Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIkbHY4TcmksawAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:09:50 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A617666E1
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 13:09:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9360F10E993;
	Thu, 22 Jan 2026 12:09:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WROzdDgA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFECC10E094;
 Thu, 22 Jan 2026 12:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769083788; x=1800619788;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=48+K6r30+d3zA7sXQ8V1dHvntLj5UspozQZdp7Gq8nA=;
 b=WROzdDgAFyz4QAHKjvtVl4PngauletdDvDavSZ9y+SZJIkphatfv6slp
 H0jkTZEIAg/a/BipmEpGKSpzvtcI/NNTxKlaNzWlvNelSPI6B67z/plrb
 dKifXSglukDxjY/OD6SbtWEe/Y1hEodcXzTrVUITG2OLpo7NbZFCQGrKC
 UzR+1K/Vx+EGcI6ZgMC4AiyauIwXVvRKS7OeMOdoJ6JmReLb0StHCJ04z
 nXHcHmkIfFfNF8klSsQbBRxND2ehXOlRGlOBjO+WkNwNofCYCaT9+O3Yp
 Hirm8g1ZxRAaAWEfkVIVL3ZggT3L1fXim5aNtF0LTQ/JrKl9U+eNauORC g==;
X-CSE-ConnectionGUID: IBSIsXEWRouVtdf7pqHoqw==
X-CSE-MsgGUID: 6PEIb0gXQXyiq18DGsXYsw==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="81766391"
X-IronPort-AV: E=Sophos;i="6.21,246,1763452800"; d="scan'208";a="81766391"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:09:47 -0800
X-CSE-ConnectionGUID: 0SDY3kLGRGW9VZ80atlYBg==
X-CSE-MsgGUID: AAhbWXS8RQKqg96UWxoXIw==
X-ExtLoop1: 1
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 04:09:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v2 13/19] drm/{i915, xe}: Remove i915_reg.h from intel_rom.c
In-Reply-To: <20260121232414.707192-14-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-14-uma.shankar@intel.com>
Date: Thu, 22 Jan 2026 14:09:41 +0200
Message-ID: <e449b0affc6ee57af3fe3794f12d0157030e3880@intel.com>
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
X-Rspamd-Queue-Id: 0A617666E1
X-Rspamd-Action: no action

On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Make intel_rom.c free from including i915_reg.h.
>
> v2: Use display header instead of gmd common include (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h | 8 ++++++++
>  drivers/gpu/drm/i915/display/intel_rom.c          | 3 +--
>  drivers/gpu/drm/i915/i915_reg.h                   | 8 --------
>  3 files changed, 9 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 2c7cd9002da3..f468e0d20b92 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -9,6 +9,14 @@
>  #define GU_CNTL_PROTECTED		_MMIO(0x10100C)
>  #define   DEPRESENT			REG_BIT(9)
>  
> +#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
> +#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
> +#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
> +#define SPI_STATIC_REGIONS			_MMIO(0x102090)
> +#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
> +#define OROM_OFFSET				_MMIO(0x1020c0)
> +#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
> +
>  #define _GEN7_PIPEA_DE_LOAD_SL	0x70068
>  #define _GEN7_PIPEB_DE_LOAD_SL	0x71068
>  #define GEN7_PIPE_DE_LOAD_SL(pipe) _MMIO_PIPE(pipe, _GEN7_PIPEA_DE_LOAD_SL, _GEN7_PIPEB_DE_LOAD_SL)
> diff --git a/drivers/gpu/drm/i915/display/intel_rom.c b/drivers/gpu/drm/i915/display/intel_rom.c
> index c8f615315310..d7de53acaba9 100644
> --- a/drivers/gpu/drm/i915/display/intel_rom.c
> +++ b/drivers/gpu/drm/i915/display/intel_rom.c
> @@ -7,10 +7,9 @@
>  
>  #include <drm/drm_device.h>
>  
> -#include "i915_reg.h"
> -
>  #include "intel_rom.h"
>  #include "intel_uncore.h"
> +#include "intel_display_regs.h"
>  
>  struct intel_rom {
>  	/* for PCI ROM */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5d640f7cfc23..d43c04e491e1 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -892,14 +892,6 @@
>  #define   SGGI_DIS			REG_BIT(15)
>  #define   SGR_DIS			REG_BIT(13)
>  
> -#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
> -#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
> -#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
> -#define SPI_STATIC_REGIONS			_MMIO(0x102090)
> -#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
> -#define OROM_OFFSET				_MMIO(0x1020c0)
> -#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
> -
>  #define MTL_MEDIA_GSI_BASE		0x380000
>  
>  #endif /* _I915_REG_H_ */

-- 
Jani Nikula, Intel
