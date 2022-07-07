Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1831B56ADFA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 23:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B2F814ADC5;
	Thu,  7 Jul 2022 21:52:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDADD14ADB9
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 21:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657230727; x=1688766727;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+iL3VtoYA21b89d2ZSW117ukFcHNQprZtgVagCev1M8=;
 b=lrrKI6MYhEr7ky/lBIvr85mRf4ohwxCgYVGCQRmD4k2mE94qUJ1hTjz4
 U3TiQ2nfLahtFw3xGBYR8ZrPT6fhHXDIyOgEOra2NykvXRIrJOKwX9DLq
 htC2wM5be41iFz+9zrMGFDTRppdRSBhP4dSmQt1TVtYSRv6h3IhmZzgGq
 iWLXep3DOmGe9+1hyl54Q0L/WE6xuZGAEWU16OVHx76VcDqgEp5Q34pRf
 3T/20Y9/I/0lg48JLpT5RUTJX52gMqzKW8yYc8VPOcJ0jrkPwDsOb3nTH
 t0rvYKHCSfP9S7VxW/Soh/uCkGJvEDYeyJyj5Ulv3+PxVTPqhuqveVEOY w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="282881968"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="282881968"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 14:52:07 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="620962024"
Received: from tlonnber-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.208.235])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 14:52:05 -0700
Date: Thu, 7 Jul 2022 23:52:03 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <YsdVgzWHjo01QLMC@alfio.lan>
References: <cover.1656911806.git.karolina.drobnik@intel.com>
 <5c77a2a12b4159415e5e448a563ab70a13a8d8cb.1656911806.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5c77a2a12b4159415e5e448a563ab70a13a8d8cb.1656911806.git.karolina.drobnik@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Bump GT idling delay to 2
 jiffies
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, Jul 05, 2022 at 12:57:18PM +0200, Karolina Drobnik wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> In monitoring a transcode pipeline that is latency sensitive (it waits
> between submitting frames, and each frame requires work on rcs/vcs/vecs
> engines), it is found that it took longer than a single jiffy for it to
> sustain its workload. Allowing an extra jiffy headroom for the userspace
> prevents us from prematurely parking and having to exit powersaving
> immediately.
> 
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/6284
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi

> ---
>  drivers/gpu/drm/i915/i915_active.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> index ee2b3a375362..7412abf166a8 100644
> --- a/drivers/gpu/drm/i915/i915_active.c
> +++ b/drivers/gpu/drm/i915/i915_active.c
> @@ -974,7 +974,7 @@ void i915_active_acquire_barrier(struct i915_active *ref)
>  
>  		GEM_BUG_ON(!intel_engine_pm_is_awake(engine));
>  		llist_add(barrier_to_ll(node), &engine->barrier_tasks);
> -		intel_engine_pm_put_delay(engine, 1);
> +		intel_engine_pm_put_delay(engine, 2);
>  	}
>  }
>  
> -- 
> 2.25.1
