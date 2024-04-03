Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A70E2896E88
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBA4E112A53;
	Wed,  3 Apr 2024 11:57:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BvkZlNAX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93375112A52;
 Wed,  3 Apr 2024 11:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712145433; x=1743681433;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=VjseebnMQ68Omo502iAqM1uysAUx1ACZT4lvsWrZEQU=;
 b=BvkZlNAX0sHZORgvJ9S1tiRf42GGtZMjrYibj2sBrSbHyAqOqZqY29/w
 pTkigtg/TW1kJ9nt9gmnxhQO+ftKUbOJLw8opj/JtdlP1nz1dPHZHUydZ
 ti8W87XTpGbkSLmD4YxoBquXMNGG/8tdidyO2fAC2jKv9l8j1q9V4K6qh
 GIdZm5DPMz+wWeJnN2Iibq9qDnlVl92z2yblYdDspgOjxaFdbTwEtzJ2/
 wnXwhcT4pngYZvP1hK0gCqB7SsKraGGjTk2rJsB9loF52LdbQw0aFI2R3
 NYBHut16EBbr9QVL6SEPtd0md/iCUhjQ0d6vdpveppuGSBQOCJtOgjF0Q w==;
X-CSE-ConnectionGUID: KJ//1xAnS5aL6MJhAJR44Q==
X-CSE-MsgGUID: /3frkG4bSnGFBzqNye/D2Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24871223"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24871223"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:57:12 -0700
X-CSE-ConnectionGUID: JeUiHM92T7O636zcOnakbg==
X-CSE-MsgGUID: 6+Iuqbx0TFGS+zEKz6KMKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="49387391"
Received: from melsaid-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.235])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:57:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>, Suraj Kandpal
 <suraj.kandpal@intel.com>, Balasubramani Vivekanandan
 <balasubramani.vivekanandan@intel.com>
Subject: Re: [PATCH v2 18/25] drm/i915/display: Enable RM timeout detection
In-Reply-To: <20240403112253.1432390-19-balasubramani.vivekanandan@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-19-balasubramani.vivekanandan@intel.com>
Date: Wed, 03 Apr 2024 14:57:05 +0300
Message-ID: <871q7mek1a.fsf@intel.com>
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

On Wed, 03 Apr 2024, Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com> wrote:
> From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>
> Enable RM timeout interrupt to detect any hang during display engine
> register access. This interrupt is supported only on Display version 14.
> Current default timeout is 2ms.
>
> WA: 14012195489

Please don't invent new trailers. Add proper wa descriptions in
comments.

> Bspec: 50110
>

There should be no blank line here.

> CC: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 10 ++++++++++
>  drivers/gpu/drm/i915/i915_reg.h                  |  3 +++
>  2 files changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index f846c5b108b5..3035b50fcad9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -851,6 +851,13 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  {
>  	bool found = false;
>  
> +	if (iir & GEN8_DE_RM_TIMEOUT) {
> +		u32 val = intel_uncore_read(&dev_priv->uncore,
> +				RMTIMEOUTREG_CAPTURE);
> +		drm_warn(&dev_priv->drm, "Register Access Timeout = 0x%x\n", val);

What good does this do with no information on the register?

> +		found = true;
> +	}
> +
>  	if (DISPLAY_VER(dev_priv) >= 14) {
>  		if (iir & (XELPDP_PMDEMAND_RSP |
>  			   XELPDP_PMDEMAND_RSPTOUT_ERR)) {
> @@ -1666,6 +1673,9 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  			de_port_masked |= DSI0_TE | DSI1_TE;
>  	}
>  
> +	if (DISPLAY_VER(dev_priv) == 14)
> +		de_misc_masked |= GEN8_DE_RM_TIMEOUT;
> +
>  	de_pipe_enables = de_pipe_masked |
>  		GEN8_PIPE_VBLANK |
>  		gen8_de_pipe_underrun_mask(dev_priv) |
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 875d76fb8cd0..d1692b32bb8a 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4212,6 +4212,8 @@
>  #define RM_TIMEOUT		_MMIO(0x42060)
>  #define  MMIO_TIMEOUT_US(us)	((us) << 0)
>  
> +#define RMTIMEOUTREG_CAPTURE	_MMIO(0x420e0)
> +
>  /* interrupts */
>  #define DE_MASTER_IRQ_CONTROL   (1 << 31)
>  #define DE_SPRITEB_FLIP_DONE    (1 << 29)
> @@ -4398,6 +4400,7 @@
>  #define GEN8_DE_MISC_IMR _MMIO(0x44464)
>  #define GEN8_DE_MISC_IIR _MMIO(0x44468)
>  #define GEN8_DE_MISC_IER _MMIO(0x4446c)
> +#define  GEN8_DE_RM_TIMEOUT		REG_BIT(29)
>  #define  XELPDP_PMDEMAND_RSPTOUT_ERR	REG_BIT(27)
>  #define  GEN8_DE_MISC_GSE		REG_BIT(27)
>  #define  GEN8_DE_EDP_PSR		REG_BIT(19)

-- 
Jani Nikula, Intel
