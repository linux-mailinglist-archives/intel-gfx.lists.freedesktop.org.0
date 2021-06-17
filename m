Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 590E63AAC02
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 08:27:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EDC86E08E;
	Thu, 17 Jun 2021 06:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 226BD6E872
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 06:27:39 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 o88-20020a17090a0a61b029016eeb2adf66so5293062pjo.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 23:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M9QMk6wNnc5T8dsQ/UUh5z8ZmmRgMMkTubKMJRCpcCQ=;
 b=JnlqSxQ0Uf3OGBOxNwxNPZIoriAC1E5rya6kAaIHMCoU7r6zyVlQyQAs2Cf4khFFTc
 FnTwZMJShLQfAGP+cRvLvkERNMaZ59MsN4kjblSaWpyhFUBx++fS1mFP3+oMtxuFiXLi
 zmBgZVd1RthmZvsv20lFYrEIPwPYmEanEfCKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M9QMk6wNnc5T8dsQ/UUh5z8ZmmRgMMkTubKMJRCpcCQ=;
 b=GiSIesQsO9icxna8xfUdUTlh3rgxAifhm/UoBtYIVFH4LS0JJCtpB5TPpazY9AsClB
 cM+jeD2bRzEHUl/0musDtcv5XfiW4F+2XcKT5m603P/+4TABZ0dpbZvwMVytRa2Yk/HM
 mguk4wG9yFnQpVFydJQ/SiFB+99raP/m3KOfRFQjlSlWLuvrJx/0VwozLfN1vF/B+Pfc
 piBBzF3Ek6elgLW/POuuT1pJI6WW+8FNSeC/YyuvJ7UaLnspJbEY0Iq9/n8mrLvlDpds
 VHBV7y2qtmhYjYRA5voeRuFNDtna035jtg9+LX+GoJ01/N1an0r7Do7Gg+aqj0Y0R/5O
 kvlA==
X-Gm-Message-State: AOAM532sLT8IGLx0nb84HxaLqFB34Ptbr0OnYcMH16YGVQvfKC/KEH2a
 7Qljk4iH3u3mFDvneN/1v9qQBA==
X-Google-Smtp-Source: ABdhPJztF3OTqYFYqSHpiBI0X201j37FByNBNjiUFjc1rLhaj0s7r4pHVp8888/DL4p7nv1mwIeNTA==
X-Received: by 2002:a17:90b:881:: with SMTP id
 bj1mr3933119pjb.119.1623911258726; 
 Wed, 16 Jun 2021 23:27:38 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:e349:a6ae:d3d0:1621])
 by smtp.gmail.com with UTF8SMTPSA id 35sm3596288pjo.16.2021.06.16.23.27.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Jun 2021 23:27:38 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Date: Thu, 17 Jun 2021 14:26:29 +0800
Message-Id: <20210617062635.1660944-7-tientzu@chromium.org>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
In-Reply-To: <20210617062635.1660944-1-tientzu@chromium.org>
References: <20210617062635.1660944-1-tientzu@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v13 06/12] swiotlb: Use is_swiotlb_force_bounce
 for swiotlb data bouncing
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

Propagate the swiotlb_force into io_tlb_default_mem->force_bounce and
use it to determine whether to bounce the data or not. This will be
useful later to allow for different pools.

Signed-off-by: Claire Chang <tientzu@chromium.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Tested-by: Stefano Stabellini <sstabellini@kernel.org>
Tested-by: Will Deacon <will@kernel.org>
---
 drivers/xen/swiotlb-xen.c |  2 +-
 include/linux/swiotlb.h   | 11 +++++++++++
 kernel/dma/direct.c       |  2 +-
 kernel/dma/direct.h       |  2 +-
 kernel/dma/swiotlb.c      |  4 ++++
 5 files changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/xen/swiotlb-xen.c b/drivers/xen/swiotlb-xen.c
