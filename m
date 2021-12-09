Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF02146EE5E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:56:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1475210E310;
	Thu,  9 Dec 2021 16:53:20 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87A1389F99
 for <Intel-GFX@lists.freedesktop.org>; Thu,  9 Dec 2021 09:53:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="298853306"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="298853306"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 01:53:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="463157027"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 01:53:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jasmine Newsome <jasmine.newsome@intel.com>,
 Intel-GFX@Lists.FreeDesktop.Org
In-Reply-To: <20211203204753.1634865-1-jasmine.newsome@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211203204753.1634865-1-jasmine.newsome@intel.com>
Date: Thu, 09 Dec 2021 11:53:48 +0200
Message-ID: <875yry3xzn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Cc: thomas.hellstrom@intel.com, jasmine.newsome@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 03 Dec 2021, Jasmine Newsome <jasmine.newsome@intel.com> wrote:
> Replace pointer bo->ttm with ttm in i915_ttm_move
> when passed as argument to __i915_ttm_move

Signed-off-by missing.

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

-- 
Jani Nikula, Intel Open Source Graphics Center
