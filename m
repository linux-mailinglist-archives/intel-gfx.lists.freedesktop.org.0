Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D063A44FD
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 17:27:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57A6E6E7D7;
	Fri, 11 Jun 2021 15:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32A4A6EEB9
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 15:27:31 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id e1so2998360pld.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 08:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=POwdGvWH9uF6GuFYGDpfWh3gBTCdeay2Nuv62kz+670=;
 b=C9jITNUpsFL469uBCWw+ylcEXmDJHC24qGoWeq47lXmwrDoiFy9SQ+nYUnDf9eoUhJ
 UQMk8xg5DYQsIoGnRwISCRXEWnbFfVNYAqeVla6v7rlivkLs9OCXtvoP8+LC1h0SWDED
 3sRx2R1OhX94fVL71OHRWyugi7Thhky5EB+DQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=POwdGvWH9uF6GuFYGDpfWh3gBTCdeay2Nuv62kz+670=;
 b=B46cnDOAxNIc3LXF0uvmoTJsE+CNmd5eKUvygUXnBNVvQO6lzTDBtezhLiPirgpVa6
 8kEh9ADSVz3MjlhAZ0gvEUmKvpBiYVGq07TJcS134Tq0zL7EISKeQqGpIk35bGQLmav3
 5X6W8lmCc9eRuuAaswaCPZ+tvbi060U8DrBUG1897y4wU3IM1oWCHZzkz5QPd6Sbh3fy
 e6qGImzio2lT9COnFMYa/8VmGNIqt5LvYTT2XoxRSICbHmhBG2oKr+Mi1CVrni4SOcdA
 yR5XgmMgcLAzx5lwHjNsBqwuddaqYp7rlyPkP26fK9VEnkNlDoSM9LZgiEJuuy5ZeMoo
 eO8w==
X-Gm-Message-State: AOAM530OY8fkB1K35/nsQf6vzR9GO1rNQ8+fLndQGBIhtsjXZ9aTpy9P
 9dW+2BA3jNtUnHBwtaqXEyapKw==
X-Google-Smtp-Source: ABdhPJye589iRfRWyEdkeIKw72OE8rv2dNVWo6QIa4VZn02HOM9CDAmVKp9644S+z7efQaweuHXMtA==
X-Received: by 2002:a17:90a:7bce:: with SMTP id
 d14mr5098913pjl.38.1623425250808; 
 Fri, 11 Jun 2021 08:27:30 -0700 (PDT)
Received: from localhost ([2401:fa00:95:205:33c8:8e01:1161:6797])
 by smtp.gmail.com with UTF8SMTPSA id fs10sm10781936pjb.31.2021.06.11.08.27.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Jun 2021 08:27:30 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Date: Fri, 11 Jun 2021 23:26:47 +0800
Message-Id: <20210611152659.2142983-3-tientzu@chromium.org>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
In-Reply-To: <20210611152659.2142983-1-tientzu@chromium.org>
References: <20210611152659.2142983-1-tientzu@chromium.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 02/14] swiotlb: Refactor
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
 kernel/dma/swiotlb.c | 23 ++++++++++++++++-------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
index 1a1208c81e85..8a3e2b3b246d 100644
--- a/kernel/dma/swiotlb.c
+++ b/kernel/dma/swiotlb.c
@@ -64,6 +64,9 @@
 enum swiotlb_force swiotlb_force;
 
 struct io_tlb_mem *io_tlb_default_mem;
+#ifdef CONFIG_DEBUG_FS
+static struct dentry *debugfs_dir;
+#endif
 
 /*
  * Max segment that we can provide which (if pages are contingous) will
@@ -664,18 +667,24 @@ EXPORT_SYMBOL_GPL(is_swiotlb_active);
 
 #ifdef CONFIG_DEBUG_FS
 
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
2.32.0.272.g935e593368-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
