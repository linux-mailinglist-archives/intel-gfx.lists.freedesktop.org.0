Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4917E50E92A
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Apr 2022 21:08:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 404F710E18A;
	Mon, 25 Apr 2022 19:08:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9543C10E18A
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Apr 2022 19:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650913730; x=1682449730;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vw9wjxr9Afw39rB+2/xr9eLAHIk9qhItQy7sgNx/Ihs=;
 b=nXTILvRL7Q+6Xp0Kg57a8T9WtCZm15jShs2xwN8lvrTmftZ/MRAMjSdg
 PbUe3vYIqftfzYiRP0f3nohQR8ZQ9gaN/cYI2wIiEEwIgV3qFb1CRjOIB
 GdYrlpqOeHL9cnmneTi2iy4oLyiX+w7XvAgNtLTZiPUFQnMiaZBls2Og5
 U1U2tgzcIcKuvu8gTdXDDfFCIIacvWzL97wYge0dHnI8Wr0M+JJTvmcuy
 8vJQSKd7ItKyBVWCPbH0qDUfvWxPz1xwIP3/Meh8EJrGey9hM6hitbW6l
 TF90BrhNuTCdi9xXCeUpUMM0T5cbSLzZToBdFjxgOddfFivGGlycL/bab w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10328"; a="247268002"
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="247268002"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 12:08:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,289,1643702400"; d="scan'208";a="512770335"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 12:08:48 -0700
Date: Mon, 25 Apr 2022 12:08:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Ymbxvoay8QqjdVP+@mdroper-desk1.amr.corp.intel.com>
References: <20220425154754.990815-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220425154754.990815-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: remove superfluous string helper
 include
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 25, 2022 at 06:47:54PM +0300, Jani Nikula wrote:
> Remove the duplicate and incorrect (uses "" instead of <>)
> linux/string_helpers.h include.
> 
> Fixes: cc1338f259a2 ("drm/i915/xehp: Update topology dumps for Xe_HP")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_sseu.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 9881a6790574..fdd25691beda 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -10,8 +10,6 @@
>  #include "intel_gt_regs.h"
>  #include "intel_sseu.h"
>  
> -#include "linux/string_helpers.h"
> -
>  void intel_sseu_set_info(struct sseu_dev_info *sseu, u8 max_slices,
>  			 u8 max_subslices, u8 max_eus_per_subslice)
>  {
> -- 
> 2.30.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
