Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 681453C2830
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 19:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C840789FF6;
	Fri,  9 Jul 2021 17:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4519089FF6
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 17:18:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10039"; a="295379566"
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; d="scan'208";a="295379566"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 10:18:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,226,1620716400"; d="scan'208";a="450361705"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 10:18:56 -0700
Date: Fri, 9 Jul 2021 10:18:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210709171854.GG951094@mdroper-desk1.amr.corp.intel.com>
References: <20210707235921.2416911-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210707235921.2416911-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: do not abbreviate version in
 debugfs
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 07, 2021 at 04:59:20PM -0700, Lucas De Marchi wrote:
> Brevity is not needed here, so just spell out "* version" in the string.
> 
> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 7eaa92fee421..3daf0cd8d48b 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -96,9 +96,9 @@ static const char *iommu_name(void)
>  void intel_device_info_print_static(const struct intel_device_info *info,
>  				    struct drm_printer *p)
>  {
> -	drm_printf(p, "graphics_ver: %u\n", info->graphics_ver);
> -	drm_printf(p, "media_ver: %u\n", info->media_ver);
> -	drm_printf(p, "display_ver: %u\n", info->display.ver);
> +	drm_printf(p, "graphics version: %u\n", info->graphics_ver);
> +	drm_printf(p, "media version: %u\n", info->media_ver);
> +	drm_printf(p, "display version: %u\n", info->display.ver);
>  	drm_printf(p, "gt: %d\n", info->gt);
>  	drm_printf(p, "iommu: %s\n", iommu_name());
>  	drm_printf(p, "memory-regions: %x\n", info->memory_regions);
> -- 
> 2.31.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
