Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A13CB4D65FB
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 17:22:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98EB010E1CE;
	Fri, 11 Mar 2022 16:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26C610E1CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 16:22:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 4DEF5CE295F;
 Fri, 11 Mar 2022 16:21:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A1E1C340E9;
 Fri, 11 Mar 2022 16:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647015713;
 bh=GPj97xwXd7bZWb2igozcXh6l9WpLM7UKzb8k1L1f/rE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=rqkv6vQOjZur+tP8BIzt8cpKdNgOt1bA2xNU81GRFJyE7yT+fluPu5vz4H64QUqzi
 chd9lK5tptabSrOIvWtlHOXSL/mUvTEmFPyp/lhtXTxwVCV1N5ey/6jfrB8V5MBZfA
 6hDoDU4hS8ZoBniM5NwGVWxn8L0/8hD64i3d6C8KX6M2cvzA9u0HofrOIfMPJH+a6X
 3ysFPFxxXlmlxC6+CYvOQDpPcZEhxY3Me9zDX9VA205XHPE82+GSUNQSzKuLnrScs9
 Vi2tN/F39ShtmteV0fueXsQrm/7udwZ9ZCI+G9CLF2PrrJDHy+JIDTIwYkZOIl5XRq
 D+q8Vzz5FdFfQ==
Date: Fri, 11 Mar 2022 10:21:51 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220311162151.GA304730@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220311100639.114685-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] x86/gpu: include drm/i915_pciids.h
 directly in early quirks
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, x86@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 11, 2022 at 12:06:38PM +0200, Jani Nikula wrote:
> early-quirks.c is the only user of drm/i915_drm.h that also needs
> drm/i915_pciids.h. Include the masses of PCI ID macros only where
> needed.
> 
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: linux-pci@vger.kernel.org
> Cc: x86@kernel.org
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

FWIW:

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
> 
> I'm hoping to merge this via drm-intel with the other patch.
> ---
>  arch/x86/kernel/early-quirks.c | 1 +
>  include/drm/i915_drm.h         | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index bd6dad83c65b..805596736e20 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -18,6 +18,7 @@
>  #include <linux/bcma/bcma_regs.h>
>  #include <linux/platform_data/x86/apple.h>
>  #include <drm/i915_drm.h>
> +#include <drm/i915_pciids.h>
>  #include <asm/pci-direct.h>
>  #include <asm/dma.h>
>  #include <asm/io_apic.h>
> diff --git a/include/drm/i915_drm.h b/include/drm/i915_drm.h
> index 6722005884db..afbf3ef5643e 100644
> --- a/include/drm/i915_drm.h
> +++ b/include/drm/i915_drm.h
> @@ -26,7 +26,6 @@
>  #ifndef _I915_DRM_H_
>  #define _I915_DRM_H_
>  
> -#include <drm/i915_pciids.h>
>  #include <uapi/drm/i915_drm.h>
>  
>  /* For use by IPS driver */
> -- 
> 2.30.2
> 
