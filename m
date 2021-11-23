Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A8745AB2E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 19:17:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 112FE89A4B;
	Tue, 23 Nov 2021 18:17:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34BBC89A4B
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 18:17:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="222312311"
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="222312311"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 09:53:11 -0800
X-IronPort-AV: E=Sophos;i="5.87,258,1631602800"; d="scan'208";a="456773699"
Received: from tosbornx-mobl.ger.corp.intel.com (HELO [10.213.226.182])
 ([10.213.226.182])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 09:53:10 -0800
Message-ID: <9e3f9a75-ae1f-906c-0f1c-84ecdec1ea71@linux.intel.com>
Date: Tue, 23 Nov 2021 17:53:08 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211123125814.1703220-1-matthew.auld@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20211123125814.1703220-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: fixup build failure
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


On 23/11/2021 12:58, Matthew Auld wrote:
> drm-intel-gt-next fails to build with:
> 
> drivers/gpu/drm/i915/gem/i915_gem_ttm.c: In function ‘vm_fault_ttm’:
> drivers/gpu/drm/i915/gem/i915_gem_ttm.c:862:23: error: too many arguments to function ‘ttm_bo_vm_fault_reserved’
>    862 |                 ret = ttm_bo_vm_fault_reserved(vmf, vmf->vma->vm_page_prot,
>        |                       ^~~~~~~~~~~~~~~~~~~~~~~
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 753f0f5458b6..02918b990b25 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -860,7 +860,7 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>   
>   	if (drm_dev_enter(dev, &idx)) {
>   		ret = ttm_bo_vm_fault_reserved(vmf, vmf->vma->vm_page_prot,
> -					       TTM_BO_VM_NUM_PREFAULT, 1);
> +					       TTM_BO_VM_NUM_PREFAULT);
>   		drm_dev_exit(idx);
>   	} else {
>   		ret = ttm_bo_vm_dummy_page(vmf, vmf->vma->vm_page_prot);
> 

Pushed thanks!

Regards,

Tvrtko
