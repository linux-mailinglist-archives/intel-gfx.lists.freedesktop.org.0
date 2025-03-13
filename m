Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 147D5A5F7E4
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:23:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B343C10E8A8;
	Thu, 13 Mar 2025 14:23:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gaBbyas3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4E8D10E8A8;
 Thu, 13 Mar 2025 14:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741875807; x=1773411807;
 h=message-id:date:mime-version:cc:subject:to:references:
 from:in-reply-to:content-transfer-encoding;
 bh=A5PPOBJOpPvDRe5BePeyQ5B7xJX/FSbcMpShYRQKn0E=;
 b=gaBbyas39lAJral+SMP/yBSMMmf6o1X8hXKOA9q00dWLWGYBRMfgA0e6
 STyG5idanAPG19Bf+8MHVxCk4JJQ5eETEmJJ0nQ/SNJ3hFbcOjiE93JCI
 NHjjBqVgJb20g17VMtFfFbrOgZZOguXyuYoKpqISk6Y1KPDC4uRPZC3gB
 AK+vCDIr06CN1m9OiM3DvAWioiQvf6HqplIIvevKeeQOaUD3zpaII8Mh5
 /02dOFvrVw8y3nNdYcDK8eF2dnAApbPbHBoe560DROCgN1cGa2/RY64A4
 Cbi167i6FB7zWtIB5eKjwckPYFdBFeG+rtsm7/pzoBN5fpK2X8CYJOaiC A==;
X-CSE-ConnectionGUID: vclnm76+Sf6p1unynteq6A==
X-CSE-MsgGUID: xAGi00nKQiy7p9f3cUJ4tw==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="46781067"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="46781067"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:23:27 -0700
X-CSE-ConnectionGUID: ADKTsvOPQESkpGsquwjb8Q==
X-CSE-MsgGUID: 0L1ggzzZSSeDhvcvHIgIeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="144155547"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.124.240.153])
 ([10.124.240.153])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:23:26 -0700
Message-ID: <4951eb3c-aa2b-46cf-87bd-37b09447748d@linux.intel.com>
Date: Thu, 13 Mar 2025 22:23:23 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: baolu.lu@linux.intel.com,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: Re: Regression on drm-tip
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
References: <SJ1PR11MB612953431F94F18C954C4A9CB9D32@SJ1PR11MB6129.namprd11.prod.outlook.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <SJ1PR11MB612953431F94F18C954C4A9CB9D32@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On 2025/3/13 16:51, Borah, Chaitanya Kumar wrote:
> Hello Lu,
> 
> Hope you are doing well. I am Chaitanya from the linux graphics team in Intel.
> 
> This mail is regarding a regression we are seeing in our CI runs[1] on drm-tip repository.
> 
> `````````````````````````````````````````````````````````````````````````````````
> <4>[    2.856622] WARNING: possible circular locking dependency detected
> <4>[    2.856631] 6.14.0-rc5-CI_DRM_16217-gc55ef90b69d3+ #1 Tainted: G          I
> <4>[    2.856642] ------------------------------------------------------
> <4>[    2.856650] swapper/0/1 is trying to acquire lock:
> <4>[    2.856657] ffffffff8360ecc8 (iommu_probe_device_lock){+.+.}-{3:3}, at: iommu_probe_device+0x1d/0x70
> <4>[    2.856679]
>                    but task is already holding lock:
> <4>[    2.856686] ffff888102ab6fa8 (&device->physical_node_lock){+.+.}-{3:3}, at: intel_iommu_init+0xea1/0x1220
> `````````````````````````````````````````````````````````````````````````````````
> Details log can be found in [2].
> 
> After bisecting the tree, the following patch [3] seems to be the first "bad" commit
> 
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> commit b150654f74bf0df8e6a7936d5ec51400d9ec06d8
> Author: Lu Baolumailto:baolu.lu@linux.intel.com
> Date:   Fri Feb 28 18:27:26 2025 +0800
> 
>      iommu/vt-d: Fix suspicious RCU usage
> 
> `````````````````````````````````````````````````````````````````````````````````````````````````````````
> 
> We also verified that if we revert the patch the issue is not seen.
> 
> Could you please check why the patch causes this regression and provide a fix if necessary?

Can you please take a quick test to check if the following fix works?

diff --git a/drivers/iommu/intel/dmar.c b/drivers/iommu/intel/dmar.c
index e540092d664d..06debeaec643 100644
--- a/drivers/iommu/intel/dmar.c
+++ b/drivers/iommu/intel/dmar.c
@@ -2051,8 +2051,13 @@ int enable_drhd_fault_handling(unsigned int cpu)
                 if (iommu->irq || iommu->node != cpu_to_node(cpu))
                         continue;

+               /*
+                * Call dmar_alloc_hwirq() with dmar_global_lock held,
+                * could cause possible lock race condition.
+                */
+               up_read(&dmar_global_lock);
                 ret = dmar_set_interrupt(iommu);
-
+               down_read(&dmar_global_lock);
                 if (ret) {
                         pr_err("DRHD %Lx: failed to enable fault, 
interrupt, ret %d\n",
                                (unsigned long long)drhd->reg_base_addr, 
ret);

Thanks,
baolu
