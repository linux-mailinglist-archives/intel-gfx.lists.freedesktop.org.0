Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 628C5260A9B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 08:10:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2C836E160;
	Tue,  8 Sep 2020 06:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBD796E160
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 06:10:40 +0000 (UTC)
IronPort-SDR: RmuVyh0jbAsmiTqQEgTLuJhFO5Uh6bB7mgYM6+pNId4o9DXsy1KdFWbR0DKkKlYOeeIVr2v3fm
 Xjiljtkp06pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="137595089"
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; d="scan'208";a="137595089"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 23:10:40 -0700
IronPort-SDR: WV1iGX4PezN4uM+SBYmsobq8wQfeNgX5mSccINOILxX+uqqhJ1fSilEU4XPtxc6P1gSWzvsQfz
 ZmYSq5PMiL1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; d="scan'208";a="407028868"
Received: from allen-box.sh.intel.com (HELO [10.239.159.139])
 ([10.239.159.139])
 by fmsmga001.fm.intel.com with ESMTP; 07 Sep 2020 23:10:38 -0700
To: Christoph Hellwig <hch@infradead.org>, Tom Murphy <murphyt7@tcd.ie>
References: <20200903201839.7327-1-murphyt7@tcd.ie>
 <20200903201839.7327-6-murphyt7@tcd.ie>
 <20200907070035.GA25114@infradead.org>
 <CALQxJute8_y=JsW4UV1awSccOjxT_1OyPdymq=R_PurVQzENeQ@mail.gmail.com>
 <20200908053619.GA15418@infradead.org> <20200908055510.GA19078@infradead.org>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <9655fdc9-6ea0-e4c1-e104-a9a8981ecb1e@linux.intel.com>
Date: Tue, 8 Sep 2020 14:04:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200908055510.GA19078@infradead.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH V2 5/5] DO NOT MERGE: iommu: disable list
 appending in dma-iommu
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
Cc: intel-gfx@lists.freedesktop.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Christoph,

On 9/8/20 1:55 PM, Christoph Hellwig wrote:
> On Tue, Sep 08, 2020 at 06:36:19AM +0100, Christoph Hellwig wrote:
>> On Mon, Sep 07, 2020 at 09:18:50PM +0100, Tom Murphy wrote:
>>> Yeah we talked about passing an attr to map_sg to disable merging at
>>> the following microconfernce:
>>> https://linuxplumbersconf.org/event/7/contributions/846/
>>> As far as I can remember everyone seemed happy with that solution. I
>>> won't be working on this though as I don't have any more time to
>>> dedicate to this. It seems Lu Baolu will take over this.
>>
>> I'm absolutely again passing a flag.  Tha just invites further
>> abuse.  We need a PCI ID based quirk or something else that can't
>> be as easily abused.
> 
> Also, I looked at i915 and there are just three dma_map_sg callers.
> The two dmabuf related ones are fixed by Marek in his series, leaving

Do you mind telling where can I find Marek's series?

Best regards,
baolu

> just the one in i915_gem_gtt_prepare_pages, which does indeed look
> very fishy.  But if that one is so hard to fix it can just be replaced
> by an open coded for_each_sg loop that contains manual dma_map_page
> calls.
> _______________________________________________
> iommu mailing list
> iommu@lists.linux-foundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/iommu
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
