Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF98E4B97DC
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 05:48:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8337A10E8BC;
	Thu, 17 Feb 2022 04:48:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A7C310E8BC
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 04:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645073315; x=1676609315;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=8ltB1TnuMzcr45mUMHAdf82ToRGbCds+ciftB7LknqM=;
 b=agNKkTOiT9AbP3rPar97PZhdbRKm1odQU7Dl9WihfWlAHViHfsoKrxfu
 lNQ/0bd9O20CmBiPq+HLVIvAUsyXRm1rZ2RTd1iWkKhnKdcBGUP3v5arV
 aP2gtiSV3EwvOFZJWZaz0kbg9x8NC/IEPxkWNsxwg9RyUgklUF1eymuFg
 GFij537HPAq4K/ssnqDBUgPAHXb5u5AULBMrP6To3mGPtYwysdH2QOPZf
 ol+0oI1ovPN7ahzV2uA9C58kApc2Y/dt0GVOcckY4GXIFaRgW/iS6yfXt
 b6wf2Sb0wGIXp4dEBNMGTWWZlw7VDTrpEhjkSqIay7EN3pgRVGTy2KLBZ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="250992561"
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="250992561"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 20:48:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,375,1635231600"; d="scan'208";a="545361185"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 20:48:34 -0800
Date: Wed, 16 Feb 2022 20:48:32 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yg3ToJhNhMe8WLY7@mdroper-desk1.amr.corp.intel.com>
References: <20220216154711.3329667-1-jani.nikula@intel.com>
 <20220216154711.3329667-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220216154711.3329667-2-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/dsi: add separate init timer
 mask definition for ICL DSI
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 16, 2022 at 05:47:09PM +0200, Jani Nikula wrote:
> Having a separate definition will be useful for splitting VLV and ICL
> register files.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h        | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 479d5e1165d9..3c01565e62b2 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -570,7 +570,7 @@ gen11_dsi_setup_dphy_timings(struct intel_encoder *encoder,
>  	/* Program T-INIT master registers */
>  	for_each_dsi_port(port, intel_dsi->ports) {
>  		tmp = intel_de_read(dev_priv, ICL_DSI_T_INIT_MASTER(port));
> -		tmp &= ~MASTER_INIT_TIMER_MASK;
> +		tmp &= ~DSI_T_INIT_MASTER_MASK;
>  		tmp |= intel_dsi->init_count;
>  		intel_de_write(dev_priv, ICL_DSI_T_INIT_MASTER(port), tmp);
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 4ea1713e6b60..5646c843fd0d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9204,6 +9204,7 @@ enum skl_power_gate {
>  #define ICL_DSI_T_INIT_MASTER(port)	_MMIO_PORT(port,	\
>  						   _ICL_DSI_T_INIT_MASTER_0,\
>  						   _ICL_DSI_T_INIT_MASTER_1)
> +#define   DSI_T_INIT_MASTER_MASK	REG_GENMASK(15, 0)
>  
>  #define _DPHY_CLK_TIMING_PARAM_0	0x162180
>  #define _DPHY_CLK_TIMING_PARAM_1	0x6c180
> -- 
> 2.30.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
