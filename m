Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42710360803
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Apr 2021 13:13:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C359A6EA32;
	Thu, 15 Apr 2021 11:12:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B976F6EA32
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Apr 2021 11:12:57 +0000 (UTC)
IronPort-SDR: g82C+hwDB8s3uLFvqY18+fc8aCLL5iwndZsIZLKqpwOolSEYKe3E7OZtG05pue9vhLMy/Y9sTc
 ocoF42ZfdnsA==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="191644503"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="191644503"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 04:12:57 -0700
IronPort-SDR: 0/1X1dT4qCRvtN4dFTTuHCqjdcndYCbuQaw+6yrR86Ne6h8P9QamwJR0Hxh4soEotRxb043ZJc
 ADr3ijBVJWww==
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="522332332"
Received: from annelyon-mobl2.ger.corp.intel.com (HELO [10.213.207.39])
 ([10.213.207.39])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2021 04:12:55 -0700
To: Jun Miao <jun.miao@windriver.com>, jani.nikula@linux.intel.com,
 daniel@ffwll.ch, airlied@linux.ie
References: <20210414144828.22813-1-jun.miao@windriver.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <338067c3-406e-a617-3efa-824787793e43@linux.intel.com>
Date: Thu, 15 Apr 2021 12:12:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210414144828.22813-1-jun.miao@windriver.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH][V2] drm/i915/gt: Fix a lockdep warning on
 RT kernel
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

On 14/04/2021 15:48, Jun Miao wrote:
> Don`t simple disable all the HD-irq, should race the region in the
> intel_breadcrumbs_disarm_irq() only.
> 

What is HD-irq, I am, not familiar with that term?

> BUG: sleeping function called from invalid context at kernel/locking/rtmutex.c:969
>    #0: ffff89c4c00ca970 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work+0x1cf/0x6d0
>    #1: ffffa433c1f53e60 ((work_completion)(&engine->retire_work)){+.+.}-{0:0}, at: process_one_work+0x1cf 0x6d
>    #2: ffff89c4ccb0a0a8 (kernel_context){+.+.}-{0:0}, at: engine_retire+0x62/0x110 [i915]
>    #3: ffff89c4cf682300 (wakeref.mutex#3){+.+.}-{0:0}, at: __intel_wakeref_put_last+0x20/0x60 [i915]
>    #4: ffff89c4ccb08398 (&b->irq_lock){+.+.}-{0:0}, at: intel_breadcrumbs_disarm_irq+0x20/0xd0 [i915]
>   irq event stamp: 2126
>   hardirqs last  enabled at (2125): [<ffffffffbb134739>] cancel_delayed_work+0xa9/0xc0
>   hardirqs last disabled at (2126): [<ffffffffc0507fe6>] __intel_breadcrumbs_park+0x76/0x80 [i915]
>   softirqs last  enabled at (0): [<ffffffffbb1099ce>] copy_process+0x63e/0x1630
>   softirqs last disabled at (0): [<0000000000000000>] 0x0
>   CPU: 3 PID: 281 Comm: kworker/3:3 Not tainted 5.10.27-rt34-yocto-preempt-rt #1
>   Hardware name: Intel(R) Client Systems NUC7i5DNKE/NUC7i5DNB, BIOS DNKBLi5v.86A.0064.2019.0523.1933 05/23 2019
>   Workqueue: events engine_retire [i915]
>   Call Trace:
>    show_stack+0x52/0x58
>    dump_stack+0x7d/0x9f
>    ___might_sleep.cold+0xe3/0xf4
>    rt_spin_lock+0x3f/0xc0
>    ? intel_breadcrumbs_disarm_irq+0x20/0xd0 [i915]
>    intel_breadcrumbs_disarm_irq+0x20/0xd0 [i915]
>    signal_irq_work+0x241/0x660 [i915]
>    ? __this_cpu_preempt_check+0x13/0x20
>    ? lockdep_hardirqs_off+0x106/0x120
>    __intel_breadcrumbs_park+0x3f/0x80 [i915]
>    __engine_park+0xbd/0xe0 [i915]
>    ____intel_wakeref_put_last+0x22/0x60 [i915]
>    __intel_wakeref_put_last+0x50/0x60 [i915]
>    intel_context_exit_engine+0x5f/0x70 [i915]
>    i915_request_retire+0x139/0x2d0 [i915]
>    engine_retire+0xb0/0x110 [i915]
>    process_one_work+0x26d/0x6d0
>    worker_thread+0x53/0x330
>    kthread+0x1b0/0x1d0
>    ? process_one_work+0x6d0/0x6d0
>    ? __kthread_parkme+0xc0/0xc0
>    ret_from_fork+0x22/0x30
> 
> Fixes: 9d5612ca165a ("drm/i915/gt: Defer enabling the breadcrumb interrupt to after submission")
> Signed-off-by: Jun Miao <jun.miao@windriver.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_breadcrumbs.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 34a645d..0589b1a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -103,10 +103,12 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
>   
>   static void intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
>   {
> -	spin_lock(&b->irq_lock);
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&b->irq_lock, flags);
>   	if (b->irq_armed)
>   		__intel_breadcrumbs_disarm_irq(b);
> -	spin_unlock(&b->irq_lock);
> +	spin_unlock_irqrestore(&b->irq_lock, flags);
>   }
>   
>   static void add_signaling_context(struct intel_breadcrumbs *b,
> @@ -337,9 +339,7 @@ void __intel_breadcrumbs_park(struct intel_breadcrumbs *b)
>   	/* Kick the work once more to drain the signalers, and disarm the irq */
>   	irq_work_sync(&b->irq_work);
>   	while (READ_ONCE(b->irq_armed) && !atomic_read(&b->active)) {
> -		local_irq_disable();
>   		signal_irq_work(&b->irq_work);
> -		local_irq_enable();

Unfortunately there is another lock inside signal_irq_work (rq->lock) 
which needs to be taken irq safe.

RT patches are in tree or out of the tree these days?

Regards,

Tvrtko

>   		cond_resched();
>   	}
>   }
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
