Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76261262F46
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 15:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF24C6E14D;
	Wed,  9 Sep 2020 13:44:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E9096E14D
 for <Intel-gfx@lists.freedesktop.org>; Wed,  9 Sep 2020 13:44:05 +0000 (UTC)
IronPort-SDR: iZZayal1OrZMOBCTs/Nhyq+YbarFaw/o4zSCP44PcPTA690rPMCZ5R1rGZNVuAK5YiismJEOYT
 Gf3y3igEivSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="219885929"
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="219885929"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 06:44:04 -0700
IronPort-SDR: 8kuEQp118vD4bOboDVNYnpElr9z682lyyZpV1Be2jWBXwvKu/ME3IO3AmbouqqE5jCwmG3P28Q
 vF2aFZzPUt3g==
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="336773268"
Received: from vdc-station-04.ger.corp.intel.com (HELO [10.251.165.91])
 ([10.251.165.91])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 06:44:01 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200909124457.296845-1-tvrtko.ursulin@linux.intel.com>
 <159965658319.2410.1208794152045447402@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9b473e8f-b26c-21c9-52c6-5c7e676658b0@linux.intel.com>
Date: Wed, 9 Sep 2020 14:43:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159965658319.2410.1208794152045447402@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DMA mapped scatterlist walks
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
Cc: Tom Murphy <murphyt7@tcd.ie>, Matthew Auld <matthew.auld@intel.com>,
 Logan Gunthorpe <logang@deltatee.com>, Lu Baolu <baolu.lu@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/09/2020 14:03, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-09-09 13:44:57)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> When walking DMA mapped scatterlists sg_dma_len has to be used since it
>> can be different (coalesced) from the backing store entry.
>>
>> This also means we have to end the walk when encountering a zero length
>> DMA entry and cannot rely on the normal sg list end marker.
>>
>> Both issues were there in theory for some time but were hidden by the fact
>> Intel IOMMU driver was never coalescing entries. As there are ongoing
>> efforts to change this we need to start handling it.
> 
> Does this change anything if we were already feeding in coalesced
> entries? I doubt we made all sg generators compact the lists though.

I don't think so. My takeaway from this was a realization that page and 
dma coalescing can be completely different (more so once the iommu 
patches get in). I did not think of any other problems as long as the 
dma remapping fits into the number of available sg table entries we 
allocated. It is just a bit weird, this duality of sg_table "views".

> The change looks reasonable, it seems you have kept the dma and page
> iterators distinct, which was the only worry that occurred to me.

It surprised me we have two iterators, well one and a half. The sgt_dma 
one being the half of an iterator. :)

Regards,

Tvrtko

P.S. Well as I was writing this reply full test results came in and 
something is still broken, so scratch that..
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
