Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 227E8377FE3
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:51:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E37C6E453;
	Mon, 10 May 2021 09:50:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com
 [IPv6:2607:f8b0:4864:20::102f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37DC86E44F
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 09:50:57 +0000 (UTC)
Received: by mail-pj1-x102f.google.com with SMTP id p17so9452156pjz.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 02:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xzceaTJbUUoQMRiby9lwQqwtKo4y5qZbVn1w31ybRrg=;
 b=bOYHl1lk+9c5fpkjvJLlW2V+ZW1HWQZ8+GqQWpRXOyRwXl5gJ0b79YDClCoBfBBm4i
 Lg3ZY42RA3b3XCB5qgKa30diM6DGWie5c/Bp8lBvVatzuKYQ+cRSVyrR3Vn43XQ38Fby
 6vdAkHilxAu/KAE1HFPNhr6sG764ExUW8d2uc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xzceaTJbUUoQMRiby9lwQqwtKo4y5qZbVn1w31ybRrg=;
 b=isy9jF2GUvkcKETFYJj0JfEESoGd+PMMC6PwOEeIkVArcTSHWG+ylEBX5z+gg3hlZP
 9QAIW88SgQpwo8QnpMXfsJiYEVeE9Q1BzI7zNNCEvuUYo5JE78xebaDX+nTRR3+CTEWD
 toXt9Rsnrww0li1w/wMdphBCO8rV/dwq3OqatbsRG385Xwr4sIXB9YxDE3zswCaxyF7F
 uJMk2IhLP5XxMfYuglOF6zHcDrJmxrE5GIIarxP7diAyKATv2IFXUBTgwe7t4Wio4VHC
 cpn39UE9a19bSut/fP5WpWxYPEXDG/+CjLKhVRKEWgOBGThMuFAJg1L6Hl2/feWEwDq2
 DCGQ==
X-Gm-Message-State: AOAM532m4Gsi3LwSyxFMV/+/weG3sr9VwDH6o698/HJ8MB6xJ3moYBLt
 H4H6rJImmUBy+lVojsgd2RNVYw==
X-Google-Smtp-Source: ABdhPJxwy0teVP8y0d4KrEbfmPne0jX/g2pgdK0Y1sxb/62SuqcTyQ5c51wqp1akhS8ac/pL7Mr0nw==
X-Received: by 2002:a17:90a:bf0c:: with SMTP id
 c12mr25754828pjs.206.1620640256876; 
 Mon, 10 May 2021 02:50:56 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:a524:abe8:94e3:5601])
 by smtp.gmail.com with UTF8SMTPSA id 14sm10615255pfv.33.2021.05.10.02.50.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 May 2021 02:50:56 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Date: Mon, 10 May 2021 17:50:13 +0800
Message-Id: <20210510095026.3477496-3-tientzu@chromium.org>
X-Mailer: git-send-email 2.31.1.607.g51e8a6a459-goog
In-Reply-To: <20210510095026.3477496-1-tientzu@chromium.org>
References: <20210510095026.3477496-1-tientzu@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 02/15] swiotlb: Refactor
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

Split the debugfs creation to make the code reusable for supporting
different bounce buffer pools, e.g. restricted DMA pool.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 kernel/dma/swiotlb.c | 22 ++++++++++++++++------
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index d3232fc19385..858475bd6923 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -64,6 +64,7 @@
 enum swiotlb_force swiotlb_force;
 
 struct io_tlb_mem *io_tlb_default_mem;
+static struct dentry *debugfs_dir;
 
 /*
  * Max segment that we can provide which (if pages are contingous) will
@@ -662,18 +663,27 @@ EXPORT_SYMBOL_GPL(is_swiotlb_active);
 
 #ifdef CONFIG_DEBUG_FS
 
-static int __init swiotlb_create_debugfs(void)
+static void swiotlb_create_debugfs(struct io_tlb_mem *mem, const char *name,
+				   struct dentry *node)
 {
-	struct io_tlb_mem *mem = io_tlb_default_mem;
-
 	if (!mem)
-		return 0;
-	mem->debugfs = debugfs_create_dir("swiotlb", NULL);
+		return;
+
+	mem->debugfs = debugfs_create_dir(name, node);
 	debugfs_create_ulong("io_tlb_nslabs", 0400, mem->debugfs, &mem->nslabs);
 	debugfs_create_ulong("io_tlb_used", 0400, mem->debugfs, &mem->used);
+}
+
+static int __init swiotlb_create_default_debugfs(void)
+{
+	struct io_tlb_mem *mem = io_tlb_default_mem;
+
+	swiotlb_create_debugfs(mem, "swiotlb", NULL);
+	debugfs_dir = mem->debugfs;
+
 	return 0;
 }
 
-late_initcall(swiotlb_create_debugfs);
+late_initcall(swiotlb_create_default_debugfs);
 
 #endif
-- 
2.31.1.607.g51e8a6a459-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
