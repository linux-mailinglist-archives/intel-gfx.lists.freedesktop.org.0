Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C1871257F
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 13:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04FE910E7EE;
	Fri, 26 May 2023 11:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5928B10E1C5
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 11:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685100652; x=1716636652;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=uUFU+GJxmNzWp0YVbR9T8YTv8GBGnTQBl+x6VB4RsjE=;
 b=EQeXtDBSSXvCJqSlxjtJf5NNIpM+AsEry+5vFUSBD7uTNZ8CfjNejKKv
 rkAC/rFkiJrUZKJUnnks7FRQGZVXTXB6bwDiKyguIhelwr2baPvlgsvod
 +dUZOlRDeQ7yygzaftFzLVSdT97HLg22pdWKUBJKM1KBQTJnOVYq5cOwI
 6WbCmq56hs9AalV2FWS51/yRbVKfoJg3oKAxR89PiZrZSxnq8ooYnzWkV
 CWNwC4d1JmGnXZQ1/3ZY7FFDVyK2WstCyCkPaltbkAO3zbxC3qqROLw+w
 RmyJ+2aJZL3NFwWv9B1gButZPCPrEsA4pWGcH7vXSYwPUCed7kkuTjzz+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="338776027"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="338776027"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 04:30:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10721"; a="849532408"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="849532408"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 04:30:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Luca Coelho
 <luciano.coelho@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <0a1cf2a3-3402-04dd-b276-4d1ecd0d170b@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230524090521.596399-1-luciano.coelho@intel.com>
 <20230524090521.596399-3-luciano.coelho@intel.com>
 <0a1cf2a3-3402-04dd-b276-4d1ecd0d170b@linux.intel.com>
Date: Fri, 26 May 2023 14:30:46 +0300
Message-ID: <87mt1rib2x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: add a dedicated workqueue
 inside drm_i915_private
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 24 May 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 24/05/2023 10:05, Luca Coelho wrote:
>> In order to avoid flush_scheduled_work() usage, add a dedicated
>> workqueue in the drm_i915_private structure.  In this way, we don't
>> need to use the system queue anymore.
>>=20
>> This change is mostly mechanical and based on Tetsuo's original
>> patch[1].
>>=20
>> Link: https://patchwork.freedesktop.org/series/114608/ [1]
>> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  |  5 ++--
>>   .../drm/i915/display/intel_display_driver.c   |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>   .../drm/i915/display/intel_dp_link_training.c |  3 ++-
>>   drivers/gpu/drm/i915/display/intel_drrs.c     |  4 +++-
>>   drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
>>   drivers/gpu/drm/i915/display/intel_fbdev.c    |  3 ++-
>>   drivers/gpu/drm/i915/display/intel_hdcp.c     | 23 +++++++++++--------
>>   drivers/gpu/drm/i915/display/intel_hotplug.c  | 18 ++++++++++-----
>>   drivers/gpu/drm/i915/display/intel_opregion.c |  3 ++-
>>   drivers/gpu/drm/i915/display/intel_pps.c      |  4 +++-
>>   drivers/gpu/drm/i915/display/intel_psr.c      |  8 ++++---
>>   .../drm/i915/gt/intel_execlists_submission.c  |  5 ++--
>>   .../gpu/drm/i915/gt/intel_gt_buffer_pool.c    | 10 ++++----
>>   drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +-
>>   drivers/gpu/drm/i915/gt/intel_gt_requests.c   | 10 ++++----
>>   drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
>>   drivers/gpu/drm/i915/gt/intel_rps.c           | 20 ++++++++--------
>>   drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  2 +-
>>   drivers/gpu/drm/i915/i915_driver.c            | 11 +++++++++
>>   drivers/gpu/drm/i915/i915_drv.h               |  9 +++++++-
>>   drivers/gpu/drm/i915/i915_request.c           |  2 +-
>>   drivers/gpu/drm/i915/intel_wakeref.c          |  2 +-
>>   24 files changed, 99 insertions(+), 55 deletions(-)
>
> I'll take a look at the gt/ parts only since display experts need to=20
> okay the point Daniel raise anyway.

There's a bunch of lockdep failures in BAT. Are they possible related to
switching to unordered wq?

BR,
Jani


