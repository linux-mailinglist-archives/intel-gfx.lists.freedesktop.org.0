Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B320C729BF
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:32:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A73A10E6E6;
	Thu, 20 Nov 2025 07:32:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NUSdQE5y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43E8610E6E6;
 Thu, 20 Nov 2025 07:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623926; x=1795159926;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Hpo3HhsoWTrb0YC201I01MRv6sZ+Tu37Hx3+TmRShLw=;
 b=NUSdQE5yCMVO5G8ZIVyEwOy3UdS7ZVsh0+CjZnwgjo8EV1V/WU1iwmp8
 tpEEm3miKpBJDzyCRVqgzH93ZX8JDpaxLTlE+2vcn76cxO5Icvj3//z3I
 iuw9b/QqwZ7fX0BJwY5/HiYXiyKuL1HxgSi4AV5mrBdMZGyqtHhCkTSuR
 5I04j6mvK1MMS4EA6Je99D2X4TKE1suSzSozMicnRuUMvHF2qIB1kpDu8
 oCfLRU989vRQ05kW8ZmqwKFetld0lTLEnd9oQM9FgOnq2BTbZl3odSpad
 uNkQ6oNdD/SYiui5bL9z4NneRjEgv8xuiLTGGeyfLCpBgGvnFJs7vyqEP A==;
X-CSE-ConnectionGUID: nhXH/vNpSduZcQ2REHI5kg==
X-CSE-MsgGUID: fU1+qJUATjeu331x34qweQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="77041401"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="77041401"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:32:06 -0800
X-CSE-ConnectionGUID: KQk7NUhxTjSlh1kCpSrWtQ==
X-CSE-MsgGUID: KE0ZSN6oQV2vXkzIZUVMyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191414338"
Received: from allen-sbox.sh.intel.com (HELO [10.239.159.30]) ([10.239.159.30])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:32:03 -0800
Message-ID: <94ae0210-734b-41cb-b8a8-657b76324aba@linux.intel.com>
Date: Thu, 20 Nov 2025 15:27:58 +0800
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

A fix patch was posted here:

https://lore.kernel.org/linux-iommu/20251120072524.3218282-1-baolu.lu@linux.intel.com/

Thanks,
baolu
