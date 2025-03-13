Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D30B7A5EF92
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 10:30:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D78B610E816;
	Thu, 13 Mar 2025 09:30:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a1n8oktb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4727A10E816;
 Thu, 13 Mar 2025 09:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741858212; x=1773394212;
 h=message-id:date:mime-version:cc:subject:to:references:
 from:in-reply-to:content-transfer-encoding;
 bh=9A9aWfK66AcpdLfD2H0fwAZBqHh3y2XzHBKKmsqHBwA=;
 b=a1n8oktbMV69jTulkYfL0gI9tJFOXJily0AGTg0eidyPM9W+LcITOdmn
 cV82Slzkeaf4KyeNRa26v63Q719j5ZTAJ5S8DflEC2T9zUz/Oh+OnGgSs
 c8lCMb2iciokkLoJIsMeL8+FAGYveLo8Z2bo2j+jk68sJRl1oFyUe3XDu
 UQGhI7rd8hmBHbRFBdCUY6uQLC+f6Cn5ojlam8pITbfCfbc5lxp68kvXP
 OrTjNx0PhjHVV5EaOzxX/jGK3RmaiVCRV1RdZ9JSHIqOPEO6DcBh4u5Y8
 E3qr6oVNfXQIpahum5mNC8eOqMixkigLjqK4It3jy7nC2amxklfI4758Z g==;
X-CSE-ConnectionGUID: WYrNM4WzSW+N2yLAbdZgsA==
X-CSE-MsgGUID: eUUpC37RSdqEXOS6ctUQXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="43165185"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="43165185"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 02:30:12 -0700
X-CSE-ConnectionGUID: ThHyzZFJSJ21MNu6FnbVTw==
X-CSE-MsgGUID: bFY35IFOQBq8cUZQfmaHZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="151851976"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.124.240.153])
 ([10.124.240.153])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 02:30:10 -0700
Message-ID: <9902ee4c-6223-4550-b25c-984629618f58@linux.intel.com>
Date: Thu, 13 Mar 2025 17:30:07 +0800
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

Sure. I will look into this issue.

Thanks,
baolu
