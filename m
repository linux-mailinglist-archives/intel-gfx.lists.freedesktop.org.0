Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A289F51B006
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 23:02:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB3D510EB91;
	Wed,  4 May 2022 21:02:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ABB410EC2B
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 21:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651698122; x=1683234122;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=vTBFJiva/joUsvu61/ZzHX/S6EtgbauJCI07VMggWIs=;
 b=L5HhlzTd45LMjHNmkRKGqmcXifXgpAErp1wQbtO/UEhkAAG0jh1m1sMm
 ntRo5faFJTbDZoG6kg7q9vQ/yTLvJsRFGtPqjB5lVsyh4xc9zbocoWoxf
 hYTNaLELuRPAK5PcWQeJ7oTaQ4dfJdvTd7xW72gTkIrwG7Tiun9GStS9l
 uE8+guBTUgSaABpZiqOKDanIzhNwTrILr9WLgqchJvnQE7u8TxBR2X96u
 ZKQ73bWTNXUlESaEgdJ98OEKjPm8+CAJrC7U46d0AJt12nM8KJZhIEukf
 vHrbPs8f2jq72vMxbGlR4Qe1Xl0OAFXKUWF43uRQWZuTKf5ITDWzXMbqf A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="268053533"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="268053533"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 14:02:01 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="584944348"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 14:02:01 -0700
Date: Wed, 4 May 2022 14:01:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YnLpxx4MpildPFGl@mdroper-desk1.amr.corp.intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
 <20220504190756.466270-9-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220504190756.466270-9-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915: Drop has_dp_mst from device
 info
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

On Wed, May 04, 2022 at 12:07:53PM -0700, José Roberto de Souza wrote:
> No need to have this parameter in intel_device_info struct
> as the requirement to support it is the DDI support.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 2 +-
>  drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  3 files changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a354815445238..6b8a4e6649d9b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1295,13 +1295,13 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  
>  #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
>  
> -#define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
>  #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
>  
>  #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
>  #define HAS_DDI(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9 || \
>  					  IS_HASWELL(dev_priv) || \
>  					  IS_BROADWELL(dev_priv))
> +#define HAS_DP_MST(dev_priv)		 (HAS_DDI(dev_priv))
>  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
>  #define HAS_PSR_HW_TRACKING(dev_priv) \
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 96270c0ddf06c..d8b5e972109f9 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -534,7 +534,6 @@ static const struct intel_device_info vlv_info = {
>  	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
>  	.display.has_fpga_dbg = 1, \
> -	.display.has_dp_mst = 1, \
>  	HSW_PIPE_OFFSETS, \
>  	.has_runtime_pm = 1
>  
> @@ -686,7 +685,6 @@ static const struct intel_device_info skl_gt4_info = {
>  	.has_runtime_pm = 1, \
>  	.display.has_dmc = 1, \
>  	.has_rps = true, \
> -	.display.has_dp_mst = 1, \
>  	.has_logical_ring_contexts = 1, \
>  	.dma_mask_size = 39, \
>  	.ppgtt_type = INTEL_PPGTT_FULL, \
> @@ -925,7 +923,6 @@ static const struct intel_device_info adl_s_info = {
>  	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
>  		BIT(DBUF_S4),							\
>  	.display.has_dmc = 1,							\
> -	.display.has_dp_mst = 1,						\
>  	.display.has_dsc = 1,							\
>  	.display.fbc_mask = BIT(INTEL_FBC_A),					\
>  	.display.has_fpga_dbg = 1,						\
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index d809d44098c63..c4e85976d8948 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -166,7 +166,6 @@ enum intel_ppgtt_type {
>  	func(cursor_needs_physical); \
>  	func(has_cdclk_crawl); \
>  	func(has_dmc); \
> -	func(has_dp_mst); \
>  	func(has_dsc); \
>  	func(has_fpga_dbg); \
>  	func(has_gmch); \
> -- 
> 2.36.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
