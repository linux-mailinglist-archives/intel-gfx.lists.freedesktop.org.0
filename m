Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DF0AB54FE8
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Sep 2025 15:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36D5410EC4B;
	Fri, 12 Sep 2025 13:45:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="eib82zjH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13D7110EC5F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Sep 2025 13:45:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id DF134601E8;
 Fri, 12 Sep 2025 13:45:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 332BDC4CEF1;
 Fri, 12 Sep 2025 13:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1757684700;
 bh=4bPtQerKh4PPDHzaFkQ9Mq3GNZ4Ge6KPHE5XrzeSJFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eib82zjHjnvAhvc6gZZYacrVkQfsrqgyjEdLQ9u6dA8MjgCw78y3sY0bMBaZXkhKl
 sSmTK9NzGN9UWtxf1Bw0+iKWh0BQla74cFkV1Sx0DOy2bHS7Dxha4SDtzPFTxJdP8b
 yVq8EDC8Tl63nWQD06Ydysn1EyTiUkGSsbpWcrYY=
Date: Fri, 12 Sep 2025 15:44:57 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>
Subject: Re: [PATCH v2 1/2] mei: me: Add exported function to get the PCI ID
 list
Message-ID: <2025091228-chewable-amusable-5d2e@gregkh>
References: <20250911175021.19513-4-daniele.ceraolospurio@intel.com>
 <20250911175021.19513-5-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911175021.19513-5-daniele.ceraolospurio@intel.com>
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

On Thu, Sep 11, 2025 at 10:50:23AM -0700, Daniele Ceraolo Spurio wrote:
> The intel GFX drivers (i915/xe) interface with the ME device for some of
> their features (e.g. PXP, HDCP) via the component interface. Given that
> the ME device can be hidden by BIOS/Coreboot, the GFX drivers need a
> way to check if the device is available before attempting to bind the
> component, otherwise they'll go ahead and initialize features that will
> never work.
> The simplest way to check if the device is available is to check the
> available devices against the PCI ID list of the mei_me driver. To avoid
> duplication, this patch adds an exported function that the GFX driver
> can call to obtain the list. Locking around the checks, if required,
> is left to the caller.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/misc/mei/pci-me.c | 22 ++++++++++++++++++++++
>  include/linux/mei_me.h    | 20 ++++++++++++++++++++
>  2 files changed, 42 insertions(+)
>  create mode 100644 include/linux/mei_me.h
> 
> diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
> index 3f9c60b579ae..147e79b4ae1f 100644
> --- a/drivers/misc/mei/pci-me.c
> +++ b/drivers/misc/mei/pci-me.c
> @@ -18,6 +18,7 @@
>  #include <linux/pm_runtime.h>
>  
>  #include <linux/mei.h>
> +#include <linux/mei_me.h>
>  
>  #include "mei_dev.h"
>  #include "client.h"
> @@ -133,6 +134,27 @@ static const struct pci_device_id mei_me_pci_tbl[] = {
>  
>  MODULE_DEVICE_TABLE(pci, mei_me_pci_tbl);
>  
> +/**
> + * mei_me_get_device_id_table - get the list of ME pci device IDs
> + *
> + * Other drivers (e.g., i915, xe) interface with the ME device for some of their
> + * features (e.g., PXP, HDCP). However, the ME device can be unplugged via the
> + * pci subsystem or hidden by BIOS/coreboot, so those drivers might want to
> + * check if the device is available before initializing those features. This
> + * function offers a way for those drivers to get the list of ME device IDs,
> + * so they can check if one of them is available before attempting to
> + * interface with it. Locking around the availability check, if required,
> + * is left to the caller.
> + *
> + * Return: An array of struct pci_device_id entries containing the IDs of
> + * the ME devices.
> + */
> +const struct pci_device_id *mei_me_get_device_id_table(void)
> +{
> +	return mei_me_pci_tbl;
> +}
> +EXPORT_SYMBOL_GPL(mei_me_get_device_id_table);

Why not just do:

	EXPORT_SYMBOL_GPL(mei_me_pci_tbl);

instead?

Much simpler :)

thanks,

greg k-h