index 0c6ed09f8513..4730a146fa35 100644
--- a/drivers/xen/swiotlb-xen.c
+++ b/drivers/xen/swiotlb-xen.c
@@ -369,7 +369,7 @@ static dma_addr_t xen_swiotlb_map_page(struct device *dev, struct page *page,
 	if (dma_capable(dev, dev_addr, size, true) &&
 	    !range_straddles_page_boundary(phys, size) &&
 		!xen_arch_need_swiotlb(dev, phys, dev_addr) &&
-		swiotlb_force != SWIOTLB_FORCE)
+		!is_swiotlb_force_bounce(dev))
 		goto done;
 
 	/*
diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
index dd1c30a83058..8d8855c77d9a 100644
--- a/include/linux/swiotlb.h
+++ b/include/linux/swiotlb.h
@@ -84,6 +84,7 @@ extern enum swiotlb_force swiotlb_force;
  *		unmap calls.
  * @debugfs:	The dentry to debugfs.
  * @late_alloc:	%true if allocated using the page allocator
+ * @force_bounce: %true if swiotlb bouncing is forced
  */
 struct io_tlb_mem {
 	phys_addr_t start;
@@ -94,6 +95,7 @@ struct io_tlb_mem {
 	spinlock_t lock;
 	struct dentry *debugfs;
 	bool late_alloc;
+	bool force_bounce;
 	struct io_tlb_slot {
 		phys_addr_t orig_addr;
 		size_t alloc_size;
@@ -109,6 +111,11 @@ static inline bool is_swiotlb_buffer(struct device *dev, phys_addr_t paddr)
 	return mem && paddr >= mem->start && paddr < mem->end;
 }
 
+static inline bool is_swiotlb_force_bounce(struct device *dev)
+{
+	return dev->dma_io_tlb_mem->force_bounce;
+}
+
 void __init swiotlb_exit(void);
 unsigned int swiotlb_max_segment(void);
 size_t swiotlb_max_mapping_size(struct device *dev);
@@ -120,6 +127,10 @@ static inline bool is_swiotlb_buffer(struct device *dev, phys_addr_t paddr)
 {
 	return false;
 }
+static inline bool is_swiotlb_force_bounce(struct device *dev)
+{
+	return false;
+}
 static inline void swiotlb_exit(void)
 {
 }
diff --git a/kernel/dma/direct.c b/kernel/dma/direct.c
index 7a88c34d0867..a92465b4eb12 100644
--- a/kernel/dma/direct.c
+++ b/kernel/dma/direct.c
@@ -496,7 +496,7 @@ size_t dma_direct_max_mapping_size(struct device *dev)
 {
 	/* If SWIOTLB is active, use its maximum mapping size */
 	if (is_swiotlb_active(dev) &&
-	    (dma_addressing_limited(dev) || swiotlb_force == SWIOTLB_FORCE))
+	    (dma_addressing_limited(dev) || is_swiotlb_force_bounce(dev)))
 		return swiotlb_max_mapping_size(dev);
 	return SIZE_MAX;
 }
diff --git a/kernel/dma/direct.h b/kernel/dma/direct.h
index 13e9e7158d94..4632b0f4f72e 100644
--- a/kernel/dma/direct.h
+++ b/kernel/dma/direct.h
@@ -87,7 +87,7 @@ static inline dma_addr_t dma_direct_map_page(struct device *dev,
 	phys_addr_t phys = page_to_phys(page) + offset;
 	dma_addr_t dma_addr = phys_to_dma(dev, phys);
 
-	if (unlikely(swiotlb_force == SWIOTLB_FORCE))
+	if (is_swiotlb_force_bounce(dev))
 		return swiotlb_map(dev, phys, size, dir, attrs);
 
 	if (unlikely(!dma_capable(dev, dma_addr, size, true))) {
diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index 409694d7a8ad..13891d5de8c9 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -179,6 +179,10 @@ static void swiotlb_init_io_tlb_mem(struct io_tlb_mem *mem, phys_addr_t start,
 	mem->end = mem->start + bytes;
 	mem->index = 0;
 	mem->late_alloc = late_alloc;
+
+	if (swiotlb_force == SWIOTLB_FORCE)
+		mem->force_bounce = true;
+
 	spin_lock_init(&mem->lock);
 	for (i = 0; i < mem->nslabs; i++) {
 		mem->slots[i].list = IO_TLB_SEGSIZE - io_tlb_offset(i);
-- 
2.32.0.288.g62a8d224e6-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
