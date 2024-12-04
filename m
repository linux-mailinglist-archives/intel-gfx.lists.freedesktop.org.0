Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C66B39E3E99
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 16:45:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C34310E4D2;
	Wed,  4 Dec 2024 15:45:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TiWB00Wc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2A910E4C5;
 Wed,  4 Dec 2024 15:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733327126; x=1764863126;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=SBnDdhFo8+JKRkEXTcojSJg3tRVfi7KmhnvLJVk1cYA=;
 b=TiWB00WcyUYl6lqY6IZpmYRGwgYbB2smMZbRr+n4SrktxnYrCb/ITVo4
 0eikJLQIwaGEqidq47dpzQS/A4xJsPShNHL6nujRQ3CfeiSAlnhbVzTmI
 P4wTyNGVsGUZNQhhscstewfuv1HTApcpzAHsnYAbdZUlKkNdTPhwmzqbM
 rVWYkrKHVhJwMQhFHQDOZXvS0956qo5zKiEm4moFDGdyXxWKia92Mz7Ul
 Gx97tjoRMTVyU0MsIm/uMveCCAPLCZaClHr8cGQi/5A7X4Qj+cYAk+2nH
 41N38DBPAFrXHlDxp09bLVsGHVGYL+dID5duZ0ygbmOWXQ/NHGjCht+Kv g==;
X-CSE-ConnectionGUID: F8v7c0/sQZ+i0b/odrDe+A==
X-CSE-MsgGUID: cN9gKijYRaq1XJKkxXdWlg==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="51017072"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="51017072"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:45:26 -0800
X-CSE-ConnectionGUID: ErCsJNquSUaQGdMEzoOpjA==
X-CSE-MsgGUID: 7r76R2EiQyGx+BSg5NmATg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="98227067"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:45:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Luca Coelho <luca@coelho.fi>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [core-for-CI] nvme-pci: don't use dma_alloc_noncontiguous with
 0 merge boundary
In-Reply-To: <af860d5b9de4a1ded8fc655a3fd44a83ebb40eb6.camel@coelho.fi>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241204060601.1813514-1-chaitanya.kumar.borah@intel.com>
 <af860d5b9de4a1ded8fc655a3fd44a83ebb40eb6.camel@coelho.fi>
Date: Wed, 04 Dec 2024 17:45:21 +0200
Message-ID: <874j3j310u.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 04 Dec 2024, Luca Coelho <luca@coelho.fi> wrote:
> Hi Chaitanya,
>
> On Wed, 2024-12-04 at 11:36 +0530, Chaitanya Kumar Borah wrote:
>> From: Christoph Hellwig <hch@lst.de>
>> 
>> Only call into nvme_alloc_host_mem_single which uses
>> dma_alloc_noncontiguous when there is non-null dma merge boundary.
>> Without this we'll call into dma_alloc_noncontiguous for device using
>> dma-direct, which can work fine as long as the preferred size is below the
>> MAX_ORDER of the page allocator, but blows up with a warning if it is
>> too large.
>> 
>> Fixes: 63a5c7a4b4c4 ("nvme-pci: use dma_alloc_noncontigous if possible")
>> Reported-by: Leon Romanovsky <leon@kernel.org>
>> Reported-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> Signed-off-by: Christoph Hellwig <hch@lst.de>
>> References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13227
>> Link: https://lore.kernel.org/linux-nvme/39a67024-2926-4a20-8feb-77dd64ab7c39@kernel.dk/T/#mfef47937b20e33aa3cc63a3af930f8a9f9baf8c2
>> ---
>>  drivers/nvme/host/pci.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
>> index 4c644bb7f069..778f124c2e21 100644
>> --- a/drivers/nvme/host/pci.c
>> +++ b/drivers/nvme/host/pci.c
>> @@ -2172,6 +2172,7 @@ static int nvme_alloc_host_mem_multi(struct nvme_dev *dev, u64 preferred,
>>  
>>  static int nvme_alloc_host_mem(struct nvme_dev *dev, u64 min, u64 preferred)
>>  {
>> +	unsigned long dma_merge_moundary = dma_get_merge_boundary(dev->dev);
>>  	u64 min_chunk = min_t(u64, preferred, PAGE_SIZE * MAX_ORDER_NR_PAGES);
>>  	u64 hmminds = max_t(u32, dev->ctrl.hmminds * 4096, PAGE_SIZE * 2);
>>  	u64 chunk_size;
>> @@ -2180,7 +2181,7 @@ static int nvme_alloc_host_mem(struct nvme_dev *dev, u64 min, u64 preferred)
>>  	 * If there is an IOMMU that can merge pages, try a virtually
>>  	 * non-contiguous allocation for a single segment first.
>>  	 */
>> -	if (!(PAGE_SIZE & dma_get_merge_boundary(dev->dev))) {
>> +	if (dma_merge_moundary && (PAGE_SIZE & dma_merge_moundary) == 0) {
>>  		if (!nvme_alloc_host_mem_single(dev, preferred))
>>  			return 0;
>>  	}
>
> This looks sane and has already been reviewed in the linux-nvme mailing
> list.  So, FWIW, you have my:
>
> Acked-by: Luca Coelho <luciano.coelho@intel.com>

Pushed to core-for-CI.

BR,
Jani.

-- 
Jani Nikula, Intel
