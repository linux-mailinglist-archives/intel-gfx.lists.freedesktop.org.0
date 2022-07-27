Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D35582D85
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 18:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C14712A713;
	Wed, 27 Jul 2022 16:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E79E38A322
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 16:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658941118; x=1690477118;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jNERCeymOTev8xa4/d0t2TS05ReZFTde8sVMjJvDkI0=;
 b=C3xiSVarsZEH1AyxdnZTRHH7+hZj79a/+UkrxWpilJyS950bD7ML+0sb
 P3zXVI31cG8tQ6HhEL7GYEfjT35+URwA2hfBaRpduJygNAfpu6nYGAIUt
 nN3g9pDYyW5HVEON81Fb7pdWkd9PXuzl/B81rMYtmhhme2IMJQ0xxf2Jg
 vhuUM0/M7RBgFC1NtKpbk2GwgFN8BRTf3nTfVZ+p1mJ1cdwfmJaGTsuUW
 onS3A7R11v37nP4ii7rwtwpLFxdZE4CkSnoflX5lazP4r8u605Ubhhd0C
 d6JUffTR7V87tSGJ5Lpe+iL/FVfikuHHfZXXgMGJT6A8+9StDrEI9bl9D w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271328259"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271328259"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 09:58:37 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="703385604"
Received: from pmcquill-mobl.ger.corp.intel.com (HELO [10.213.217.165])
 ([10.213.217.165])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 09:58:36 -0700
Message-ID: <1a2bdeb9-b0a4-e620-f106-b0df7a691241@intel.com>
Date: Wed, 27 Jul 2022 17:58:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220726083212.24071-1-nirmoy.das@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220726083212.24071-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: disable pci resize on 32-bit
 machine
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
Cc: priyanka.dandamudi@intel.com, naresh.kamboju@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 26/07/2022 09:32, Nirmoy Das wrote:
> PCI bar resize only works with 64 bit BAR so disable
> this on 32-bit machine.

Maybe also mention somewhere that this is just to fix a compiler warning 
with the 0x100000000ull being out-of-range with resource_size_t on 32bit?

Acked-by: Matthew Auld <matthew.auld@intel.com>

> 
> Fixes: a91d1a17cd341 ("drm/i915: Add support for LMEM PCIe resizable bar")
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_region_lmem.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 6e90032e12e9..aa6aed837194 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -15,6 +15,7 @@
>   #include "gt/intel_gt_mcr.h"
>   #include "gt/intel_gt_regs.h"
>   
> +#ifdef CONFIG_64BIT
>   static void _release_bars(struct pci_dev *pdev)
>   {
>   	int resno;
> @@ -111,6 +112,9 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
>   	pci_assign_unassigned_bus_resources(pdev->bus);
>   	pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
>   }
> +#else
> +static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size) {}
> +#endif
>   
>   static int
>   region_lmem_release(struct intel_memory_region *mem)
