Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oJ0vEMIggmlIPgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 17:22:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B1BDBDA6
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 17:22:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F1910E6F9;
	Tue,  3 Feb 2026 16:22:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ria9wk2W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B82FF10E6FF;
 Tue,  3 Feb 2026 16:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770135742; x=1801671742;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AxmaBLD+Y18VirKS4EZVnJgobHjoJMt5NAxTCTJ+GP4=;
 b=Ria9wk2WRD44p2brPXp+qutbxXdUsS98cBsNQnW2802IGQN8WEmKbNvM
 MdPzNrvLr6hZjfKGCjbuqxubXBxC2m1z5NvSxxVj+/tzYAoJN/jr4Bm34
 escbqtJnr1y/Vusr301D7tD3afIe60eXoj22RuwMAyw21WZ22xB5i4zzj
 bqDXJxQfa4PKjyOd4n4wS++GsmE0+/4xP3k5eZCS3+Hoz1WK6sicbaX36
 Zf+6V8T111PXI9YXjEakaz9J2dMshpP7EIY9CAMEQlwQSXiFgeN3103OL
 Gludf6E7Odg9B+/fOwRbTe91hXKgn23Cbd59wgWQMJ9T39PSdumCFfWDZ w==;
X-CSE-ConnectionGUID: +CPApsR5SJKXmt/nl7Lwbw==
X-CSE-MsgGUID: B0S5dBEsSA6q+rCGNzEaKw==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71368481"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="71368481"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 08:22:20 -0800
X-CSE-ConnectionGUID: hqsLa5ZXS/ePVMVcmZ87iw==
X-CSE-MsgGUID: vVZYF7pVQiCG/JEdsy3shQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="209979829"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.148])
 by orviesa007-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Feb 2026 08:22:18 -0800
Date: Tue, 3 Feb 2026 18:22:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@intel.com
Subject: Re: [v3 13/19] drm/i915: Remove i915_reg.h from intel_rom.c
Message-ID: <aYIgt-CcjqbjERhR@intel.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
 <20260129211358.1240283-14-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260129211358.1240283-14-uma.shankar@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.46 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.77)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 81B1BDBDA6
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 02:43:52AM +0530, Uma Shankar wrote:
> Make intel_rom.c free from including i915_reg.h.
> 
> v3: Update patch header
> 
> v2: Use display header instead of gmd common include (Jani)
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_regs.h | 8 ++++++++
>  drivers/gpu/drm/i915/display/intel_rom.c          | 3 +--
>  drivers/gpu/drm/i915/i915_reg.h                   | 8 --------
>  3 files changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index 5679a83ff19b..3707c5999ffb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -10,6 +10,14 @@
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

Those don't look like display registers to me. Should probably
live in some more specific header.

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
> index 635726f01e9a..f896ece3b568 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -898,14 +898,6 @@
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
> -- 
> 2.50.1

-- 
Ville Syrjälä
Intel
