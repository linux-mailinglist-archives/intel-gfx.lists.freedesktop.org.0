Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C2613DA19
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 13:35:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 669666ECD7;
	Thu, 16 Jan 2020 12:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B5A06ECD7
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 12:35:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 04:35:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,326,1574150400"; d="scan'208";a="220353611"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 16 Jan 2020 04:35:16 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id F28115C1DEA; Thu, 16 Jan 2020 14:34:39 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200115175829.2761329-1-chris@chris-wilson.co.uk>
References: <20200115175829.2761329-1-chris@chris-wilson.co.uk>
Date: Thu, 16 Jan 2020 14:34:39 +0200
Message-ID: <87v9pbpokg.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Leave resetting ring to
 intel_ring
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> We need to allow concurrent intel_context_unpin, which means avoiding
> doing destructive operations like intel_ring_reset(). This was already
> fixed for intel_ring_unpin() in commit 0725d9a31869 ("drm/i915/gt: Make
> intel_ring_unpin() safe for concurrent pint"), but I overlooked that
> execlists_context_unpin() also made the same mistake.
>
> Reported-by: Matthew Brost <matthew.brost@intel.com>
> Fixes: 841350223816 ("drm/i915/gt: Drop mutex serialisation between context pin/unpin")
> References: 0725d9a31869 ("drm/i915/gt: Make intel_ring_unpin() safe for concurrent pint")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_lrc.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index a8fe2f16c910..999fe82190da 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2532,7 +2532,6 @@ static void execlists_context_unpin(struct intel_context *ce)
>  		      ce->engine);
>  
>  	i915_gem_object_unpin_map(ce->state->obj);
> -	intel_ring_reset(ce->ring, ce->ring->tail);

It seems we have entered an era where intel_ring_reset()
is actually resetting the ring. Long live the engine(s)!

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  }
>  
>  static void
> -- 
> 2.25.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
