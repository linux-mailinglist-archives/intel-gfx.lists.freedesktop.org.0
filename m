Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3745E8B4BA8
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Apr 2024 14:13:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F4010FC5F;
	Sun, 28 Apr 2024 12:13:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cq9fThlO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88B3F10FBEA
 for <intel-gfx@lists.freedesktop.org>; Sun, 28 Apr 2024 12:13:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714306381; x=1745842381;
 h=message-id:date:mime-version:cc:subject:to:references:
 from:in-reply-to:content-transfer-encoding;
 bh=W/UgtUyxaHLsPcJ+ga9AeASOOdq1iI94EO3mRhaSb80=;
 b=Cq9fThlO+iE3nE4L+DwqKWw/Gz9nZaWS1V1p34Day/NaWUg36I4DgUgE
 F1JjCygkuI30a/GU1yUxLH8npoKwGQ5bqG1/5k3f3MREyCQi/cJT1hbVR
 Ayr/KLxBZxu/+OqxvzCOPVL4oGQj+TQcu34+MrSKeA8mDICrld6x/dSHk
 UxeweEM7uy1ef3l0V1iYBoLF0/U74ZIEuUCor2+2NndyGJ+1m2clyOTYu
 5pQ9kOmUYkdQ9POiY21n8xxO5u62CWV1CoIt9xo2Aw9tTyCvFEaUq01YQ
 mZV9yUUyCZiiW0+aYqlRpcEghXmlK9K+fifBIwdyYmaN6iaVmyehwgTdE g==;
X-CSE-ConnectionGUID: O1xOs16WRsOqmgBUoyB6uw==
X-CSE-MsgGUID: h/M5f9J3RwuRqfRpCuyezQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="35373135"
X-IronPort-AV: E=Sophos;i="6.07,237,1708416000"; d="scan'208";a="35373135"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2024 05:13:01 -0700
X-CSE-ConnectionGUID: CMutR6kmRP2Pa6mU08/a7w==
X-CSE-MsgGUID: EXspfr5dRjuBaLJJUBbVuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,237,1708416000"; d="scan'208";a="25872323"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.125.244.72])
 ([10.125.244.72])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2024 05:12:58 -0700
Message-ID: <850146ff-ce6f-44b3-9326-d44d29550b34@linux.intel.com>
Date: Sun, 28 Apr 2024 20:12:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: baolu.lu@linux.intel.com, "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/1] iommu/vt-d: Decouple igfx_off from graphic identity
 mapping
To: "Tian, Kevin" <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, "Wang, Zhenyu Z" <zhenyu.z.wang@intel.com>
References: <20240428032020.214616-1-baolu.lu@linux.intel.com>
 <BN9PR11MB5276AF4C9A57C3B8D3A25E8E8C142@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <BN9PR11MB5276AF4C9A57C3B8D3A25E8E8C142@BN9PR11MB5276.namprd11.prod.outlook.com>
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

On 2024/4/28 14:45, Tian, Kevin wrote:
>> From: Lu Baolu<baolu.lu@linux.intel.com>
>> Sent: Sunday, April 28, 2024 11:20 AM
>>
>> A kernel command called igfx_off was introduced in commit <ba39592764ed>
>> ("Intel IOMMU: Intel IOMMU driver"). This command allows the user to
>> disable the IOMMU dedicated to SOC-integrated graphic devices.
>>
>> Commit <9452618e7462> ("iommu/intel: disable DMAR for g4x integrated
>> gfx")
>> used this mechanism to disable the graphic-dedicated IOMMU for some
>> problematic devices. Later, more problematic graphic devices were added
>> to the list by commit <1f76249cc3beb> ("iommu/vt-d: Declare Broadwell igfx
>> dmar support snafu").
>>
>> On the other hand, commit <19943b0e30b05> ("intel-iommu: Unify
>> hardware
>> and software passthrough support") uses the identity domain for graphic
>> devices if CONFIG_DMAR_BROKEN_GFX_WA is selected.
>>
>> +       if (iommu_pass_through)
>> +               iommu_identity_mapping = 1;
>> +#ifdef CONFIG_DMAR_BROKEN_GFX_WA
>> +       else
>> +               iommu_identity_mapping = 2;
>> +#endif
>> ...
>>
>> static int iommu_should_identity_map(struct pci_dev *pdev, int startup)
>> {
>> +        if (iommu_identity_mapping == 2)
>> +                return IS_GFX_DEVICE(pdev);
>> ...
>>
>> In the following driver evolution, CONFIG_DMAR_BROKEN_GFX_WA and
>> quirk_iommu_igfx() are mixed together, causing confusion in the driver's
>> device_def_domain_type callback. On one hand, dmar_map_gfx is used to
>> turn
>> off the graphic-dedicated IOMMU as a workaround for some buggy
>> hardware;
>> on the other hand, for those graphic devices, IDENTITY mapping is required
>> for the IOMMU core.
>>
>> Commit <4b8d18c0c986> "iommu/vt-d: Remove
>> INTEL_IOMMU_BROKEN_GFX_WA" has
>> removed the CONFIG_DMAR_BROKEN_GFX_WA option, so the
>> IDENTITY_DOMAIN
>> requirement for graphic devices is no longer needed. Therefore, this
>> requirement can be removed from device_def_domain_type() and igfx_off
>> can
>> be made independent.
>>
>> Fixes: 4b8d18c0c986 ("iommu/vt-d: Remove
>> INTEL_IOMMU_BROKEN_GFX_WA")
>> Signed-off-by: Lu Baolu<baolu.lu@linux.intel.com>
>> ---
>>   drivers/iommu/intel/iommu.c | 19 ++++++-------------
>>   1 file changed, 6 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
>> index fbbf8fda22f3..57a986524502 100644
>> --- a/drivers/iommu/intel/iommu.c
>> +++ b/drivers/iommu/intel/iommu.c
>> @@ -217,12 +217,11 @@ int intel_iommu_sm =
>> IS_ENABLED(CONFIG_INTEL_IOMMU_SCALABLE_MODE_DEFAULT_ON);
>>   int intel_iommu_enabled = 0;
>>   EXPORT_SYMBOL_GPL(intel_iommu_enabled);
>>
>> -static int dmar_map_gfx = 1;
>>   static int intel_iommu_superpage = 1;
>>   static int iommu_identity_mapping;
>>   static int iommu_skip_te_disable;
>> +static int disable_igfx_dedicated_iommu;
>>
> what about 'no_igfx_iommu"? dedicated is implied for igfx
> so a shorter name might be slightly better.

I like disable_igfx_iommu more. :-)

Best regards,
baolu
