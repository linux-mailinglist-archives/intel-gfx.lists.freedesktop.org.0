Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAEEC6DB8C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 10:29:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC4B10E5C1;
	Wed, 19 Nov 2025 09:29:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PID+rCnA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BE1F10E5C1;
 Wed, 19 Nov 2025 09:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763544568; x=1795080568;
 h=message-id:date:mime-version:cc:subject:to:references:
 from:in-reply-to:content-transfer-encoding;
 bh=HYhU1UvsaMo23P6j6sR6QJircnjXsWgiOTeLBE3hddE=;
 b=PID+rCnA12+TSn2xGYIIe1ggullCp+YZ9yA2IBWHL4UT1OVuKHfbT/7N
 CtPo9VT7nVwif/p03DUd3k9HqIKmGzkx/xB5bWSqD3WG2XjnBBo+uHxIs
 IqL+HuKMAXWWL8+kEzCzNXkXY6yCoQrpB5Q/piYl1ctNXUds9WLxMN1of
 khh47BreiSfvhSPRMQ2jqRchwvsEcmH5zCiQVvcIlsBsgExfD6YxE55yX
 Ws/RIqRtqaYA1PTrFYpQdEZRcoqpLBBSPL59N2ZvCTlJAVBZ+snSYrCHN
 vV2nF75CSRy48hM0+Hjz6edtHzz7zytEL3v51PBH//j/FzKw7ajHLbfRJ Q==;
X-CSE-ConnectionGUID: JMLbm4+vS3m3mO+5Hzj8hw==
X-CSE-MsgGUID: UAJslOQmQpe3Em2wW+zogQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="65520106"
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="65520106"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 01:29:27 -0800
X-CSE-ConnectionGUID: PLsjaoNyQVqLBN2WDdjcJQ==
X-CSE-MsgGUID: Qoc75SQWQNueevvM4f8ctg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,315,1754982000"; d="scan'208";a="196136897"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.124.246.21])
 ([10.124.246.21])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 01:29:24 -0800
Message-ID: <8648735e-324d-4951-96a8-6276503fc8c9@linux.intel.com>
Date: Wed, 19 Nov 2025 17:29:21 +0800
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
 <a79fe616-52c7-4fa5-906c-382b5ff2226c@intel.com>
 <20251118161341.GC90703@nvidia.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <20251118161341.GC90703@nvidia.com>
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

On 11/19/2025 12:13 AM, Jason Gunthorpe wrote:
>> Also, the tests fail consistently and are not sporadic.
>  From these logs I see the below fragment, noting this:
> 
>   gem_exec_gttfil-1010    [004] .N...    50.126420: map: IOMMU: iova=0x00003fffffc00000 - 0x0000400000000000 paddr=0x00000001b9400000 size=4194304
>                                                                      ^^^^^^^^^^^^^^^^^^^
> Which is the high IOVA.. It has bit 45 set. I fed this mapping into
> the kunit and it does map successfully.
> 
> It is not high enough to get into anything special about sign extend,
> the driver sets:
> 
> 	if (cap_fl5lp_support(iommu->cap))
> 		cfg.common.hw_max_vasz_lg2 = 57;
> 	else
> 		cfg.common.hw_max_vasz_lg2 = 48;
> 
> Maybe this code is wrong? Baolu what did you get for this log:
> 
>   [   50.126166] i915 0000:00:02.0: Using 46-bit DMA addresses
> 
> In your force second stage test? Is it 46? Second stage uses different
> code to compute vasz_lg2 and is sensitive to magw:
> 
> 	if (mgaw >= 48 && (sagaw & BIT(3)))
> 		return min(57, mgaw);
> 	else if (mgaw >= 39 && (sagaw & BIT(2)))
> 		return min(48, mgaw);
> 	else if (mgaw >= 30 && (sagaw & BIT(1)))
> 		return min(39, mgaw);
> 
> Maybe this is the issue?

When first stage translation is used,

	cfg.common.hw_max_vasz_lg2 = 48

When second stage translation is used,

	cfg.common.hw_max_vasz_lg2 = 42

Interesting thing is if I hardcode

	cfg.common.hw_max_vasz_lg2 = 42

for the first stage translation, it works.

The only change that I have made to achieve this likes below:

diff --git a/drivers/iommu/intel/iommu.c b/drivers/iommu/intel/iommu.c
index 2d2f64ce2bc6..a505bba8dcc7 100644
--- a/drivers/iommu/intel/iommu.c
+++ b/drivers/iommu/intel/iommu.c
@@ -2813,10 +2813,13 @@ intel_iommu_domain_alloc_first_stage(struct 
device *dev,
         if (IS_ERR(dmar_domain))
                 return ERR_CAST(dmar_domain);

+#if 0
         if (cap_fl5lp_support(iommu->cap))
                 cfg.common.hw_max_vasz_lg2 = 57;
         else
                 cfg.common.hw_max_vasz_lg2 = 48;
+#endif
+       cfg.common.hw_max_vasz_lg2 = 42;
         cfg.common.hw_max_oasz_lg2 = 52;
         cfg.common.features = BIT(PT_FEAT_SIGN_EXTEND) |
                               BIT(PT_FEAT_FLUSH_RANGE);

Thanks,
baolu
