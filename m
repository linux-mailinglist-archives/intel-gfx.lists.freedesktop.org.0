Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C071899A6D0
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 16:49:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485BD10EB0A;
	Fri, 11 Oct 2024 14:49:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H7gYwS4z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C178510EB0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 14:49:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728658158; x=1760194158;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=bOkIjSNQ0f2g88KcD0g7QQLczPvpgIEvXkmgaHgMjPk=;
 b=H7gYwS4zbVOOw20Gw1G0Le9S2SVzExWB4dN8rNonQMUuoDaet1dlaiWW
 Xb4M+dLBq7uOXUKPKmKgj/JLVSog1Ufxx9NsjO6bYSn3f7QtKpPeVPRJ5
 WKyckgngLv5cc7keOAvu7YX4ll+pyb5sMF2dzX8OZKK2XdUY7FqpgKBl/
 eeky6+yEV/UCPNRm4JznCUOx1rBYWyVC6dA6hCDAoNRi/WhRRCfE6si/n
 Mzd1ry2BK8Sh6O0esJQDjSLwuVvC9LVbul8Ddv5wdJL/9GY3eVymgHM3y
 X4CoDC6LQnlpIugE4NxCqD89nrUJMzUF0RxyB3Mq82Q4wrEqj93jZnlu9 w==;
X-CSE-ConnectionGUID: bQasQW+YQCyoTWAfeNvqHw==
X-CSE-MsgGUID: drK9WwbiTZ2UwnUCyG1eAA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="27930541"
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="27930541"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 07:49:17 -0700
X-CSE-ConnectionGUID: DvPPmdunQ4CBaVdaecslkQ==
X-CSE-MsgGUID: zUGS2v/DTKSQVM1CMwZcfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,196,1725346800"; d="scan'208";a="76846866"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 07:49:17 -0700
Date: Fri, 11 Oct 2024 17:49:45 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [core-for-CI] Revert "ICL HACK: usb/icl: Work around ACPI
 boottime crash"
Message-ID: <Zwk7CV9Gom6z-GMs@ideak-desk.fi.intel.com>
References: <20241011121729.143932-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011121729.143932-1-jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 11, 2024 at 03:17:29PM +0300, Jani Nikula wrote:
> This reverts commit 8d16a118950c ("ICL HACK: usb/icl: Work around ACPI
> boottime crash").
> 
> There shouldn't be any ICL RVP's in CI anymore.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/usb/core/usb-acpi.c | 25 -------------------------
>  1 file changed, 25 deletions(-)
> 
> diff --git a/drivers/usb/core/usb-acpi.c b/drivers/usb/core/usb-acpi.c
> index 4c7e862cdf2d..21585ed89ef8 100644
> --- a/drivers/usb/core/usb-acpi.c
> +++ b/drivers/usb/core/usb-acpi.c
> @@ -12,7 +12,6 @@
>  #include <linux/acpi.h>
>  #include <linux/pci.h>
>  #include <linux/usb/hcd.h>
> -#include <linux/dmi.h>
>  
>  #include "hub.h"
>  
> @@ -190,19 +189,6 @@ static int usb_acpi_add_usb4_devlink(struct usb_device *udev)
>  	return 0;
>  }
>  
> -static const struct dmi_system_id intel_icl_broken_acpi[] = {
> -	{
> -		.ident = "ICL RVP",
> -		.matches = {
> -			DMI_MATCH(DMI_SYS_VENDOR, "Intel Corporation"),
> -			DMI_MATCH(DMI_PRODUCT_NAME, "Ice Lake Client Platform"),
> -		},
> -	},
> -
> -	{ }
> -};
> -static bool acpi_connection_type_broken;
> -
>  /*
>   * Private to usb-acpi, all the core needs to know is that
>   * port_dev->location is non-zero when it has been set by the firmware.
> @@ -218,12 +204,6 @@ usb_acpi_get_connect_type(struct usb_port *port_dev, acpi_handle *handle)
>  	struct acpi_pld_info *pld = NULL;
>  	acpi_status status;
>  
> -	/* Work around unknown ACPI instruction error on ICL RVP BIOSes. */
> -	if (acpi_connection_type_broken) {
> -		port_dev->connect_type = USB_PORT_CONNECT_TYPE_UNKNOWN;
> -		return;
> -	}
> -
>  	/*
>  	 * According to 9.14 in ACPI Spec 6.2. _PLD indicates whether usb port
>  	 * is user visible and _UPC indicates whether it is connectable. If
> @@ -394,11 +374,6 @@ static struct acpi_bus_type usb_acpi_bus = {
>  
>  int usb_acpi_register(void)
>  {
> -	if (dmi_check_system(intel_icl_broken_acpi)) {
> -		pr_info("USB ACPI connection type broken.\n");
> -		acpi_connection_type_broken = true;
> -	}
> -
>  	return register_acpi_bus_type(&usb_acpi_bus);
>  }
>  
> -- 
> 2.39.5
> 
