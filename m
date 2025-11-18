Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAB2C69133
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 12:29:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E477F10E483;
	Tue, 18 Nov 2025 11:29:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IzIkJYGc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8DE710E481;
 Tue, 18 Nov 2025 11:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763465367; x=1795001367;
 h=message-id:date:mime-version:cc:subject:to:references:
 from:in-reply-to:content-transfer-encoding;
 bh=xtuwQKGAk/ErGNA8uIe3gd8aTR9BG9uT/nLd0C3TKSg=;
 b=IzIkJYGclEM1fqh4c97iNiQS1XvvEs50c/LJ8oWhKD2ZUF+mZ72hBV54
 2NTkuonqgxfiGFCMWbV+gjK9+0sZ6MktdJYTYHwEOgt0EMuPTxgkBUm/1
 wCyQgNk93ZvMF399B9vwHjDXCF1Ou7Kxcj/0g9jcl5VO/pQKwY3PXCLvh
 rEo2jIBPAc0dJFXygoz5oaxracnXvcpybdLBBP/Yp7trdD8H0ULTsqKIe
 6yaVh025HHpqpfiFk0HlgTO7W/2K62nVpnVUAR8rxtt8XFCJGTC8zOfi4
 HmGrCZnSOzDFMTTPWrWwjLN574kK8/jZve2E97y7x4PQAgCY5tpCc2ITl Q==;
X-CSE-ConnectionGUID: /eAgBWZ0Q72NeXCA0hIfaA==
X-CSE-MsgGUID: 39o1ewcvQruyaOrkPiyuSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65574712"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="65574712"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 03:29:26 -0800
X-CSE-ConnectionGUID: mKoK09e0QHSWwSAPWPKSog==
X-CSE-MsgGUID: VzUCmTUTR/CF2B6XCP69hA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="221637088"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.124.246.21])
 ([10.124.246.21])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 03:29:24 -0800
Message-ID: <1843821d-c3ca-480d-909c-2331521f6932@linux.intel.com>
Date: Tue, 18 Nov 2025 19:29:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: baolu.lu@linux.intel.com,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: Re: REGRESSION on linux-next (next-20251106)
To: "Tian, Kevin" <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
 <BN9PR11MB5276C5F6D952CFFEC7CBF0D68CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <5ec170fa-d5e1-473d-a7b8-8d1737efb241@linux.intel.com>
 <BN9PR11MB5276323D350AEB5C5C3308228CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <BN9PR11MB5276323D350AEB5C5C3308228CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
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

On 11/18/2025 3:47 PM, Tian, Kevin wrote:
>> From: Baolu Lu <baolu.lu@linux.intel.com>
>> Sent: Tuesday, November 18, 2025 2:24 PM
>>
>> On 11/18/25 12:04, Tian, Kevin wrote:
>>>> 46 bits is not particularly big... Hmm, I wonder if we have some issue
>>>> with the sign-extend? iommupt does that properly and IIRC the old code
>>>> did not. Which of the page table formats is this using second stage or
>>>> first stage?
>>> Assume it's first stage for kernel IOVA, if available in hw
>>
>> It's the first stage (x86_64 fmt) according to the PASID entry setup:
>>
>> IOMMU dmar0: Root Table Address: 0x105a82000
>> B.D.F	Root_entry				Context_entry
>> 		PASID	PASID_table_entry
>> 00:02.0	0x0000000000000000:0x0000000105a85001
>> 0x0000000000000000:0x0000000105a84405	0
>> 0x0000000105a86000:0x0000000000000002:0x0000000000000049
>>
> 
> so the 3rd experiment (if the former two doesn't show difference) is
> to force using second stage to see whether it's caused by the
> sign-extend logic.

I hardcoded the driver to always use the second stage for paging domain
translation, and it works now.

IOMMU dmar0: Root Table Address: 0x1049b6000
B.D.F	Root_entry				Context_entry				PASID	PASID_table_entry
00:02.0	0x0000000000000000:0x00000001049ba001 
0x0000000000000000:0x00000001049b9405	0 
0x0000000000000000:0x0000000000000002:0x00000001049bb089

Thanks,
baolu
