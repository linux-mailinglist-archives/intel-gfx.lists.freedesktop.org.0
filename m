Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D91F820AA34
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 03:41:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E36AA6EC30;
	Fri, 26 Jun 2020 01:41:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7E5C6EC30
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 01:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1593135693;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:in-reply-to:in-reply-to:  references:references;
 bh=uo+JSVhYTDvCZf7XIZ/u95KoeLyqGn7ATOJ0JQcKOAM=;
 b=WqDAZecUJBxiaUAgwgSrGbVHLQvnSn1rU3HiGL5FpD3zvdMxAIEqrQMOWEDlfpHGBrRG8k
 T/YCy+8DcfMBiguoBJoHP1IsMdCJLlNNWjkHAvgs7ZWuhLYGpe9Ju/O5FY98jJG4MUL3vH
 6mHV/aXoZ0STuDOAL0YjGLFpxhKzi3g=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-463-Oa4HHVkvObq3o0Hp6kWRhg-1; Thu, 25 Jun 2020 21:41:29 -0400
X-MC-Unique: Oa4HHVkvObq3o0Hp6kWRhg-1
Received: by mail-qt1-f197.google.com with SMTP id k15so2793197qti.22
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 18:41:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=uo+JSVhYTDvCZf7XIZ/u95KoeLyqGn7ATOJ0JQcKOAM=;
 b=Ng1fXxNz/Di+EMwIRHlt0l8yPSTmKZpdBDYmOe/ZCTOL2UU2a1lBsmrNUWhbnQUNQ9
 FztY0qyJN1jTyotm5KPyMhfqnFgfUgaJvNgOQswter000YTm2mILd9h3xNY/RhxyWHYu
 A3/nz8YYxfcHPsBoVxqM69fNLCeHAXV04vym8wzFtHhuThZGLXlnhB15JtEy2goIEWwW
 NBEcLZIYavkZPesG7IHZOO4+YawnoCBhhsxZFLbjAfLaQe6SXJUgYjcdSPQv5DDZEbPX
 iSGt/EvEaZsyagNNpYRJb0j9jerKHq74+QHS3TSsLK2OYYNFkAO6teSPo/xoeQfyrngx
 bqVA==
X-Gm-Message-State: AOAM5327IamfCZatZURAoEv2QBYiknEEAUD10Lw7VYvec7hNsRmJm89h
 r9RSYT+OccLkA++aH2AWdtSvcABc2aDjMKzIwrDt0wMBLDIjjNeS8/2cyYH2b4T7WNbYhF7AK2X
 zibozjRhJm68Ku/mZdSs6J9AI25JW
X-Received: by 2002:ac8:4c88:: with SMTP id j8mr485588qtv.57.1593135689026;
 Thu, 25 Jun 2020 18:41:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxE0WP3An23id/QtUmTXvQBy3iL8fWfM574b18RON6eZLnCxQ/UjBX9iOp11Y71pEOcFwhWWA==
X-Received: by 2002:ac8:4c88:: with SMTP id j8mr485566qtv.57.1593135688592;
 Thu, 25 Jun 2020 18:41:28 -0700 (PDT)
Received: from localhost (ip70-163-223-149.ph.ph.cox.net. [70.163.223.149])
 by smtp.gmail.com with ESMTPSA id 19sm7136347qke.44.2020.06.25.18.41.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 18:41:27 -0700 (PDT)
Date: Thu, 25 Jun 2020 18:41:26 -0700
From: Jerry Snitselaar <jsnitsel@redhat.com>
To: Joerg Roedel <joro@8bytes.org>
Message-ID: <20200626014126.vbjw5jh7wqrpm4oc@cantor>
Mail-Followup-To: Joerg Roedel <joro@8bytes.org>,
 iommu@lists.linux-foundation.org,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Tony Luck <tony.luck@intel.com>,
 Fenghua Yu <fenghua.yu@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, x86@kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 David Woodhouse <dwmw2@infradead.org>,
 Lu Baolu <baolu.lu@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-ia64@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 intel-gfx@lists.freedesktop.org, Joerg Roedel <jroedel@suse.de>
References: <20200625130836.1916-1-joro@8bytes.org>
MIME-Version: 1.0
In-Reply-To: <20200625130836.1916-1-joro@8bytes.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
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
Reply-To: Jerry Snitselaar <jsnitsel@redhat.com>
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
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu Jun 25 20, Joerg Roedel wrote:
>From: Joerg Roedel <jroedel@suse.de>
>
>Hi,
>
>here is a patch-set to remove the usage of dev->archdata.iommu from
>the IOMMU code in the kernel and replace its uses by the iommu per-device
>private data field. The changes also remove the field entirely from
>the architectures which no longer need it.
>
>On PowerPC the field is called dev->archdata.iommu_domain and was only
>used by the PAMU IOMMU driver. It gets removed as well.
>
>The patches have been runtime tested on Intel VT-d and compile tested
>with allyesconfig for:
>
>	* x86 (32 and 64 bit)
>	* arm and arm64
>	* ia64 (only drivers/ because build failed for me in
>	        arch/ia64)
>	* PPC64
>
>Besides that the changes also survived my IOMMU tree compile tests.
>
>Please review.
>
>Regards,
>
>	Joerg
>
>Joerg Roedel (13):
>  iommu/exynos: Use dev_iommu_priv_get/set()
>  iommu/vt-d: Use dev_iommu_priv_get/set()
>  iommu/msm: Use dev_iommu_priv_get/set()
>  iommu/omap: Use dev_iommu_priv_get/set()
>  iommu/rockchip: Use dev_iommu_priv_get/set()
>  iommu/tegra: Use dev_iommu_priv_get/set()
>  iommu/pamu: Use dev_iommu_priv_get/set()
>  iommu/mediatek: Do no use dev->archdata.iommu
>  x86: Remove dev->archdata.iommu pointer
>  ia64: Remove dev->archdata.iommu pointer
>  arm: Remove dev->archdata.iommu pointer
>  arm64: Remove dev->archdata.iommu pointer
>  powerpc/dma: Remove dev->archdata.iommu_domain
>
> arch/arm/include/asm/device.h                 |  3 ---
> arch/arm64/include/asm/device.h               |  3 ---
> arch/ia64/include/asm/device.h                |  3 ---
> arch/powerpc/include/asm/device.h             |  3 ---
> arch/x86/include/asm/device.h                 |  3 ---
> .../gpu/drm/i915/selftests/mock_gem_device.c  | 10 ++++++++--
> drivers/iommu/exynos-iommu.c                  | 20 +++++++++----------
> drivers/iommu/fsl_pamu_domain.c               |  8 ++++----
> drivers/iommu/intel/iommu.c                   | 18 ++++++++---------
> drivers/iommu/msm_iommu.c                     |  4 ++--
> drivers/iommu/mtk_iommu.h                     |  2 ++
> drivers/iommu/mtk_iommu_v1.c                  | 10 ++++------
> drivers/iommu/omap-iommu.c                    | 20 +++++++++----------
> drivers/iommu/rockchip-iommu.c                |  8 ++++----
> drivers/iommu/tegra-gart.c                    |  8 ++++----
> drivers/iommu/tegra-smmu.c                    |  8 ++++----
> .../media/platform/s5p-mfc/s5p_mfc_iommu.h    |  4 +++-
> 17 files changed, 64 insertions(+), 71 deletions(-)
>
>-- 
>2.27.0
>

Reviewed-by: Jerry Snitselaar <jsnitsel@redhat.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
