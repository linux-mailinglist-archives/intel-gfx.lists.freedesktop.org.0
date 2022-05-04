Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 709F451AF91
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 22:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E09510EDDA;
	Wed,  4 May 2022 20:42:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C19E410EDDA
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 20:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651696954; x=1683232954;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=je8Wm/OkFCw2bRvgus57reQzTtVEAaTrGY8KHYP3j9M=;
 b=HHH1viQ8yfC/IlHfrA+hPcRJAnsG04sciL2ULg1uDKGkDz2xjYxiUtHP
 0RpjKa54pYDJi79YI1DVUqPf/oIrsJIWLvj46UAn1WKlZKpUH+oO31iRe
 LGf4Hm+LPVJNUkE139W5PCdm/Btr4CT3O6G5taEEQYhP6xbMQ118YSbuM
 jobc+03lJl280GpnBFjKR0/ey3Tmmht7AUx6HdtsavxAoCmbZG1N0et+s
 SGmQtnM8t6QIV2s/xpD9eFqSZWK1CJjtkiMpSkfIRpRGT9PCvyxE0gXbT
 fgr4WygVq90JBNacx+inQdqQvBjEx4Wovxnv+l38cO8LGEXOgrBSI+ukW A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="293088791"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="293088791"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:42:34 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="811289688"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:42:34 -0700
Date: Wed, 4 May 2022 13:42:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YnLlOQA5k4q6Mgo1@mdroper-desk1.amr.corp.intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
 <20220504190756.466270-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220504190756.466270-4-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915: Drop has_rc6 from device
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

On Wed, May 04, 2022 at 12:07:48PM -0700, José Roberto de Souza wrote:
> No need to have this parameter in intel_device_info struct
> as all platforms with graphics version 6 or newer have software
> support for this feature.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_drv.h          | 3 ++-
>  drivers/gpu/drm/i915/i915_pci.c          | 8 --------
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  3 files changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 3a3d57485b09c..d29dca83185ac 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1308,7 +1308,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
>  #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
>  
> -#define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
> +/* ilk does support rc6, but we do not implement [power] contexts */
> +#define HAS_RC6(dev_priv)		 (GRAPHICS_VER(dev_priv) >= 6)
>  #define HAS_RC6p(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6p)
>  #define HAS_RC6pp(dev_priv)		 (false) /* HW was never validated */
>  
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index df20818ce8eae..90584c462f225 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -376,8 +376,6 @@ static const struct intel_device_info gm45_info = {
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0), \
>  	.has_snoop = true, \
>  	.has_coherent_ggtt = true, \
> -	/* ilk does support rc6, but we do not implement [power] contexts */ \
> -	.has_rc6 = 0, \
>  	.dma_mask_size = 36, \
>  	I9XX_PIPE_OFFSETS, \
>  	I9XX_CURSOR_OFFSETS, \
> @@ -407,7 +405,6 @@ static const struct intel_device_info ilk_m_info = {
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>  	.has_coherent_ggtt = true, \
>  	.has_llc = 1, \
> -	.has_rc6 = 1, \
>  	.has_rc6p = 1, \
>  	.has_rps = true, \
>  	.dma_mask_size = 40, \
> @@ -458,7 +455,6 @@ static const struct intel_device_info snb_m_gt2_info = {
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>  	.has_coherent_ggtt = true, \
>  	.has_llc = 1, \
> -	.has_rc6 = 1, \
>  	.has_rc6p = 1, \
>  	.has_reset_engine = true, \
>  	.has_rps = true, \
> @@ -518,7 +514,6 @@ static const struct intel_device_info vlv_info = {
>  	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
>  	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
>  	.has_runtime_pm = 1,
> -	.has_rc6 = 1,
>  	.has_reset_engine = true,
>  	.has_rps = true,
>  	.display.has_gmch = 1,
> @@ -617,7 +612,6 @@ static const struct intel_device_info chv_info = {
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0) | BIT(VECS0),
>  	.has_64bit_reloc = 1,
>  	.has_runtime_pm = 1,
> -	.has_rc6 = 1,
>  	.has_rps = true,
>  	.has_logical_ring_contexts = 1,
>  	.display.has_gmch = 1,
> @@ -699,7 +693,6 @@ static const struct intel_device_info skl_gt4_info = {
>  	.display.has_psr_hw_tracking = 1, \
>  	.has_runtime_pm = 1, \
>  	.display.has_dmc = 1, \
> -	.has_rc6 = 1, \
>  	.has_rps = true, \
>  	.display.has_dp_mst = 1, \
>  	.has_logical_ring_contexts = 1, \
> @@ -1005,7 +998,6 @@ static const struct intel_device_info adl_p_info = {
>  	.has_logical_ring_contexts = 1, \
>  	.has_logical_ring_elsq = 1, \
>  	.has_mslices = 1, \
> -	.has_rc6 = 1, \
>  	.has_reset_engine = 1, \
>  	.has_rps = 1, \
>  	.has_runtime_pm = 1, \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 6d2eafaab4ef0..b3244170c4638 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -156,7 +156,6 @@ enum intel_ppgtt_type {
>  	func(has_mslices); \
>  	func(has_pooled_eu); \
>  	func(has_pxp); \
> -	func(has_rc6); \
>  	func(has_rc6p); \
>  	func(has_rps); \
>  	func(has_runtime_pm); \
> -- 
> 2.36.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
