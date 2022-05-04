Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 727EE51AF9F
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 22:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4FFD10ED65;
	Wed,  4 May 2022 20:45:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3AFC10ED65
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 20:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651697132; x=1683233132;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=skas34pYzjdi6xOTJY3jGTY1wUMv5fih8r16A+SuBMA=;
 b=mDWLF4CNCugbwLRdn4dmmnea6prf2dnmAx7iiJIbRanMUhN7C8AAbKfs
 FFksFEoj/yK6lkjXzM14k7qKJpLuRDRLkIkY21ky6MKhHHImMokSwG6qE
 4qhrUN6dsvr6mtJPuaPhytI/Jc/B9QNN7Zr2evEFkkDl9ejNrmQKg6lAp
 YniYKczhWwWwciyPvbltC4aQXPVYLON83F0OjUv9ikxp4ktH0Zryj+jcI
 owK7xRhNE1C49Qvrz+RuS70ibr2oL8ENswqK1jcYYnC8/cSYc20SN+7rf
 78GZ2IBFE0cTOdlMPucQi1ugiP2oda739aGuB10bFCVJrmAE79AP6qzuR g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="330880731"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="330880731"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:45:32 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="599700605"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:45:32 -0700
Date: Wed, 4 May 2022 13:45:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YnLl630FVO6FVUJZ@mdroper-desk1.amr.corp.intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
 <20220504190756.466270-5-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220504190756.466270-5-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915: Drop has_rc6p from device
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

On Wed, May 04, 2022 at 12:07:49PM -0700, José Roberto de Souza wrote:
> No need to have this parameter in intel_device_info struct
> as it was only supported in graphics version 6 and 7 not including
> haswell.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 4 +++-
>  drivers/gpu/drm/i915/i915_pci.c          | 3 ---
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  3 files changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index d29dca83185ac..602e056edd314 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1310,7 +1310,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  
>  /* ilk does support rc6, but we do not implement [power] contexts */
>  #define HAS_RC6(dev_priv)		 (GRAPHICS_VER(dev_priv) >= 6)
> -#define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
> +#define HAS_RC6p(dev_priv)		 (GRAPHICS_VER(dev_priv) >= 6 && \
> +					  GRAPHICS_VER(dev_priv) <= 7 && \

BTW, I just remembered that we can write simple ranges like this (where
the release number doesn't matter) as:

        IS_GRAPHICS_VER(i915, 6, 7)

so you might want to use that to simplify here and in some of the other
patches.

Otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> +					  !IS_HASWELL(dev_priv))
>  #define HAS_RC6pp(dev_priv)		 (false) /* HW was never validated */
>  
>  #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 90584c462f225..516f28d4db611 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -405,7 +405,6 @@ static const struct intel_device_info ilk_m_info = {
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>  	.has_coherent_ggtt = true, \
>  	.has_llc = 1, \
> -	.has_rc6p = 1, \
>  	.has_rps = true, \
>  	.dma_mask_size = 40, \
>  	.ppgtt_type = INTEL_PPGTT_ALIASING, \
> @@ -455,7 +454,6 @@ static const struct intel_device_info snb_m_gt2_info = {
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>  	.has_coherent_ggtt = true, \
>  	.has_llc = 1, \
> -	.has_rc6p = 1, \
>  	.has_reset_engine = true, \
>  	.has_rps = true, \
>  	.dma_mask_size = 40, \
> @@ -540,7 +538,6 @@ static const struct intel_device_info vlv_info = {
>  	.display.has_ddi = 1, \
>  	.display.has_fpga_dbg = 1, \
>  	.display.has_dp_mst = 1, \
> -	.has_rc6p = 0 /* RC6p removed-by HSW */, \
>  	HSW_PIPE_OFFSETS, \
>  	.has_runtime_pm = 1
>  
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index b3244170c4638..599cb265946b8 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -156,7 +156,6 @@ enum intel_ppgtt_type {
>  	func(has_mslices); \
>  	func(has_pooled_eu); \
>  	func(has_pxp); \
> -	func(has_rc6p); \
>  	func(has_rps); \
>  	func(has_runtime_pm); \
>  	func(has_snoop); \
> -- 
> 2.36.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
