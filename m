Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 71140716F6D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 23:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D71010E42A;
	Tue, 30 May 2023 21:11:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55EA910E1A2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 21:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685481112; x=1717017112;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dkGMf4nSADjzpVyPMiiaJPELEx48gjCjKOiJVFhqf9Q=;
 b=BIcFRwthwQbq6jeoelNk2Monz2wp7s/EEXQ2CR1wIFeslv62K2LhmtZa
 GSJO+oxLg+cOozeDyqYMz/Q2VQx8Gv0poH7g9NF7VMC4a5FZb+OeywV5Z
 pSE+24SC4im1N/nddpxGwlefIl9nKJU1su1cSE/wLOfnOmkPwTfGq2zQI
 gVqqypXpqB+B2Oh97iwD19EH4Qg/rwvUlbS+HdLGsIy54yDODzK1aKXlp
 nOTtjARDGtAwF6eqavEURoDcQ2X/pHVrOvebkaBM0D2wu4inmpucKjcId
 OReueP9ixc4VUWs0WgAF8Ow5eEdTon2YxfouVRhhVW5u3Ta/XVNqYHh/T g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="352548225"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="352548225"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 14:11:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10726"; a="796424556"
X-IronPort-AV: E=Sophos;i="6.00,205,1681196400"; d="scan'208";a="796424556"
Received: from amyachev-mobl3.ccr.corp.intel.com (HELO intel.com)
 ([10.252.53.184])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 14:11:50 -0700
Date: Tue, 30 May 2023 23:11:48 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZHZmlEua2XSISMEG@ashyti-mobl2.lan>
References: <20230517135754.1110291-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230517135754.1110291-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gem: Use large rings for
 compute contexts
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

Just one note...

On Wed, May 17, 2023 at 07:27:54PM +0530, Tejas Upadhyay wrote:
> From: Chris Wilson <chris.p.wilson@intel.com>
> 
> Allow compute contexts to submit the maximal amount of work without
> blocking userspace.
> 
> The original size for user LRC ring's (SZ_16K) was chosen to minimise
> memory consumption, without being so small as to frequently stall in the
> middle of workloads. With the main consumers being GL / media pipelines
> of 2 or 3 batches per frame, we want to support ~10 requests in flight
> to allow for the application to control throttling without stalling
> within a frame.
> 
> v2:
>   - cover with else part
> 
> Signed-off-by: Chris Wilson <chris.p.wilson@intel.com>

... please, next time add your SoB here as you are sending it.

No need to resend, I will add it.

Andi

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 5402a7bbcb1d..9a9ff84c90d7 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -964,7 +964,11 @@ static int intel_context_set_gem(struct intel_context *ce,
>  	RCU_INIT_POINTER(ce->gem_context, ctx);
>  
>  	GEM_BUG_ON(intel_context_is_pinned(ce));
> -	ce->ring_size = SZ_16K;
> +
> +	if (ce->engine->class == COMPUTE_CLASS)
> +		ce->ring_size = SZ_512K;
> +	else
> +		ce->ring_size = SZ_16K;
>  
>  	i915_vm_put(ce->vm);
>  	ce->vm = i915_gem_context_get_eb_vm(ctx);
> -- 
> 2.25.1
