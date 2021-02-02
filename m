Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C0930C9D6
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 19:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED81B6E207;
	Tue,  2 Feb 2021 18:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C92186E213
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 18:33:13 +0000 (UTC)
IronPort-SDR: LWhVQfYU5f45v14Twk0YjCZ1ffb0U+lXSXhPxnByLVj+eo8MZl9Udd/xKENqaT6tqdIOwYoQZe
 EFRvZ0C8B9CQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="199836374"
X-IronPort-AV: E=Sophos;i="5.79,396,1602572400"; d="scan'208";a="199836374"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 10:33:10 -0800
IronPort-SDR: J2R9F6t/jqSsFK5dWJBnPn3YQ2iF4ESegI1gP7+dyaXo8scKOLoTv0rMyPn9A2ou5x/332SY9U
 gon6ZQdysg8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,396,1602572400"; d="scan'208";a="370822243"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga008.fm.intel.com with ESMTP; 02 Feb 2021 10:33:09 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 511745C1F84; Tue,  2 Feb 2021 20:33:04 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210201085715.27435-5-chris@chris-wilson.co.uk>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-5-chris@chris-wilson.co.uk>
Date: Tue, 02 Feb 2021 20:33:04 +0200
Message-ID: <87ft2euxpb.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/57] drm/i915: Take rcu_read_lock for
 querying fence's driver/timeline names
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

> The name very often may be freed independently of the fence, with the
> only protection being RCU. To be safe as we read the names, hold RCU.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_sw_fence.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> index 2744558f3050..dfabf291e5cd 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> @@ -430,11 +430,13 @@ static void timer_i915_sw_fence_wake(struct timer_list *t)
>  	if (!fence)
>  		return;
>  
> +	rcu_read_lock();
>  	pr_notice("Asynchronous wait on fence %s:%s:%llx timed out (hint:%ps)\n",
>  		  cb->dma->ops->get_driver_name(cb->dma),
>  		  cb->dma->ops->get_timeline_name(cb->dma),
>  		  cb->dma->seqno,
>  		  i915_sw_fence_debug_hint(fence));
> +	rcu_read_unlock();
>  
>  	i915_sw_fence_set_error_once(fence, -ETIMEDOUT);
>  	i915_sw_fence_complete(fence);
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
