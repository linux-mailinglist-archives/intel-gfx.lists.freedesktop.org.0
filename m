Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC23EC68D5C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 11:30:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0B510E09A;
	Tue, 18 Nov 2025 10:30:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AxNytdSz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DC2E10E09A;
 Tue, 18 Nov 2025 10:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763461827; x=1794997827;
 h=message-id:date:mime-version:cc:subject:to:references:
 from:in-reply-to:content-transfer-encoding;
 bh=DTg8HSKzYhYc0UtMmYZCJi3aMiMc+Fd+bbHdFH316qI=;
 b=AxNytdSz3ALqbGKyAHvDbSBt8NdoaoBgRQN3Q1N5w0rrZTyanUtJvnMg
 7/ZTlJgdYyWB5+omlQo+dd7QVB65cGAnDe4hHVKGZv/m0RzyoycBQ48ch
 nPpTwO1IzivzqQbO3ti7SZkTSHfhlhVIaTo/AaJfyu6iHeEbdIs6aiNTx
 D4ipXXlUf6BH1gibpEQnJOSnuhcE0w42bkG6Rup5qIG3tIidfs0OxB6ZW
 rKSIm/sqVwZatkp1EnPCElYf8po/Msj5YSXlJbaMUS/g6Cj0g0/vRdwR9
 6N4bMRH29GNMtOHrZnLNXUX4P1v1Jm24Ra+99eYmDuEYSdCK1LwLKDPJ0 g==;
X-CSE-ConnectionGUID: +4WBN05SSYOwZpAjaxAYlA==
X-CSE-MsgGUID: nRSPs/YqRgWX55RWM1ebSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="88128947"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="88128947"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 02:30:26 -0800
X-CSE-ConnectionGUID: 2KIIYLXgTnO3OAIN6h0/kw==
X-CSE-MsgGUID: H6wIoaj/Rs2vN/Qk3Ug+wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="190947256"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.124.246.21])
 ([10.124.246.21])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 02:30:24 -0800
Message-ID: <da9af809-9248-4cc4-ae4a-e64a03e43c13@linux.intel.com>
Date: Tue, 18 Nov 2025 18:30:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: baolu.lu@linux.intel.com,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, matthew.auld@intel.com,
 iommu@lists.linux.dev
Subject: Re: REGRESSION on linux-next (next-20251106)
To: Jason Gunthorpe <jgg@nvidia.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <20251118012944.GA60885@nvidia.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/18/2025 9:29 AM, Jason Gunthorpe wrote:
> On Mon, Nov 10, 2025 at 12:06:30PM +0530, Borah, Chaitanya Kumar wrote:
>> Hello Jason,
>>
>> Hope you are doing well. I am Chaitanya from the linux graphics team in
>> Intel.
>>
>> This mail is regarding a regression we are seeing in our CI runs[1] on
>> linux-next repository.
>>
>> Since the version next-20251106 [2], we are seeing our tests timing out
>> presumably caused by a GPU Hang.
>>
>> `````````````````````````````````````````````````````````````````````````````````
>> <6> [490.872058] i915 0000:00:02.0: [drm] Got hung context on vcs0 with
>> active request 939:2 [0x1004] not yet started
>> <6> [490.875244] i915 0000:00:02.0: [drm] GPU HANG: ecode 12:4:baffffff
>> <7> [496.424189] i915 0000:00:02.0: [drm:intel_guc_context_reset_process_msg
>> [i915]] GT1: GUC: Got context reset notification: 0x1004 on vcs0, exiting =
>> no, banned = no
>> <6> [496.921551] i915 0000:00:02.0: [drm] Got hung context on vcs0 with
>> active request 939:2 [0x1004] not yet started
>> <6> [496.924799] i915 0000:00:02.0: [drm] GPU HANG: ecode 12:4:baffffff
>> <4> [499.946641] [IGT] Per-test timeout exceeded. Killing the current test
>> with SIGQUIT.
>> `````````````````````````````````````````````````````````````````````````````````
>> Details log can be found in [3].
> Chaitanya, can you check these two debugging patches:
> 
> https://github.com/jgunthorpe/linux/commits/for-borah
> 
> 10635ad3ff26a0 DEBUGGING: Force flush the whole cpu cache for the page table on every map operation
> 2789602b882499 DEBUGGING: Force flush the whole iotlb on every map operation
> 
> Please run a test with each of them applied*individually* and report
> back what changes in the test. The "cpu cache" one may oops or
> something, we are just looking to see if it gets past the error Kevin
> pointed to:
> 
> <7>[   67.231149] [IGT] gem_exec_gttfill: starting subtest basic
> [..]
> <5>[   68.824598] i915 0000:00:02.0: Using 46-bit DMA addresses
> <3>[   68.825482] i915 0000:00:02.0: [drm]*ERROR* GT0: GUC: CT: Failed to process request 6000 (-EOPNOTSUPP)
> 
> I could not test these patches so they may not work at all..

I applied and tested both debugging patches separately, but the failures
persist. And I also tried to flush all TLB caches by adding
flush_tlb_all() in the iommu mapping path. It doesn't help either.

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index 2d2f64ce2bc6..59a00235032b 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -3484,6 +3484,8 @@ static int intel_iommu_iotlb_sync_map(struct 
iommu_domain *domain,
  {
         struct dmar_domain *dmar_domain = to_dmar_domain(domain);

+       flush_tlb_all();
+
         if (dmar_domain->iotlb_sync_map)
                 cache_tag_flush_range_np(dmar_domain, iova, iova + size 
- 1);

Thanks,
baolu
