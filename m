Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1B1985FA9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 16:03:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCDCB10E0EC;
	Wed, 25 Sep 2024 14:03:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V6D8Own2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93DD910E0EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 14:03:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727272990; x=1758808990;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HqUXs0SOrYLk59+zUjMubuB6HmbW1noD7MjXOuhYOz0=;
 b=V6D8Own2R/MzLRq7tekwCb4t1XE2Z01D93kyV1dWS8l8DU7jG0hGulqq
 VDVk7o5jFnlfJQF3aMuImsol5PSNUOcfPIQcDBejKXAsyZJdKEYU1UsWO
 0dgbtHPuH7ffaSLAKHfcBqvAbmdEOj/xIlV5yqXZwKRgB1kMJMbkiUUul
 CbNPeyR7/hkYADvtQ8g3BbyZ/TZILgV6B21UF+JFKvr5JMYJim8gwX1Mg
 HEfJ2YHMPK7HJ2STEM/awWTF/+XCNyJb48zN7RqynURk3Y3K580Ykp234
 8WH73wR1GTkmKxtwuKA2OC0pRQcsUS5B0vgCzUW4BfLhcOBGwMrbH/7uG Q==;
X-CSE-ConnectionGUID: MUH1fMdCR+yiPv+KN50mXw==
X-CSE-MsgGUID: 2ykXDa2DRUqBj79k0URWUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51738313"
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="51738313"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 07:03:09 -0700
X-CSE-ConnectionGUID: A2VIUam+SpC8MyuidwqZUg==
X-CSE-MsgGUID: yV5ZpzBvQ4imqq/TPTBKCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,257,1719903600"; d="scan'208";a="71929434"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Sep 2024 07:03:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2024 17:03:06 +0300
Date: Wed, 25 Sep 2024 17:03:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
Cc: intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com
Subject: Re: [PATCH] drm/i915: Remove unused underrun interrupt bits
Message-ID: <ZvQYGgYQcJnXl_wg@intel.com>
References: <20240925111802.2227604-1-sai.teja.pottumuttu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240925111802.2227604-1-sai.teja.pottumuttu@intel.com>
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

On Wed, Sep 25, 2024 at 04:48:02PM +0530, Sai Teja Pottumuttu wrote:
> Underrun recovery was defeatured and was never brought into usage.
> Thus we can safely remove the interrupt register bits introduced by the
> feature for detecting soft and hard underruns.
> 
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 19 +++----------------
>  .../gpu/drm/i915/display/intel_display_irq.h  |  1 -
>  .../drm/i915/display/intel_fifo_underrun.c    |  5 ++---

There's a lot more related stuff in that file.

>  drivers/gpu/drm/i915/i915_reg.h               |  2 --
>  4 files changed, 5 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 6878dde85031..9d8a101b2415 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1031,17 +1031,6 @@ static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
>  		return GEN8_PIPE_PRIMARY_FLIP_DONE;
>  }
>  
> -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *dev_priv)
> -{
> -	u32 mask = GEN8_PIPE_FIFO_UNDERRUN;
> -
> -	if (DISPLAY_VER(dev_priv) >= 13)
> -		mask |= XELPD_PIPE_SOFT_UNDERRUN |
> -			XELPD_PIPE_HARD_UNDERRUN;
> -
> -	return mask;
> -}
> -
>  static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_iir, u32 *pica_iir)
>  {
>  	u32 pica_ier = 0;
> @@ -1187,7 +1176,7 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>  		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
>  			hsw_pipe_crc_irq_handler(dev_priv, pipe);
>  
> -		if (iir & gen8_de_pipe_underrun_mask(dev_priv))
> +		if (iir & GEN8_PIPE_FIFO_UNDERRUN)
>  			intel_cpu_fifo_underrun_irq_handler(dev_priv, pipe);
>  
>  		fault_errors = iir & gen8_de_pipe_fault_mask(dev_priv);
> @@ -1607,8 +1596,7 @@ void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>  				     u8 pipe_mask)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
> -	u32 extra_ier = GEN8_PIPE_VBLANK |
> -		gen8_de_pipe_underrun_mask(dev_priv) |
> +	u32 extra_ier = GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>  		gen8_de_pipe_flip_done_mask(dev_priv);
>  	enum pipe pipe;
>  
> @@ -1797,8 +1785,7 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  			GEN12_DSB_INT(INTEL_DSB_2);
>  
>  	de_pipe_enables = de_pipe_masked |
> -		GEN8_PIPE_VBLANK |
> -		gen8_de_pipe_underrun_mask(dev_priv) |
> +		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>  		gen8_de_pipe_flip_done_mask(dev_priv);
>  
>  	de_port_enables = de_port_masked;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index 093e356a2894..1b3f559a0638 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -33,7 +33,6 @@ void ibx_disable_display_interrupt(struct drm_i915_private *i915, u32 bits);
>  
>  void gen8_irq_power_well_post_enable(struct drm_i915_private *i915, u8 pipe_mask);
>  void gen8_irq_power_well_pre_disable(struct drm_i915_private *i915, u8 pipe_mask);
> -u32 gen8_de_pipe_underrun_mask(struct drm_i915_private *i915);
>  
>  int i8xx_enable_vblank(struct drm_crtc *crtc);
>  int i915gm_enable_vblank(struct drm_crtc *crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> index 745ce22afb89..fb01c128e1c5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> +++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
> @@ -209,7 +209,6 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
>  					    enum pipe pipe, bool enable)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> -	u32 mask = gen8_de_pipe_underrun_mask(dev_priv);
>  
>  	if (enable) {
>  		if (DISPLAY_VER(dev_priv) >= 11)
> @@ -217,9 +216,9 @@ static void bdw_set_fifo_underrun_reporting(struct drm_device *dev,
>  				       ICL_PIPESTATUS(dev_priv, pipe),
>  				       icl_pipe_status_underrun_mask(dev_priv));
>  
> -		bdw_enable_pipe_irq(dev_priv, pipe, mask);
> +		bdw_enable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
>  	} else {
> -		bdw_disable_pipe_irq(dev_priv, pipe, mask);
> +		bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_FIFO_UNDERRUN);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 7396fc630e29..c379d875f432 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2491,9 +2491,7 @@
>  #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
>  #define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
>  #define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
> -#define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
>  #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
> -#define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */
>  #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
>  #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
>  #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
