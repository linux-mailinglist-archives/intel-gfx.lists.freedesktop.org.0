Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE77551BDAA
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 13:04:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C55010E073;
	Thu,  5 May 2022 11:04:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9840910F8BF
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 11:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651748657; x=1683284657;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=wWjONU/wl5fqC76CBFTHKjLNO12gt+qJRK0zi/ovcjU=;
 b=G/keUqXXZLnag5M2suhK4rmR8sh00myzEK6fDyP2JMcCCfNu94WlasZ+
 Ty7OspBOc15CLmFuVd6W6e8gErB2/p2qZR47s/36NY0JGfsWTvziSQbxS
 lCUIW9VauhiGiyvP8iXyiNzb0njZ5AOXMYCUuGvYgaSfe4RdK5ri9bV1D
 swAHuccfYpPSF7JgudrbSUZHTE/yLjT3GZWS/QR/WkvLEcShxVLJTYXyN
 kGA6NP+ZUKApxGAsd+R0/ofnLQp7LYd2x27/Z4B2OudDv57U9Byxz3b1e
 ZbekGVuc4WVNl5gbB+t5CjqDcpwgO/wWA+QMuxGGcRgYIIuVcWmdVj1w3 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="267962106"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="267962106"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 04:04:17 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="517462103"
Received: from mrbroom-mobl.ger.corp.intel.com (HELO [10.213.206.41])
 ([10.213.206.41])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 04:04:16 -0700
Message-ID: <b3dd1549-8c87-a275-b761-dcab80285f00@linux.intel.com>
Date: Thu, 5 May 2022 12:04:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220504183716.987793-1-jani.nikula@intel.com>
 <20220504183716.987793-2-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220504183716.987793-2-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: remove single-use
 GEM_DEBUG_EXEC()
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


On 04/05/2022 19:37, Jani Nikula wrote:
> Reduce the magic of what's going on in GEM_DEBUG_EXEC() by expanding it
> inline and being explicit about it. It's as single use case anyway, so
> the macro feels overkill.
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_ring.c | 3 ++-
>   drivers/gpu/drm/i915/i915_gem.h      | 2 --
>   2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
> index 40ffcb94e379..15ec64d881c4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring.c
> @@ -299,7 +299,8 @@ u32 *intel_ring_begin(struct i915_request *rq, unsigned int num_dwords)
>   	GEM_BUG_ON(ring->emit > ring->size - bytes);
>   	GEM_BUG_ON(ring->space < bytes);
>   	cs = ring->vaddr + ring->emit;
> -	GEM_DEBUG_EXEC(memset32(cs, POISON_INUSE, bytes / sizeof(*cs)));
> +	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> +		memset32(cs, POISON_INUSE, bytes / sizeof(*cs));
>   	ring->emit += bytes;
>   	ring->space -= bytes;
>   
> diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
> index b7b257f54d2e..a2be323a4be5 100644
> --- a/drivers/gpu/drm/i915/i915_gem.h
> +++ b/drivers/gpu/drm/i915/i915_gem.h
> @@ -54,7 +54,6 @@ struct drm_i915_private;
>   	} while(0)
>   #define GEM_WARN_ON(expr) WARN_ON(expr)
>   
> -#define GEM_DEBUG_EXEC(expr) expr
>   #define GEM_DEBUG_WARN_ON(expr) GEM_WARN_ON(expr)
>   
>   #else
> @@ -64,7 +63,6 @@ struct drm_i915_private;
>   #define GEM_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
>   #define GEM_WARN_ON(expr) ({ unlikely(!!(expr)); })
>   
> -#define GEM_DEBUG_EXEC(expr) do { } while (0)
>   #define GEM_DEBUG_WARN_ON(expr) ({ BUILD_BUG_ON_INVALID(expr); 0; })
>   #endif
>   

Yeah one user after time passed suggests removing is the right course of 
action.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
