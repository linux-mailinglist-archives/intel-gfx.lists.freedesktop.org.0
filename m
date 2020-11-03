Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DFD52A4759
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 15:10:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BAF6ECAC;
	Tue,  3 Nov 2020 14:10:38 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 62EF26E5BF
 for <Intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 12:00:41 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B5DA4106F;
 Tue,  3 Nov 2020 04:00:40 -0800 (PST)
Received: from [10.57.54.223] (unknown [10.57.54.223])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AF3CC3F718;
 Tue,  3 Nov 2020 04:00:38 -0800 (PST)
To: Lu Baolu <baolu.lu@linux.intel.com>, Joerg Roedel <joro@8bytes.org>,
 Tom Murphy <murphyt7@tcd.ie>, David Woodhouse <dwmw2@infradead.org>,
 Christoph Hellwig <hch@infradead.org>
References: <20200927063437.13988-1-baolu.lu@linux.intel.com>
 <20200927063437.13988-5-baolu.lu@linux.intel.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <281f22ed-8b36-fc20-4b08-27ef168f941d@arm.com>
Date: Tue, 3 Nov 2020 12:00:33 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20200927063437.13988-5-baolu.lu@linux.intel.com>
Content-Language: en-GB
X-Mailman-Approved-At: Tue, 03 Nov 2020 14:10:35 +0000
Subject: Re: [Intel-gfx] [PATCH v4 4/7] iommu: Add quirk for Intel graphic
 devices in map_sg
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

On 2020-09-27 07:34, Lu Baolu wrote:
> Combining the sg segments exposes a bug in the Intel i915 driver which
> causes visual artifacts and the screen to freeze. This is most likely
> because of how the i915 handles the returned list. It probably doesn't
> respect the returned value specifying the number of elements in the list
> and instead depends on the previous behaviour of the Intel iommu driver
> which would return the same number of elements in the output list as in
> the input list.
> 
> Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
> Signed-off-by: Lu Baolu <baolu.lu@linux.intel.com>
> ---
>   drivers/iommu/dma-iommu.c | 27 +++++++++++++++++++++++++++
>   1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
> index 3526db774611..e7e4d758f51a 100644
> --- a/drivers/iommu/dma-iommu.c
> +++ b/drivers/iommu/dma-iommu.c
> @@ -879,6 +879,33 @@ static int __finalise_sg(struct device *dev, struct scatterlist *sg, int nents,
>   	unsigned int cur_len = 0, max_len = dma_get_max_seg_size(dev);
>   	int i, count = 0;
>   
> +	/*
> +	 * The Intel graphic driver is used to assume that the returned
> +	 * sg list is not combound. This blocks the efforts of converting
> +	 * Intel IOMMU driver to dma-iommu api's. Add this quirk to make the
> +	 * device driver work and should be removed once it's fixed in i915
> +	 * driver.
> +	 */
> +	if (IS_ENABLED(CONFIG_DRM_I915) && dev_is_pci(dev) &&
> +	    to_pci_dev(dev)->vendor == PCI_VENDOR_ID_INTEL &&
> +	    (to_pci_dev(dev)->class >> 16) == PCI_BASE_CLASS_DISPLAY) {
> +		for_each_sg(sg, s, nents, i) {
> +			unsigned int s_iova_off = sg_dma_address(s);
> +			unsigned int s_length = sg_dma_len(s);
> +			unsigned int s_iova_len = s->length;
> +
> +			s->offset += s_iova_off;
> +			s->length = s_length;
> +			sg_dma_address(s) = dma_addr + s_iova_off;
> +			sg_dma_len(s) = s_length;
> +			dma_addr += s_iova_len;
> +
> +			pr_info_once("sg combining disabled due to i915 driver\n");
> +		}
> +
> +		return nents;
> +	}

BTW, a much less invasive workaround would be to simply override 
seg_mask to 0. That's enough to make sure that no segment looks eligible 
for merging.

Robin.

> +
>   	for_each_sg(sg, s, nents, i) {
>   		/* Restore this segment's original unaligned fields first */
>   		unsigned int s_iova_off = sg_dma_address(s);
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
