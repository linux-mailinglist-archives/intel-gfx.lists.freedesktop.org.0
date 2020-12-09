Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2149B2D4554
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 16:25:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 811156EA8D;
	Wed,  9 Dec 2020 15:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D44A6EA8B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Dec 2020 15:25:55 +0000 (UTC)
IronPort-SDR: 6bYvJ85c6fCbC2rqjGjWCDaQ5qSBYLx6jLVqINORD4oNLifV8lkTiM1gxgAVloUOigCLxmsrPD
 amvLIEQo3NyA==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="161143510"
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="161143510"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 07:25:54 -0800
IronPort-SDR: 56XDVUeHp7VdkK7AfU89rukmPBa5QHhmklTwen/8Fr6Aa2C1jg/BQ8ZPQ4qg91Aw1+BWPt90om
 3DC0F//Oe+AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,405,1599548400"; d="scan'208";a="370863612"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga002.fm.intel.com with ESMTP; 09 Dec 2020 07:25:53 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 1C9475C2003; Wed,  9 Dec 2020 17:23:38 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201208231834.24812-3-chris@chris-wilson.co.uk>
References: <20201208231834.24812-1-chris@chris-wilson.co.uk>
 <20201208231834.24812-3-chris@chris-wilson.co.uk>
Date: Wed, 09 Dec 2020 17:23:38 +0200
Message-ID: <87tusvknph.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/gt: Remove uninterruptible
 parameter from intel_gt_wait_for_idle
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

> Now that the only user of the uninterruptible wait was eliminated,
> remove the support.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index 66fcbf9d0fdd..dc06c78c9eeb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -135,13 +135,8 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
>  	struct intel_gt_timelines *timelines = &gt->timelines;
>  	struct intel_timeline *tl, *tn;
>  	unsigned long active_count = 0;
> -	bool interruptible;
>  	LIST_HEAD(free);
>  
> -	interruptible = true;
> -	if (unlikely(timeout < 0))
> -		timeout = -timeout, interruptible = false;
> -
>  	flush_submission(gt, timeout); /* kick the ksoftirqd tasklets */
>  	spin_lock(&timelines->lock);
>  	list_for_each_entry_safe(tl, tn, &timelines->active_list, link) {
> @@ -163,7 +158,7 @@ long intel_gt_retire_requests_timeout(struct intel_gt *gt, long timeout)
>  				mutex_unlock(&tl->mutex);
>  
>  				timeout = dma_fence_wait_timeout(fence,
> -								 interruptible,
> +								 true,
>  								 timeout);
>  				dma_fence_put(fence);
>  
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
