Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B95B20536
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 12:24:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41AF10E41B;
	Mon, 11 Aug 2025 10:24:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JTwYxKxy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1487110E41A;
 Mon, 11 Aug 2025 10:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754907879; x=1786443879;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=VCHBQqGJWFILY95RNalkSnuz15SPcSJqUqwwSNcECho=;
 b=JTwYxKxy6Z9Z6mECTXI+ZpOS6e7Jzi2AMPSOUdWxTlzWzFEsR47Debnw
 FAATYzBo3/EOjfJfbr/RSCmQ1Is7xMO+3TSC5pV/GxJR436pITd9MRutT
 hjQ5osOBpHJb9T/EbItIXUfNdZHhJ6Zl+InMI7y1nc9G6ODclnWtcG2XV
 Lf7kQntaXQ0fYDds8O3Ewb/d47pyvT2zPWsckxnyb0O3M5YYXFenk81/q
 67wx2iDTydHZDLvFHf+dUW3nT4hmUjmpie1Fj+hcKGU+f+4Z9u+hlcrZJ
 /jTCyR65c+8sp2A8xvN9aehFiACwwV+IJz7FULJoRZNVrSZEA8uvWZTXI Q==;
X-CSE-ConnectionGUID: hJKlU9MoQQunHi4M/kz6lQ==
X-CSE-MsgGUID: CuPJT3GkSfax93+Z9WfSOA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68525278"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="68525278"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 03:24:39 -0700
X-CSE-ConnectionGUID: q+hNqBHyRNK1Y6BVNrZ+5Q==
X-CSE-MsgGUID: ssjaI/+ZTYKKWeCI2w6bIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="171129597"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 03:24:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH] drm/intel/pciids: Add match on vendor/id only
In-Reply-To: <20250808-intel-pci-device-v1-1-ce3545d86502@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250808-intel-pci-device-v1-1-ce3545d86502@intel.com>
Date: Mon, 11 Aug 2025 13:24:33 +0300
Message-ID: <eb5096b746ec44649e4a3248072e7db80d8af4b4@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Fri, 08 Aug 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> All our PCI ID macros match on the PCI class besides the vendor and
> devid, even for devices that may or may not have display. This may not
> work going forward, so add a simple INTEL_PCI_DEVICE that matches only
> on vendor/device IDs.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  include/drm/intel/pciids.h | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
> index 76f8d26f9cc9d..da6301a6fceab 100644
> --- a/include/drm/intel/pciids.h
> +++ b/include/drm/intel/pciids.h
> @@ -26,6 +26,11 @@
>  #define __PCIIDS_H__
>  
>  #ifdef __KERNEL__
> +#define INTEL_PCI_DEVICE(_id, _info) { \
> +	PCI_DEVICE(PCI_VENDOR_ID_INTEL, (_id)), \
> +	.driver_data = (kernel_ulong_t)(_info), \
> +}
> +
>  #define INTEL_VGA_DEVICE(_id, _info) { \
>  	PCI_DEVICE(PCI_VENDOR_ID_INTEL, (_id)), \
>  	.class = PCI_BASE_CLASS_DISPLAY << 16, .class_mask = 0xff << 16, \
>
>
>

-- 
Jani Nikula, Intel
