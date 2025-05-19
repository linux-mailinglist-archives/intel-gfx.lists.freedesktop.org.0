Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6B4ABC1E6
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 17:14:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1D4F10E37B;
	Mon, 19 May 2025 15:14:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bBIbJg+v";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F6210E37B;
 Mon, 19 May 2025 15:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747667690; x=1779203690;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=7jeWlc3eTHA7YmtyvmjhMU+jNXG2C4BfsNcorU/SoCg=;
 b=bBIbJg+vOh1iaK77eeMSfyf9WOFpHGeDxDkRi/S6DNjPC1FWP7yV/L4c
 LNc0CCnmJ5WXthRvtzMdM3UsXDPKNmHV+ex+pjghT3GVUjzL57qUUDKRz
 rT11tcKqET19fZjOudvYBYyBK7GPsF2tPplpOJEVjC1WjJfo9SSXtaSB5
 P/xZaaG6zO71mg4gi2ZyFtbyVyCMqFGBMyTiQ1Bh7a33TrahFKbTqgrOM
 NFo/7z8eYAHbV1qYkjz3nw2h+g4XoaBbZLMQOSmVHZmTStRbmfROPPgHp
 cn7pQ9bvEcOpGU2RwNgXcYhfNnQe/0toRAqb4VgAoHfT/z3wwmlvzhOee g==;
X-CSE-ConnectionGUID: bn6iU8qxSmm1cYUkYtW7Bw==
X-CSE-MsgGUID: IebpDb5mSDSdkq4mHk+PIg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="59802206"
X-IronPort-AV: E=Sophos;i="6.15,301,1739865600"; d="scan'208";a="59802206"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 08:14:50 -0700
X-CSE-ConnectionGUID: 0BeUY0OZSreuyhFdA4pmoA==
X-CSE-MsgGUID: RsJdg5gUS7Gkw0yUhQH9dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,301,1739865600"; d="scan'208";a="139441734"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [10.245.245.41])
 ([10.245.245.41])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 08:14:47 -0700
Message-ID: <32da3736-9ac1-4524-94e6-28a81f23bf31@linux.intel.com>
Date: Mon, 19 May 2025 17:14:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] drm/xe: Allow building as kernel built-in
To: Harry Austen <hpausten@protonmail.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
References: <20250516104210.17969-1-hpausten@protonmail.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20250516104210.17969-1-hpausten@protonmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Hey,

On 2025-05-16 12:42, Harry Austen wrote:
> Fix Kconfig symbol dependency on KUNIT, which isn't actually required
> for XE to be built-in. However, if KUNIT is enabled, it must be built-in
> too.
> 
> Also, allow DRM_XE_DISPLAY to be built-in. But only as long as DRM_I915
> isn't, since that results in duplicate symbol errors.
> 
> Fixes: 08987a8b6820 ("drm/xe: Fix build with KUNIT=m")
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Harry Austen <hpausten@protonmail.com>
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> ---
> v4: Add Jani Nikula's Acked-by tag
> v3: Simplify KUNIT dependency, as suggested by Jani Nikula
> v2: Ensure DRM_XE_DISPLAY and DRM_I915 can't both be built-in
> 
>  drivers/gpu/drm/xe/Kconfig | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
> index 9bce047901b22..214f40264fa12 100644
> --- a/drivers/gpu/drm/xe/Kconfig
> +++ b/drivers/gpu/drm/xe/Kconfig
> @@ -1,7 +1,8 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config DRM_XE
>  	tristate "Intel Xe Graphics"
> -	depends on DRM && PCI && MMU && (m || (y && KUNIT=y))
> +	depends on DRM && PCI && MMU
> +	depends on KUNIT || KUNIT=n
>  	select INTERVAL_TREE
>  	# we need shmfs for the swappable backing store, and in particular
>  	# the shmem_readpage() which depends upon tmpfs
> @@ -51,7 +52,7 @@ config DRM_XE
>  
>  config DRM_XE_DISPLAY
>  	bool "Enable display support"
> -	depends on DRM_XE && DRM_XE=m && HAS_IOPORT
> +	depends on DRM_XE && (DRM_XE=m || DRM_I915!=y) && HAS_IOPORT
>  	select FB_IOMEM_HELPERS if DRM_FBDEV_EMULATION
>  	select I2C
>  	select I2C_ALGOBIT
Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Can we also get rid of the IOSF_MBI select? Not even xe_display depends on it, leftover from initial porting. :)

