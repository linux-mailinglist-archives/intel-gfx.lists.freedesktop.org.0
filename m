Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F60B51AFA9
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 22:47:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C56810EDFD;
	Wed,  4 May 2022 20:47:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEA6C10EDFD
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 20:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651697254; x=1683233254;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=KFak+mSuhoxQMGxDKeK/yQjcq3tPSyS448SM4EMhL1c=;
 b=ZZkQouPyZu5ZpQVe74EnM6fRx/IQmRsSOkvHHcRYG/OeDHe2pl7UoaX2
 QIYJzT0ZiKtUQlQRrgI4RWC0foZWFss760YUpLQy9tXo5muglLbwnt/Zx
 LxWvD0JezOXWDjJnUG/1pqS4526+7xkEiurzKC4wdm1PvHvkiFK1HgbTZ
 CGzD8PlLGJJ/oClREZrW4HwBtxqdkS/dupJI6y8uRM7dAO/514poNNSqc
 +7M236/c+JbDmGnd6vZq6e7mS3WWz13keH35qYAO1h8cCz/D2Jo3KitLR
 Adi80+IqqHrQBwdtM+WIc6f03E2wNKVR+borLbcQ2rM4yDthmALY0ef5c A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="265489054"
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="265489054"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:47:34 -0700
X-IronPort-AV: E=Sophos;i="5.91,199,1647327600"; d="scan'208";a="562909435"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 13:47:33 -0700
Date: Wed, 4 May 2022 13:47:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YnLmZCrposDFZxao@mdroper-desk1.amr.corp.intel.com>
References: <20220504190756.466270-1-jose.souza@intel.com>
 <20220504190756.466270-6-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220504190756.466270-6-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 06/12] drm/i915: Drop has_reset_engine from
 device info
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

On Wed, May 04, 2022 at 12:07:50PM -0700, José Roberto de Souza wrote:
> No need to have this parameter in intel_device_info struct
> as all platforms with graphics version 7 or newer can reset engines.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c    | 2 +-
>  drivers/gpu/drm/i915/i915_pci.c          | 5 -----
>  drivers/gpu/drm/i915/intel_device_info.h | 1 -
>  3 files changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 5422a3b84bd44..894f17f8b4cea 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -699,7 +699,7 @@ bool intel_has_reset_engine(const struct intel_gt *gt)
>  	if (gt->i915->params.reset < 2)
>  		return false;
>  
> -	return INTEL_INFO(gt->i915)->has_reset_engine;
> +	return GRAPHICS_VER(gt->i915) >= 7;
>  }
>  
>  int intel_reset_guc(struct intel_gt *gt)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 516f28d4db611..b47f8b1ab9c6c 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -454,7 +454,6 @@ static const struct intel_device_info snb_m_gt2_info = {
>  	.platform_engine_mask = BIT(RCS0) | BIT(VCS0) | BIT(BCS0), \
>  	.has_coherent_ggtt = true, \
>  	.has_llc = 1, \
> -	.has_reset_engine = true, \
>  	.has_rps = true, \
>  	.dma_mask_size = 40, \
>  	.ppgtt_type = INTEL_PPGTT_ALIASING, \
> @@ -512,7 +511,6 @@ static const struct intel_device_info vlv_info = {
>  	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B),
>  	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B),
>  	.has_runtime_pm = 1,
> -	.has_reset_engine = true,
>  	.has_rps = true,
>  	.display.has_gmch = 1,
>  	.display.has_hotplug = 1,
> @@ -615,7 +613,6 @@ static const struct intel_device_info chv_info = {
>  	.dma_mask_size = 39,
>  	.ppgtt_type = INTEL_PPGTT_FULL,
>  	.ppgtt_size = 32,
> -	.has_reset_engine = 1,
>  	.has_snoop = true,
>  	.has_coherent_ggtt = false,
>  	.display_mmio_offset = VLV_DISPLAY_BASE,
> @@ -696,7 +693,6 @@ static const struct intel_device_info skl_gt4_info = {
>  	.dma_mask_size = 39, \
>  	.ppgtt_type = INTEL_PPGTT_FULL, \
>  	.ppgtt_size = 48, \
> -	.has_reset_engine = 1, \
>  	.has_snoop = true, \
>  	.has_coherent_ggtt = false, \
>  	HSW_PIPE_OFFSETS, \
> @@ -995,7 +991,6 @@ static const struct intel_device_info adl_p_info = {
>  	.has_logical_ring_contexts = 1, \
>  	.has_logical_ring_elsq = 1, \
>  	.has_mslices = 1, \
> -	.has_reset_engine = 1, \
>  	.has_rps = 1, \
>  	.has_runtime_pm = 1, \
>  	.ppgtt_size = 48, \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 599cb265946b8..62c9616ea6a9c 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -142,7 +142,6 @@ enum intel_ppgtt_type {
>  	func(has_64k_pages); \
>  	func(needs_compact_pt); \
>  	func(gpu_reset_clobbers_display); \
> -	func(has_reset_engine); \
>  	func(has_4tile); \
>  	func(has_flat_ccs); \
>  	func(has_global_mocs); \
> -- 
> 2.36.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
