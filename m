Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F35122066C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 09:44:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B537E6E575;
	Wed, 15 Jul 2020 07:44:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C67CD89F92
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 07:44:11 +0000 (UTC)
IronPort-SDR: CfnOHDeee9Dv07j5Ni8bx0AIEnyYeUSrjhVULL9lcalFRToKWW4DxtxonZJQhXZj3/k6+Ro/gu
 idbA9zEFLwJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9682"; a="233955357"
X-IronPort-AV: E=Sophos;i="5.75,354,1589266800"; d="scan'208";a="233955357"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2020 00:44:11 -0700
IronPort-SDR: o4Qhpx9PGBIPiT3cWlIrOMQkywRuM4eQbmGxS3Nw27rkqLQRgL24tKVDlPzHfrBvsCTHp+wwO6
 I/HQKnsb8CAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,354,1589266800"; d="scan'208";a="308164636"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 15 Jul 2020 00:44:10 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 622B35C0D80; Wed, 15 Jul 2020 10:43:48 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200714135002.17508-1-chris@chris-wilson.co.uk>
References: <20200714135002.17508-1-chris@chris-wilson.co.uk>
Date: Wed, 15 Jul 2020 10:43:48 +0300
Message-ID: <87h7u92pfv.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Trace placement of timeline
 HWSP
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Track the position of the HWSP for each timeline.
>
> References: https://gitlab.freedesktop.org/drm/intel/-/issues/2169
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_timeline.c    |  7 +++++++
>  drivers/gpu/drm/i915/gt/selftest_timeline.c | 13 ++++++++-----
>  2 files changed, 15 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> index 4546284fede1..46d20f5f3ddc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -73,6 +73,8 @@ hwsp_alloc(struct intel_timeline *timeline, unsigned int *cacheline)
>  			return vma;
>  		}
>  
> +		GT_TRACE(timeline->gt, "new HWSP allocated\n");
> +
>  		vma->private = hwsp;
>  		hwsp->gt = timeline->gt;
>  		hwsp->vma = vma;
> @@ -327,6 +329,8 @@ int intel_timeline_pin(struct intel_timeline *tl)
>  	tl->hwsp_offset =
>  		i915_ggtt_offset(tl->hwsp_ggtt) +
>  		offset_in_page(tl->hwsp_offset);
> +	GT_TRACE(tl->gt, "timeline:%llx using HWSP offset:%x\n",
> +		 tl->fence_context, tl->hwsp_offset);

Regarless of that the coffee is starting to sink in,
I am somewhat uneasy with the whole hwsp_offset being
used both as an offset in page and then in offset in ggtt.

Further, my paranoia is enhanced as if the race
to pin gets losing side, the hwsp_offset linger
to an stale(ish) offset.

But for tracing,
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
-Mika

>  
>  	cacheline_acquire(tl->hwsp_cacheline);
>  	if (atomic_fetch_inc(&tl->pin_count)) {
> @@ -434,6 +438,7 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
>  	int err;
>  
>  	might_lock(&tl->gt->ggtt->vm.mutex);
> +	GT_TRACE(tl->gt, "timeline:%llx wrapped\n", tl->fence_context);
>  
>  	/*
>  	 * If there is an outstanding GPU reference to this cacheline,
> @@ -497,6 +502,8 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
>  		memset(vaddr + tl->hwsp_offset, 0, CACHELINE_BYTES);
>  
>  	tl->hwsp_offset += i915_ggtt_offset(vma);
> +	GT_TRACE(tl->gt, "timeline:%llx using HWSP offset:%x\n",
> +		 tl->fence_context, tl->hwsp_offset);
>  
>  	cacheline_acquire(cl);
>  	tl->hwsp_cacheline = cl;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> index fcdee951579b..fb5b7d3498a6 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> @@ -562,8 +562,9 @@ static int live_hwsp_engine(void *arg)
>  		struct intel_timeline *tl = timelines[n];
>  
>  		if (!err && *tl->hwsp_seqno != n) {
> -			pr_err("Invalid seqno stored in timeline %lu, found 0x%x\n",
> -			       n, *tl->hwsp_seqno);
> +			pr_err("Invalid seqno stored in timeline %lu @ %x, found 0x%x\n",
> +			       n, tl->hwsp_offset, *tl->hwsp_seqno);
> +			GEM_TRACE_DUMP();
>  			err = -EINVAL;
>  		}
>  		intel_timeline_put(tl);
> @@ -633,8 +634,9 @@ static int live_hwsp_alternate(void *arg)
>  		struct intel_timeline *tl = timelines[n];
>  
>  		if (!err && *tl->hwsp_seqno != n) {
> -			pr_err("Invalid seqno stored in timeline %lu, found 0x%x\n",
> -			       n, *tl->hwsp_seqno);
> +			pr_err("Invalid seqno stored in timeline %lu @ %x, found 0x%x\n",
> +			       n, tl->hwsp_offset, *tl->hwsp_seqno);
> +			GEM_TRACE_DUMP();
>  			err = -EINVAL;
>  		}
>  		intel_timeline_put(tl);
> @@ -965,8 +967,9 @@ static int live_hwsp_recycle(void *arg)
>  			}
>  
>  			if (*tl->hwsp_seqno != count) {
> -				pr_err("Invalid seqno stored in timeline %lu, found 0x%x\n",
> +				pr_err("Invalid seqno stored in timeline %lu @ tl->hwsp_offset, found 0x%x\n",
>  				       count, *tl->hwsp_seqno);
> +				GEM_TRACE_DUMP();
>  				err = -EINVAL;
>  			}
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
