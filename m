Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 268CC4BAB4B
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 21:52:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B30F10E80D;
	Thu, 17 Feb 2022 20:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2250910E80D
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 20:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645131157; x=1676667157;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HDp90lOxgEUUZYHuK6ArU5XPJZZv4jHtbc6+YgH7MF4=;
 b=JLocRlP86lS87HddOLAMav0Gxs6z8G54Vrw6cjutji7XBBuuqpBde2G/
 HvXMGTrtw2NYJVPqA5TBSVLrYwNkIm58n22YOPRpoeP7zgxl32XrOvtQT
 6hbarkbS3pkSwktPzc/s5dClInx6rhl2dKDTeC0Ew6fTQVZXEIjYABLxG
 2ec/QsIXcGcpx3/t/P5G2/diSMAv2RKCFc5CkKl0BAaJt7RAh9yqdA47L
 lpfiJV4vF+GV971Ikq0MJsxvuoQo4quvc8LlMnpWkwKJBoCR6MplhkO3u
 EUZ6tqjonqBD0Pcf0odxvqNims8V0IejfsbN/LS6QVUEdaCIt8pDFXAWS A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="250717662"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="250717662"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 12:50:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="705005446"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 12:50:27 -0800
Date: Thu, 17 Feb 2022 12:50:26 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Yg61EnEg39M26nVv@mdroper-desk1.amr.corp.intel.com>
References: <20220214173644.2097124-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220214173644.2097124-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pxp: prefer forward declaration
 over includes
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

On Mon, Feb 14, 2022 at 07:36:44PM +0200, Jani Nikula wrote:
> Always use forward declarations instead of includes in headers if
> possible.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> index 16990a3f2f85..586be769104f 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> @@ -6,7 +6,7 @@
>  #ifndef __INTEL_PXP_PM_H__
>  #define __INTEL_PXP_PM_H__
>  
> -#include "intel_pxp_types.h"
> +struct intel_pxp;
>  
>  #ifdef CONFIG_DRM_I915_PXP
>  void intel_pxp_suspend_prepare(struct intel_pxp *pxp);
> -- 
> 2.30.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
