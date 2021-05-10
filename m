Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 997EB378026
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:52:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E116E849;
	Mon, 10 May 2021 09:52:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C31366E84B
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 09:52:06 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 gx21-20020a17090b1255b02901589d39576eso3434807pjb.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 02:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4pOFRke/Q7tZST7mlvM0MmSbL4aoYUvXn+1GR7SUJ34=;
 b=A7U0jjyTG8tgDp385jacEJGLNC4oL7IUZlzoTWyLzKk6RkDKUQ5v+SD+9WKkocmvjG
 LUaefVuL0kRQGj7dkHAfhhjPa4I0Jfm8PqMLbRTvg4D7h7o8M7PlgtpcXiQ1iqPHQ0aU
 +IJlZ9Uvbxgm75hG8lTxaMBiVB4c7B5X4T9+c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4pOFRke/Q7tZST7mlvM0MmSbL4aoYUvXn+1GR7SUJ34=;
 b=jZcWP5jR7mCQrzi7bkJOabn0/lb2yt7ZEhk4xwBqZmqibJ5XHZ/Qum3tnHGjhOTnC9
 j0thSMYVqPS/ltepf8cjKIgl7Ro/tZM1CM8yYl6Hzd0jWzAN6GgIIGtxksMFqN/0PDlS
 QY7YiBOmEBZyPJwmtZ2izDFM7Z+YNUa+VUX4I09y/IRgwITBw4U8UizdsvAV+OAQIFTP
 6UzXli8ZZGtErRLdf/IBQbZGBBoEugFMXHqFW0srRugYGXPk/druM7A0ve92VmECTbAG
 Ev8n3EW0XmehwASw+vBCLf/xNEAv6fQ4u00XPbM/nQ4h8oLy5XSAmKlLKPmr4coynkp6
 g5bg==
X-Gm-Message-State: AOAM531JDrDOtrWCYpW6+1GoDXX9vuK/9v+/mMAMZiz1iXon5mjt2JbW
 XSVhkK3HRh3qCYeReIHhN3SF8g==
X-Google-Smtp-Source: ABdhPJyNhiNJqKO//YUtjfv5tp68csdaR9ELLg7UNG8ZjStHGvhbFTS+EdG5CKcr3bxZkctUA/Q/rQ==
X-Received: by 2002:a17:90a:246:: with SMTP id
 t6mr27380633pje.228.1620640326419; 
 Mon, 10 May 2021 02:52:06 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:a524:abe8:94e3:5601])
 by smtp.gmail.com with UTF8SMTPSA id q11sm11036253pjq.6.2021.05.10.02.51.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 May 2021 02:52:06 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Date: Mon, 10 May 2021 17:50:21 +0800
Message-Id: <20210510095026.3477496-11-tientzu@chromium.org>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
In-Reply-To: <20210510095026.3477496-1-tientzu@chromium.org>
References: <20210510095026.3477496-1-tientzu@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 10/15] swiotlb: Refactor
 swiotlb_tbl_unmap_single
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
 grant.likely@arm.com, paulus@samba.org, mingo@kernel.org, jxgao@google.com,
 sstabellini@kernel.org, Saravana Kannan <saravanak@google.com>,
 xypron.glpk@gmx.de, "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, bskeggs@redhat.com,
 linux-pci@vger.kernel.org, xen-devel@lists.xenproject.org,
 Thierry Reding <treding@nvidia.com>, intel-gfx@lists.freedesktop.org,
 matthew.auld@intel.com, linux-devicetree <devicetree@vger.kernel.org>,
 airlied@linux.ie, Robin Murphy <robin.murphy@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>, bhelgaas@google.com,
 tientzu@chromium.org, Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 nouveau@lists.freedesktop.org, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, lkml <linux-kernel@vger.kernel.org>,
 tfiga@chromium.org,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, linuxppc-dev@lists.ozlabs.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a new function, release_slots, to make the code reusable for supporting
different bounce buffer pools, e.g. restricted DMA pool.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 kernel/dma/swiotlb.c | 35 ++++++++++++++++++++---------------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index ef04d8f7708f..fa11787e4b95 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -550,27 +550,15 @@ phys_addr_t swiotlb_tbl_map_single(struct device *dev, phys_addr_t orig_addr,
 	return tlb_addr;
 }
 
-/*
- * tlb_addr is the physical address of the bounce buffer to unmap.
- */
-void swiotlb_tbl_unmap_single(struct device *hwdev, phys_addr_t tlb_addr,
-			      size_t mapping_size, enum dma_data_direction dir,
-			      unsigned long attrs)
+static void release_slots(struct device *dev, phys_addr_t tlb_addr)
 {
-	struct io_tlb_mem *mem = get_io_tlb_mem(hwdev);
+	struct io_tlb_mem *mem = get_io_tlb_mem(dev);
 	unsigned long flags;
-	unsigned int offset = swiotlb_align_offset(hwdev, tlb_addr);
+	unsigned int offset = swiotlb_align_offset(dev, tlb_addr);
 	int index = (tlb_addr - offset - mem->start) >> IO_TLB_SHIFT;
 	int nslots = nr_slots(mem->slots[index].alloc_size + offset);
 	int count, i;
 
-	/*
-	 * First, sync the memory before unmapping the entry
-	 */
-	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
-	    (dir == DMA_FROM_DEVICE || dir == DMA_BIDIRECTIONAL))
-		swiotlb_bounce(hwdev, tlb_addr, mapping_size, DMA_FROM_DEVICE);
-
 	/*
 	 * Return the buffer to the free list by setting the corresponding
 	 * entries to indicate the number of contiguous entries available.
@@ -605,6 +593,23 @@ void swiotlb_tbl_unmap_single(struct device *hwdev, phys_addr_t tlb_addr,
 	spin_unlock_irqrestore(&mem->lock, flags);
 }
 
+/*
+ * tlb_addr is the physical address of the bounce buffer to unmap.
+ */
+void swiotlb_tbl_unmap_single(struct device *dev, phys_addr_t tlb_addr,
+			      size_t mapping_size, enum dma_data_direction dir,
+			      unsigned long attrs)
+{
+	/*
+	 * First, sync the memory before unmapping the entry
+	 */
+	if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC) &&
+	    (dir == DMA_FROM_DEVICE || dir == DMA_BIDIRECTIONAL))
+		swiotlb_bounce(dev, tlb_addr, mapping_size, DMA_FROM_DEVICE);
+
+	release_slots(dev, tlb_addr);
+}
+
 void swiotlb_sync_single_for_device(struct device *dev, phys_addr_t tlb_addr,
 		size_t size, enum dma_data_direction dir)
 {
-- 
2.31.1.607.g51e8a6a459-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
