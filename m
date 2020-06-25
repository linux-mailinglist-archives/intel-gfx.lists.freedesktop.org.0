Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BDBD209F8E
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 15:17:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20081898AA;
	Thu, 25 Jun 2020 13:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from theia.8bytes.org (8bytes.org
 [IPv6:2a01:238:4383:600:38bc:a715:4b6d:a889])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D18D589873
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 13:16:56 +0000 (UTC)
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id F104136D; Thu, 25 Jun 2020 15:08:37 +0200 (CEST)
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Date: Thu, 25 Jun 2020 15:08:23 +0200
Message-Id: <20200625130836.1916-1-joro@8bytes.org>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH 00/13] iommu: Remove usage of dev->archdata.iommu
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
Cc: linux-ia64@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Joerg Roedel <joro@8bytes.org>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Joerg Roedel <jroedel@suse.de>, intel-gfx@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Tony Luck <tony.luck@intel.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 David Woodhouse <dwmw2@infradead.org>, Lu Baolu <baolu.lu@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Joerg Roedel <jroedel@suse.de>

Hi,

here is a patch-set to remove the usage of dev->archdata.iommu from
the IOMMU code in the kernel and replace its uses by the iommu per-device
private data field. The changes also remove the field entirely from
the architectures which no longer need it.

On PowerPC the field is called dev->archdata.iommu_domain and was only
used by the PAMU IOMMU driver. It gets removed as well.

The patches have been runtime tested on Intel VT-d and compile tested
with allyesconfig for:

	* x86 (32 and 64 bit)
	* arm and arm64
	* ia64 (only drivers/ because build failed for me in
	        arch/ia64)
	* PPC64

Besides that the changes also survived my IOMMU tree compile tests.

Please review.

Regards,

	Joerg

Joerg Roedel (13):
  iommu/exynos: Use dev_iommu_priv_get/set()
  iommu/vt-d: Use dev_iommu_priv_get/set()
  iommu/msm: Use dev_iommu_priv_get/set()
  iommu/omap: Use dev_iommu_priv_get/set()
  iommu/rockchip: Use dev_iommu_priv_get/set()
  iommu/tegra: Use dev_iommu_priv_get/set()
  iommu/pamu: Use dev_iommu_priv_get/set()
  iommu/mediatek: Do no use dev->archdata.iommu
  x86: Remove dev->archdata.iommu pointer
  ia64: Remove dev->archdata.iommu pointer
  arm: Remove dev->archdata.iommu pointer
  arm64: Remove dev->archdata.iommu pointer
  powerpc/dma: Remove dev->archdata.iommu_domain

 arch/arm/include/asm/device.h                 |  3 ---
 arch/arm64/include/asm/device.h               |  3 ---
 arch/ia64/include/asm/device.h                |  3 ---
 arch/powerpc/include/asm/device.h             |  3 ---
 arch/x86/include/asm/device.h                 |  3 ---
 .../gpu/drm/i915/selftests/mock_gem_device.c  | 10 ++++++++--
 drivers/iommu/exynos-iommu.c                  | 20 +++++++++----------
 drivers/iommu/fsl_pamu_domain.c               |  8 ++++----
 drivers/iommu/intel/iommu.c                   | 18 ++++++++---------
 drivers/iommu/msm_iommu.c                     |  4 ++--
 drivers/iommu/mtk_iommu.h                     |  2 ++
 drivers/iommu/mtk_iommu_v1.c                  | 10 ++++------
 drivers/iommu/omap-iommu.c                    | 20 +++++++++----------
 drivers/iommu/rockchip-iommu.c                |  8 ++++----
 drivers/iommu/tegra-gart.c                    |  8 ++++----
 drivers/iommu/tegra-smmu.c                    |  8 ++++----
 .../media/platform/s5p-mfc/s5p_mfc_iommu.h    |  4 +++-
 17 files changed, 64 insertions(+), 71 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
