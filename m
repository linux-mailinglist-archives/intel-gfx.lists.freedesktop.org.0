Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 291FC620A39
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 08:33:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C5910E3CD;
	Tue,  8 Nov 2022 07:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABDAC10E237
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 07:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667892805; x=1699428805;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=XxP0dHqNvccyT1y7Wk8hzRpZ8FAIIXUdnjxF74piVZA=;
 b=iOAtXX5AdYfg9egDGd7Vuz0UJvsKdh+CWsu2AS6BVNrqZLSCigJ77RbH
 OdCa4UTYEPiFfpCdd9RH2WSJX5gyrmcfIloTx/E7blinbMmME4fodM9Fd
 1VZN+BSi+nhE+82B6HykN9daztvuND+GRyDE1yndzFP7a4Z1kXaGbttOF
 IkXgnH1MZkwN+NjY83oDnYNYbpyCqenc/1fDGeA6ZSy1q8cyIMRgRtTKK
 CXWDuwdSP6WG81iOP8xvpXApoASjaqUmErrvAPCw5Hgu70ORcILMDXRca
 5dFHNE1XbJ9OJToLahr4f7BMPBV95YyfS+LWAgLJxH7BlD/JJKXIJkGt2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="372771143"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="372771143"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 23:33:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="741842131"
X-IronPort-AV: E=Sophos;i="5.96,147,1665471600"; d="scan'208";a="741842131"
Received: from pkortas-mobl1.ger.corp.intel.com (HELO [10.213.7.26])
 ([10.213.7.26])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 23:33:23 -0800
Message-ID: <3df29001-5ffd-31ce-b9dc-3bb6072228dc@intel.com>
Date: Tue, 8 Nov 2022 08:33:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221107165414.56970-1-matthew.auld@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221107165414.56970-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/ttm: fix uaf with
 lmem_userfault_list handling
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
Cc: Nirmoy Das <nirmoy.das@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 07.11.2022 17:54, Matthew Auld wrote:
> In the fault handler, make sure we check if the BO maps lmem after
> we schedule the migration, since the current resource might change from
> lmem to smem, if the pages are in the non-cpu visible portion of lmem.
> This then leads to adding the object to the lmem_userfault_list even
> though the current resource is no longer lmem. If we then destroy the
> object, the list might still contain a link to the now free object, since
> we only remove it if the object is still in lmem.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7469
> Fixes: ad74457a6b5a ("drm/i915/dgfx: Release mmap on rpm suspend")
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Anshuman Gupta <anshuman.gupta@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 25129af70f70..9421dc4dc98f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -1048,9 +1048,6 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   		return VM_FAULT_SIGBUS;
>   	}
>   
> -	if (i915_ttm_cpu_maps_iomem(bo->resource))
> -		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
> -
>   	if (!i915_ttm_resource_mappable(bo->resource)) {
>   		int err = -ENODEV;
>   		int i;
> @@ -1078,6 +1075,9 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   		}
>   	}
>   
> +	if (i915_ttm_cpu_maps_iomem(bo->resource))
> +		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
> +
>   	if (drm_dev_enter(dev, &idx)) {
>   		ret = ttm_bo_vm_fault_reserved(vmf, vmf->vma->vm_page_prot,
>   					       TTM_BO_VM_NUM_PREFAULT);

