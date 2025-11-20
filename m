Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE65C71D8A
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 03:28:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC30610E6D3;
	Thu, 20 Nov 2025 02:28:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HuJxWPHW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B7510E6D3;
 Thu, 20 Nov 2025 02:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763605725; x=1795141725;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=rnCKstsqcmd26ulJwH2uPY5Za/EDpS8tGdSygHOK3Pw=;
 b=HuJxWPHWARa2vLhu34XGCfzvRhuvkH2U/bi2v5Brk9931vnzmPI0bfH4
 f/5rQwiyD97W+uUtxhrhoOH/TY+zV/Jhcey4d7+eq5ZgvoMEa+EKSUP5J
 myBplKyo+Sza1NfXt0UmMB1axraWF+OuDz/W3RWdKveigaGMLFQraD2pr
 iM7j9x7o6aAOOGxbLg+8FdCWjxWgYbDcdbl9LDU2Sn6037ZHp3gvgowab
 sVnC/5+dyF2AnQl8eFb1Z9gfE+l46WiE4Q8HqAmgDfQFila4+TfORoITK
 qCP8CFKBTdpPeaXBPa0HDGGwijUW75uL3tDwmeJRg/hx/GwcDBBFqqTFZ g==;
X-CSE-ConnectionGUID: 3CQlHQJSRqay/X6a+0vyyg==
X-CSE-MsgGUID: PAjZ0f+vSI2fg5WHeegXdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65558256"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="65558256"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 18:28:44 -0800
X-CSE-ConnectionGUID: 2DFXa8XZQ3mIhcVyuc4clQ==
X-CSE-MsgGUID: H0RI18+4S2aYWeL4d81h8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="196187291"
Received: from allen-sbox.sh.intel.com (HELO [10.239.159.30]) ([10.239.159.30])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 18:28:42 -0800
Message-ID: <e65e3829-acf2-41ee-872c-eeda33983392@linux.intel.com>
Date: Thu, 20 Nov 2025 10:24:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on linux-next (next-20251106)
To: Jason Gunthorpe <jgg@nvidia.com>, "Tian, Kevin" <kevin.tian@intel.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
 <a79fe616-52c7-4fa5-906c-382b5ff2226c@intel.com>
 <20251118161341.GC90703@nvidia.com>
 <0c3cd494-e42a-4607-896c-4c341f90c270@intel.com>
 <BN9PR11MB52760A6BE22F89D29685690F8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20251119185119.GP120075@nvidia.com>
 <BN9PR11MB52764557ECAEF2200054070D8CD7A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20251120021831.GT120075@nvidia.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <20251120021831.GT120075@nvidia.com>
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

On 11/20/25 10:18, Jason Gunthorpe wrote:
> On Wed, Nov 19, 2025 at 11:56:16PM +0000, Tian, Kevin wrote:
>>> So we should be using dmar->width to constrain the first stage and
>>> expect that mgaw is less than dmar->width ?
>>>
>> dmar->width is the host address width, i.e. for OA. so it's irrelevant
>> to the input iova here.
> Oh that makes sense!
> 
> In that case we should probably pedantically have:
> 
> 	cfg.common.hw_max_oasz_lg2 = dmar->width;
> 
> ?
> 
> However we get dmar into that function?

I will consider this and come up with a follow-up patch if needed.

> 
>> "
>> 3.6 First-Stage Translation
>>
>> First-stage translation restricts the input-address to a canonical address
>> (i.e., address bits 63:N have the same value as address bit [N-1], where
>> N is 48 bits with 4-level paging and 57 bits with 5-level paging). Requests
>> subject to first-stage translation by remapping hardware are subject to
>> canonical address checking as a pre-condition for first-stage translation,
>> and a violation is treated as a translation-fault.
>>
>> Software using first-stage translation structures to translate an IO Virtual
>> Address (IOVA) must use canonical addresses. Additionally, software
>> must limit addresses to less than the minimum of MGAW and the lower
>> canonical address width implied by FSPM (i.e., 47-bit when FSPM is 4-level
>> and 56-bit when FSPM is 5-level)
>> "
> That seems very clear, indeed. OK! Easy to fix then! Balou can you
> take it? I think something like this?

Yes, sure. I will make it a formal patch and post it for further testing
after some sanity checks.

Thanks,
baolu
