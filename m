Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7BB20F20A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 12:00:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9880589BFD;
	Tue, 30 Jun 2020 10:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from theia.8bytes.org (8bytes.org [81.169.241.247])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A91FD89BFD
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 10:00:19 +0000 (UTC)
Received: by theia.8bytes.org (Postfix, from userid 1000)
 id 7BBA42A7; Tue, 30 Jun 2020 12:00:15 +0200 (CEST)
Date: Tue, 30 Jun 2020 12:00:14 +0200
From: Joerg Roedel <joro@8bytes.org>
To: iommu@lists.linux-foundation.org
Message-ID: <20200630100013.GJ28824@8bytes.org>
References: <20200625130836.1916-1-joro@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625130836.1916-1-joro@8bytes.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 00/13] iommu: Remove usage of
 dev->archdata.iommu
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
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Joerg Roedel <jroedel@suse.de>, intel-gfx@lists.freedesktop.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Tony Luck <tony.luck@intel.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 David Woodhouse <dwmw2@infradead.org>, Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 25, 2020 at 03:08:23PM +0200, Joerg Roedel wrote:
> Joerg Roedel (13):
>   iommu/exynos: Use dev_iommu_priv_get/set()
>   iommu/vt-d: Use dev_iommu_priv_get/set()
>   iommu/msm: Use dev_iommu_priv_get/set()
>   iommu/omap: Use dev_iommu_priv_get/set()
>   iommu/rockchip: Use dev_iommu_priv_get/set()
>   iommu/tegra: Use dev_iommu_priv_get/set()
>   iommu/pamu: Use dev_iommu_priv_get/set()
>   iommu/mediatek: Do no use dev->archdata.iommu
>   x86: Remove dev->archdata.iommu pointer
>   ia64: Remove dev->archdata.iommu pointer
>   arm: Remove dev->archdata.iommu pointer
>   arm64: Remove dev->archdata.iommu pointer
>   powerpc/dma: Remove dev->archdata.iommu_domain

Applied.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
