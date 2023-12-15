Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 809788149CB
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 14:56:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF73B10E0E8;
	Fri, 15 Dec 2023 13:56:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAD5410E0E8
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 13:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702648605; x=1734184605;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=YwdAR/jHsHwOuymHf7b8Do9d7O0gBKhTV12U57MKRac=;
 b=V7iRMC5SFkin7t23cpCdlUudnEZb2A4frj/Ta4UG2UDgh3ti949GZQGr
 JEyo99i5/UoCeD2uMDiitQJ90pM6/wEYjGfdSan99yetGuLVmQm79RLK9
 YtKjSgMETqJRMFuRaiontOa4SqRMx6dt93C+yHp/tpvJBwntm8nA8n5hh
 mVQcU+FgBePZgel+Feyz7zXMMnd9kyWhcLRAYB246TEbNba/nk30JXS8/
 kQ6wB1Me9Bk3F7TNviondJP70kO25PXQDOPjJsdIgfJc86yMvSMmG897P
 +L9bWgVfLh8HyTy4rHShqNQSUoiOLePtn6nIlDowRIIoapSMImkcEcH+I Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="481465428"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="481465428"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 05:56:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="803715799"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="803715799"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.6.229])
 ([10.213.6.229])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 05:56:43 -0800
Message-ID: <be829f85-b7cd-4690-8404-91f2b690e5d6@intel.com>
Date: Fri, 15 Dec 2023 14:56:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/15] drm/i915: Rename the DSM/GSM registers
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-7-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215105929.29568-7-ville.syrjala@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 15.12.2023 11:59, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> 0x108100 and 0x1080c0 have been around since snb. Rename the
> defines appropriately.
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_stolen.c  | 4 ++--
>   drivers/gpu/drm/i915/gt/intel_ggtt.c        | 2 +-
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 2 +-
>   drivers/gpu/drm/i915/i915_reg.h             | 7 ++++---
>   4 files changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 252fe5cd6ede..6185a5f73a48 100644
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
> @@ -948,7 +948,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
>   		 * Normally this would not work but on MTL the system firmware
>   		 * should have relaxed the access permissions sufficiently.
>   		 */
> -		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
> +		io_start = intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_MASK;
>   		io_size = dsm_size;
>   	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
>   		io_start = 0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index ab71d74ec426..05c5525e7e2d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -1167,7 +1167,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>   	 * should have relaxed the access permissions sufficiently.
>   	 */
>   	if (IS_METEORLAKE(i915))
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
> index 27dc903f0553..b54d62952a53 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6314,9 +6314,10 @@ enum skl_power_gate {
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

