Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B2338724A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 08:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B71106EA90;
	Tue, 18 May 2021 06:43:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E969F6EA90
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 06:43:41 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id t21so4538941plo.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 23:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JT5d6YAbqSvmA2KlfQD5hf+kbiYfdJYrN1IkT+aNsag=;
 b=ZD9htTkyvkMMEUEkLQy/gcEpM7a0MIQiTSmGWFCNXxq+cS4fwyD1/1tr56UCMPrm90
 EVzumZJoS3llTlb5ISKK/cVcn3v918VUbLmvCTKfyykZEE8GPe8Bv+qSbFp6wqzg5TUP
 ctly0anMGiSEZrCnObhPGgfqy4/ugiUoIEdJo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JT5d6YAbqSvmA2KlfQD5hf+kbiYfdJYrN1IkT+aNsag=;
 b=p90+LTW5ITtVibRuY/ZnDaA1ERAxI+9oHIhCzJwBaviJY902FJSj7ePfdec7xa0Woy
 MGkhx8Hk+zSYbsV06YqKjArwmbiMrDcnn2jxDr2+ImRylKfTacmlUNsmXrQjvqmbQXN4
 vShkYRMEEhHjoSR2lUhczw//J5/vDacPxUUpOYsyMrH0PSG8LyGV2H3PFmeLAXRE3xZx
 MGZ1+pIldgFq/tBM69c/+8u4GPCEINoomw4UTOiQSCsmIJpPsTFrsKuiOoRC2oIYEsG4
 lOcN9CyVnLjPZJT2CLNAmlSQPU9okue6qoB4MKVaMAJT6BXkxNz9tvOBKetFAlcy3ehO
 ZLPQ==
X-Gm-Message-State: AOAM5325t9f26zPVN1Wf8eRLmX1Vu1Vgk8znHi9O9m1s2m7lxGMoK2UI
 /t3sqjtMDKqrc3l7dvWI7CWhSw==
X-Google-Smtp-Source: ABdhPJygj36pSY5SiWUplzqr15FxIdvmJ+/xyuGNliCPbWZ+Ih2Wqk2RJDjta6zpAFevyluE/pwdNw==
X-Received: by 2002:a17:90a:bc4a:: with SMTP id
 t10mr3648458pjv.4.1621320221637; 
 Mon, 17 May 2021 23:43:41 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:f284:b819:54ca:c198])
 by smtp.gmail.com with UTF8SMTPSA id c16sm11590759pgl.79.2021.05.17.23.43.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 May 2021 23:43:41 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Date: Tue, 18 May 2021 14:42:08 +0800
Message-Id: <20210518064215.2856977-9-tientzu@chromium.org>
X-Mailer: git-send-email 2.31.1.751.gd2f1c929bd-goog
In-Reply-To: <20210518064215.2856977-1-tientzu@chromium.org>
References: <20210518064215.2856977-1-tientzu@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 08/15] swiotlb: Bounce data from/to
 restricted DMA pool if available
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
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 lkml <linux-kernel@vger.kernel.org>, tfiga@chromium.org,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, linuxppc-dev@lists.ozlabs.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Regardless of swiotlb setting, the restricted DMA pool is preferred if
available.

The restricted DMA pools provide a basic level of protection against the
DMA overwriting buffer contents at unexpected times. However, to protect
against general data leakage and system memory corruption, the system
needs to provide a way to lock down the memory access, e.g., MPU.

Note that is_dev_swiotlb_force doesn't check if
swiotlb_force == SWIOTLB_FORCE. Otherwise the memory allocation behavior
with default swiotlb will be changed by the following patche
("dma-direct: Allocate memory from restricted DMA pool if available").

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 include/linux/swiotlb.h | 13 +++++++++++++
 kernel/dma/direct.c     |  3 ++-
 kernel/dma/direct.h     |  3 ++-
 kernel/dma/swiotlb.c    |  8 ++++----
 4 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
index c530c976d18b..0c5a18d9cf89 100644
--- a/include/linux/swiotlb.h
+++ b/include/linux/swiotlb.h
@@ -120,6 +120,15 @@ static inline bool is_swiotlb_buffer(struct device *dev, phys_addr_t paddr)
 	return mem && paddr >= mem->start && paddr < mem->end;
 }
 
