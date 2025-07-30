Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06859B15E36
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 12:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92FFB10E1B0;
	Wed, 30 Jul 2025 10:32:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mlLcHO1U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A18A10E2D4;
 Wed, 30 Jul 2025 10:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753871536; x=1785407536;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xY0cGAduPMxd5tMAYBCMfqbxzSqavrO5JyNnwoCIJHQ=;
 b=mlLcHO1UtPvyAkVEi6DWUxZkIXMG0cDMcgZjvsh6Ks3vKcNWFXr7sa3b
 yHRJPByCtD0xo6vwp2g3UnlzwekgqiQX0t3CCuhgzN8FIUT/DHCy5vk2V
 9t+mMFNjHhBjyzMf8kWF5FbYdmxQlSCud7PYhnY+7LJcLd73foPLTnamJ
 L49Ms7FBNcyyIunbi3mmBid/jic9APRd7kwAtbjO1lT85U9eyBinXcosr
 zh9MJVfLotVghuzQ1S25IzJr3HvtgK9pH/l4LbL7myWfyFrpcM2wPeIxG
 fo5nW9fE5Q6qEPmu3w1RkYSCGfx/YGgWuB2E6BEbQXRAwDMqh00Ra82Hu w==;
X-CSE-ConnectionGUID: 9k6q0AbmSXeCVbvM+Yz4Vg==
X-CSE-MsgGUID: VPHZIxhcQiiiGGM+H9WryQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="59808651"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="59808651"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 03:32:15 -0700
X-CSE-ConnectionGUID: eI3AQv9KRMevZgfTBjMV8w==
X-CSE-MsgGUID: ltEV/2/KTsCZXYhDXdqRuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="162979081"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.74])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2025 03:32:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tomas Winkler <tomasw@gmail.com>, Alexander Usyskin
 <alexander.usyskin@intel.com>, Raag Jadav <raag.jadav@intel.com>
Cc: linux-mtd@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-kernel@vger.kernel.org, Geert
 Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] mtd: MTD_INTEL_DG should depend on DRM_I915 or DRM_XE
In-Reply-To: <07f67ab8ee78f6bf2559131e193381aafff7479a.1753870424.git.geert+renesas@glider.be>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <07f67ab8ee78f6bf2559131e193381aafff7479a.1753870424.git.geert+renesas@glider.be>
Date: Wed, 30 Jul 2025 13:32:07 +0300
Message-ID: <d947168fd02d6f820159b456099e6aa8f465b633@intel.com>
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

On Wed, 30 Jul 2025, Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> Intel Discrete Graphics non-volatile memory is onlt present on intel
> discrete graphics devices, and its auxiliary device is instantiated by
> the Intel i915 and Xe2 DRM drivers.  Hence add dependencies on DRM_I915
> and DRM_XE, to prevent asking the user about this driver when
> configuring a kernel without Intel graphics support.
>
> Fixes: ceb5ab3cb6463795 ("mtd: add driver for intel graphics non-volatile memory device")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  drivers/mtd/devices/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/mtd/devices/Kconfig b/drivers/mtd/devices/Kconfig
> index 46cebde79f34b0b7..f0ab74d695347117 100644
> --- a/drivers/mtd/devices/Kconfig
> +++ b/drivers/mtd/devices/Kconfig
> @@ -185,8 +185,8 @@ config MTD_POWERNV_FLASH
>  
>  config MTD_INTEL_DG
>  	tristate "Intel Discrete Graphics non-volatile memory driver"
> -	depends on AUXILIARY_BUS
> -	depends on MTD
> +	depends on AUXILIARY_BUS && MTD
> +	depends on DRM_I915 || DRM_XE || COMPILE_TEST

I understand the intent, but IIUC auxiliary bus usage should not require
a "depends on" relationship. Couldn't you have MTD_INTEL_DG=y and
DRM_I915=m just fine?

BR,
Jani.


>  	help
>  	  This provides an MTD device to access Intel Discrete Graphics
>  	  non-volatile memory.

-- 
Jani Nikula, Intel
