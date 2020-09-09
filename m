Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CD82624A4
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 03:49:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AA266E8EB;
	Wed,  9 Sep 2020 01:49:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82D356E8EB
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Sep 2020 01:49:00 +0000 (UTC)
IronPort-SDR: zIQtdj9TomFYYEvn7SQLCZuOV4pF3FNCXqrT8pR2iJCC1mzW7cKwcJsbjOEIaa2VX+/mNhrPgr
 5f52//0prq0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="155655518"
X-IronPort-AV: E=Sophos;i="5.76,407,1592895600"; d="scan'208";a="155655518"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 18:48:59 -0700
IronPort-SDR: iu1TM291fKLzW13YkpPo+t+WTXhU6OwMMLl9NaOEaJe/bkV8fk4PoCH/IQPpFihFj7CFCpN+QZ
 QO3ApYZpMMQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,407,1592895600"; d="scan'208";a="407316380"
Received: from allen-box.sh.intel.com (HELO [10.239.159.139])
 ([10.239.159.139])
 by fmsmga001.fm.intel.com with ESMTP; 08 Sep 2020 18:48:55 -0700
To: Christoph Hellwig <hch@infradead.org>
References: <20200903201839.7327-1-murphyt7@tcd.ie>
 <20200903201839.7327-6-murphyt7@tcd.ie>
 <20200907070035.GA25114@infradead.org>
 <CALQxJute8_y=JsW4UV1awSccOjxT_1OyPdymq=R_PurVQzENeQ@mail.gmail.com>
 <20200908053619.GA15418@infradead.org> <20200908055510.GA19078@infradead.org>
 <9655fdc9-6ea0-e4c1-e104-a9a8981ecb1e@linux.intel.com>
 <20200908062326.GB20774@infradead.org>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <a10026ea-6de5-b7b1-80af-8000dfd4601b@linux.intel.com>
Date: Wed, 9 Sep 2020 09:43:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200908062326.GB20774@infradead.org>
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

Hi Christoph,

On 9/8/20 2:23 PM, Christoph Hellwig wrote:
> On Tue, Sep 08, 2020 at 02:04:53PM +0800, Lu Baolu wrote:
>> Do you mind telling where can I find Marek's series?
> 
> [PATCH v10 00/30] DRM: fix struct sg_table nents vs. orig_nents misuse
> 
> on various lists including the iommu one.
> 

It seems that more work is needed in i915 driver. I will added below
quirk as you suggested.

--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -851,6 +851,31 @@ static int __finalise_sg(struct device *dev, struct 
scatterlist *sg, int nents,
         unsigned int cur_len = 0, max_len = dma_get_max_seg_size(dev);
         int i, count = 0;

+       /*
+        * The Intel graphic device driver is used to assume that the 
returned
+        * sg list is not combound. This blocks the efforts of 
converting the
+        * Intel IOMMU driver to dma-iommu api's. Add this quirk to make the
+        * device driver work and should be removed once it's fixed in i915
+        * driver.
+        */
+       if (dev_is_pci(dev) &&
+           to_pci_dev(dev)->vendor == PCI_VENDOR_ID_INTEL &&
+           (to_pci_dev(dev)->class >> 16) == PCI_BASE_CLASS_DISPLAY) {
+               for_each_sg(sg, s, nents, i) {
+                       unsigned int s_iova_off = sg_dma_address(s);
+                       unsigned int s_length = sg_dma_len(s);
+                       unsigned int s_iova_len = s->length;
+
+                       s->offset += s_iova_off;
+                       s->length = s_length;
+                       sg_dma_address(s) = dma_addr + s_iova_off;
+                       sg_dma_len(s) = s_length;
+                       dma_addr += s_iova_len;
+               }
+
+               return nents;
+       }
+

Best regards,
baolu
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
