Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D93738295FB
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 10:13:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 603CE10E57F;
	Wed, 10 Jan 2024 09:13:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54B5C10E57F
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 09:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704878022; x=1736414022;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=a6br8cbnWx3UuLGt2fO9v5qt58hsXgqYsGIEyuf7FEE=;
 b=GbtQ1PRg4S+rssuVT1M4dgWJuEjH70KEQYHI763eVg7CRIi6N1mPRwBX
 h0mGPBMo5LW9LSneESW4STa+ZEAd8cbC6WrPYGlZekyGRWNT4jwj7E+ky
 arVygAZQHjHqgi0P3l+D+X+mphroUNSAnFoeLYcZdg/wdquvC6MaxQd8Y
 IURoyGqXwJqY/BXR7aW++m9SIU0V7DVChV5KQ7YEdMY3N+tNhdRsJIidk
 kKiW1R4cOAiM0WIUohaxznyQsH/3uy8JT5ZQHzgazEJ6CWs2nikirlO19
 osIo04mE5wwrq+93vNkpzNNPx69z0pE4VFs92k+4t3QSOewSebgOHWyjX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="402239743"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="402239743"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 01:13:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="731797853"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="731797853"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.246.0.51])
 ([10.246.0.51])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 01:13:40 -0800
Message-ID: <c09e80d2-9cbb-41fc-861c-8e55a066fa7e@intel.com>
Date: Wed, 10 Jan 2024 10:13:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/15] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-5-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215105929.29568-5-ville.syrjala@linux.intel.com>
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
Cc: Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 15.12.2023 11:59, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On MTL accessing stolen memory via the BARs is somehow borked,
> and it can hang the machine. As a workaround let's bypass the
> BARs and just go straight to DSMBASE/GSMBASE instead.
> 
> Note that on every other platform this itself would hang the
> machine, but on MTL the system firmware is expected to relax
> the access permission guarding stolen memory to enable this
> workaround, and thus direct CPU accesses should be fine.
> 
> TODO: add w/a numbers and whatnot
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

With w/a id added:

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 11 ++++++++++-
>   drivers/gpu/drm/i915/gt/intel_ggtt.c       | 13 ++++++++++++-
>   2 files changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index ee237043c302..252fe5cd6ede 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -941,7 +941,16 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
>   		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
>   	}
>   
> -	if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
> +	if (IS_METEORLAKE(i915)) {
> +		/*
> +		 * Workaround: access via BAR can hang MTL, go directly to DSM.
> +		 *
> +		 * Normally this would not work but on MTL the system firmware
> +		 * should have relaxed the access permissions sufficiently.
> +		 */
> +		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
> +		io_size = dsm_size;
> +	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
>   		io_start = 0;
>   		io_size = 0;
>   	} else {
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 21a7e3191c18..ab71d74ec426 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -24,6 +24,7 @@
>   #include "intel_ring.h"
>   #include "i915_drv.h"
>   #include "i915_pci.h"
> +#include "i915_reg.h"
>   #include "i915_request.h"
>   #include "i915_scatterlist.h"
>   #include "i915_utils.h"
> @@ -1152,13 +1153,23 @@ static unsigned int gen6_gttadr_offset(struct drm_i915_private *i915)
>   static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>   {
>   	struct drm_i915_private *i915 = ggtt->vm.i915;
> +	struct intel_uncore *uncore = ggtt->vm.gt->uncore;
>   	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>   	phys_addr_t phys_addr;
>   	u32 pte_flags;
>   	int ret;
>   
>   	GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) != gen6_gttmmadr_size(i915));
> -	phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
> +	/*
> +	 * Workaround: access via BAR can hang MTL, go directly to GSM.
> +	 *
> +	 * Normally this would not work but on MTL the system firmware
> +	 * should have relaxed the access permissions sufficiently.
> +	 */
> +	if (IS_METEORLAKE(i915))
> +		phys_addr = intel_uncore_read64(uncore, GEN12_GSMBASE) & GEN12_BDSM_MASK;
> +	else
> +		phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
>   
>   	if (needs_wc_ggtt_mapping(i915))
>   		ggtt->gsm = ioremap_wc(phys_addr, size);

