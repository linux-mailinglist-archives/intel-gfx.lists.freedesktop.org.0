Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1548A930A6
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Apr 2025 05:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C1DE10E3FF;
	Fri, 18 Apr 2025 03:12:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bHCOjLMu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1176210E3FF
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Apr 2025 03:12:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744945933; x=1776481933;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=neMxJz42emzk2yZKrlYvMBCmYarFeQz7z09Ck6l4g/U=;
 b=bHCOjLMuberguXvXsu+ZGNxyX/F2xTkAp3Luimliau6SNa102QBo5Yx3
 fer7ghJUXNF/HHLcgcmD0mIWSMshCJ8z/vpeUv1vTFaJe0G5pVeVhZ1wN
 RoDtNYY8QTgv1eP1hZJh5AwOwTcH0ATSnHJnouIKpHxvfsm4sbFHsKAlu
 azMSRZrDSdX0QBhpH0cX90yz2C6lLRQO7oMDJh6nOb0pK925G2TFKNaUu
 6VgYtlAF6yHMPmLqPP//QFLl/7iVZQpEuhTQpcAFkampM0KrQyD2ywUaF
 u12zniZLsR1lDfgq9hDVS+pl30iwLgES3+5gyTViZT0NEObuXNV/Lx6Kt Q==;
X-CSE-ConnectionGUID: 1XKA5gzaQhWTe3GnPXub2w==
X-CSE-MsgGUID: Ms7CPS1/Sua31drEO4slpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11406"; a="50374231"
X-IronPort-AV: E=Sophos;i="6.15,221,1739865600"; d="scan'208";a="50374231"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 20:12:12 -0700
X-CSE-ConnectionGUID: 3gGLRstDSyOzB+0ttk0ZDA==
X-CSE-MsgGUID: M+gy06vpRx2/iY7TzDbq/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,221,1739865600"; d="scan'208";a="131312924"
Received: from allen-sbox.sh.intel.com (HELO [10.239.159.30]) ([10.239.159.30])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 20:12:10 -0700
Message-ID: <8bf10298-1a69-4c93-8851-f816d90f47fc@linux.intel.com>
Date: Fri, 18 Apr 2025 11:08:05 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] iommu: intel: apply quirk_iommu_igfx for 8086:0044
 (QM57/QS57)
To: Mingcong Bai <jeffbai@aosc.io>
Cc: Kexy Biscuit <kexybiscuit@aosc.io>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org, Wenhao Sun <weiguangtwk@outlook.com>,
 David Woodhouse <dwmw2@infradead.org>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Kevin Tian <kevin.tian@intel.com>, iommu@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250415133330.12528-1-jeffbai@aosc.io>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <20250415133330.12528-1-jeffbai@aosc.io>
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

On 4/15/25 21:33, Mingcong Bai wrote:
> On the Lenovo ThinkPad X201, when Intel VT-d is enabled in the BIOS, the
> kernel boots with errors related to DMAR, the graphical interface appeared
> quite choppy, and the system resets erratically within a minute after it
> booted:
> 
> DMAR: DRHD: handling fault status reg 3
> DMAR: [DMA Write NO_PASID] Request device [00:02.0] fault addr 0xb97ff000
> [fault reason 0x05] PTE Write access is not set
> 
> Upon comparing boot logs with VT-d on/off, I found that the Intel Calpella
> quirk (`quirk_calpella_no_shadow_gtt()') correctly applied the igfx IOMMU
> disable/quirk correctly:
> 
> pci 0000:00:00.0: DMAR: BIOS has allocated no shadow GTT; disabling IOMMU
> for graphics
> 
> Whereas with VT-d on, it went into the "else" branch, which then
> triggered the DMAR handling fault above:
> 
> ... else if (!disable_igfx_iommu) {
> 	/* we have to ensure the gfx device is idle before we flush */
> 	pci_info(dev, "Disabling batched IOTLB flush on Ironlake\n");
> 	iommu_set_dma_strict();
> }
> 
> Now, this is not exactly scientific, but moving 0x0044 to quirk_iommu_igfx
> seems to have fixed the aforementioned issue. Running a few `git blame'
> runs on the function, I have found that the quirk was originally
> introduced as a fix specific to ThinkPad X201:
> 
> commit 9eecabcb9a92 ("intel-iommu: Abort IOMMU setup for igfx if BIOS gave
> no shadow GTT space")
> 
> Which was later revised twice to the "else" branch we saw above:
> 
> - 2011: commit 6fbcfb3e467a ("intel-iommu: Workaround IOTLB hang on
>    Ironlake GPU")
> - 2024: commit ba00196ca41c ("iommu/vt-d: Decouple igfx_off from graphic
>    identity mapping")
> 
> I'm uncertain whether further testings on this particular laptops were
> done in 2011 and (honestly I'm not sure) 2024, but I would be happy to do
> some distro-specific testing if that's what would be required to verify
> this patch.
> 
> P.S., I also see IDs 0x0040, 0x0062, and 0x006a listed under the same
> `quirk_calpella_no_shadow_gtt()' quirk, but I'm not sure how similar these
> chipsets are (if they share the same issue with VT-d or even, indeed, if
> this issue is specific to a bug in the Lenovo BIOS). With regards to
> 0x0062, it seems to be a Centrino wireless card, but not a chipset?
> 
> I have also listed a couple (distro and kernel) bug reports below as
> references (some of them are from 7-8 years ago!), as they seem to be
> similar issue found on different Westmere/Ironlake, Haswell, and Broadwell
> hardware setups.
> 
> Cc:stable@vger.kernel.org
> Fixes: 6fbcfb3e467a ("intel-iommu: Workaround IOTLB hang on Ironlake GPU")
> Fixes: ba00196ca41c ("iommu/vt-d: Decouple igfx_off from graphic identity mapping")
> Link:https://bugzilla.kernel.org/show_bug.cgi?id=197029
> Link:https://groups.google.com/g/qubes-users/c/4NP4goUds2c?pli=1
> Link:https://bugs.archlinux.org/task/65362
> Link:https://bbs.archlinux.org/viewtopic.php?id=230323
> Reported-by: Wenhao Sun<weiguangtwk@outlook.com>
> Signed-off-by: Mingcong Bai<jeffbai@aosc.io>
> ---
>   drivers/iommu/intel/iommu.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)

Queued for v6.15-rc. Thank you!
