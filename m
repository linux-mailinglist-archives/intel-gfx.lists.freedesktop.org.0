Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 748A9274878
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 20:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 839B56E084;
	Tue, 22 Sep 2020 18:45:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from ale.deltatee.com (ale.deltatee.com [204.191.154.188])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B88E6E084
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Sep 2020 18:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=deltatee.com; s=20200525; h=Subject:Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X7NUEq0ufXOsugZoq6CuHmrSiYQPXwP5Ooq9psOTR50=; b=hgbszfn8Q8M+LUV4fO4UmpVrpo
 W9L10nlBf4AUaJi6wIOyIwMb1CFqMtZY/o9YPR7nGiqdkOmv1tNNRIf5ZhnERq1qVDJh1Nc9vL0nD
 dJqxD7xLNbLfgkEh7EKiYDePwAfQG01lcQHmMnJJ5jiTFq0cpwqA1E2mIuGRHrpQb4tjqdv1ALsZs
 vmVwl83kpB1glfzXJMV2KiZK6XxfrMW9wMHWuwarvQfq7GqHyqSNYYu9JgOnHZUQVZuUBmsOf9Ie/
 p4RgmnFrS92unexkZnUWkGuAIAFVc5EX/1pxqIwTMeQ9QJAqoKDGK/mQj+ZDdpwWf1oUhOiALDh9a
 CILlE2Bg==;
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.92)
 (envelope-from <logang@deltatee.com>)
 id 1kKnIa-0003mC-Kv; Tue, 22 Sep 2020 12:45:57 -0600
To: Robin Murphy <robin.murphy@arm.com>, Lu Baolu <baolu.lu@linux.intel.com>, 
 Joerg Roedel <joro@8bytes.org>, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>, Christoph Hellwig <hch@infradead.org>
References: <20200912032200.11489-1-baolu.lu@linux.intel.com>
 <776771a2-247a-d1be-d882-bee02d919ae0@deltatee.com>
 <d75e5c9c-1834-7f77-aa51-666186f3db5c@arm.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <3f50d09c-c9a1-77aa-0228-985c5d1f5b2b@deltatee.com>
Date: Tue, 22 Sep 2020 12:45:52 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <d75e5c9c-1834-7f77-aa51-666186f3db5c@arm.com>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, ashok.raj@intel.com,
 Intel-gfx@lists.freedesktop.org, hch@infradead.org, dwmw2@infradead.org,
 murphyt7@tcd.ie, joro@8bytes.org, baolu.lu@linux.intel.com,
 robin.murphy@arm.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,NICE_REPLY_A autolearn=ham
 autolearn_force=no version=3.4.2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
Subject: Re: [Intel-gfx] [PATCH v3 0/6] Convert the intel iommu driver to
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2020-09-22 3:51 a.m., Robin Murphy wrote:
> On 2020-09-18 21:47, Logan Gunthorpe wrote:
>> Hi Lu,
>>
>> On 2020-09-11 9:21 p.m., Lu Baolu wrote:
>>> Tom Murphy has almost done all the work. His latest patch series was
>>> posted here.
>>>
>>> https://lore.kernel.org/linux-iommu/20200903201839.7327-1-murphyt7@tcd.ie/
>>>
>>> Thanks a lot!
>>>
>>> This series is a follow-up with below changes:
>>>
>>> 1. Add a quirk for the i915 driver issue described in Tom's cover
>>> letter.
>>> 2. Fix several bugs in patch "iommu: Allow the dma-iommu api to use
>>> bounce buffers" to make the bounce buffer work for untrusted devices.
>>> 3. Several cleanups in iommu/vt-d driver after the conversion.
>>>
>>
>> I'm trying to test this on an old Sandy Bridge, but found that I get
>> spammed with warnings on boot. I've put a sample of a few of them below.
>> They all seem to be related to ioat.
>>
>> I had the same issue with Tom's v2 but never saw this on his v1.
> 
> I think this might have more to do with ioat being totally broken - 
> AFAICS it appears to allocate descriptors with a size of 2MB, but free 
> them with a size of 512KB. Try throwing CONFIG_DMA_API_DEBUG at it to 
> confirm.

Ah, yes, nice catch. Looks like it was broken recently by the following
commit, but nobody noticed and the dma-iommu patch set added a warning
which caught it.

a02254f8a676 ("dmaengine: ioat: Decreasing allocation chunk size 2M->512K")

Reverting that fixes the issue. I'll try to send patch or two for this.

Logan

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
