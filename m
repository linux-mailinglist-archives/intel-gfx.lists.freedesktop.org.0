Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6958BCD8F
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:13:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86AC910EDCB;
	Mon,  6 May 2024 12:13:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SBC/CmaB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E02E10EDCB
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 12:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714997609; x=1746533609;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ewxGZLRNwbKRtvCj3Y9LgkEUN8lWhuk2jflSUooP5BU=;
 b=SBC/CmaBay+4jI/uTRjET+SXJvJTa+byumfeKPBuex8qV/+gywtPZ1Qa
 DCqz+v5j5BZqlLQJmRnE4yk5gGCGf5zIYsmnmc4vKp7PtbUxbzWSRvpvh
 I7IOvCjxbU0LPxNDkQzlMKlQBtcceVDDHet44ajJ6dR/S5yZ6s9cMjZoi
 maZqwTsdYsU6mpdOYyfmMAUeMqw6kJEnWugP6/ov4ZGrGDO9epACKuPft
 E3kUoaSiHH7eRzgK5JD4V7+/E7dTmFhJAslHKAcq/8xDuNqrkbE0KCs1a
 KbkO/EGeO9VYSKBX/sh180CZ7YAKSNOILPZ0bOk53mZMOBem5yCEM7q4K A==;
X-CSE-ConnectionGUID: B0g026bKRMiT+JB5Wbk6+Q==
X-CSE-MsgGUID: awmkA8FqT92/TFH9f2Um+g==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10862283"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10862283"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:13:08 -0700
X-CSE-ConnectionGUID: JLL0TEZBQWOFLXqIgio+Ow==
X-CSE-MsgGUID: Yf0OfpFNT3qUOmwUPgvdLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28158792"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:13:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:13:04 +0300
Date: Mon, 6 May 2024 15:13:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/3] drm/i915: pass dev_priv explicitly to PORT_DFT2_G4X
Message-ID: <ZjjJUO6_QRII3zrN@intel.com>
References: <cover.1714990089.git.jani.nikula@intel.com>
 <0db8ee7b66b9660fc9fd80598257c6d36f0f506b.1714990089.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0db8ee7b66b9660fc9fd80598257c6d36f0f506b.1714990089.git.jani.nikula@intel.com>
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

On Mon, May 06, 2024 at 01:09:04PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PORT_DFT2_G4X register macro.

Looks like we only use this on VLV/CHV, so could define a fixed
offset _VLV variant.

But this works too
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c | 8 ++++----
>  drivers/gpu/drm/i915/i915_reg.h               | 2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> index 35c3dd1130ce..b3dcfee6ec0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> @@ -167,7 +167,7 @@ static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
>  	 *   - DisplayPort scrambling: used for EMI reduction
>  	 */
>  	if (need_stable_symbols) {
> -		u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X);
> +		u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X(dev_priv));
>  
>  		tmp |= DC_BALANCE_RESET_VLV;
>  		switch (pipe) {
> @@ -183,7 +183,7 @@ static int vlv_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
>  		default:
>  			return -EINVAL;
>  		}
> -		intel_de_write(dev_priv, PORT_DFT2_G4X, tmp);
> +		intel_de_write(dev_priv, PORT_DFT2_G4X(dev_priv), tmp);
>  	}
>  
>  	return 0;
> @@ -229,7 +229,7 @@ static int i9xx_pipe_crc_ctl_reg(struct drm_i915_private *dev_priv,
>  static void vlv_undo_pipe_scramble_reset(struct drm_i915_private *dev_priv,
>  					 enum pipe pipe)
>  {
> -	u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X);
> +	u32 tmp = intel_de_read(dev_priv, PORT_DFT2_G4X(dev_priv));
>  
>  	switch (pipe) {
>  	case PIPE_A:
> @@ -246,7 +246,7 @@ static void vlv_undo_pipe_scramble_reset(struct drm_i915_private *dev_priv,
>  	}
>  	if (!(tmp & PIPE_SCRAMBLE_RESET_MASK))
>  		tmp &= ~DC_BALANCE_RESET_VLV;
> -	intel_de_write(dev_priv, PORT_DFT2_G4X, tmp);
> +	intel_de_write(dev_priv, PORT_DFT2_G4X(dev_priv), tmp);
>  }
>  
>  static int ilk_pipe_crc_ctl_reg(enum intel_pipe_crc_source *source,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 4a88eb9cd1f8..5670eee4a498 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1479,7 +1479,7 @@
>  
>  #define PORT_DFT_I9XX				_MMIO(0x61150)
>  #define   DC_BALANCE_RESET			(1 << 25)
> -#define PORT_DFT2_G4X		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61154)
> +#define PORT_DFT2_G4X(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61154)
>  #define   DC_BALANCE_RESET_VLV			(1 << 31)
>  #define   PIPE_SCRAMBLE_RESET_MASK		((1 << 14) | (0x3 << 0))
>  #define   PIPE_C_SCRAMBLE_RESET			REG_BIT(14) /* chv */
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
