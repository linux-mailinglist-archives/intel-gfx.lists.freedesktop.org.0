Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3F06C44E2
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 09:26:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD22010E346;
	Wed, 22 Mar 2023 08:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F97F10E346
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 08:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679473605; x=1711009605;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=i7X4VIZnpBuPfJwEC0Xy6LD52nP4BZFt+IwT/Osxm1Y=;
 b=G7qHV9/tLVu68c+9VWwdovAdRJ/9tm9FcEWihk7uv9qoO0MFkLOt3cbN
 6b7Qmkgff9rqmGYcHqEICBmsP6Cdcv0gKfIS9WFN2FHWsaOfgGanrra/l
 y7sNj2rs9C4YUmFAd99f9j+wPyRCkfT8szHh7jMkWDQ327zH6C9dU9vVK
 pUwyrJbsuHDBCY1rmFtZL7BMtZcfE85ELJS0iNwPwT3gPtD5J+NqHR7bV
 aXQEbeegpnUl2nhgxQ6dXTZKrnTKWnOgTtKArJa5CxrIUB4Kxmw3dZ28o
 r8/zJ/0sR9h61vGuIHLxiZluh+vzcNX6MCRBrRbjfL+ks4G8KdfjN91TK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="318800863"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="318800863"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 01:26:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="659114615"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="659114615"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 01:26:43 -0700
Date: Wed, 22 Mar 2023 10:26:39 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZBq7v3iSuHy91H3+@intel.com>
References: <20230322010138.663264-1-vinod.govindapillai@intel.com>
 <20230322010138.663264-3-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230322010138.663264-3-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH v1 2/2] drm/i915/reg: use the correct
 register to access SAGV block time
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 22, 2023 at 03:01:38AM +0200, Vinod Govindapillai wrote:
> Wrong register address is used to read the SAG block time. Fix
> the register address according to the bspec.
> 
> Bspec: 64608
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index ae8ba090c0f4..b2ed3c0fee4c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -7716,7 +7716,7 @@ enum skl_power_gate {
>  #define  MTL_LATENCY_LEVEL_EVEN_MASK	REG_GENMASK(12, 0)
>  #define  MTL_LATENCY_LEVEL_ODD_MASK	REG_GENMASK(28, 16)
>  
> -#define MTL_LATENCY_SAGV		_MMIO(0x4578b)
> +#define MTL_LATENCY_SAGV		_MMIO(0x4578c)

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  #define   MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
>  
>  #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> -- 
> 2.34.1
> 
