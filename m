Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA198367BE5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 10:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 496B26EA3C;
	Thu, 22 Apr 2021 08:15:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE5A6EA3E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 08:15:35 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id d10so32282582pgf.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 01:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DCqTI/hrajjPwkk8HEowW3TBxQKFywGZJ7zj1kAgSTY=;
 b=PCD+TgwZ3AiIHtjyLdB6UVXLjDV96H7O710PE71qja4j6uBcwL6eMs8rIbMv0cvAFQ
 cknTAU+f5ughf4xS8sPG0t3S2Z5C3uFec0t2GAey9KzOD4hvmC5srj0EUFUk8IMbKFFx
 HuDL4t5SO2wRDWgfMYB4sF73Mazkige4becoA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DCqTI/hrajjPwkk8HEowW3TBxQKFywGZJ7zj1kAgSTY=;
 b=Y8SIE8FSHa0oTnvr9vyz1FF8FHH4Lb9G25ts2HbgeHR8ihb4LAoc4f57mqPP4hPhyn
 RmIPbQ8MCVHbF+5WeXi/HJk6jMThjPFHWaev2HSb663emxNXtA//vJ3qrpkn2OMT/sp1
 f/dKfYA2dHZQfS0g/4kJifVWYx8D5S7czCsbr81Z32XYt2akDYOk7CVicYMhsDdkef7Z
 SCCB77r9vpCbogf2S6bSkfmgUrTQTq/J1f1NSdEgJ3M2vXRG11gRlkCkr/xcb7Sl8pUj
 UBje/nWO7vUYx3PO2NdmkfBtT1bDWykW+bt59A1JPTi2j4BJWyIHyrimbden2V0VN7cW
 /8zw==
X-Gm-Message-State: AOAM532scCnqwA1/QXGjx8G5UMJxbxWeEk+gswCxVyg6nGJh098KfqUS
 doQ4W67c/S3xCvs8ZkXRv8S75A==
X-Google-Smtp-Source: ABdhPJzCAPtMPZjZd4TjI7FfrTaFcb2I4L39Wwlj9XGgVexb3c0kbKDiOe3PnJYnNG72JITLPFAsSA==
X-Received: by 2002:a63:145a:: with SMTP id 26mr2332561pgu.300.1619079335503; 
 Thu, 22 Apr 2021 01:15:35 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:1a8e:1bde:f79e:c302])
 by smtp.gmail.com with UTF8SMTPSA id h24sm4254231pjv.50.2021.04.22.01.15.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Apr 2021 01:15:35 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Date: Thu, 22 Apr 2021 16:14:54 +0800
Message-Id: <20210422081508.3942748-3-tientzu@chromium.org>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
In-Reply-To: <20210422081508.3942748-1-tientzu@chromium.org>
References: <20210422081508.3942748-1-tientzu@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 02/16] swiotlb: Refactor swiotlb init
 functions
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

Add a new function, swiotlb_init_io_tlb_mem, for the io_tlb_mem struct
initialization to make the code reusable.

Note that we now also call set_memory_decrypted in swiotlb_init_with_tbl.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 kernel/dma/swiotlb.c | 51 ++++++++++++++++++++++----------------------
 1 file changed, 25 insertions(+), 26 deletions(-)

diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index 8635a57f88e9..3f1adee35097 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -166,9 +166,30 @@ void __init swiotlb_update_mem_attributes(void)
 	memset(vaddr, 0, bytes);
 }
 
-int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
+static void swiotlb_init_io_tlb_mem(struct io_tlb_mem *mem, phys_addr_t start,
+				    unsigned long nslabs, bool late_alloc)
 {
+	void *vaddr = phys_to_virt(start);
 	unsigned long bytes = nslabs << IO_TLB_SHIFT, i;
+
+	mem->nslabs = nslabs;
+	mem->start = start;
+	mem->end = mem->start + bytes;
+	mem->index = 0;
+	mem->late_alloc = late_alloc;
+	spin_lock_init(&mem->lock);
+	for (i = 0; i < mem->nslabs; i++) {
+		mem->slots[i].list = IO_TLB_SEGSIZE - io_tlb_offset(i);
+		mem->slots[i].orig_addr = INVALID_PHYS_ADDR;
+		mem->slots[i].alloc_size = 0;
+	}
+
+	set_memory_decrypted((unsigned long)vaddr, bytes >> PAGE_SHIFT);
+	memset(vaddr, 0, bytes);
+}
+
+int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
+{
 	struct io_tlb_mem *mem;
 	size_t alloc_size;
 
@@ -184,16 +205,8 @@ int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
 	if (!mem)
 		panic("%s: Failed to allocate %zu bytes align=0x%lx\n",
 		      __func__, alloc_size, PAGE_SIZE);
-	mem->nslabs = nslabs;
-	mem->start = __pa(tlb);
-	mem->end = mem->start + bytes;
-	mem->index = 0;
-	spin_lock_init(&mem->lock);
-	for (i = 0; i < mem->nslabs; i++) {
-		mem->slots[i].list = IO_TLB_SEGSIZE - io_tlb_offset(i);
-		mem->slots[i].orig_addr = INVALID_PHYS_ADDR;
-		mem->slots[i].alloc_size = 0;
-	}
+
+	swiotlb_init_io_tlb_mem(mem, __pa(tlb), nslabs, false);
 
 	io_tlb_default_mem = mem;
 	if (verbose)
@@ -280,7 +293,6 @@ swiotlb_late_init_with_default_size(size_t default_size)
 int
 swiotlb_late_init_with_tbl(char *tlb, unsigned long nslabs)
 {
-	unsigned long bytes = nslabs << IO_TLB_SHIFT, i;
 	struct io_tlb_mem *mem;
 
 	if (swiotlb_force == SWIOTLB_NO_FORCE)
@@ -295,20 +307,7 @@ swiotlb_late_init_with_tbl(char *tlb, unsigned long nslabs)
 	if (!mem)
 		return -ENOMEM;
 
-	mem->nslabs = nslabs;
-	mem->start = virt_to_phys(tlb);
-	mem->end = mem->start + bytes;
-	mem->index = 0;
-	mem->late_alloc = 1;
-	spin_lock_init(&mem->lock);
-	for (i = 0; i < mem->nslabs; i++) {
-		mem->slots[i].list = IO_TLB_SEGSIZE - io_tlb_offset(i);
-		mem->slots[i].orig_addr = INVALID_PHYS_ADDR;
-		mem->slots[i].alloc_size = 0;
-	}
-
-	set_memory_decrypted((unsigned long)tlb, bytes >> PAGE_SHIFT);
-	memset(tlb, 0, bytes);
+	swiotlb_init_io_tlb_mem(mem, virt_to_phys(tlb), nslabs, true);
 
 	io_tlb_default_mem = mem;
 	swiotlb_print_info();
-- 

I'm not 100% sure if set_memory_decrypted is safe to call in
swiotlb_init_with_tbl, but I didn't hit any issue booting with this.

2.31.1.368.gbe11c130af-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
