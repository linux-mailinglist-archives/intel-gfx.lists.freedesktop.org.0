Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B356D8BCD91
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 14:14:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF41A10EFD3;
	Mon,  6 May 2024 12:14:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JwJ60lcQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 003F110EFD3
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 May 2024 12:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714997647; x=1746533647;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HiXKyzXyPwanwJp63VTL6USwrJNymigufZhN0tsPmsM=;
 b=JwJ60lcQitZQvIey/Dxi90nBvcWtSg1blll1h5hJ7s6RNVwVc3/pt6Yj
 EFGMaBCuzuyrC8C9PuO+mzeJbjxfAtN1u4JlWIXh3aqE8J4u4N2RS06Bw
 c20bZf21B3LIra1SigzrZSH4S5Teitb7cOt7P6m1Fy96Ko74TkV/Vu+32
 AO1pf79zWW2oXV9eDrrD75fXqb0WXd1ciIvPXNcNwnonKD2TlFoKP8bue
 xyvPm9Bl/Kq41Ef8QufidrGd1VrsHhNx/Beo+OZo2L+E8LlXGN/JNtCxF
 yz1py8tdu/F/qOkdQVxkFnN66YCCqAFem8+LnQ+m2RcdlI6bRdr64FeIP w==;
X-CSE-ConnectionGUID: Qc6SSYtJQduOZvrI9jD2yg==
X-CSE-MsgGUID: xklYQfHCSYiCbHrp3/ShsA==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="10862454"
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="10862454"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 05:14:07 -0700
X-CSE-ConnectionGUID: Bl3ApEMkQPWr1l0m2+kInQ==
X-CSE-MsgGUID: AtalzvKOQ8S1kGvbK6PIfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,258,1708416000"; d="scan'208";a="28158941"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 May 2024 05:14:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 May 2024 15:14:03 +0300
Date: Mon, 6 May 2024 15:14:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915: pass dev_priv explicitly to PIPE_CRC_CTL
Message-ID: <ZjjJixyCUiNJCi6G@intel.com>
References: <cover.1714990089.git.jani.nikula@intel.com>
 <2ac4438aa885be9d0fcf5c697beee99a4cd2c23f.1714990089.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2ac4438aa885be9d0fcf5c697beee99a4cd2c23f.1714990089.git.jani.nikula@intel.com>
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

On Mon, May 06, 2024 at 01:09:02PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_CRC_CTL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c | 12 ++++++------
>  drivers/gpu/drm/i915/i915_reg.h               |  2 +-
>  2 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> index 5a468ed6e26c..35c3dd1130ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> +++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
> @@ -608,8 +608,8 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
>  		goto out;
>  
>  	pipe_crc->source = source;
> -	intel_de_write(dev_priv, PIPE_CRC_CTL(pipe), val);
> -	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(pipe));
> +	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), val);
> +	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
>  
>  	if (!source) {
>  		if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> @@ -643,8 +643,8 @@ void intel_crtc_enable_pipe_crc(struct intel_crtc *crtc)
>  	/* Don't need pipe_crc->lock here, IRQs are not generated. */
>  	pipe_crc->skipped = 0;
>  
> -	intel_de_write(dev_priv, PIPE_CRC_CTL(pipe), val);
> -	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(pipe));
> +	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), val);
> +	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
>  }
>  
>  void intel_crtc_disable_pipe_crc(struct intel_crtc *crtc)
> @@ -658,7 +658,7 @@ void intel_crtc_disable_pipe_crc(struct intel_crtc *crtc)
>  	pipe_crc->skipped = INT_MIN;
>  	spin_unlock_irq(&pipe_crc->lock);
>  
> -	intel_de_write(dev_priv, PIPE_CRC_CTL(pipe), 0);
> -	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(pipe));
> +	intel_de_write(dev_priv, PIPE_CRC_CTL(dev_priv, pipe), 0);
> +	intel_de_posting_read(dev_priv, PIPE_CRC_CTL(dev_priv, pipe));
>  	intel_synchronize_irq(dev_priv);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index ae692f461982..4525afafc79f 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1137,7 +1137,7 @@
>  #define _PIPE_CRC_RES_4_B_IVB		0x61070
>  #define _PIPE_CRC_RES_5_B_IVB		0x61074
>  
> -#define PIPE_CRC_CTL(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
> +#define PIPE_CRC_CTL(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_CTL_A)
>  #define PIPE_CRC_RES_1_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_1_A_IVB)
>  #define PIPE_CRC_RES_2_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_2_A_IVB)
>  #define PIPE_CRC_RES_3_IVB(pipe)	_MMIO_TRANS2(dev_priv, pipe, _PIPE_CRC_RES_3_A_IVB)
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
