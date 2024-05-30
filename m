Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A788D5012
	for <lists+intel-gfx@lfdr.de>; Thu, 30 May 2024 18:46:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5882A113A84;
	Thu, 30 May 2024 16:46:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="IlwYK5QE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E97113A84
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 May 2024 16:46:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 6C766CE1AED;
 Thu, 30 May 2024 16:46:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 782AEC2BBFC;
 Thu, 30 May 2024 16:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1717087588;
 bh=S3koTg/Gg0yDRSQEsIXG0A5glf4bKujAHcfOsarPm/4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=IlwYK5QEc5jZojeIE7fls0S6awoOL8B4l93N+JaQvALOU0cEQ7+8h4gC2rLY987Ci
 BE8D0HY4tUV8DQQaD5ervJmPCmqZM8BlEJk6Y/k1CKNGx8QKMqwEzPLdsnaa3sLayA
 y4pwKg+DLgS/Iym2vMg7qQhwsNu7b1/QhUmilGouGSfE/qfttx2DhOt6QX2HSIDsjV
 dftrkgbX+o4IU6UIQlRcCGT2q1EYM54MeIrmhkYmTY7hHI9iqO3ZdSyAwneFQYix68
 VAzSI+/1e+oceARXg5aaNvsxJ3gvRsyEeTJpngc9fdPrw7EZbategFCxjSEd6guLlO
 0hM2r6raGOGKg==
Date: Thu, 30 May 2024 11:46:26 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Dan Williams <dan.j.williams@intel.com>,
 Jani Saarinen <jani.saarinen@intel.com>, Dave Jiang <dave.jiang@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org
Subject: Re: [core-for-CI PATCH] PCI: Make PCI cfg_access_lock lockdep key a
 singleton
Message-ID: <20240530164626.GA550564@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240529114901.344655-1-imre.deak@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

[+cc linux-pci, this is a follow-up to 7e89efc6e9e4, which appeared in
v6.10-rc1 via the PCI tree]

On Wed, May 29, 2024 at 02:49:01PM +0300, Imre Deak wrote:
> From: Dan Williams <dan.j.williams@intel.com>
> 
> The new lockdep annotation for cfg_access_lock naively registered a new
> key per device. This is overkill and leads to warnings on hash
> collisions at dynamic registration time:
> 
>  WARNING: CPU: 0 PID: 1 at kernel/locking/lockdep.c:1226 lockdep_register_key+0xb0/0x240
>  RIP: 0010:lockdep_register_key+0xb0/0x240
>  [..]
>  Call Trace:
>   <TASK>
>   ? __warn+0x8c/0x190
>   ? lockdep_register_key+0xb0/0x240
>   ? report_bug+0x1f8/0x200
>   ? handle_bug+0x3c/0x70
>   ? exc_invalid_op+0x18/0x70
>   ? asm_exc_invalid_op+0x1a/0x20
>   ? lockdep_register_key+0xb0/0x240
>   pci_device_add+0x14b/0x560
>   ? pci_setup_device+0x42e/0x6a0
>   pci_scan_single_device+0xa7/0xd0
>   p2sb_scan_and_cache_devfn+0xc/0x90
>   p2sb_fs_init+0x15f/0x170
> 
> Switch to a shared static key for all instances.
> 
> Fixes: 7e89efc6e9e4 ("PCI: Lock upstream bridge for pci_reset_function()")
> Reported-by: Jani Saarinen <jani.saarinen@intel.com>
> Closes: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14834/bat-apl-1/boot0.txt
> Cc: Dave Jiang <dave.jiang@intel.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
>  drivers/pci/probe.c | 7 ++++---
>  include/linux/pci.h | 1 -
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
> index 8e696e547565c..15168881ec941 100644
> --- a/drivers/pci/probe.c
> +++ b/drivers/pci/probe.c
> @@ -2533,6 +2533,8 @@ static void pci_set_msi_domain(struct pci_dev *dev)
>  	dev_set_msi_domain(&dev->dev, d);
>  }
>  
> +static struct lock_class_key cfg_access_key;
> +
>  void pci_device_add(struct pci_dev *dev, struct pci_bus *bus)
>  {
>  	int ret;
> @@ -2546,9 +2548,8 @@ void pci_device_add(struct pci_dev *dev, struct pci_bus *bus)
>  	dev->dev.dma_mask = &dev->dma_mask;
>  	dev->dev.dma_parms = &dev->dma_parms;
>  	dev->dev.coherent_dma_mask = 0xffffffffull;
> -	lockdep_register_key(&dev->cfg_access_key);
> -	lockdep_init_map(&dev->cfg_access_lock, dev_name(&dev->dev),
> -			 &dev->cfg_access_key, 0);
> +	lockdep_init_map(&dev->cfg_access_lock, "&dev->cfg_access_lock",
> +			 &cfg_access_key, 0);
>  
>  	dma_set_max_seg_size(&dev->dev, 65536);
>  	dma_set_seg_boundary(&dev->dev, 0xffffffff);
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index fb004fd4e8890..5bece7fd11f88 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -413,7 +413,6 @@ struct pci_dev {
>  	struct resource driver_exclusive_resource;	 /* driver exclusive resource ranges */
>  
>  	bool		match_driver;		/* Skip attaching driver */
> -	struct lock_class_key cfg_access_key;
>  	struct lockdep_map cfg_access_lock;
>  
>  	unsigned int	transparent:1;		/* Subtractive decode bridge */
> -- 
> 2.43.3
> 
