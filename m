Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAE0128C50
	for <lists+intel-gfx@lfdr.de>; Sun, 22 Dec 2019 03:34:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B1C56E4D2;
	Sun, 22 Dec 2019 02:34:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A05606E47A
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 15:04:47 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id l8so11403591edw.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Dec 2019 07:04:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i4dEmM8P1MkKKnNa6NcbuVyKrLsO9ZvL1WqSkd7MOXA=;
 b=WkrW4Y9gFyG7Qyoell6pvhgdKX7JRReMnuuB9atJoZy04C/ONzngI9MJcZe1C52tLI
 oAbpeUorXN0OuO/Eg0uTEPtK43geQL68lw4o7Ot8H5XsWGNoa1eKf/zWorwqA2LubWhP
 ocpyZSMtNUbr1NWS3tmsbNFojfO0KFn4+WKore4fioT3aEQ4/J+J2uZcNnl0dckx4Wul
 NRwfEfsYHCfN/A/PJf0LwxVas5fBCAxc6UJkeMBPTkWvH4AkfCBijNzpnj6o2cB8Gozf
 5sLHCOhpM/FGuPL/eZWe8ySg2l+HsNgX8TbOePQbTkrzEKNWd/Ih3KEJxTQ88SBthjQ7
 3K5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i4dEmM8P1MkKKnNa6NcbuVyKrLsO9ZvL1WqSkd7MOXA=;
 b=szNQqqTdRHpEe2OEzo41MZAENmf7YCKbW+ewKDNx/ibpuT6AChkxGE4MIl9nkLDuD+
 x3EfGiemBBqT9iuGpYKKBLCpCyVMgFFcPr3BPGEMrasfo9WednbtCkPobiqgUnCO7oC3
 AyhTNn1jdkk4I0boYXTsQwP44OS31mUI2c6NMT3wFZoBOj+BIIHrVt2IQIbRcu35vZd8
 r3GNy9jMSkvG3JQMG38d2gFUHxjC8GnWQO6jKB2RZmnWr1pLL5KjIzKMMVM21RGB63U+
 TwVcZTGKOddcFLdDhlT2V+PYUvCp4qw3mR6wPBG6x3IR/AwhNlOZm2QCYzMekx2RDcWN
 4U8g==
X-Gm-Message-State: APjAAAWbGHf4VgAXC6eegHDKuchOkRaPvmC5+YH/4sOhEJrGpWL1E4KU
 hYgsdFrJGanGccVBDHULYlVYKQ==
X-Google-Smtp-Source: APXvYqzXACa8CmCe+lm4PqHAgWDF0JjnrRxrrR2y7kN6n1yqsWvuOaXwCLqKegFsZD4yWY1Pcx2X8g==
X-Received: by 2002:a05:6402:2c3:: with SMTP id
 b3mr22084523edx.207.1576940686355; 
 Sat, 21 Dec 2019 07:04:46 -0800 (PST)
Received: from localhost.localdomain ([80.233.37.20])
 by smtp.googlemail.com with ESMTPSA id u13sm1517639ejz.69.2019.12.21.07.04.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 07:04:45 -0800 (PST)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Date: Sat, 21 Dec 2019 15:03:57 +0000
Message-Id: <20191221150402.13868-6-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191221150402.13868-1-murphyt7@tcd.ie>
References: <20191221150402.13868-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 22 Dec 2019 02:34:03 +0000
Subject: [Intel-gfx] [PATCH 5/8] iommu: Add iommu_dma_free_cpu_cached_iovas
 function
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
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-tegra@vger.kernel.org,
 Julien Grall <julien.grall@arm.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Eric Auger <eric.auger@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 virtualization@lists.linux-foundation.org,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 David Woodhouse <dwmw2@infradead.org>, Cornelia Huck <cohuck@redhat.com>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Kukjin Kim <kgene@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

to dma-iommu ops

Add a iommu_dma_free_cpu_cached_iovas function to allow drivers which
use the dma-iommu ops to free cached cpu iovas.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
---
 drivers/iommu/dma-iommu.c | 9 +++++++++
 include/linux/dma-iommu.h | 3 +++
 2 files changed, 12 insertions(+)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index df28facdfb8b..4eac3cd35443 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -50,6 +50,15 @@ struct iommu_dma_cookie {
 	struct iommu_domain		*fq_domain;
 };
 
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain)
+{
+	struct iommu_dma_cookie *cookie = domain->iova_cookie;
+	struct iova_domain *iovad = &cookie->iovad;
+
+	free_cpu_cached_iovas(cpu, iovad);
+}
+
 static void iommu_dma_entry_dtor(unsigned long data)
 {
 	struct page *freelist = (struct page *)data;
diff --git a/include/linux/dma-iommu.h b/include/linux/dma-iommu.h
index 2112f21f73d8..316d22a4a860 100644
--- a/include/linux/dma-iommu.h
+++ b/include/linux/dma-iommu.h
@@ -37,6 +37,9 @@ void iommu_dma_compose_msi_msg(struct msi_desc *desc,
 
 void iommu_dma_get_resv_regions(struct device *dev, struct list_head *list);
 
+void iommu_dma_free_cpu_cached_iovas(unsigned int cpu,
+		struct iommu_domain *domain);
+
 #else /* CONFIG_IOMMU_DMA */
 
 struct iommu_domain;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
