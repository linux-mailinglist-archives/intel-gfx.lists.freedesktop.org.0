Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 172C78BCD90
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:13:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DBE610EFC7;
	Mon,  6 May 2024 12:13:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HZe8HD9W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9647010EFC7
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 12:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714997628; x=1746533628;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=elX3ITjfxasAygIkTK4HNSzuUM6t+NXQugU3z+3v1HU=;
 b=HZe8HD9WPtlWtLyERCI3o7ZUQiegh2RzPsiJ9rIWJ4cZLG4Zjr7CCQDj
 heSDTBkWv0DHpTI4R1vzPSVVFTQvh7ont8c4uhytvlsthBH/aTcNV5SZZ
 KXctbC8vK2fiUgZ0g/2B4sSviC4kNRygX4qOIRSdLC3EH/OFfZWu0appy
 seNd8Io/PQeVBDlBoFtU9e0NP8/lcmebcLz2Wcp4AJ557AMI69Da1oLLn
 B3ulGE1IA907gwvH5M0swLOh9G+XIkks9CKQmBOVkfU5Zn6A5mjrK3VJ0
 Oc4teOF3rHqBCr21Ll9xydUSn+agEl7EgmDX7Z/RGwr9QPmSdBwZNOGCI A==;
X-CSE-ConnectionGUID: JSvFsLELTXKOlipx4LW6DQ==
X-CSE-MsgGUID: kDlFbnw/Q3WwQwSpBSSNdQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10862412"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10862412"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:13:45 -0700
X-CSE-ConnectionGUID: U1Y9x1GNShO9JWtfRnYTsw==
X-CSE-MsgGUID: BC8BJGpxQkiChnEJJbX9hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28158866"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:13:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:13:42 +0300
Date: Mon, 6 May 2024 15:13:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915: pass dev_priv explicitly to PIPE_CRC_*
Message-ID: <ZjjJdqzVfs1sx0ok@intel.com>
References: <cover.1714990089.git.jani.nikula@intel.com>
 <849315d4417a2ce60e867648d9a040c5e96bc22d.1714990089.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <849315d4417a2ce60e867648d9a040c5e96bc22d.1714990089.git.jani.nikula@intel.com>
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

On Mon, May 06, 2024 at 01:09:03PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_CRC_RES_* register macros.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 24 ++++++++++---------
>  drivers/gpu/drm/i915/i915_reg.h               | 22 ++++++++---------
>  2 files changed, 24 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index c41f058acaff..1674570dff1e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -356,7 +356,7 @@ static void hsw_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
>  				     enum pipe pipe)
>  {
>  	display_pipe_crc_irq_handler(dev_priv, pipe,
> -				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
> +				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(dev_priv, pipe)),

I believe the _IVB variants could be defined without
needing dev_priv.

But this works as well so
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  				     0, 0, 0, 0);
>  }
>  
> @@ -364,11 +364,11 @@ static void ivb_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
>  				     enum pipe pipe)
>  {
>  	display_pipe_crc_irq_handler(dev_priv, pipe,
> -				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(pipe)),
> -				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(pipe)),
> -				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(pipe)),
> -				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(pipe)),
> -				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(pipe)));
> +				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_1_IVB(dev_priv, pipe)),
> +				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_2_IVB(dev_priv, pipe)),
> +				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_3_IVB(dev_priv, pipe)),
> +				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_4_IVB(dev_priv, pipe)),
> +				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_5_IVB(dev_priv, pipe)));
>  }
>  
>  static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
> @@ -377,19 +377,21 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
>  	u32 res1, res2;
>  
>  	if (DISPLAY_VER(dev_priv) >= 3)
> -		res1 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES1_I915(pipe));
> +		res1 = intel_uncore_read(&dev_priv->uncore,
> +					 PIPE_CRC_RES_RES1_I915(dev_priv, pipe));
>  	else
>  		res1 = 0;
>  
>  	if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv))
> -		res2 = intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RES2_G4X(pipe));
> +		res2 = intel_uncore_read(&dev_priv->uncore,
> +					 PIPE_CRC_RES_RES2_G4X(dev_priv, pipe));
>  	else
>  		res2 = 0;
>  
>  	display_pipe_crc_irq_handler(dev_priv, pipe,
> -				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RED(pipe)),
> -				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_GREEN(pipe)),
> -				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_BLUE(pipe)),
> +				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_RED(dev_priv, pipe)),
> +				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_GREEN(dev_priv, pipe)),
> +				     intel_uncore_read(&dev_priv->uncore, PIPE_CRC_RES_BLUE(dev_priv, pipe)),
>  				     res1, res2);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 4525afafc79f..4a88eb9cd1f8 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1138,17 +1138,17 @@
>  #define _PIPE_CRC_RES_5_B_IVB		0x61074
>  
>  #define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
> -#define PIPE_CRC_RES_1_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
> -#define PIPE_CRC_RES_2_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
> -#define PIPE_CRC_RES_3_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
> -#define PIPE_CRC_RES_4_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_4_A_IVB)
> -#define PIPE_CRC_RES_5_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_5_A_IVB)
> -
> -#define PIPE_CRC_RES_RED(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
> -#define PIPE_CRC_RES_GREEN(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
> -#define PIPE_CRC_RES_BLUE(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
> -#define PIPE_CRC_RES_RES1_I915(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
> -#define PIPE_CRC_RES_RES2_G4X(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
> +#define PIPE_CRC_RES_1_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
> +#define PIPE_CRC_RES_2_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
> +#define PIPE_CRC_RES_3_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
> +#define PIPE_CRC_RES_4_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_4_A_IVB)
> +#define PIPE_CRC_RES_5_IVB(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_5_A_IVB)
> +
> +#define PIPE_CRC_RES_RED(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RED_A)
> +#define PIPE_CRC_RES_GREEN(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_GREEN_A)
> +#define PIPE_CRC_RES_BLUE(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_BLUE_A)
> +#define PIPE_CRC_RES_RES1_I915(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES1_A_I915)
> +#define PIPE_CRC_RES_RES2_G4X(dev_priv, pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_RES2_A_G4X)
>  
>  /* Pipe/transcoder A timing regs */
>  #define _TRANS_HTOTAL_A		0x60000
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