+static inline bool is_dev_swiotlb_force(struct device *dev)
+{
+#ifdef CONFIG_DMA_RESTRICTED_POOL
+	if (dev->dma_io_tlb_mem)
+		return true;
+#endif /* CONFIG_DMA_RESTRICTED_POOL */
+	return false;
+}
+
 void __init swiotlb_exit(void);
 unsigned int swiotlb_max_segment(void);
 size_t swiotlb_max_mapping_size(struct device *dev);
@@ -131,6 +140,10 @@ static inline bool is_swiotlb_buffer(struct device *dev, phys_addr_t paddr)
 {
 	return false;
 }
+static inline bool is_dev_swiotlb_force(struct device *dev)
+{
+	return false;
+}
 static inline void swiotlb_exit(void)
 {
 }
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 7a88c34d0867..078f7087e466 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -496,7 +496,8 @@ size_t dma_direct_max_mapping_size(struct device *dev)
 {
 	/* If SWIOTLB is active, use its maximum mapping size */
 	if (is_swiotlb_active(dev) &&
-	    (dma_addressing_limited(dev) || swiotlb_force == SWIOTLB_FORCE))
+	    (dma_addressing_limited(dev) || swiotlb_force == SWIOTLB_FORCE ||
+	     is_dev_swiotlb_force(dev)))
 		return swiotlb_max_mapping_size(dev);
 	return SIZE_MAX;
 }
diff --git a/kernel/dma/direct.h b/kernel/dma/direct.h
index 13e9e7158d94..f94813674e23 100644
--- a/kernel/dma/direct.h
+++ b/kernel/dma/direct.h
@@ -87,7 +87,8 @@ static inline dma_addr_t dma_direct_map_page(struct device *dev,
 	phys_addr_t phys = page_to_phys(page) + offset;
 	dma_addr_t dma_addr = phys_to_dma(dev, phys);
 
-	if (unlikely(swiotlb_force == SWIOTLB_FORCE))
+	if (unlikely(swiotlb_force == SWIOTLB_FORCE) ||
+	    is_dev_swiotlb_force(dev))
 		return swiotlb_map(dev, phys, size, dir, attrs);
 
 	if (unlikely(!dma_capable(dev, dma_addr, size, true))) {
diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index 68e7633f11fe..95f482c4408c 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -347,7 +347,7 @@ void __init swiotlb_exit(void)
 static void swiotlb_bounce(struct device *dev, phys_addr_t tlb_addr, size_t size,
 			   enum dma_data_direction dir)
 {
-	struct io_tlb_mem *mem = io_tlb_default_mem;
+	struct io_tlb_mem *mem = get_io_tlb_mem(dev);
 	int index = (tlb_addr - mem->start) >> IO_TLB_SHIFT;
 	phys_addr_t orig_addr = mem->slots[index].orig_addr;
 	size_t alloc_size = mem->slots[index].alloc_size;
@@ -429,7 +429,7 @@ static unsigned int wrap_index(struct io_tlb_mem *mem, unsigned int index)
 static int find_slots(struct device *dev, phys_addr_t orig_addr,
 		size_t alloc_size)
 {
-	struct io_tlb_mem *mem = io_tlb_default_mem;
+	struct io_tlb_mem *mem = get_io_tlb_mem(dev);
 	unsigned long boundary_mask = dma_get_seg_boundary(dev);
 	dma_addr_t tbl_dma_addr =
 		phys_to_dma_unencrypted(dev, mem->start) & boundary_mask;
@@ -506,7 +506,7 @@ phys_addr_t swiotlb_tbl_map_single(struct device *dev, phys_addr_t orig_addr,
 		size_t mapping_size, size_t alloc_size,
 		enum dma_data_direction dir, unsigned long attrs)
 {
-	struct io_tlb_mem *mem = io_tlb_default_mem;
+	struct io_tlb_mem *mem = get_io_tlb_mem(dev);
 	unsigned int offset = swiotlb_align_offset(dev, orig_addr);
 	unsigned int i;
 	int index;
@@ -557,7 +557,7 @@ void swiotlb_tbl_unmap_single(struct device *hwdev, phys_addr_t tlb_addr,
 			      size_t mapping_size, enum dma_data_direction dir,
 			      unsigned long attrs)
 {
-	struct io_tlb_mem *mem = io_tlb_default_mem;
+	struct io_tlb_mem *mem = get_io_tlb_mem(hwdev);
 	unsigned long flags;
 	unsigned int offset = swiotlb_align_offset(hwdev, tlb_addr);
 	int index = (tlb_addr - offset - mem->start) >> IO_TLB_SHIFT;
-- 
2.31.1.751.gd2f1c929bd-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
