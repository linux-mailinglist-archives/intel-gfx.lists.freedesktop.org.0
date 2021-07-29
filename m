Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC4A3D9AC8
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 03:06:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02F046E11C;
	Thu, 29 Jul 2021 01:06:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F004D6E11C
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 01:05:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="199997275"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="199997275"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 18:05:57 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="567061775"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 18:05:57 -0700
Date: Wed, 28 Jul 2021 18:05:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210729010555.GI1556418@mdroper-desk1.amr.corp.intel.com>
References: <20210728233411.2365788-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210728233411.2365788-1-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Correct SFC_DONE register offset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 28, 2021 at 04:34:11PM -0700, Matt Roper wrote:
> The register offset for SFC_DONE was missing a '0' at the end, causing
> us to read from a non-existent register address.  We only use this
> register in error state dumps so the mistake hasn't caused any real
> problems, but fixing it will hopefully make the error state dumps a bit
> more useful for debugging.
> 
> Fixes: e50dbdbfd9fb ("drm/i915/tgl: Add SFC instdone to error state")
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Hmm, actually on a closer look it appears this register may have been
removed completely from media version 12.  It will return in media
version 13 at this offset, but for now I guess we should just drop it
completely.


Matt

> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 70eed4fe3fe3..49dd5e75429e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -430,7 +430,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
>  #define   GEN12_HCP_SFC_LOCK_ACK_BIT		REG_BIT(1)
>  #define   GEN12_HCP_SFC_USAGE_BIT			REG_BIT(0)
>  
> -#define GEN12_SFC_DONE(n)		_MMIO(0x1cc00 + (n) * 0x100)
> +#define GEN12_SFC_DONE(n)		_MMIO(0x1cc000 + (n) * 0x1000)
>  #define GEN12_SFC_DONE_MAX		4
>  
>  #define RING_PP_DIR_BASE(base)		_MMIO((base) + 0x228)
> -- 
> 2.25.4
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