>
> 8<
>> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/driv=
ers/gpu/drm/i915/gt/intel_execlists_submission.c
>> index 750326434677..2ebd937f3b4c 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
>> @@ -2327,6 +2327,7 @@ static u32 active_ccid(struct intel_engine_cs *eng=
ine)
>>=20=20=20
>>   static void execlists_capture(struct intel_engine_cs *engine)
>>   {
>> +	struct drm_i915_private *i915 =3D engine->i915;
>>   	struct execlists_capture *cap;
>>=20=20=20
>>   	if (!IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR))
>> @@ -2375,7 +2376,7 @@ static void execlists_capture(struct intel_engine_=
cs *engine)
>>   		goto err_rq;
>>=20=20=20
>>   	INIT_WORK(&cap->work, execlists_capture_work);
>> -	schedule_work(&cap->work);
>> +	queue_work(i915->unordered_wq, &cap->work);
>>   	return;
>>=20=20=20
>>   err_rq:
>> @@ -3680,7 +3681,7 @@ static void virtual_context_destroy(struct kref *k=
ref)
>>   	 * lock, we can delegate the free of the engine to an RCU worker.
>>   	 */
>>   	INIT_RCU_WORK(&ve->rcu, rcu_virtual_context_destroy);
>> -	queue_rcu_work(system_wq, &ve->rcu);
>> +	queue_rcu_work(ve->context.engine->i915->unordered_wq, &ve->rcu);
>>   }
>>=20=20=20
>>   static void virtual_engine_initial_hint(struct virtual_engine *ve)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c b/drivers/gp=
u/drm/i915/gt/intel_gt_buffer_pool.c
>> index cadfd85785b1..86b5a9ba323d 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_buffer_pool.c
>> @@ -88,10 +88,11 @@ static void pool_free_work(struct work_struct *wrk)
>>   {
>>   	struct intel_gt_buffer_pool *pool =3D
>>   		container_of(wrk, typeof(*pool), work.work);
>> +	struct intel_gt *gt =3D container_of(pool, struct intel_gt, buffer_poo=
l);
>
> Okay. Or alternatively, pool =3D &gt->buffer_pool, might read simpler...
>
>>=20=20=20
>>   	if (pool_free_older_than(pool, HZ))
>> -		schedule_delayed_work(&pool->work,
>> -				      round_jiffies_up_relative(HZ));
>> +		queue_delayed_work(gt->i915->unordered_wq, &pool->work,
>> +				   round_jiffies_up_relative(HZ));
>>   }
>>=20=20=20
>>   static void pool_retire(struct i915_active *ref)
>> @@ -99,6 +100,7 @@ static void pool_retire(struct i915_active *ref)
>>   	struct intel_gt_buffer_pool_node *node =3D
>>   		container_of(ref, typeof(*node), active);
>>   	struct intel_gt_buffer_pool *pool =3D node->pool;
>> +	struct intel_gt *gt =3D container_of(pool, struct intel_gt, buffer_poo=
l);
>
> ... although I am beginning to wonder if intel_gt_buffer_pool shouldn't=20
> just gain a gt backpointer? That would decouple things more instead of=20
> tying the implementation with intel_gt implicitly. Not a strong=20
> direction though.
>
>>   	struct list_head *list =3D bucket_for_size(pool, node->obj->base.size=
);
>>   	unsigned long flags;
>>=20=20=20
>> @@ -116,8 +118,8 @@ static void pool_retire(struct i915_active *ref)
>>   	WRITE_ONCE(node->age, jiffies ?: 1); /* 0 reserved for active nodes */
>>   	spin_unlock_irqrestore(&pool->lock, flags);
>>=20=20=20
>> -	schedule_delayed_work(&pool->work,
>> -			      round_jiffies_up_relative(HZ));
>> +	queue_delayed_work(gt->i915->unordered_wq, &pool->work,
>> +			   round_jiffies_up_relative(HZ));
>>   }
>>=20=20=20
>>   void intel_gt_buffer_pool_mark_used(struct intel_gt_buffer_pool_node *=
node)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i9=
15/gt/intel_gt_irq.c
>> index 8f888d36f16d..62fd00c9e519 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> @@ -376,7 +376,7 @@ static void gen7_parity_error_irq_handler(struct int=
el_gt *gt, u32 iir)
>>   	if (iir & GT_RENDER_L3_PARITY_ERROR_INTERRUPT)
>>   		gt->i915->l3_parity.which_slice |=3D 1 << 0;
>>=20=20=20
>> -	schedule_work(&gt->i915->l3_parity.error_work);
>> +	queue_work(gt->i915->unordered_wq, &gt->i915->l3_parity.error_work);
>>   }
>>=20=20=20
>>   void gen6_gt_irq_handler(struct intel_gt *gt, u32 gt_iir)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/d=
rm/i915/gt/intel_gt_requests.c
>> index 1dfd01668c79..d1a382dfaa1d 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
>> @@ -116,7 +116,7 @@ void intel_engine_add_retire(struct intel_engine_cs =
*engine,
>>   	GEM_BUG_ON(intel_engine_is_virtual(engine));
>>=20=20=20
>>   	if (add_retire(engine, tl))
>> -		schedule_work(&engine->retire_work);
>> +		queue_work(engine->i915->unordered_wq, &engine->retire_work);
>>   }
>>=20=20=20
>>   void intel_engine_init_retire(struct intel_engine_cs *engine)
>> @@ -207,8 +207,8 @@ static void retire_work_handler(struct work_struct *=
work)
>>   	struct intel_gt *gt =3D
>>   		container_of(work, typeof(*gt), requests.retire_work.work);
>>=20=20=20
>> -	schedule_delayed_work(&gt->requests.retire_work,
>> -			      round_jiffies_up_relative(HZ));
>> +	queue_delayed_work(gt->i915->unordered_wq, &gt->requests.retire_work,
>> +			   round_jiffies_up_relative(HZ));
>>   	intel_gt_retire_requests(gt);
>>   }
>>=20=20=20
>> @@ -224,8 +224,8 @@ void intel_gt_park_requests(struct intel_gt *gt)
>>=20=20=20
>>   void intel_gt_unpark_requests(struct intel_gt *gt)
>>   {
>> -	schedule_delayed_work(&gt->requests.retire_work,
>> -			      round_jiffies_up_relative(HZ));
>> +	queue_delayed_work(gt->i915->unordered_wq, &gt->requests.retire_work,
>> +			   round_jiffies_up_relative(HZ));
>>   }
>>=20=20=20
>>   void intel_gt_fini_requests(struct intel_gt *gt)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i91=
5/gt/intel_reset.c
>> index 195ff72d7a14..e2152f75ba2e 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>> @@ -1625,7 +1625,7 @@ void __intel_init_wedge(struct intel_wedge_me *w,
>>   	w->name =3D name;
>>=20=20=20
>>   	INIT_DELAYED_WORK_ONSTACK(&w->work, intel_wedge_me);
>> -	schedule_delayed_work(&w->work, timeout);
>> +	queue_delayed_work(gt->i915->unordered_wq, &w->work, timeout);
>>   }
>>=20=20=20
>>   void __intel_fini_wedge(struct intel_wedge_me *w)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/=
gt/intel_rps.c
>> index e68a99205599..e92e626d4994 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
>> @@ -73,13 +73,14 @@ static void set(struct intel_uncore *uncore, i915_re=
g_t reg, u32 val)
>>   static void rps_timer(struct timer_list *t)
>>   {
>>   	struct intel_rps *rps =3D from_timer(rps, t, timer);
>> +	struct intel_gt *gt =3D rps_to_gt(rps);
>>   	struct intel_engine_cs *engine;
>>   	ktime_t dt, last, timestamp;
>>   	enum intel_engine_id id;
>>   	s64 max_busy[3] =3D {};
>>=20=20=20
>>   	timestamp =3D 0;
>> -	for_each_engine(engine, rps_to_gt(rps), id) {
>> +	for_each_engine(engine, gt, id) {
>>   		s64 busy;
>>   		int i;
>>=20=20=20
>> @@ -123,7 +124,7 @@ static void rps_timer(struct timer_list *t)
>>=20=20=20
>>   			busy +=3D div_u64(max_busy[i], 1 << i);
>>   		}
>> -		GT_TRACE(rps_to_gt(rps),
>> +		GT_TRACE(gt,
>>   			 "busy:%lld [%d%%], max:[%lld, %lld, %lld], interval:%d\n",
>>   			 busy, (int)div64_u64(100 * busy, dt),
>>   			 max_busy[0], max_busy[1], max_busy[2],
>> @@ -133,12 +134,12 @@ static void rps_timer(struct timer_list *t)
>>   		    rps->cur_freq < rps->max_freq_softlimit) {
>>   			rps->pm_iir |=3D GEN6_PM_RP_UP_THRESHOLD;
>>   			rps->pm_interval =3D 1;
>> -			schedule_work(&rps->work);
>> +			queue_work(gt->i915->unordered_wq, &rps->work);
>>   		} else if (100 * busy < rps->power.down_threshold * dt &&
>>   			   rps->cur_freq > rps->min_freq_softlimit) {
>>   			rps->pm_iir |=3D GEN6_PM_RP_DOWN_THRESHOLD;
>>   			rps->pm_interval =3D 1;
>> -			schedule_work(&rps->work);
>> +			queue_work(gt->i915->unordered_wq, &rps->work);
>>   		} else {
>>   			rps->last_adj =3D 0;
>>   		}
>> @@ -973,7 +974,7 @@ static int rps_set_boost_freq(struct intel_rps *rps,=
 u32 val)
>>   	}
>>   	mutex_unlock(&rps->lock);
>>   	if (boost)
>> -		schedule_work(&rps->work);
>> +		queue_work(rps_to_gt(rps)->i915->unordered_wq, &rps->work);
>>=20=20=20
>>   	return 0;
>>   }
>> @@ -1025,7 +1026,8 @@ void intel_rps_boost(struct i915_request *rq)
>>   			if (!atomic_fetch_inc(&slpc->num_waiters)) {
>>   				GT_TRACE(rps_to_gt(rps), "boost fence:%llx:%llx\n",
>>   					 rq->fence.context, rq->fence.seqno);
>> -				schedule_work(&slpc->boost_work);
>> +				queue_work(rps_to_gt(rps)->i915->unordered_wq,
>> +					   &slpc->boost_work);
>>   			}
>>=20=20=20
>>   			return;
>> @@ -1041,7 +1043,7 @@ void intel_rps_boost(struct i915_request *rq)
>>   			 rq->fence.context, rq->fence.seqno);
>>=20=20=20
>>   		if (READ_ONCE(rps->cur_freq) < rps->boost_freq)
>> -			schedule_work(&rps->work);
>> +			queue_work(rps_to_gt(rps)->i915->unordered_wq, &rps->work);
>>=20=20=20
>>   		WRITE_ONCE(rps->boosts, rps->boosts + 1); /* debug only */
>>   	}
>> @@ -1900,7 +1902,7 @@ void gen11_rps_irq_handler(struct intel_rps *rps, =
u32 pm_iir)
>>   	gen6_gt_pm_mask_irq(gt, events);
>>=20=20=20
>>   	rps->pm_iir |=3D events;
>> -	schedule_work(&rps->work);
>> +	queue_work(gt->i915->unordered_wq, &rps->work);
>>   }
>>=20=20=20
>>   void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir)
>> @@ -1917,7 +1919,7 @@ void gen6_rps_irq_handler(struct intel_rps *rps, u=
32 pm_iir)
>>   		gen6_gt_pm_mask_irq(gt, events);
>>   		rps->pm_iir |=3D events;
>>=20=20=20
>> -		schedule_work(&rps->work);
>> +		queue_work(gt->i915->unordered_wq, &rps->work);
>>   		spin_unlock(gt->irq_lock);
>>   	}
>>=20=20=20
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c b/drivers/gpu/=
drm/i915/gt/selftest_engine_cs.c
>> index 542ce6d2de19..78cdfc6f315f 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_cs.c
>> @@ -27,7 +27,7 @@ static void perf_begin(struct intel_gt *gt)
>>=20=20=20
>>   	/* Boost gpufreq to max [waitboost] and keep it fixed */
>>   	atomic_inc(&gt->rps.num_waiters);
>> -	schedule_work(&gt->rps.work);
>> +	queue_work(gt->i915->unordered_wq, &gt->rps.work);
>>   	flush_work(&gt->rps.work);
>>   }
>>=20=20=20
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i=
915_driver.c
>> index 522733a89946..88808aa85b26 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -132,8 +132,18 @@ static int i915_workqueues_init(struct drm_i915_pri=
vate *dev_priv)
>>   	if (dev_priv->display.hotplug.dp_wq =3D=3D NULL)
>>   		goto out_free_wq;
>>=20=20=20
>> +	/*
>> +	 * The unordered i915 workqueue should be used for all work
>> +	 * scheduling that do not require running in order.
>> +	 */
>
> Ha-ha. Nice cop out. ;) But okay, now that we have two we don't know=20
> when to use each that well so not fair on you to figure it out.
>
>> +	dev_priv->unordered_wq =3D alloc_workqueue("i915-unordered", 0, 0);
>> +	if (dev_priv->unordered_wq =3D=3D NULL)
>> +		goto out_free_dp_wq;
>> +
>>   	return 0;
>>=20=20=20
>> +out_free_dp_wq:
>> +	destroy_workqueue(dev_priv->unordered_wq);
>
> Wrong wq.
>
>>   out_free_wq:
>>   	destroy_workqueue(dev_priv->wq);
>>   out_err:
>> @@ -144,6 +154,7 @@ static int i915_workqueues_init(struct drm_i915_priv=
ate *dev_priv)
>>=20=20=20
>>   static void i915_workqueues_cleanup(struct drm_i915_private *dev_priv)
>>   {
>> +	destroy_workqueue(dev_priv->unordered_wq);
>>   	destroy_workqueue(dev_priv->display.hotplug.dp_wq);
>>   	destroy_workqueue(dev_priv->wq);
>>   }
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 14c5338c96a6..8f2665e8afb5 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -259,6 +259,14 @@ struct drm_i915_private {
>>   	 */
>>   	struct workqueue_struct *wq;
>>=20=20=20
>> +	/**
>> +	 * unordered_wq - internal workqueue for unordered work
>> +	 *
>> +	 * This workqueue should be used for all unordered work
>> +	 * scheduling within i915.
>
> Proably add something like ", which used to be scheduled on the=20
> system_wq before moving to a driver instance due deprecation of
> flush_scheduled_work()."
>
> That way we leave some note to the reader.
>
>> +	 */
>> +	struct workqueue_struct *unordered_wq;
>> +
>>   	/* pm private clock gating functions */
>>   	const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
>>=20=20=20
>> @@ -930,5 +938,4 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>=20=20=20
>>   #define HAS_LMEMBAR_SMEM_STOLEN(i915) (!HAS_LMEM(i915) && \
>>   				       GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70))
>> -
>
> Tidy if you can please.
>
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/=
i915_request.c
>> index 630a732aaecc..894068bb37b6 100644
>> --- a/drivers/gpu/drm/i915/i915_request.c
>> +++ b/drivers/gpu/drm/i915/i915_request.c
>> @@ -290,7 +290,7 @@ static enum hrtimer_restart __rq_watchdog_expired(st=
ruct hrtimer *hrtimer)
>>=20=20=20
>>   	if (!i915_request_completed(rq)) {
>>   		if (llist_add(&rq->watchdog.link, &gt->watchdog.list))
>> -			schedule_work(&gt->watchdog.work);
>> +			queue_work(gt->i915->unordered_wq, &gt->watchdog.work);
>>   	} else {
>>   		i915_request_put(rq);
>>   	}
>> diff --git a/drivers/gpu/drm/i915/intel_wakeref.c b/drivers/gpu/drm/i915=
/intel_wakeref.c
>> index 40aafe676017..497ea21a347e 100644
>> --- a/drivers/gpu/drm/i915/intel_wakeref.c
>> +++ b/drivers/gpu/drm/i915/intel_wakeref.c
>> @@ -75,7 +75,7 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf=
, unsigned long flags)
>>=20=20=20
>>   	/* Assume we are not in process context and so cannot sleep. */
>>   	if (flags & INTEL_WAKEREF_PUT_ASYNC || !mutex_trylock(&wf->mutex)) {
>> -		mod_delayed_work(system_wq, &wf->work,
>> +		mod_delayed_work(wf->i915->wq, &wf->work,
>>   				 FIELD_GET(INTEL_WAKEREF_PUT_DELAY, flags));
>>   		return;
>>   	}
>
> Pending the one or two details the non-display parts look good to me.
>
> Regards,
>
> Tvrtko

--=20
Jani Nikula, Intel Open Source Graphics Center
