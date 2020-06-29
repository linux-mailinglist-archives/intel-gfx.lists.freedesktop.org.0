Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B681F20CE0C
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 13:01:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1582D6E090;
	Mon, 29 Jun 2020 11:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 404 seconds by postgrey-1.36 at gabe;
 Mon, 29 Jun 2020 11:01:55 UTC
Received: from ozlabs.org (bilbo.ozlabs.org [IPv6:2401:3900:2:1::2])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0ED96E090
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 11:01:55 +0000 (UTC)
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49wPX01jWzz9s6w;
 Mon, 29 Jun 2020 20:54:55 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ellerman.id.au;
 s=201909; t=1593428108;
 bh=Ikj+QFFobl8b3GOszRTI8T5Tvh6wpN/NDrkClHklAgw=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=YiHYnDocf/5avJ1oQV/ZaHBo/5KnMj7//ysZQFYyI4CFWIs0UV549pLr1FezSCW5R
 7XD/bwKDSUl4GAlnxg7+l0dw4qYA4xFJR/p0JjqRrWAn2c6piTAq/Kf99cWgxRb+Vr
 ch+9DPfW5GFlugwK8NDTwdtqvhOtAXApFXREB/EMHOgHMLm6ivU0YJfIMjJPJ40xpN
 kv2gGSe40lRU0VLBuIWAsbpJHfD2vQ8cVfDbiLUGCL8LADDRAfzAvbVmxjxe8KYph/
 C0DoRs93QcEpGuelY5DIvGvYXit7Ov60w25mPElZgJuSxb+KyRGJmW1byOAeC/UHQf
 AIm77bM9c7www==
From: Michael Ellerman <mpe@ellerman.id.au>
To: Joerg Roedel <joro@8bytes.org>, iommu@lists.linux-foundation.org
In-Reply-To: <20200625130836.1916-14-joro@8bytes.org>
References: <20200625130836.1916-1-joro@8bytes.org>
 <20200625130836.1916-14-joro@8bytes.org>
Date: Mon, 29 Jun 2020 20:57:07 +1000
Message-ID: <87bll287i4.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 13/13] powerpc/dma: Remove
 dev->archdata.iommu_domain
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
 Marek Szyprowski <m.szyprowski@samsung.com>, Joerg Roedel <joro@8bytes.org>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
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

Joerg Roedel <joro@8bytes.org> writes:
> From: Joerg Roedel <jroedel@suse.de>
>
> There are no users left, so remove the pointer and save some memory.
>
> Signed-off-by: Joerg Roedel <jroedel@suse.de>
> ---
>  arch/powerpc/include/asm/device.h | 3 ---
>  1 file changed, 3 deletions(-)

It's a little hard to confirm there are no users left just with grep,
but I think you've got them all, and the compiler should tell us if
you've missed any.

Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

cheers

> diff --git a/arch/powerpc/include/asm/device.h b/arch/powerpc/include/asm/device.h
> index 266542769e4b..1bc595213338 100644
> --- a/arch/powerpc/include/asm/device.h
> +++ b/arch/powerpc/include/asm/device.h
> @@ -34,9 +34,6 @@ struct dev_archdata {
>  	struct iommu_table	*iommu_table_base;
>  #endif
>  
> -#ifdef CONFIG_IOMMU_API
> -	void			*iommu_domain;
> -#endif
>  #ifdef CONFIG_PPC64
>  	struct pci_dn		*pci_data;
>  #endif
> -- 
> 2.27.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
