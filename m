Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B9A51AFDB
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 22:56:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6603D10E9D5;
	Wed,  4 May 2022 20:56:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B8A110E4F2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 20:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651697807; x=1683233807;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VJaLpDD4dMxGZ2MTdJz7yFV/6sZyf5uRmbu11r/i46o=;
 b=dOEzhWCiyunwP4AUJvDepMi/owG+NwND8asXdBGormMyCCYfOflVaeVl
 KEA6LaFiRPmzLX3ezrIqNCiSFUOC3FjFeJj/S9gLSFGdNxLve46j28zzV
 uEh9+rN42iaIX2bVrubHr2EMTvXDZVXD3b4WbOt6gH0589Wc0DoLK6DTg
 rkaMu6Dk2OtddpcwJq+06o3pQCtitq4CrZjrIvK0kX0lcdsmGrRszYFpw
 2Jk1YrZKAD2ghksJNn6RqgAfE3B2PCcMws2IZMB8Nnmj/jY3zL/kHp1re
 b7edE1w7IQeRyAUxwJWIvle7pbj6yaO2Qywbil6z93H7oBf4sVz9D0/CR Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="267781553"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="267781553"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:56:24 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="584942432"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:56:24 -0700
Date: Wed, 4 May 2022 13:56:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YnLodu+Kk/E3eYlk@mdroper-desk1.amr.corp.intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
 <20220504190756.466270-8-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220504190756.466270-8-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 08/12] drm/i915: Drop has_ddi from device
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

On Wed, May 04, 2022 at 12:07:52PM -0700, José Roberto de Souza wrote:
> No need to have this parameter in intel_device_info struct
> as all platforms with display version 9 or newer, haswell or broadwell
> supports it.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
>  drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  3 files changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index f23e5c5cbf82b..a354815445238 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1299,7 +1299,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
>  
>  #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
> -#define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
> +#define HAS_DDI(dev_priv)		 (DISPLAY_VER(dev_priv) >= 9 || \
> +					  IS_HASWELL(dev_priv) || \
> +					  IS_BROADWELL(dev_priv))

Technically the order of broadwell and haswell should be reversed here
(if we're going from newest to oldest).  Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
>  #define HAS_PSR_HW_TRACKING(dev_priv) \
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 25aa8f5957f1e..96270c0ddf06c 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -533,7 +533,6 @@ static const struct intel_device_info vlv_info = {
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0), \
>  	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | \
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP), \
> -	.display.has_ddi = 1, \
>  	.display.has_fpga_dbg = 1, \
>  	.display.has_dp_mst = 1, \
>  	HSW_PIPE_OFFSETS, \
> @@ -679,7 +678,6 @@ static const struct intel_device_info skl_gt4_info = {
>  		BIT(TRANSCODER_C) | BIT(TRANSCODER_EDP) | \
>  		BIT(TRANSCODER_DSI_A) | BIT(TRANSCODER_DSI_C), \
>  	.has_64bit_reloc = 1, \
> -	.display.has_ddi = 1, \
>  	.display.has_fpga_dbg = 1, \
>  	.display.fbc_mask = BIT(INTEL_FBC_A), \
>  	.display.has_hdcp = 1, \
> @@ -926,7 +924,6 @@ static const struct intel_device_info adl_s_info = {
>  	.dbuf.size = 4096,							\
>  	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2) | BIT(DBUF_S3) |		\
>  		BIT(DBUF_S4),							\
> -	.display.has_ddi = 1,							\
>  	.display.has_dmc = 1,							\
>  	.display.has_dp_mst = 1,						\
>  	.display.has_dsc = 1,							\
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 7cf16b0315b54..d809d44098c63 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -166,7 +166,6 @@ enum intel_ppgtt_type {
>  	func(cursor_needs_physical); \
>  	func(has_cdclk_crawl); \
>  	func(has_dmc); \
> -	func(has_ddi); \
>  	func(has_dp_mst); \
>  	func(has_dsc); \
>  	func(has_fpga_dbg); \
> -- 
> 2.36.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
