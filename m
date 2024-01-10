Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5E58297F8
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 11:49:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71EF810E744;
	Wed, 10 Jan 2024 10:49:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE0A610E744
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 10:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704883795; x=1736419795;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Tsua7SEn14VZCIeAhWJgyij7giPMU+RSG+FFm+2Lb+I=;
 b=Alm1s4JJDL+7U1uSzDnADUTW4qgDOPrLFP9ltOTIqHs12nh5v4igepV9
 uFthJT1fHqpqjfu/MxrYGB72lm2zCu8tBDOVeFHo7jDKLP1/CAmJNTpvL
 sxZWtYkiG6TAS3SEIJO0muv8xu4mYukJnW+15V/swq88kpc1yhbzenPPw
 l9BE6wnrgdXdu8osn8gpoL2ErgF5MrzMkEyijHGXwGn+u3u+sl2IKsFhM
 GBbcv383E5FQxeUitg7j5CzX8U85dq8RolYSwkVN2yzbqZc1mlsJXttnD
 T70/5yBsJB5/HcpchS5Goq8QKDE3+HxhDgawVjGsFsGWnOMyv43w2KD55 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="397333523"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="397333523"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 02:49:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="901106119"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="901106119"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.94.248.101])
 ([10.94.248.101])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 02:49:49 -0800
Message-ID: <b266f56d-ddad-4836-b888-800c213e842f@linux.intel.com>
Date: Wed, 10 Jan 2024 11:49:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/15] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-5-ville.syrjala@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
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

Hi Ville,

Apologies, but I lost track of this series after I returned from sick leave.


On 12/15/2023 11:59 AM, Ville Syrjala wrote:
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

This will work well on host driver but I am afraid this will not work on 
VM when someone tries to do direct device assignment of the igfx.

GSMBASE/DSMBASE is reserved region so won't show up in VM, last I checked.

This is an obscure usages but are we suppose to support that? If so then 
we need to detect that and fall back to binder approach.


Regards,

Nirmoy

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
