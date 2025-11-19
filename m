Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A74ABC6D1CF
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 08:29:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6420110E592;
	Wed, 19 Nov 2025 07:29:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eulPYjhm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DF3610E591;
 Wed, 19 Nov 2025 07:29:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763537378; x=1795073378;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=wgEbgeqX72fTdb4/kRazDvRL9cpIZZD4T9OBtOF+2J8=;
 b=eulPYjhmHP+PSYPFHt+sQi2kFXkt2AJSsU8OPn70kyQdikVBK4ILM5ec
 d3zCI/Ji+QPbiB6eIiybo7dLTBVpGZXDt6FyP5Tf8/EZ/nzd8cXsAh07L
 ADu+AuLTjVNT+yhQxZhFvEnOOCcXiEZfyLGYxycDTc3OqLcpFimnuYyZK
 JA8dKndESBV9JDc+9RIXOlpCdcOrtT53HYX77CM613Me23/N3QPPK0/NQ
 6VUdPUi+7F4m/TJ/2uWIoFoFvWBXzdOgVEyXT/S7qkxDL4vqvCUhTFqBV
 58I/ZbmQ+09ofQOwnl1dr4Gsh/cvnXFQTbQgCHzlmaHMaNOa4PnQ+2z4H Q==;
X-CSE-ConnectionGUID: sXyjS2iyTJ2c/A1UiLP5lQ==
X-CSE-MsgGUID: 5VLYSfkqRpeqQas66cKFRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="64768313"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="64768313"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 23:29:38 -0800
X-CSE-ConnectionGUID: +QfW77J3RY61eD3lFTixlw==
X-CSE-MsgGUID: h+HfEz/gQKuhhopAzlBxmg==
X-ExtLoop1: 1
Received: from allen-sbox.sh.intel.com (HELO [10.239.159.30]) ([10.239.159.30])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 23:29:35 -0800
Message-ID: <ecea594c-4463-44d4-9577-50dc92f654ed@linux.intel.com>
Date: Wed, 19 Nov 2025 15:25:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on linux-next (next-20251106)
To: Jason Gunthorpe <jgg@nvidia.com>
Cc: "Tian, Kevin" <kevin.tian@intel.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
 <BN9PR11MB5276C5F6D952CFFEC7CBF0D68CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <5ec170fa-d5e1-473d-a7b8-8d1737efb241@linux.intel.com>
 <BN9PR11MB5276323D350AEB5C5C3308228CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <1843821d-c3ca-480d-909c-2331521f6932@linux.intel.com>
 <20251118123513.GJ10864@nvidia.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <20251118123513.GJ10864@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 11/18/25 20:35, Jason Gunthorpe wrote:
> On Tue, Nov 18, 2025 at 07:29:22PM +0800, Baolu Lu wrote:
>> On 11/18/2025 3:47 PM, Tian, Kevin wrote:
>>>> From: Baolu Lu <baolu.lu@linux.intel.com>
>>>> Sent: Tuesday, November 18, 2025 2:24 PM
>>>>
>>>> On 11/18/25 12:04, Tian, Kevin wrote:
>>>>>> 46 bits is not particularly big... Hmm, I wonder if we have some issue
>>>>>> with the sign-extend? iommupt does that properly and IIRC the old code
>>>>>> did not. Which of the page table formats is this using second stage or
>>>>>> first stage?
>>>>> Assume it's first stage for kernel IOVA, if available in hw
>>>>
>>>> It's the first stage (x86_64 fmt) according to the PASID entry setup:
>>>>
>>>> IOMMU dmar0: Root Table Address: 0x105a82000
>>>> B.D.F	Root_entry				Context_entry
>>>> 		PASID	PASID_table_entry
>>>> 00:02.0	0x0000000000000000:0x0000000105a85001
>>>> 0x0000000000000000:0x0000000105a84405	0
>>>> 0x0000000105a86000:0x0000000000000002:0x0000000000000049
>>>>
>>>
>>> so the 3rd experiment (if the former two doesn't show difference) is
>>> to force using second stage to see whether it's caused by the
>>> sign-extend logic.
>>
>> I hardcoded the driver to always use the second stage for paging domain
>> translation, and it works now.
>>
>> IOMMU dmar0: Root Table Address: 0x1049b6000
>> B.D.F	Root_entry				Context_entry				PASID	PASID_table_entry
>> 00:02.0	0x0000000000000000:0x00000001049ba001
>> 0x0000000000000000:0x00000001049b9405	0
>> 0x0000000000000000:0x0000000000000002:0x00000001049bb089
> 
> Okay, that is a great finding!
> 
> So either it is something about the sign extend or something about
> x86_64. Given the similarity of vtdss all the code around cache/iotlb
> flushing is the same so we can say that is working.
> 
> 1) Can you run the test with CONFIG_DEBUG_GENERIC_PT=y? Lets see if
>     pt_check_install_leaf_args() fails?

No. It doesn't trigger any PT_WARN_ON() in pt_check_install_leaf_args().

> 2) Lets try to disabling the sign extend function:
> 
> --- a/drivers/iommu/intel/iommu.c
> +++ b/drivers/iommu/intel/iommu.c
> @@ -2818,8 +2818,7 @@ intel_iommu_domain_alloc_first_stage(struct device *dev,
>          else
>                  cfg.common.hw_max_vasz_lg2 = 48;
>          cfg.common.hw_max_oasz_lg2 = 52;
> -       cfg.common.features = BIT(PT_FEAT_SIGN_EXTEND) |
> -                             BIT(PT_FEAT_FLUSH_RANGE);
> +       cfg.common.features = BIT(PT_FEAT_FLUSH_RANGE);
>          /* First stage always uses scalable mode */
>          if (!ecap_smpwc(iommu->ecap))
>                  cfg.common.features |= BIT(PT_FEAT_DMA_INCOHERENT);

This doesn't make any difference.

> 3) Let's validate the mapping:
> 
> --- a/drivers/iommu/iommu.c
> +++ b/drivers/iommu/iommu.c
> @@ -2572,6 +2572,21 @@ int iommu_map_nosync(struct iommu_domain *domain, unsigned long iova,
>          else
>                  trace_map(orig_iova, orig_paddr, orig_size);
>   
> +       if (!ret) {
> +               paddr = orig_paddr;
> +               for (iova = orig_iova; iova < orig_iova + orig_size; iova += PAGE_SIZE) {
> +                       phys_addr_t pt_paddr = ops->iova_to_phys(domain, iova);
> +
> +                       if (pt_paddr != paddr) {
> +                               pr_warn("mapping: Bad physical storage %lx != %lx at %lx\n",
> +                                       (unsigned long)paddr,
> +                                       (unsigned long)pt_paddr, iova);
> +                               break;
> +                       }
> +                       paddr += PAGE_SIZE;
> +               }
> +       }
> +
> 
>    Maybe the physical is getting truncated for some reason?

The pr_warn() in above code hasn't been triggered.

> 4) Please collect the map/unmap traces, including the return code

I only run a typical test case named gem_exec_gttfill. The trace provide
by Chaitanya is more reasonable.

Thanks,
baolu
