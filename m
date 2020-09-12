Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC98267764
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Sep 2020 05:14:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBE06E0DB;
	Sat, 12 Sep 2020 03:14:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBEA86E0DB
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Sep 2020 03:13:59 +0000 (UTC)
IronPort-SDR: CAt1iiYN2IJqpxRllluMVrtEITo9yFszsVjG/5tlw0v/UK02I7yYpZkg4tU2U0Pgp2emrILFg1
 yPeY4BVoVPVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="138397364"
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="138397364"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 20:13:53 -0700
IronPort-SDR: loX3EgoYAZYme1znZJfeaI/r7pIPYNsgYHy4/zzxkRoOl4GgCMscW7J0njqdIzhqNsEmDKhHWJ
 0XHzTAidexJw==
X-IronPort-AV: E=Sophos;i="5.76,418,1592895600"; d="scan'208";a="481555306"
Received: from blu2-mobl3.ccr.corp.intel.com (HELO [10.254.212.203])
 ([10.254.212.203])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 20:13:49 -0700
To: Christoph Hellwig <hch@infradead.org>
References: <20200903201839.7327-1-murphyt7@tcd.ie>
 <20200903201839.7327-6-murphyt7@tcd.ie>
 <20200907070035.GA25114@infradead.org>
 <CALQxJute8_y=JsW4UV1awSccOjxT_1OyPdymq=R_PurVQzENeQ@mail.gmail.com>
 <20200908053619.GA15418@infradead.org> <20200908055510.GA19078@infradead.org>
 <9655fdc9-6ea0-e4c1-e104-a9a8981ecb1e@linux.intel.com>
 <20200908062326.GB20774@infradead.org>
 <a10026ea-6de5-b7b1-80af-8000dfd4601b@linux.intel.com>
 <20200909070620.GB28245@infradead.org>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <8c8f3df1-7fab-d019-7e4a-4ce5f5b2b273@linux.intel.com>
Date: Sat, 12 Sep 2020 11:13:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200909070620.GB28245@infradead.org>
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
 iommu@lists.linux-foundation.org, Tom Murphy <murphyt7@tcd.ie>,
 David Woodhouse <dwmw2@infradead.org>, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020/9/9 15:06, Christoph Hellwig wrote:
> On Wed, Sep 09, 2020 at 09:43:09AM +0800, Lu Baolu wrote:
>> +       /*
>> +        * The Intel graphic device driver is used to assume that the
>> returned
>> +        * sg list is not combound. This blocks the efforts of converting
>> the
> 
> This adds pointless overly long lines.
> 
>> +        * Intel IOMMU driver to dma-iommu api's. Add this quirk to make the
>> +        * device driver work and should be removed once it's fixed in i915
>> +        * driver.
>> +        */
>> +       if (dev_is_pci(dev) &&
>> +           to_pci_dev(dev)->vendor == PCI_VENDOR_ID_INTEL &&
>> +           (to_pci_dev(dev)->class >> 16) == PCI_BASE_CLASS_DISPLAY) {
>> +               for_each_sg(sg, s, nents, i) {
>> +                       unsigned int s_iova_off = sg_dma_address(s);
>> +                       unsigned int s_length = sg_dma_len(s);
>> +                       unsigned int s_iova_len = s->length;
>> +
>> +                       s->offset += s_iova_off;
>> +                       s->length = s_length;
>> +                       sg_dma_address(s) = dma_addr + s_iova_off;
>> +                       sg_dma_len(s) = s_length;
>> +                       dma_addr += s_iova_len;
>> +               }
>> +
>> +               return nents;
>> +       }
> 
> This wants an IS_ENABLED() check.  And probably a pr_once reminding
> of the workaround.
> 

Will fix in the next version.

Best regards,
baolu
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
