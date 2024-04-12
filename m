Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7D78A31FC
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 17:15:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9698B10F6D2;
	Fri, 12 Apr 2024 15:15:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mCt1eLba";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF9BE10F6CE;
 Fri, 12 Apr 2024 15:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712934956; x=1744470956;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=noOEvL9nbJLagNHTxAarqXwAVdTuodfdoVA9nhyuBv8=;
 b=mCt1eLbad3ghRWWpVH8exodUS+flRvs8Ub/DfWmWZv6aMyRRKk8x38Wg
 l1SP/PdZE7cXdWtDkvmIdfAp6YNiNxdaLj9xBTKVGFA8+H1WbahEgG7ts
 MJ4rRbZw41hza0bkIBNGwKtbJbr2K1h2Aa+VIOSkhAN8nLZKI6iD4B6hw
 ok0ForiJHJNhvLL+6tD74RinaRoeYMXhsJtuPA0L9bYz0BYiVaBEoUzHI
 Im7fSDn+4FNi00zS+ZVq5gfwgXDo7WO2ZLtuONY/KFIkEkxphrz41gAki
 TdEqb8QouSoD/gu5JBv4vN0iWNpjLRbdC6vGdB1iA9McRb5o244mRigTJ g==;
X-CSE-ConnectionGUID: VjhOn1UeTXaBqpkp/XqpzQ==
X-CSE-MsgGUID: SRUhMBo0QWqABIXpNQtyRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19541684"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19541684"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 08:15:55 -0700
X-CSE-ConnectionGUID: OzKeHue8QYKx2xInSySRNQ==
X-CSE-MsgGUID: M2ouNSSCSaipycz29mesDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21345529"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 08:15:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 18:15:52 +0300
Date: Fri, 12 Apr 2024 18:15:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/6] drm/i915/audio: move LPE audio regs to
 intel_audio_regs.h
Message-ID: <ZhlQKHDNO4yAtP80@intel.com>
References: <cover.1712933479.git.jani.nikula@intel.com>
 <4fbcf9e020bb6fa315581c86c9729a665917ed75.1712933479.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4fbcf9e020bb6fa315581c86c9729a665917ed75.1712933479.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Apr 12, 2024 at 05:52:53PM +0300, Jani Nikula wrote:
> There are too few registers to warrant a dedicated file for LPE audio
> regs, but the audio reg file is better than i915_reg.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio_regs.h | 16 ++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_lpe_audio.c  |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h                 | 16 ----------------
>  3 files changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio_regs.h b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> index 616e7b1275c4..7a6d919481fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio_regs.h
> @@ -148,4 +148,20 @@
>  #define HBLANK_START_COUNT_96	4
>  #define HBLANK_START_COUNT_128	5
>  
> +/* LPE Audio */
> +#define I915_HDMI_LPE_AUDIO_BASE	(VLV_DISPLAY_BASE + 0x65000)
> +#define I915_HDMI_LPE_AUDIO_SIZE	0x1000
> +
> +#define VLV_AUD_CHICKEN_BIT_REG		_MMIO(VLV_DISPLAY_BASE + 0x62f38)
> +#define   VLV_CHICKEN_BIT_DBG_ENABLE	REG_BIT(0)
> +
> +#define _VLV_AUD_PORT_EN_B_DBG		(VLV_DISPLAY_BASE + 0x62f20)
> +#define _VLV_AUD_PORT_EN_C_DBG		(VLV_DISPLAY_BASE + 0x62f30)
> +#define _VLV_AUD_PORT_EN_D_DBG		(VLV_DISPLAY_BASE + 0x62f34)
> +#define VLV_AUD_PORT_EN_DBG(port)	_MMIO_PORT3((port) - PORT_B,	\
> +						    _VLV_AUD_PORT_EN_B_DBG, \
> +						    _VLV_AUD_PORT_EN_C_DBG, \
> +						    _VLV_AUD_PORT_EN_D_DBG)
> +#define   VLV_AMP_MUTE			REG_BIT(1)
> +
>  #endif /* __INTEL_AUDIO_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> index 5863763de530..93e6cac9a4ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
> @@ -72,7 +72,7 @@
>  
>  #include "i915_drv.h"
>  #include "i915_irq.h"
> -#include "i915_reg.h"
> +#include "intel_audio_regs.h"
>  #include "intel_de.h"
>  #include "intel_lpe_audio.h"
>  #include "intel_pci_config.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3f34efcd7d6c..c689bc7e2867 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1228,22 +1228,6 @@
>  #define I915_ASLE_INTERRUPT				(1 << 0)
>  #define I915_BSD_USER_INTERRUPT				(1 << 25)
>  
> -#define I915_HDMI_LPE_AUDIO_BASE	(VLV_DISPLAY_BASE + 0x65000)
> -#define I915_HDMI_LPE_AUDIO_SIZE	0x1000
> -
> -/* DisplayPort Audio w/ LPE */
> -#define VLV_AUD_CHICKEN_BIT_REG		_MMIO(VLV_DISPLAY_BASE + 0x62F38)
> -#define VLV_CHICKEN_BIT_DBG_ENABLE	(1 << 0)
> -
> -#define _VLV_AUD_PORT_EN_B_DBG		(VLV_DISPLAY_BASE + 0x62F20)
> -#define _VLV_AUD_PORT_EN_C_DBG		(VLV_DISPLAY_BASE + 0x62F30)
> -#define _VLV_AUD_PORT_EN_D_DBG		(VLV_DISPLAY_BASE + 0x62F34)
> -#define VLV_AUD_PORT_EN_DBG(port)	_MMIO_PORT3((port) - PORT_B,	   \
> -						    _VLV_AUD_PORT_EN_B_DBG, \
> -						    _VLV_AUD_PORT_EN_C_DBG, \
> -						    _VLV_AUD_PORT_EN_D_DBG)
> -#define VLV_AMP_MUTE		        (1 << 1)
> -
>  #define GEN6_BSD_RNCID			_MMIO(0x12198)
>  
>  #define GEN7_FF_THREAD_MODE		_MMIO(0x20a0)
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
