Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CE066DFB9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 14:58:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFEB010E193;
	Tue, 17 Jan 2023 13:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEFDF10E53C
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 13:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673963914; x=1705499914;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mNGLuTmWVTTPY9qswbBqkH07IULaKbYwzT25d9QM2ys=;
 b=O+/zjzgrv9ynIGrSgpicfeyzXE+T0PPZJiGP/Zik43N9y8DW/+2QBPK0
 HB2SI0OXF2UmaRVNOsiupf+Hg5vc+dd2J5dzjJPZhktZeMe7Dhs2t4LVm
 nATkflP7MYxtSpG0369CapLS5ZB/wzEs3EqtnEntwbmEY2vX/3T+pSKKN
 z7ng1N47ohXig+G3fgAHkmDALF+Vhpyr+0kGGiINu7+4MPJFF4ohXN6uW
 Y++mGwxf47Y6m4dn/owmDVtfhTs75r/0CzI8+w89ZCdBM1PN+44K7vXjF
 R1v6sNCUEmI/zblG4zvmgX1AZzCUCy8gRMaHX/HguhdUu2uad4mZK+FrR Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="312564246"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="312564246"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 05:58:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="691589808"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="691589808"
Received: from dmitriim-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.45.175])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 05:58:33 -0800
Date: Tue, 17 Jan 2023 14:58:29 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8aphQCW98phcmD6@ashyti-mobl2.lan>
References: <20230117123856.2271720-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230117123856.2271720-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove a couple of superfluous
 i915_drm.h includes
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Tue, Jan 17, 2023 at 02:38:56PM +0200, Jani Nikula wrote:
> Remove a couple of unnecessary includes.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c | 1 -
>  drivers/gpu/drm/i915/pxp/intel_pxp_huc.c  | 2 --
>  2 files changed, 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
> index 4e2163a1aa46..0e3630103693 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c
> @@ -6,7 +6,6 @@
>  #include "intel_ggtt_gmch.h"
>  
>  #include <drm/intel-gtt.h>
> -#include <drm/i915_drm.h>
>  
>  #include <linux/agp_backend.h>
>  
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> index 812c8bc7005e..64609d1b1c0f 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> @@ -3,8 +3,6 @@
>   * Copyright(c) 2021-2022, Intel Corporation. All rights reserved.
>   */
>  
> -#include <drm/i915_drm.h>
> -
>  #include "i915_drv.h"
>  
>  #include "gem/i915_gem_region.h"
> -- 
> 2.34.1
