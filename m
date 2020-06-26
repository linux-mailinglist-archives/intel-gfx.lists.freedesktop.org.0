Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB4020B367
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 16:19:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C396ECA9;
	Fri, 26 Jun 2020 14:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F6F66ECA6;
 Fri, 26 Jun 2020 14:19:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 893C8A47DF;
 Fri, 26 Jun 2020 14:19:22 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Joerg Roedel" <joro@8bytes.org>
Date: Fri, 26 Jun 2020 14:19:22 -0000
Message-ID: <159318116255.22986.13839496290193471327@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200625130836.1916-1-joro@8bytes.org>
In-Reply-To: <20200625130836.1916-1-joro@8bytes.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_iommu=3A_Remove_usage_of_dev-=3Earchdata=2Eiommu?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: iommu: Remove usage of dev->archdata.iommu
URL   : https://patchwork.freedesktop.org/series/78822/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
ea59789bb2c8 iommu/exynos: Use dev_iommu_priv_get/set()
-:20: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dev_iommu_priv_get"
#20: FILE: drivers/iommu/exynos-iommu.c:176:
+#define has_sysmmu(dev)		(dev_iommu_priv_get(dev) != NULL)

-:121: CHECK:COMPARISON_TO_NULL: Comparison to NULL could be written "dev_iommu_priv_get"
#121: FILE: drivers/media/platform/s5p-mfc/s5p_mfc_iommu.h:16:
+	return dev_iommu_priv_get(dev) != NULL;

total: 0 errors, 0 warnings, 2 checks, 95 lines checked
751d62a601db iommu/vt-d: Use dev_iommu_priv_get/set()
000b842cda59 iommu/msm: Use dev_iommu_priv_get/set()
79dfab955ac4 iommu/omap: Use dev_iommu_priv_get/set()
3168eb5065df iommu/rockchip: Use dev_iommu_priv_get/set()
df87e91a4c59 iommu/tegra: Use dev_iommu_priv_get/set()
d14eb31e19bb iommu/pamu: Use dev_iommu_priv_get/set()
be1951b09735 iommu/mediatek: Do no use dev->archdata.iommu
b86f57d96a87 x86: Remove dev->archdata.iommu pointer
beb0e5de86ca ia64: Remove dev->archdata.iommu pointer
e36fe82cd6d3 arm: Remove dev->archdata.iommu pointer
c154e15c0d13 arm64: Remove dev->archdata.iommu pointer
1cd7039a6769 powerpc/dma: Remove dev->archdata.iommu_domain

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
