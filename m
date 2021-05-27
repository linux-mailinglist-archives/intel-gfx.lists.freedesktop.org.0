Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEAD392F73
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 15:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D36D66F388;
	Thu, 27 May 2021 13:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2BBA6E81F;
 Thu, 27 May 2021 13:24:48 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id A8FB568AFE; Thu, 27 May 2021 15:24:42 +0200 (CEST)
Date: Thu, 27 May 2021 15:24:42 +0200
From: Christoph Hellwig <hch@lst.de>
To: Claire Chang <tientzu@chromium.org>
Message-ID: <20210527132442.GA26160@lst.de>
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-3-tientzu@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210518064215.2856977-3-tientzu@chromium.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v7 02/15] swiotlb: Refactor
 swiotlb_create_debugfs
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
Cc: heikki.krogerus@linux.intel.com, thomas.hellstrom@linux.intel.com,
 peterz@infradead.org, benh@kernel.crashing.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 grant.likely@arm.com, paulus@samba.org, Frank Rowand <frowand.list@gmail.com>,
 mingo@kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>,
 sstabellini@kernel.org, Saravana Kannan <saravanak@google.com>,
 mpe@ellerman.id.au, Joerg Roedel <joro@8bytes.org>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Christoph Hellwig <hch@lst.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, bskeggs@redhat.com,
 linux-pci@vger.kernel.org, xen-devel@lists.xenproject.org,
 Thierry Reding <treding@nvidia.com>, intel-gfx@lists.freedesktop.org,
 matthew.auld@intel.com, linux-devicetree <devicetree@vger.kernel.org>,
 jxgao@google.com, Will Deacon <will@kernel.org>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, airlied@linux.ie,
 Dan Williams <dan.j.williams@intel.com>, linuxppc-dev@lists.ozlabs.org,
 Rob Herring <robh+dt@kernel.org>, bhelgaas@google.com,
 boris.ostrovsky@oracle.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, jgross@suse.com,
 Nicolas Boichat <drinkcat@chromium.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, lkml <linux-kernel@vger.kernel.org>,
 tfiga@chromium.org,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, xypron.glpk@gmx.de,
 Robin Murphy <robin.murphy@arm.com>, bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 18, 2021 at 02:42:02PM +0800, Claire Chang wrote:
>  struct io_tlb_mem *io_tlb_default_mem;
> +static struct dentry *debugfs_dir;
>  
>  /*
>   * Max segment that we can provide which (if pages are contingous) will
> @@ -662,18 +663,30 @@ EXPORT_SYMBOL_GPL(is_swiotlb_active);
>  
>  #ifdef CONFIG_DEBUG_FS
>  
> +static void swiotlb_create_debugfs(struct io_tlb_mem *mem, const char *name)
>  {
>  	if (!mem)
> +		return;

I don't think this check makes much sense here.

> +}
> +
> +static int __init swiotlb_create_default_debugfs(void)
> +{
> +	struct io_tlb_mem *mem = io_tlb_default_mem;
> +
> +	if (mem) {
> +		swiotlb_create_debugfs(mem, "swiotlb");
> +		debugfs_dir = mem->debugfs;
> +	} else {
> +		debugfs_dir = debugfs_create_dir("swiotlb", NULL);
> +	}

This also looks rather strange.  I'd much rather create move the
directory creation of out swiotlb_create_debugfs.  E.g. something like:

static void swiotlb_create_debugfs_file(struct io_tlb_mem *mem)
{
	debugfs_create_ulong("io_tlb_nslabs", 0400, mem->debugfs, &mem->nslabs);
	debugfs_create_ulong("io_tlb_used", 0400, mem->debugfs, &mem->used);
}

static int __init swiotlb_init_debugfs(void)
{
	debugfs_dir = debugfs_create_dir("swiotlb", NULL);
	if (io_tlb_default_mem) {
		io_tlb_default_mem->debugfs = debugfs_dir;
		swiotlb_create_debugfs_files(io_tlb_default_mem);
	}
	return 0;
}
late_initcall(swiotlb_init_debugfs);

...

static int rmem_swiotlb_device_init(struct reserved_mem *rmem,
                                    struct device *dev)
{
	...
		mem->debugfs = debugfs_create_dir(rmem->name, debugfs_dir);
		swiotlb_create_debugfs_files(mem->debugfs);

			
}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
