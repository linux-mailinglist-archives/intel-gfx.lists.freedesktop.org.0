Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D7E34A132
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 06:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C4D26EEAE;
	Fri, 26 Mar 2021 05:55:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D85D86E193;
 Fri, 26 Mar 2021 05:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=s84u+TwJThYObmjWKC4zV8i6uETAGMXJeQ3DQ6pqP3c=; b=gWD70eB5I7+vPuNtuRUeTBIc4Z
 xQAvTwojBG1Le3vsYAD2KwIKwVirGTuw8nqj/xo1S8d1KQbo890xiRYNke4nX67+mDSBm3+CkaMda
 cVsEdM8BcpyD/m/CGmhwDIAHg6Z24Zv/Mt/Tzv4i5dJNhwVxp/BjLuNFYoA0BSN6139GC3+D/NkUY
 9Vlb4ECf4n9Ke5THiSDISzqiPeYKY0hV+jfsJxSeElbpc7WgczN8tJNq76azvQ063XqL5r8YCVik/
 SSAoNb5rI7xPWmQdB7mXRHUS7nfJ0Lm4Ik88IWeRXoAbx5nRyNkuHdXcM8VdsDqmXNUBd86vHAWei
 6mHz1ctA==;
Received: from [2001:4bb8:191:f692:97ff:1e47:aee2:c7e5] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lPfRA-005AHn-Ei; Fri, 26 Mar 2021 05:55:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 26 Mar 2021 06:55:03 +0100
Message-Id: <20210326055505.1424432-3-hch@lst.de>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210326055505.1424432-1-hch@lst.de>
References: <20210326055505.1424432-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 2/4] mm: add a io_mapping_map_user helper
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a helper that calls remap_pfn_range for an struct io_mapping, relying
on the pgprot pre-validation done when creating the mapping instead of
doing it at runtime.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/io-mapping.h |  3 +++
 mm/Kconfig                 |  3 +++
 mm/Makefile                |  1 +
 mm/io-mapping.c            | 29 +++++++++++++++++++++++++++++
 4 files changed, 36 insertions(+)
 create mode 100644 mm/io-mapping.c

diff --git a/include/linux/io-mapping.h b/include/linux/io-mapping.h
index c093e81310a9b3..e9743cfd858527 100644
--- a/include/linux/io-mapping.h
+++ b/include/linux/io-mapping.h
@@ -220,3 +220,6 @@ io_mapping_free(struct io_mapping *iomap)
 }
 
 #endif /* _LINUX_IO_MAPPING_H */
+
+int io_mapping_map_user(struct io_mapping *iomap, struct vm_area_struct *vma,
+		unsigned long addr, unsigned long pfn, unsigned long size);
diff --git a/mm/Kconfig b/mm/Kconfig
index 24c045b24b9506..6b0f2cfbfac0f3 100644
--- a/mm/Kconfig
+++ b/mm/Kconfig
@@ -872,4 +872,7 @@ config MAPPING_DIRTY_HELPERS
 config KMAP_LOCAL
 	bool
 
+# struct io_mapping based helper.  Selected by drivers that need them
+config IO_MAPPING
+	bool
 endmenu
diff --git a/mm/Makefile b/mm/Makefile
index 72227b24a61688..c0135e385984bb 100644
--- a/mm/Makefile
+++ b/mm/Makefile
@@ -120,3 +120,4 @@ obj-$(CONFIG_MEMFD_CREATE) += memfd.o
 obj-$(CONFIG_MAPPING_DIRTY_HELPERS) += mapping_dirty_helpers.o
 obj-$(CONFIG_PTDUMP_CORE) += ptdump.o
 obj-$(CONFIG_PAGE_REPORTING) += page_reporting.o
+obj-$(CONFIG_IO_MAPPING) += io-mapping.o
diff --git a/mm/io-mapping.c b/mm/io-mapping.c
new file mode 100644
index 00000000000000..01b3627999304e
--- /dev/null
+++ b/mm/io-mapping.c
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <linux/mm.h>
+#include <linux/io-mapping.h>
+
+/**
+ * io_mapping_map_user - remap an I/O mapping to userspace
+ * @iomap: the source io_mapping
+ * @vma: user vma to map to
+ * @addr: target user address to start at
+ * @pfn: physical address of kernel memory
+ * @size: size of map area
+ *
+ *  Note: this is only safe if the mm semaphore is held when called.
+ */
+int io_mapping_map_user(struct io_mapping *iomap, struct vm_area_struct *vma,
+		unsigned long addr, unsigned long pfn, unsigned long size)
+{
+	vm_flags_t expected_flags = VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP;
+
+	if (WARN_ON_ONCE((vma->vm_flags & expected_flags) != expected_flags))
+		return -EINVAL;
+
+	/* We rely on prevalidation of the io-mapping to skip track_pfn(). */
+	return remap_pfn_range_notrack(vma, addr, pfn, size,
+		__pgprot((pgprot_val(iomap->prot) & _PAGE_CACHE_MASK) |
+			 (pgprot_val(vma->vm_page_prot) & ~_PAGE_CACHE_MASK)));
+}
+EXPORT_SYMBOL_GPL(io_mapping_map_user);
-- 
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
