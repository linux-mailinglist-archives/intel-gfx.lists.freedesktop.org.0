Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57133966079
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 13:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B31810EA89;
	Fri, 30 Aug 2024 11:19:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GWL2rgDp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7181D10EA87;
 Fri, 30 Aug 2024 11:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725016785; x=1756552785;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+nrC46M9xoaScMYbsAfvoH55EzPbA/yuO9JdxSynDTY=;
 b=GWL2rgDp//os5pBsXADOU1CbJn3wXLi6JTHHeGCGXcAU5YIvKMjlHFP9
 WlB6b4o8umR161Ct9XOCU4nbFE/rte4LX9FrruYQbT26ndiECHCSSpVkC
 KWk2sGLzrN6evVDM5E+jYUPP6NjRDn5t2VVAF+2sz30y13eVbjRelRxRC
 adJHPomS3CmEylEkN23iskIE4reOqZPSdt8pgDyjrGbGwOEjifyk7KR+2
 TKmci9skHyE5ztKR7guTe7iRcUoT2q29yUk8Pdv6I3UEMR50dY28vAGJL
 P5u8de6GGPBa4ZWrbZwLHM7UXWIowZhcZXqvyqeWV7caD4cxfJjkI+Fjz w==;
X-CSE-ConnectionGUID: 4LuJPVAFQuaOT0UcFWWiOA==
X-CSE-MsgGUID: uWiOZdncQYeo31VqOaIDiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23811974"
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="23811974"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2024 04:19:44 -0700
X-CSE-ConnectionGUID: spcr7STORXmnwe+nFTPEyw==
X-CSE-MsgGUID: 6tcxRNLPQb2fujhettsU4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,188,1719903600"; d="scan'208";a="63880060"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 30 Aug 2024 04:19:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Aug 2024 14:19:40 +0300
Date: Fri, 30 Aug 2024 14:19:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, suraj.kandpal@intel.com
Subject: Re: [PATCH 02/19] drm/i915/dss_regs: Use REG_* macros for the DSS
 ctl bits
Message-ID: <ZtGqzFZzkn-HoVC4@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
 <20240830050950.2528450-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240830050950.2528450-3-ankit.k.nautiyal@intel.com>
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

On Fri, Aug 30, 2024 at 10:39:32AM +0530, Ankit Nautiyal wrote:
> Cleanup register definitions for DSS CLT reg bits.

DSS_CTL

> Replace the hand rolled (1<<n) with the modern REG_BIT().
> Use REG_GENMASK and REG_FIELD_PREP for the bit fields.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dss_regs.h | 34 ++++++++++---------
>  1 file changed, 18 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dss_regs.h b/drivers/gpu/drm/i915/display/intel_dss_regs.h
> index b1e24ea027c3..cfc8ef451917 100644
> --- a/drivers/gpu/drm/i915/display/intel_dss_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dss_regs.h
> @@ -10,35 +10,37 @@
>  
>  /* Display Stream Splitter Control */
>  #define DSS_CTL1				_MMIO(0x67400)
> -#define  SPLITTER_ENABLE			(1 << 31)
> -#define  JOINER_ENABLE				(1 << 30)
> -#define  DUAL_LINK_MODE_INTERLEAVE		(1 << 24)
> +#define  SPLITTER_ENABLE			REG_BIT(31)
> +#define  JOINER_ENABLE				REG_BIT(30)
> +#define  DUAL_LINK_MODE_INTERLEAVE		REG_BIT(24)
>  #define  DUAL_LINK_MODE_FRONTBACK		(0 << 24)

If we want to keep this then we should define the bit as
DUAL_LINK_MODE_MASK, and then both values should be defined
via REG_FIELD_PREP().

> -#define  OVERLAP_PIXELS_MASK			(0xf << 16)
> -#define  OVERLAP_PIXELS(pixels)			((pixels) << 16)
> -#define  LEFT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
> -#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
> +#define  OVERLAP_PIXELS_MASK			REG_GENMASK(19, 16)
> +#define  OVERLAP_PIXELS(pixels)			REG_FIELD_PREP(OVERLAP_PIXELS_MASK, pixels)
> +#define  LEFT_DL_BUF_TARGET_DEPTH_MASK		REG_GENMASK(11, 0)
> +#define  LEFT_DL_BUF_TARGET_DEPTH(pixels)	REG_FIELD_PREP(LEFT_DL_BUF_TARGET_DEPTH_MASK, \
> +							       pixels)

Protect with '(pixels)'

The extra line wrap seems pointless.

>  #define  MAX_DL_BUFFER_TARGET_DEPTH		0x5a0
>  
>  #define DSS_CTL2				_MMIO(0x67404)
> -#define  LEFT_BRANCH_VDSC_ENABLE		(1 << 31)
> -#define  RIGHT_BRANCH_VDSC_ENABLE		(1 << 15)
> -#define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
> -#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
> +#define  LEFT_BRANCH_VDSC_ENABLE		REG_BIT(31)
> +#define  RIGHT_BRANCH_VDSC_ENABLE		REG_BIT(15)
> +#define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		REG_GENMASK(11, 0)
> +#define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	REG_FIELD_PREP(RIGHT_DL_BUF_TARGET_DEPTH_MASK,\
> +							       pixels)

Another unprotected macro argument.

>  
>  #define _ICL_PIPE_DSS_CTL1_PB			0x78200
>  #define _ICL_PIPE_DSS_CTL1_PC			0x78400
>  #define ICL_PIPE_DSS_CTL1(pipe)			_MMIO_PIPE((pipe) - PIPE_B, \
>  							   _ICL_PIPE_DSS_CTL1_PB, \
>  							   _ICL_PIPE_DSS_CTL1_PC)
> -#define  BIG_JOINER_ENABLE			(1 << 29)
> -#define  PRIMARY_BIG_JOINER_ENABLE		(1 << 28)
> -#define  VGA_CENTERING_ENABLE			(1 << 27)
> +#define  BIG_JOINER_ENABLE			REG_BIT(29)
> +#define  PRIMARY_BIG_JOINER_ENABLE		REG_BIT(28)
> +#define  VGA_CENTERING_ENABLE			REG_BIT(27)
>  #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
>  #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
>  #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
> -#define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
> -#define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
> +#define  UNCOMPRESSED_JOINER_PRIMARY		REG_BIT(21)
> +#define  UNCOMPRESSED_JOINER_SECONDARY		REG_BIT(20)
>  
>  #define _ICL_PIPE_DSS_CTL2_PB			0x78204
>  #define _ICL_PIPE_DSS_CTL2_PC			0x78404
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
