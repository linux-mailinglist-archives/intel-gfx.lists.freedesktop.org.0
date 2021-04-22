Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BAA367BF3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 10:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64F8D6EA50;
	Thu, 22 Apr 2021 08:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com
 [IPv6:2607:f8b0:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 549EE6EA3F
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 08:16:10 +0000 (UTC)
Received: by mail-pf1-x430.google.com with SMTP id 10so22252621pfl.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 01:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9ZUOlaxQDRJ4owOuYTcW5CKLhIM5yKECKO1qTEYWZIg=;
 b=Te5Gk+1sRcVC38swcqBEUjXxCH7tPVvd0mbGX1Wwm2DZGR6oQAt2p48rJuAqXxnZ1G
 B6y5TEaEuZ03C7wcap+3lptAydpEMh9xeJqVUa9U/PT2VvzS2R7M5JFIpAJEQCDWGzOE
 98eoN1gQ0pvlEfYjZOqLfgxvbW3n0p1s0Rg/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9ZUOlaxQDRJ4owOuYTcW5CKLhIM5yKECKO1qTEYWZIg=;
 b=bS9ThKCdzng54a83e3yoTZ5ASwgicvrfmINjBTmi/c5gHW3rFzZb8G9Il7YoMTyWr8
 Lq+mGulHoZx5G1VqiuATHRYxqgjp1Yvdy1MpTJJocBN8gGkeCuXHGDguZJrSkZpBo1XO
 G1ZbAZAVRg+vBUqO1ETb0JKQiNK8IS0omI1nuDmOUpFNpHGRwuj8MyIOSCz09hAdRMj1
 T0f0o07N7NNGt9tru7g2zULWekZEOUeuPqkS2EV9weK6oOAtJeBpdShbonCKJFZjGGuO
 RzbIycybSrqjw4pWZV96L21KoJZmF0H7xm+FhgpPoUfCZ9oIIje5WOv+WqHvn7y5cx7I
 Os0Q==
X-Gm-Message-State: AOAM532c6nABoxaag8th45t7eZtzQjVAG4Nd1CXyPh4qVV0llb94/Ecl
 gBI8oVTdJrcO5SVwqEJ5pJZbyQ==
X-Google-Smtp-Source: ABdhPJwNm9rBbG87w+RNtKc5UkLPG+k/T7GR5T9yig5hQwH4n8FewG7IrH0HY5kbawXYuwkg29Z0TA==
X-Received: by 2002:a62:68c4:0:b029:226:5dc5:4082 with SMTP id
 d187-20020a6268c40000b02902265dc54082mr2210480pfc.48.1619079369993; 
 Thu, 22 Apr 2021 01:16:09 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:1a8e:1bde:f79e:c302])
 by smtp.gmail.com with UTF8SMTPSA id t21sm1376416pfg.211.2021.04.22.01.16.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Apr 2021 01:16:09 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Date: Thu, 22 Apr 2021 16:14:58 +0800
Message-Id: <20210422081508.3942748-7-tientzu@chromium.org>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
In-Reply-To: <20210422081508.3942748-1-tientzu@chromium.org>
References: <20210422081508.3942748-1-tientzu@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 06/16] swiotlb: Add a new get_io_tlb_mem
 getter
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

Add a new getter, get_io_tlb_mem, to help select the io_tlb_mem struct.
The restricted DMA pool is preferred if available.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 include/linux/swiotlb.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/swiotlb.h b/include/linux/swiotlb.h
index 03ad6e3b4056..b469f04cca26 100644
--- a/include/linux/swiotlb.h
+++ b/include/linux/swiotlb.h
@@ -2,6 +2,7 @@
 #ifndef __LINUX_SWIOTLB_H
 #define __LINUX_SWIOTLB_H
 
+#include <linux/device.h>
 #include <linux/dma-direction.h>
 #include <linux/init.h>
 #include <linux/types.h>
@@ -102,6 +103,16 @@ struct io_tlb_mem {
 };
 extern struct io_tlb_mem *io_tlb_default_mem;
 
+static inline struct io_tlb_mem *get_io_tlb_mem(struct device *dev)
+{
+#ifdef CONFIG_DMA_RESTRICTED_POOL
+	if (dev && dev->dma_io_tlb_mem)
+		return dev->dma_io_tlb_mem;
+#endif /* CONFIG_DMA_RESTRICTED_POOL */
+
+	return io_tlb_default_mem;
+}
+
 static inline bool is_swiotlb_buffer(phys_addr_t paddr)
 {
 	struct io_tlb_mem *mem = io_tlb_default_mem;
-- 
2.31.1.368.gbe11c130af-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
