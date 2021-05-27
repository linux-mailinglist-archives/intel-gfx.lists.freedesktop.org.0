Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 830BB392E7E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 14:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D86F26EEB2;
	Thu, 27 May 2021 12:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 565746EEB1
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 12:59:04 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id e22so3617013pgv.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 05:59:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TTF4vDbD9vQ1KC1jLpuRC6SYDBZGWhbxeMIB/CCcXbM=;
 b=Ql518PoKOfY5r4efBKvH9DmAfXHTzOTlD7cQCPHv4pwiDJMplS9HGrBounYOm/uHrf
 /J12Wcg/AjGjzAJHhjxJJIQiFQkUIqzSfolO8gn7+iXITH1Ou9qg/tKyKRsiVDL/Q70X
 wZNWq4zxBO11T+ZAQUrcXnBAK+2h+MWriKags=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TTF4vDbD9vQ1KC1jLpuRC6SYDBZGWhbxeMIB/CCcXbM=;
 b=ElCXJLdTRwb+jpWTMwdbPl9pEFwGqduBsvMYQ2zUx8BZxAEOG+SA1lX8d3ZPtQr8Zx
 Yr3TqmGCpYk36H0/msXd6BxC33bVpsIkLHb3m0O+eDSbWexnZXN0ufOPVdrm8XZJ33/Z
 bedi2+jPtwB4D31Um7VVUyoc2kwqhqUu+UoogcgIkRj+aPKuWOGb0zLhj3j95APeSyMz
 S+xcpvzfTYWlNGlvxcYnkSuBmGxpDFIVDq/5mtSTgTxuoCviO0pWYDCsrKMMUFd5hF+U
 DFarXl/ttkexaGd+K8k3K1jVGKcuMfSv+5SpfGDSXAgHPgLI8qSEtEWJqPMTFnpJvUvN
 +ICA==
X-Gm-Message-State: AOAM530mBs7/QmhXp19hbX401v7U8eZZx+T51iU2VQPMWPSVL0/639WN
 1VTE3lJngOXIE1CC3IUzQJT1sA==
X-Google-Smtp-Source: ABdhPJyp2dRY1SU48NJaQCKs+dJX/2XsN+WDKmaiBpTycmpdiWBGW8lmfuldLoK+B+T5ST+S6ZG9/g==
X-Received: by 2002:a63:f248:: with SMTP id d8mr3579481pgk.219.1622120343937; 
 Thu, 27 May 2021 05:59:03 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:a93:378d:9a9e:3b70])
 by smtp.gmail.com with UTF8SMTPSA id o17sm1723677pjp.33.2021.05.27.05.58.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 May 2021 05:59:03 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Date: Thu, 27 May 2021 20:58:31 +0800
Message-Id: <20210527125845.1852284-2-tientzu@chromium.org>
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
In-Reply-To: <20210527125845.1852284-1-tientzu@chromium.org>
References: <20210527125845.1852284-1-tientzu@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 01/15] swiotlb: Refactor swiotlb init
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
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 lkml <linux-kernel@vger.kernel.org>, tfiga@chromium.org,
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
index 8ca7d505d61c..d3232fc19385 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -168,9 +168,30 @@ void __init swiotlb_update_mem_attributes(void)
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
 
@@ -186,16 +207,8 @@ int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
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
@@ -282,7 +295,6 @@ swiotlb_late_init_with_default_size(size_t default_size)
 int
 swiotlb_late_init_with_tbl(char *tlb, unsigned long nslabs)
 {
-	unsigned long bytes = nslabs << IO_TLB_SHIFT, i;
 	struct io_tlb_mem *mem;
 
 	if (swiotlb_force == SWIOTLB_NO_FORCE)
@@ -297,20 +309,7 @@ swiotlb_late_init_with_tbl(char *tlb, unsigned long nslabs)
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
2.31.1.818.g46aad6cb9e-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
