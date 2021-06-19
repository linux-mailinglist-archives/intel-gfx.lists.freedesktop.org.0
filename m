Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A646A3AD717
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Jun 2021 05:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B6316EB13;
	Sat, 19 Jun 2021 03:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 574506EB12
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Jun 2021 03:41:12 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id t13so9418619pgu.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 20:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=87F32lyNJPVTVtO+0wV8iOXVR4FYPSJ8Efeoe/l3AWY=;
 b=i1ENWaFNKwGMCMiAeHBUHeHeWCgJo2DMoHTJ8FYIFrvt5MmhJ7OFiSW0SvgsImDco7
 eyyIqWu+/Z0bEeYC6m5AiJ1SXr0nn6NCHriX3ZUuh6wWoj4iO9mtnXQIU1hsa49/kNzW
 JSXwJ+CCVTQ+vErOyYxRYe6Lgoq4CUcXaMXXc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=87F32lyNJPVTVtO+0wV8iOXVR4FYPSJ8Efeoe/l3AWY=;
 b=ZYOen248hJ0B4uSlPAdf+1hPg+ObC1+aWqef0FAOPhUbM9LuHbOEQZ4/UOSLZ3wMzc
 CdQ9+VK8KDuy3pB1qYVEN32uuDxx/DdnGIt4EECLP/IyCENMwQZxpYlG4Pa7srb1JdZG
 8u375OUodSkg/pfgUAE2MAceoJPBlWYOaIksvBfRV3CS3znp/CVE/9KEI2iJZY/2cfYh
 +QRvJQXncH4wqreUZEpIvEXfQ8hCEeM1RV1//Kv9Q3Kx2Z4rNZD6AMEm3GN/KcnpGPpl
 tAU+XGlO5eKCSdDh9aZA+1l0KE6T1eqLr4iI5I4foOloQVQcd055XwZqrV7IDEdLOKxl
 l/7A==
X-Gm-Message-State: AOAM533zaKRL/nE03E0fAbzSHazg1qsxc3CeWWr0D/W15WG5sawxh8Ow
 N+XZfM/9kCfVNqTWQf/vtNM/Bw==
X-Google-Smtp-Source: ABdhPJyiBODmYapISErXaci/paTftzSQoq4G3MHhJ6blBXA4Xk2Rt3t9DUi7Q/sURCxYsvPxcPxH7g==
X-Received: by 2002:a63:4915:: with SMTP id w21mr13046659pga.363.1624074072021; 
 Fri, 18 Jun 2021 20:41:12 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:4a46:e208:29e8:e076])
 by smtp.gmail.com with UTF8SMTPSA id 25sm10160700pgp.51.2021.06.18.20.41.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Jun 2021 20:41:11 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Date: Sat, 19 Jun 2021 11:40:33 +0800
Message-Id: <20210619034043.199220-3-tientzu@chromium.org>
X-Mailer: git-send-email 2.32.0.288.g62a8d224e6-goog
In-Reply-To: <20210619034043.199220-1-tientzu@chromium.org>
References: <20210619034043.199220-1-tientzu@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v14 02/12] swiotlb: Refactor
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
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 lkml <linux-kernel@vger.kernel.org>, tfiga@chromium.org,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, thomas.lendacky@amd.com,
 linuxppc-dev@lists.ozlabs.org, bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Split the debugfs creation to make the code reusable for supporting
different bounce buffer pools.

Signed-off-by: Claire Chang <tientzu@chromium.org>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Tested-by: Stefano Stabellini <sstabellini@kernel.org>
Tested-by: Will Deacon <will@kernel.org>
---
 kernel/dma/swiotlb.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index 1f9b2b9e7490..ede66df6835b 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -671,19 +671,26 @@ bool is_swiotlb_active(void)
 EXPORT_SYMBOL_GPL(is_swiotlb_active);
 
 #ifdef CONFIG_DEBUG_FS
+static struct dentry *debugfs_dir;
 
-static int __init swiotlb_create_debugfs(void)
+static void swiotlb_create_debugfs_files(struct io_tlb_mem *mem)
 {
-	struct io_tlb_mem *mem = io_tlb_default_mem;
-
-	if (!mem)
-		return 0;
-	mem->debugfs = debugfs_create_dir("swiotlb", NULL);
 	debugfs_create_ulong("io_tlb_nslabs", 0400, mem->debugfs, &mem->nslabs);
 	debugfs_create_ulong("io_tlb_used", 0400, mem->debugfs, &mem->used);
+}
+
+static int __init swiotlb_create_default_debugfs(void)
+{
+	struct io_tlb_mem *mem = io_tlb_default_mem;
+
+	debugfs_dir = debugfs_create_dir("swiotlb", NULL);
+	if (mem) {
+		mem->debugfs = debugfs_dir;
+		swiotlb_create_debugfs_files(mem);
+	}
 	return 0;
 }
 
-late_initcall(swiotlb_create_debugfs);
+late_initcall(swiotlb_create_default_debugfs);
 
 #endif
-- 
2.32.0.288.g62a8d224e6-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
