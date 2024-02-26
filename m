Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDDCE8669ED
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 07:13:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CFB10E4E8;
	Mon, 26 Feb 2024 06:13:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kp9m4xuY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A40F10E4E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 06:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708928006; x=1740464006;
 h=message-id:date:mime-version:cc:subject:to:references:
 from:in-reply-to:content-transfer-encoding;
 bh=L85jrdnuvWMYNRaKJflVjhzs3F+SyK8Kz4ffE7SFr9w=;
 b=Kp9m4xuYdkrg0/IDNA30iempjSDeTWAN4LiyJan9OEYbcG8DzJrOXJRe
 owsQqNt/rW08GfKLHccGWfw6u7R6cwJiPJXAKeLPrR03TyK1xd7c/+VmI
 KTvsIHgXk9HVZB+IH5Gu30kyRhrLNAokuI4XsykY7+FQR6u7faLq10+rN
 BfCnGkoHE+iAcw/DMTfMZC16iFD1wAoPMbgwYYXexhW2fnugDWPlfo01k
 EjgHiq/pNBaBkVgh5tXfpn/Gr752SLLcmT/7592o6fizIpNOQIfgnmGjc
 mWSGEWLxzI3Ofifvaf6ywK+S5ZnHg34J2gCEkOpjyw9W+RKBRPT+/Qf+d g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="3738235"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="3738235"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2024 22:13:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; d="scan'208";a="11129742"
Received: from allen-box.sh.intel.com (HELO [10.239.159.127])
 ([10.239.159.127])
 by fmviesa005.fm.intel.com with ESMTP; 25 Feb 2024 22:13:22 -0800
Message-ID: <b2dac6a4-3916-4a67-b7d9-8f69e5b0eb78@linux.intel.com>
Date: Mon, 26 Feb 2024 14:07:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: baolu.lu@linux.intel.com, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, iommu@lists.linux.dev,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/1] iommu/vt-d: Remove INTEL_IOMMU_BROKEN_GFX_WA
Content-Language: en-US
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Kevin Tian <kevin.tian@intel.com>
References: <20240130060823.57990-1-baolu.lu@linux.intel.com>
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <20240130060823.57990-1-baolu.lu@linux.intel.com>
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

On 1/30/24 2:08 PM, Lu Baolu wrote:
> Commit 62edf5dc4a524 ("intel-iommu: Restore DMAR_BROKEN_GFX_WA option for
> broken graphics drivers") was introduced 24 years ago as a temporary
> workaround for graphics drivers that used physical addresses for DMA and
> avoided DMA APIs. This workaround was disabled by default.
> 
> As 24 years have passed, it is expected that graphics driver developers
> have migrated their drivers to use kernel DMA APIs. Therefore, this
> workaround is no longer required and could been removed.
> 
> The Intel iommu driver also provides a "igfx_off" option to turn off
> the DAM translation for the graphic dedicated IOMMU. Hence, there is
> really no good reason to keep this config option.
> 
> Suggested-by: Kevin Tian<kevin.tian@intel.com>
> Signed-off-by: Lu Baolu<baolu.lu@linux.intel.com>
> Reviewed-by: Kevin Tian<kevin.tian@intel.com>
> ---
>   drivers/iommu/intel/iommu.c |  4 ----
>   drivers/iommu/intel/Kconfig | 11 -----------
>   2 files changed, 15 deletions(-)

I have queued this patch for v6.9.

Best regards,
baolu
