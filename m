Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C4A8CD359
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 15:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A4BE10E152;
	Thu, 23 May 2024 13:14:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UybIAL3C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5469310E152
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 13:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716470073; x=1748006073;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FgbPoR20gyKwOlC9Zp5/FqTC/Eb9FksfTWrYIXWZ77A=;
 b=UybIAL3Cdb4Rp88w0AXo5Fi5SoiZHNmH0UsaSpLXHLx8XkLh0b8iihKF
 f7z6wVPjQ1u0KLv8JgfMMZBzD/ljfv4TWfDxrjR0+7TzmKdZWb32s2ZC5
 Yxzn1oGUgEf71kl9H3HQpgDp3HnJZOvfvqryQ8LWlkKmIIRNf8OlCD2e6
 QITkDRTkyFZV2HO8je74SShsaFaUVAqxM7tQyxGYTdyQ5IRgCVQAG6UB6
 RYvzwtQeIdKbZ2Q2STRi8Yg5UtIgBgCN9qKSKwgNL2Tp6f+iCmoLMdcEi
 HDjVEQVgacanquDHykxfdF9DsEsNHtrxwmZYmIWKo5OhOFI98GYbKsa6L w==;
X-CSE-ConnectionGUID: 6HKtO1uAStuobS9tnpqR0w==
X-CSE-MsgGUID: Ko43avAWRUSh8Cuh4m93XA==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="23453122"
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="23453122"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 06:14:31 -0700
X-CSE-ConnectionGUID: 9TfjV8SNS2CeCss8SClYpg==
X-CSE-MsgGUID: AM23Sqe1R12CNjOrjap87g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,182,1712646000"; d="scan'208";a="33645107"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 May 2024 06:14:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 May 2024 16:14:29 +0300
Date: Thu, 23 May 2024 16:14:29 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 16/16] drm/i915: pass dev_priv explicitly to PIPEGCMAX
Message-ID: <Zk9BNS0B7FiVrCw3@intel.com>
References: <cover.1716469091.git.jani.nikula@intel.com>
 <5fdc8562fe7b8d26e1ec1bb8f9a221348246bbe1.1716469091.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5fdc8562fe7b8d26e1ec1bb8f9a221348246bbe1.1716469091.git.jani.nikula@intel.com>
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

On Thu, May 23, 2024 at 03:59:44PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPEGCMAX register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color.c      | 13 +++++++------
>  drivers/gpu/drm/i915/display/intel_color_regs.h |  6 +++---
>  2 files changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index a83f41ee6834..da56d24eb933 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1284,9 +1284,10 @@ static void i965_load_lut_10p6(struct intel_crtc *crtc,
>  				  i965_lut_10p6_udw(&lut[i]));
>  	}
>  
> -	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 0), lut[i].red);
> -	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 1), lut[i].green);
> -	intel_de_write_fw(dev_priv, PIPEGCMAX(pipe, 2), lut[i].blue);
> +	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 0), lut[i].red);
> +	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 1),
> +			  lut[i].green);

nit: the newline breaks the pattern in a somewhat ugly way

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +	intel_de_write_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 2), lut[i].blue);
>  }
>  
>  static void i965_load_luts(const struct intel_crtc_state *crtc_state)
> @@ -3239,9 +3240,9 @@ static struct drm_property_blob *i965_read_lut_10p6(struct intel_crtc *crtc)
>  		i965_lut_10p6_pack(&lut[i], ldw, udw);
>  	}
>  
> -	lut[i].red = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(pipe, 0)));
> -	lut[i].green = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(pipe, 1)));
> -	lut[i].blue = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(pipe, 2)));
> +	lut[i].red = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 0)));
> +	lut[i].green = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 1)));
> +	lut[i].blue = i965_lut_11p6_max_pack(intel_de_read_fw(dev_priv, PIPEGCMAX(dev_priv, pipe, 2)));
>  
>  	return blob;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
> index 61c18b4a7fa5..8eb643cfead7 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
> @@ -37,9 +37,9 @@
>  						  (i) * 4)
>  
>  /* i965/g4x/vlv/chv */
> -#define  _PIPEAGCMAX           0x70010
> -#define  _PIPEBGCMAX           0x71010
> -#define PIPEGCMAX(pipe, i)     _MMIO_PIPE2(dev_priv, pipe, _PIPEAGCMAX + (i) * 4) /* u1.16 */
> +#define  _PIPEAGCMAX			0x70010
> +#define  _PIPEBGCMAX			0x71010
> +#define PIPEGCMAX(dev_priv, pipe, i)	_MMIO_PIPE2(dev_priv, pipe, _PIPEAGCMAX + (i) * 4) /* u1.16 */
>  
>  /* ilk+ palette */
>  #define _LGC_PALETTE_A           0x4a000
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
