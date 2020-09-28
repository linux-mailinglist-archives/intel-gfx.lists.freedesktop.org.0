Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4565327AB0C
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Sep 2020 11:44:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5D0C89F5B;
	Mon, 28 Sep 2020 09:44:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A1E89F5B
 for <Intel-gfx@lists.freedesktop.org>; Mon, 28 Sep 2020 09:44:48 +0000 (UTC)
IronPort-SDR: Df2uSsfST/E/jzgX72JYus3hbkWiwfPMUeYyjqVkptiyTf8k0BT1OZ7FUjFYq0xaUVIpMJDJsI
 nxLrISU3yRlw==
X-IronPort-AV: E=McAfee;i="6000,8403,9757"; a="180121481"
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="180121481"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 02:44:46 -0700
IronPort-SDR: 2tjmcGEZ/+K7vGu4mwps+Jnj56puQNgH9yUuCen7PBQdlOZ1+OafMXAQ8apkeDOTbbN8SnOE58
 9OPrz021udJw==
X-IronPort-AV: E=Sophos;i="5.77,313,1596524400"; d="scan'208";a="456757836"
Received: from agal3-mobl1.ger.corp.intel.com (HELO [10.214.224.94])
 ([10.214.224.94])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2020 02:44:43 -0700
To: Lu Baolu <baolu.lu@linux.intel.com>, Joerg Roedel <joro@8bytes.org>,
 Tom Murphy <murphyt7@tcd.ie>, David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
References: <20200927063437.13988-1-baolu.lu@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e999e371-6d36-ffea-542f-a5f4b230b0ed@linux.intel.com>
Date: Mon, 28 Sep 2020 10:44:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200927063437.13988-1-baolu.lu@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 0/7] Convert the intel iommu driver to
 the dma-iommu api
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
Cc: Intel-gfx@lists.freedesktop.org, Ashok Raj <ashok.raj@intel.com>,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/09/2020 07:34, Lu Baolu wrote:
> Hi,
> 
> The previous post of this series could be found here.
> 
> https://lore.kernel.org/linux-iommu/20200912032200.11489-1-baolu.lu@linux.intel.com/
> 
> This version introduce a new patch [4/7] to fix an issue reported here.
> 
> https://lore.kernel.org/linux-iommu/51a1baec-48d1-c0ac-181b-1fba92aa428d@linux.intel.com/
> 
> There aren't any other changes.
> 
> Please help to test and review.
> 
> Best regards,
> baolu
> 
> Lu Baolu (3):
>    iommu: Add quirk for Intel graphic devices in map_sg

Since I do have patches to fix i915 to handle this, do we want to 
co-ordinate the two and avoid having to add this quirk and then later 
remove it? Or you want to go the staged approach?

Regards,

Tvrtko

>    iommu/vt-d: Update domain geometry in iommu_ops.at(de)tach_dev
>    iommu/vt-d: Cleanup after converting to dma-iommu ops
> 
> Tom Murphy (4):
>    iommu: Handle freelists when using deferred flushing in iommu drivers
>    iommu: Add iommu_dma_free_cpu_cached_iovas()
>    iommu: Allow the dma-iommu api to use bounce buffers
>    iommu/vt-d: Convert intel iommu driver to the iommu ops
> 
>   .../admin-guide/kernel-parameters.txt         |   5 -
>   drivers/iommu/dma-iommu.c                     | 228 ++++-
>   drivers/iommu/intel/Kconfig                   |   1 +
>   drivers/iommu/intel/iommu.c                   | 901 +++---------------
>   include/linux/dma-iommu.h                     |   8 +
>   include/linux/iommu.h                         |   1 +
>   6 files changed, 336 insertions(+), 808 deletions(-)
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
