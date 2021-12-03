Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B859A467F01
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 21:57:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6576C8B29B;
	Fri,  3 Dec 2021 20:57:03 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B3A8B2A0
 for <Intel-GFX@lists.freedesktop.org>; Fri,  3 Dec 2021 20:57:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10187"; a="300439021"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="300439021"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 12:57:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="598107890"
Received: from pcocd2.fm.intel.com ([10.96.43.19])
 by FMSMGA003.fm.intel.com with ESMTP; 03 Dec 2021 12:57:01 -0800
Received: from fmci70314.fm.intel.com (fmci70314.fm.intel.com [10.96.27.109])
 by pcocd2.fm.intel.com with ESMTP id 1B3Kv1Kw010646;
 Fri, 3 Dec 2021 12:57:01 -0800
Received: from fmci70314.fm.intel.com (localhost [127.0.0.1])
 by fmci70314.fm.intel.com with ESMTP id 1B3Kv1Ta027606;
 Fri, 3 Dec 2021 12:57:01 -0800
Received: (from sdutt@localhost)
 by fmci70314.fm.intel.com with LOCAL id 1B3Kv1Rt027602;
 Fri, 3 Dec 2021 12:57:01 -0800
X-Authentication-Warning: fmci70314.fm.intel.com: sdutt set sender to
 sudeep.dutt@intel.com using -f
Date: Fri, 3 Dec 2021 12:57:01 -0800
From: Sudeep Dutt <sudeep.dutt@intel.com>
To: Jasmine Newsome <jasmine.newsome@intel.com>
Message-ID: <YaqEnV/868iHlOL/@fmci70314.fm.intel.com>
References: <20211203204753.1634865-1-jasmine.newsome@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211203204753.1634865-1-jasmine.newsome@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Use local pointer for
 __i915_ttm_move
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
Cc: Intel-GFX@Lists.FreeDesktop.Org, thomas.hellstrom@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 03, 2021 at 12:47:53PM -0800, Jasmine Newsome wrote:
> Replace pointer bo->ttm with ttm in i915_ttm_move
> when passed as argument to __i915_ttm_move

Hi Jasmine,

Can you please resend this patch with the commit description updated to
describe why this patch is needed?

Thanks,
Sudeep Dutt

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> index 80df9f592407..56b6573b5c93 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
> @@ -763,7 +763,7 @@ int i915_ttm_move(struct ttm_buffer_object *bo, bool evict,
>  			return PTR_ERR(dep);
>  		}
>  
> -		migration_fence = __i915_ttm_move(bo, clear, dst_mem, bo->ttm,
> +		migration_fence = __i915_ttm_move(bo, clear, dst_mem, ttm,
>  						  dst_rsgt, true, dep);
>  		dma_fence_put(dep);
>  	}
> -- 
> 2.25.1
> 
