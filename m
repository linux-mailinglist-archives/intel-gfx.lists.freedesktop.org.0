Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC7E3F7839
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 17:26:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42A8E6E32F;
	Wed, 25 Aug 2021 15:26:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52B3E6E32F
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 15:26:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="217578631"
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="217578631"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:26:17 -0700
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="516136522"
Received: from vcheppax-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.255.37.222])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 08:26:16 -0700
Date: Wed, 25 Aug 2021 11:26:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <YSZhFypIGty4XvPO@intel.com>
References: <20210825150623.28980-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210825150623.28980-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pci: rename functions to have
 i915_pci prefix
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

On Wed, Aug 25, 2021 at 06:06:23PM +0300, Jani Nikula wrote:
> Follow the usual naming conventions. While at it, fix i915_pci.h SPDX
> license comment format and add header include guards.
> 
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_module.c |  4 ++--
>  drivers/gpu/drm/i915/i915_pci.c    |  4 ++--
>  drivers/gpu/drm/i915/i915_pci.h    | 12 ++++++++----
>  3 files changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
> index d8b4482c69d0..ab2295dd4500 100644
> --- a/drivers/gpu/drm/i915/i915_module.c
> +++ b/drivers/gpu/drm/i915/i915_module.c
> @@ -67,8 +67,8 @@ static const struct {
>  	{ .init = i915_mock_selftests },
>  	{ .init = i915_pmu_init,
>  	  .exit = i915_pmu_exit },
> -	{ .init = i915_register_pci_driver,
> -	  .exit = i915_unregister_pci_driver },
> +	{ .init = i915_pci_register_driver,
> +	  .exit = i915_pci_unregister_driver },
>  	{ .init = i915_perf_sysctl_register,
>  	  .exit = i915_perf_sysctl_unregister },
>  };
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 96cfd6427cec..146f7e39182a 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1235,12 +1235,12 @@ static struct pci_driver i915_pci_driver = {
>  	.driver.pm = &i915_pm_ops,
>  };
>  
> -int i915_register_pci_driver(void)
> +int i915_pci_register_driver(void)
>  {
>  	return pci_register_driver(&i915_pci_driver);
>  }
>  
> -void i915_unregister_pci_driver(void)
> +void i915_pci_unregister_driver(void)
>  {
>  	pci_unregister_driver(&i915_pci_driver);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_pci.h b/drivers/gpu/drm/i915/i915_pci.h
> index b386f319f52e..ee048c238174 100644
> --- a/drivers/gpu/drm/i915/i915_pci.h
> +++ b/drivers/gpu/drm/i915/i915_pci.h
> @@ -1,8 +1,12 @@
> +/* SPDX-License-Identifier: MIT */
>  /*
> - * SPDX-License-Identifier: MIT
> - *
>   * Copyright © 2021 Intel Corporation
>   */
>  
> -int i915_register_pci_driver(void);
> -void i915_unregister_pci_driver(void);
> +#ifndef __I915_PCI_H__
> +#define __I915_PCI_H__
> +
> +int i915_pci_register_driver(void);
> +void i915_pci_unregister_driver(void);
> +
> +#endif /* __I915_PCI_H__ */
> -- 
> 2.20.1
> 
