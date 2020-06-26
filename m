Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DE820B101
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 13:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEB036EC77;
	Fri, 26 Jun 2020 11:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 481 seconds by postgrey-1.36 at gabe;
 Fri, 26 Jun 2020 11:54:15 UTC
Received: from mail.skyhub.de (mail.skyhub.de [5.9.137.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF8F6EC77
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 11:54:15 +0000 (UTC)
Received: from zn.tnic (p200300ec2f0d140021dd7ed6b715c4c4.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0d:1400:21dd:7ed6:b715:c4c4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 23A021EC0328;
 Fri, 26 Jun 2020 13:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1593171969;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=yucFdKjCgoeX7C5mwPW8/rg/saxXn/xSVvZ7fS34kZo=;
 b=BiSmIrJGCJ0faVBTZtyCh7yIB1Uqh9DHPhI2oITaZpZkMxJelcG9IUXj87k4aPSN9CDwfQ
 NWSmB1HxwZn/+psfecdpLWBxf30ds9kL9HUXdAG1jYW/DrYmbBsZMtJGqwHemik4kwPaUw
 f1ErWNzJemfGf7t3q9dl/erT/q4WHto=
Date: Fri, 26 Jun 2020 13:46:03 +0200
From: Borislav Petkov <bp@alien8.de>
To: Joerg Roedel <joro@8bytes.org>
Message-ID: <20200626114603.GC27151@zn.tnic>
References: <20200625130836.1916-1-joro@8bytes.org>
 <20200625130836.1916-10-joro@8bytes.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200625130836.1916-10-joro@8bytes.org>
Subject: Re: [Intel-gfx] [PATCH 09/13] x86: Remove dev->archdata.iommu
 pointer
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
 iommu@lists.linux-foundation.org, David Woodhouse <dwmw2@infradead.org>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 25, 2020 at 03:08:32PM +0200, Joerg Roedel wrote:
> From: Joerg Roedel <jroedel@suse.de>
> 
> There are no users left, all drivers have been converted to use the
> per-device private pointer offered by IOMMU core.
> 
> Signed-off-by: Joerg Roedel <jroedel@suse.de>
> ---
>  arch/x86/include/asm/device.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/x86/include/asm/device.h b/arch/x86/include/asm/device.h
> index 49bd6cf3eec9..7c0a52ca2f4d 100644
> --- a/arch/x86/include/asm/device.h
> +++ b/arch/x86/include/asm/device.h
> @@ -3,9 +3,6 @@
>  #define _ASM_X86_DEVICE_H
>  
>  struct dev_archdata {
> -#ifdef CONFIG_IOMMU_API
> -	void *iommu; /* hook for IOMMU specific extension */
> -#endif
>  };
>  
>  struct pdev_archdata {
> -- 

Acked-by: Borislav Petkov <bp@suse.de>

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
