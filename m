Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A81B082ECEA
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 11:46:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030EB10E47D;
	Tue, 16 Jan 2024 10:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9257010E47D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 10:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705401955; x=1736937955;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=W0t/fRkHyLAR7iCI5H8MBqSMm1ppZVhcHIPQqxABYF4=;
 b=fcx0Y0X2+eGgefR2Xc1G1H9cemFVd6Zedc3zUL2XQe+c1lhkos43reWu
 SFXgaxbhcnNyPD1MwhWW+VWC5aXPQ9lVQfBmDzwKJ2JQviEnz1AD2R+5T
 hJ1AkOQz1JSxxv2DxjL7eiDjK3wfA5Krdf9MjeDKjE68Gunj3Fq0AP0cm
 TXGfY/fTGjv/9N5UqZWjTOFguztiOUVNCKw/kNm8CboVYWdIY2U6cCym5
 dgi6dL8dHqmKt3QTJj+OnS7J3p3ySQ0XsnHbzfZl3xzIptH/iFVVixdvD
 0JT/m0nu0fcmLAQvShnmDgR8SmAIzsiF4BaMWn3hh6kvau6u5irCN65CH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="485978461"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="485978461"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:45:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="874413848"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="874413848"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.32.218])
 ([10.246.32.218])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2024 02:45:30 -0800
Message-ID: <763b4249-3c8d-481b-a250-595a6b1e87a1@linux.intel.com>
Date: Tue, 16 Jan 2024 11:45:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/16] drm/i915: Rename the DSM/GSM registers
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-7-ville.syrjala@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20240116075636.6121-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/16/2024 8:56 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> 0x108100 and 0x1080c0 have been around since snb. Rename the
> defines appropriately.
>
> Cc: Paz Zcharya <pazz@chromium.org>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_stolen.c  | 4 ++--
>   drivers/gpu/drm/i915/gt/intel_ggtt.c        | 2 +-
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 2 +-
>   drivers/gpu/drm/i915/i915_reg.h             | 7 ++++---
>   4 files changed, 8 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 0b429f1ecd99..ce6b860b393e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -935,7 +935,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
>   		GEM_BUG_ON((dsm_base + dsm_size) > lmem_size);
>   	} else {
>   		/* Use DSM base address instead for stolen memory */
> -		dsm_base = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
> +		dsm_base = intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_MASK;
>   		if (WARN_ON(lmem_size < dsm_base))
>   			return ERR_PTR(-ENODEV);
>   		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
> @@ -951,7 +951,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
>   		 * Normally this would not work but on MTL the system firmware
>   		 * should have relaxed the access permissions sufficiently.
>   		 */
> -		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
> +		io_start = intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_MASK;
>   		io_size = dsm_size;
>   	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
>   		io_start = 0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 7a716ff16070..b87933e7671d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -1170,7 +1170,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>   	 * should have relaxed the access permissions sufficiently.
>   	 */
>   	if (IS_METEORLAKE(i915) && !i915_run_as_guest())
> -		phys_addr = intel_uncore_read64(uncore, GEN12_GSMBASE) & GEN12_BDSM_MASK;
> +		phys_addr = intel_uncore_read64(uncore, GEN6_GSMBASE) & GEN11_BDSM_MASK;
>   	else
>   		phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index af357089da6e..51bb27e10a4f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -240,7 +240,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>   		lmem_size -= tile_stolen;
>   	} else {
>   		/* Stolen starts from GSMBASE without CCS */
> -		lmem_size = intel_uncore_read64(&i915->uncore, GEN12_GSMBASE);
> +		lmem_size = intel_uncore_read64(&i915->uncore, GEN6_GSMBASE);
>   	}
>   
>   	i915_resize_lmem_bar(i915, lmem_size);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 75bc08081fce..0d35173a7718 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6320,9 +6320,10 @@ enum skl_power_gate {
>   #define   GMS_MASK			REG_GENMASK(15, 8)
>   #define   GGMS_MASK			REG_GENMASK(7, 6)
>   
> -#define GEN12_GSMBASE			_MMIO(0x108100)
> -#define GEN12_DSMBASE			_MMIO(0x1080C0)
> -#define   GEN12_BDSM_MASK		REG_GENMASK64(63, 20)
> +#define GEN6_GSMBASE			_MMIO(0x108100)
> +#define GEN6_DSMBASE			_MMIO(0x1080C0)
> +#define   GEN6_BDSM_MASK		REG_GENMASK64(31, 20)
> +#define   GEN11_BDSM_MASK		REG_GENMASK64(63, 20)
>   
>   #define XEHP_CLOCK_GATE_DIS		_MMIO(0x101014)
>   #define   SGSI_SIDECLK_DIS		REG_BIT(17)
