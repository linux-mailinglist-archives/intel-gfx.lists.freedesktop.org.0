Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04227367BDE
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 10:15:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CEC96EA50;
	Thu, 22 Apr 2021 08:15:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D5CD6EA44
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 08:15:19 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 f11-20020a17090a638bb02901524d3a3d48so539234pjj.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Apr 2021 01:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FvJrG6v4LzxdU4oF5EoFjO30pTB4A85M49SYo7WPBCw=;
 b=AMMWTSQCSdwHsUUdJCOC7YgUNrGXxRc8ufe8ShxXHlWgfWfBk0oS2HBubv7AQuSAMq
 M0urTLFpK7JN5/zRDUB5Fe/pClBUqpuo+IAb+avdRaxLPwR3C9WYDtIQPHvIq7nNv2DT
 9Un/y51JxY/e6QYvwfJXjQ/aVxL0I13goxqlM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=FvJrG6v4LzxdU4oF5EoFjO30pTB4A85M49SYo7WPBCw=;
 b=lRu/A/akXPS2NRLJ2/9vQvCHO6IUfqzH9Gs3Yuxx1AZUVzOlKLeIlPF7CorSUIQ5uo
 og41dPwPxghN26BBJH3gIv9KOQpgQ0vgMYLmfVz7JLTolvrJOki8r7/NYSBnIx03irIo
 hD8rlGFVKO9cYoFqoac65NdbfG8RNie+iz3ztDHWzawtmWCQXvT6UCjkpjYmFzjlD+up
 mI1FuhGaGZTvRiZQ2kULRw8APBwJGsHKv/xyla67SnzWhFBkMoKZ1aidxfVM6Dqv2Qov
 qFHL4hOfM23zucDO3dsz8vOOANXFYaiCvWH+XvwpHTzf/UAaHjYn/anIK1P3PcNyY90T
 EUUw==
X-Gm-Message-State: AOAM530SCKUSNzqsgKdyy+kpX0M2DQTB0EAoTMbq4bZ3LoIuPkzAtwIG
 ihRQI1LtDQHcmigZANtcNxeDpg==
X-Google-Smtp-Source: ABdhPJyk2JPTp3iko6u7v5EX3M6TzCT5gzjwwnFh5uBqfgtgyUVxzY91nyUWyB+4tQ6Gme84DA/b2g==
X-Received: by 2002:a17:902:edd5:b029:e9:7477:5f0a with SMTP id
 q21-20020a170902edd5b02900e974775f0amr2141960plk.81.1619079318644; 
 Thu, 22 Apr 2021 01:15:18 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:1a8e:1bde:f79e:c302])
 by smtp.gmail.com with UTF8SMTPSA id r1sm1538054pjo.26.2021.04.22.01.15.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Apr 2021 01:15:18 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Date: Thu, 22 Apr 2021 16:14:52 +0800
Message-Id: <20210422081508.3942748-1-tientzu@chromium.org>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 00/16] Restricted DMA
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

This series implements mitigations for lack of DMA access control on
systems without an IOMMU, which could result in the DMA accessing the
system memory at unexpected times and/or unexpected addresses, possibly
leading to data leakage or corruption.

For example, we plan to use the PCI-e bus for Wi-Fi and that PCI-e bus is
not behind an IOMMU. As PCI-e, by design, gives the device full access to
system memory, a vulnerability in the Wi-Fi firmware could easily escalate
to a full system exploit (remote wifi exploits: [1a], [1b] that shows a
full chain of exploits; [2], [3]).

To mitigate the security concerns, we introduce restricted DMA. Restricted
DMA utilizes the existing swiotlb to bounce streaming DMA in and out of a
specially allocated region and does memory allocation from the same region.
The feature on its own provides a basic level of protection against the DMA
overwriting buffer contents at unexpected times. However, to protect
against general data leakage and system memory corruption, the system needs
to provide a way to restrict the DMA to a predefined memory region (this is
usually done at firmware level, e.g. MPU in ATF on some ARM platforms [4]).

[1a] https://googleprojectzero.blogspot.com/2017/04/over-air-exploiting-broadcoms-wi-fi_4.html
[1b] https://googleprojectzero.blogspot.com/2017/04/over-air-exploiting-broadcoms-wi-fi_11.html
[2] https://blade.tencent.com/en/advisories/qualpwn/
[3] https://www.bleepingcomputer.com/news/security/vulnerabilities-found-in-highly-popular-firmware-for-wifi-chips/
[4] https://github.com/ARM-software/arm-trusted-firmware/blob/master/plat/mediatek/mt8183/drivers/emi_mpu/emi_mpu.c#L132

v5:
  Rebase on latest linux-next

v4:
  - Fix spinlock bad magic
  - Use rmem->name for debugfs entry
  - Address the comments in v3

v3:
  Using only one reserved memory region for both streaming DMA and memory
  allocation.
  https://lore.kernel.org/patchwork/cover/1360992/

v2:
  Building on top of swiotlb.
  https://lore.kernel.org/patchwork/cover/1280705/

v1:
  Using dma_map_ops.
  https://lore.kernel.org/patchwork/cover/1271660/

Claire Chang (16):
  swiotlb: Fix the type of index
  swiotlb: Refactor swiotlb init functions
  swiotlb: Refactor swiotlb_create_debugfs
  swiotlb: Add DMA_RESTRICTED_POOL
  swiotlb: Add restricted DMA pool initialization
  swiotlb: Add a new get_io_tlb_mem getter
  swiotlb: Update is_swiotlb_buffer to add a struct device argument
  swiotlb: Update is_swiotlb_active to add a struct device argument
  swiotlb: Bounce data from/to restricted DMA pool if available
  swiotlb: Move alloc_size to find_slots
  swiotlb: Refactor swiotlb_tbl_unmap_single
  dma-direct: Add a new wrapper __dma_direct_free_pages()
  swiotlb: Add restricted DMA alloc/free support.
  dma-direct: Allocate memory from restricted DMA pool if available
  dt-bindings: of: Add restricted DMA pool
  of: Add plumbing for restricted DMA pool

 .../reserved-memory/reserved-memory.txt       |  24 ++
 drivers/gpu/drm/i915/gem/i915_gem_internal.c  |   2 +-
 drivers/gpu/drm/nouveau/nouveau_ttm.c         |   2 +-
 drivers/iommu/dma-iommu.c                     |  12 +-
 drivers/of/address.c                          |  25 ++
 drivers/of/device.c                           |   3 +
 drivers/of/of_private.h                       |   5 +
 drivers/pci/xen-pcifront.c                    |   2 +-
 drivers/xen/swiotlb-xen.c                     |   2 +-
 include/linux/device.h                        |   4 +
 include/linux/swiotlb.h                       |  41 ++-
 kernel/dma/Kconfig                            |  14 +
 kernel/dma/direct.c                           |  57 +++--
 kernel/dma/direct.h                           |   9 +-
 kernel/dma/swiotlb.c                          | 242 +++++++++++++-----
 15 files changed, 347 insertions(+), 97 deletions(-)

-- 
2.31.1.368.gbe11c130af-goog

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
