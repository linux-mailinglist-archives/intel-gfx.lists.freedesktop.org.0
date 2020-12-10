Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 660FD2D63D5
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 18:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24BD6E430;
	Thu, 10 Dec 2020 17:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 818826E430
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 17:42:59 +0000 (UTC)
IronPort-SDR: pCewm+3z6vN4uvlJiskagY02aPaN3NOvJ34EbkymZJV98ZJq77xdk2KfCfQt5H0tjdrysaRJmf
 lPqyPA8qC6aA==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="154108926"
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="154108926"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 09:42:59 -0800
IronPort-SDR: hX5D38zT1DNzCVAZvGq7LafRbd5sh1vEur6W9e5tjQzhfEx2jibKDj7PFlHZfqsP75xtOuuqQt
 HR1tgo2SAbUw==
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; d="scan'208";a="364812621"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 09:42:58 -0800
Date: Thu, 10 Dec 2020 09:37:13 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201210173713.GA25527@sdutt-i7>
References: <20201207193824.18114-1-chris@chris-wilson.co.uk>
 <20201207193824.18114-7-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201207193824.18114-7-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 07/20] drm/i915/gt: Shrink the critical
 section for irq signaling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 07, 2020 at 07:38:11PM +0000, Chris Wilson wrote:
> Let's only wait for the list iterator when decoupling the virtual
> breadcrumb, as the signaling of all the requests may take a long time,
> during which we do not want to keep the tasklet spinning.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/intel_breadcrumbs.c       | 2 ++
>  drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h | 1 +
>  drivers/gpu/drm/i915/gt/intel_lrc.c               | 3 ++-
>  3 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 63900edbde88..ac1e5f6c3c2c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -239,6 +239,7 @@ static void signal_irq_work(struct irq_work *work)
>  		intel_breadcrumbs_disarm_irq(b);
>  
>  	rcu_read_lock();
> +	atomic_inc(&b->signaler_active);
>  	list_for_each_entry_rcu(ce, &b->signalers, signal_link) {
>  		struct i915_request *rq;
>  
> @@ -274,6 +275,7 @@ static void signal_irq_work(struct irq_work *work)
>  			}
>  		}
>  	}
> +	atomic_dec(&b->signaler_active);
>  	rcu_read_unlock();
>  
>  	llist_for_each_safe(signal, sn, signal) {
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
> index a74bb3062bd8..f672053d694d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs_types.h
> @@ -35,6 +35,7 @@ struct intel_breadcrumbs {
>  	spinlock_t signalers_lock; /* protects the list of signalers */
>  	struct list_head signalers;
>  	struct llist_head signaled_requests;
> +	atomic_t signaler_active;
>  
>  	spinlock_t irq_lock; /* protects the interrupt from hardirq context */
>  	struct irq_work irq_work; /* for use from inside irq_lock */
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index b3db16b2a5a4..35cded25c6c1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -1401,7 +1401,8 @@ static void kick_siblings(struct i915_request *rq, struct intel_context *ce)
>  		 * ce->signal_link.
>  		 */
>  		i915_request_cancel_breadcrumb(rq);
> -		irq_work_sync(&engine->breadcrumbs->irq_work);
> +		while (atomic_read(&engine->breadcrumbs->signaler_active))
> +			cpu_relax();

Would a 'cond_resched' be better here? I trust your opinion on which to
use but thought I'd mention it.

With that:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

>  	}
>  
>  	if (READ_ONCE(ve->request))
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
