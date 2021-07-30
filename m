Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 862C03DBEEA
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 21:19:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC0806F468;
	Fri, 30 Jul 2021 19:19:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56F486F468
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jul 2021 19:19:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="192752241"
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="192752241"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 12:19:01 -0700
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="667333598"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 12:19:00 -0700
Date: Fri, 30 Jul 2021 12:18:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jose Souza <jose.souza@intel.com>
Message-ID: <20210730191859.GV1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210730191115.2514581-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210730191115.2514581-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/xehp: Fix missing sentinel on
 mcr_ranges_xehp
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

On Fri, Jul 30, 2021 at 12:11:15PM -0700, Lucas De Marchi wrote:
> There's a missing sentinel since we are not using ARRAY_SIZE(), but rather
> checking that the .start is 0 to stop the iteration in mcr_range().
> 
> 	BUG: KASAN: global-out-of-bounds in mcr_range.isra.0+0x69/0xa0 [i915]
> 	Read of size 4 at addr ffffffffa0889928 by task modprobe/3881
> 
> Fixes: d8905ba705ab ("drm/i915/xehp: Define multicast register ranges")
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 9173df59821a..053fa7251cd0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2000,6 +2000,7 @@ static const struct mcr_range mcr_ranges_xehp[] = {
>  	{ .start =  0xdc00, .end =  0xffff },
>  	{ .start = 0x17000, .end = 0x17fff },
>  	{ .start = 0x24a00, .end = 0x24a7f },
> +	{},
>  };
>  
>  static bool mcr_range(struct drm_i915_private *i915, u32 offset)
> -- 
> 2.31.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
