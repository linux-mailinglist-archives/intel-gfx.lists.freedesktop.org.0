Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB4913AD38
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 16:12:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A19576E40A;
	Tue, 14 Jan 2020 15:12:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B28DE6E402
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 15:12:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 07:12:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="424679609"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 14 Jan 2020 07:12:39 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id EC66F5C1DF0; Tue, 14 Jan 2020 17:12:03 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200114093648.2090633-13-chris@chris-wilson.co.uk>
References: <20200114093648.2090633-1-chris@chris-wilson.co.uk>
 <20200114093648.2090633-13-chris@chris-wilson.co.uk>
Date: Tue, 14 Jan 2020 17:12:03 +0200
Message-ID: <87h80yf4xo.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/gt: Limit C-states while
 waiting for requests
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
Cc: Eero Tamminen <eero.t.tamminen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Allow the sysadmin to specify whether we should prevent the CPU from
> entering higher C-states while waiting for the CPU, in order to reduce

s/higher/deeper
s/CPU/GPU

> the latency of request completions and so speed up client continuations.
>
> The target dma latency can be adjusted per-engine using,
>
> 	/sys/class/drm/card?/engine/*/dma_latency_ns
>
> (For waiting on a virtual engine, the underlying physical engine is used
> for the wait once the request is active, so set all the physical engines
> in the virtual set to the same target dma latency.)
>
> Note that in most cases, the ratelimiting step does not appear to the
> interrupt latency per se, but secondary effects of avoiding additional
> memory latencies while active.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Eero Tamminen <eero.t.tamminen@intel.com>
> Cc: Francisco Jerez <currojerez@riseup.net>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Dmitry Rogozhkin <dmitry.v.rogozhkin@intel.com>
> ---
>  drivers/gpu/drm/i915/Kconfig.profile         | 14 ++++++
>  drivers/gpu/drm/i915/gt/intel_breadcrumbs.c  | 48 ++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c    |  2 +
>  drivers/gpu/drm/i915/gt/intel_engine_sysfs.c | 31 +++++++++++++
>  drivers/gpu/drm/i915/gt/intel_engine_types.h |  9 ++++
>  5 files changed, 104 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
> index ba8767fc0d6e..a956f1bb9caf 100644
> --- a/drivers/gpu/drm/i915/Kconfig.profile
> +++ b/drivers/gpu/drm/i915/Kconfig.profile
> @@ -12,6 +12,20 @@ config DRM_I915_USERFAULT_AUTOSUSPEND
>  	  May be 0 to disable the extra delay and solely use the device level
>  	  runtime pm autosuspend delay tunable.
>  
> +config DRM_I915_DMA_LATENCY
> +	int "Target CPU-DMA latency while waiting on active requests (ns)"
> +	default -1 # nanoseconds
> +	help
> +	  Specify a target latency for DMA wakeup, see /dev/cpu_dma_latency,
> +	  used while the CPU is waiting for GPU results.
> +
> +	  This is adjustable via
> +	  /sys/class/drm/card?/engine/*/dma_latency_ns
> +
> +	  May be -1 to prevent specifying a target wakeup and let the CPU
> +	  enter powersaving while waiting. Conversely, 0 may be used to
> +	  prevent the CPU from entering any C-states while waiting.

Who will be the target group to touch this tunable if it is default off?
-Mika

> +
>  config DRM_I915_HEARTBEAT_INTERVAL
>  	int "Interval between heartbeat pulses (ms)"
>  	default 2500 # milliseconds
> diff --git a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> index 0ba524a414c6..34779d4f5012 100644
> --- a/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_breadcrumbs.c
> @@ -31,6 +31,42 @@
>  #include "intel_gt_pm.h"
>  #include "intel_gt_requests.h"
>  
> +static void __dma_qos_update(struct work_struct *work)
> +{
> +	struct intel_breadcrumbs_dma_qos *qos =
> +		container_of(work, typeof(*qos), update);
> +
> +	if (pm_qos_request_active(&qos->req)) {
> +		if (qos->latency < 0)
> +			pm_qos_remove_request(&qos->req);
> +		else
> +			pm_qos_update_request(&qos->req, qos->latency);
> +	} else {
> +		if (qos->latency != -1)
> +			pm_qos_add_request(&qos->req,
> +					   PM_QOS_CPU_DMA_LATENCY,
> +					   qos->latency);
> +	}
> +}
> +
> +static void dma_qos_add(struct intel_breadcrumbs *b, s32 latency)
> +{
> +	if (latency < 0)
> +		return;
> +
> +	b->qos.latency = latency;
> +	queue_work(system_highpri_wq, &b->qos.update);
> +}
> +
> +static void dma_qos_del(struct intel_breadcrumbs *b)
> +{
> +	if (b->qos.latency < 0)
> +		return;
> +
> +	b->qos.latency = -1;
> +	queue_work(system_highpri_wq, &b->qos.update);
> +}
> +
>  static void irq_enable(struct intel_engine_cs *engine)
>  {
>  	if (!engine->irq_enable)
> @@ -64,6 +100,8 @@ static void __intel_breadcrumbs_disarm_irq(struct intel_breadcrumbs *b)
>  	if (!--b->irq_enabled)
>  		irq_disable(engine);
>  
> +	dma_qos_del(b);
> +
>  	b->irq_armed = false;
>  	intel_gt_pm_put_async(engine->gt);
>  }
> @@ -243,6 +281,8 @@ static bool __intel_breadcrumbs_arm_irq(struct intel_breadcrumbs *b)
>  	if (!b->irq_enabled++)
>  		irq_enable(engine);
>  
> +	dma_qos_add(b, engine->props.dma_latency_ns);
> +
>  	return true;
>  }
>  
> @@ -253,6 +293,9 @@ void intel_engine_init_breadcrumbs(struct intel_engine_cs *engine)
>  	spin_lock_init(&b->irq_lock);
>  	INIT_LIST_HEAD(&b->signalers);
>  
> +	b->qos.latency = -1;
> +	INIT_WORK(&b->qos.update, __dma_qos_update);
> +
>  	init_irq_work(&b->irq_work, signal_irq_work);
>  }
>  
> @@ -273,6 +316,11 @@ void intel_engine_reset_breadcrumbs(struct intel_engine_cs *engine)
>  
>  void intel_engine_fini_breadcrumbs(struct intel_engine_cs *engine)
>  {
> +	struct intel_breadcrumbs *b = &engine->breadcrumbs;
> +
> +	GEM_BUG_ON(b->qos.latency != -1);
> +	flush_work(&b->qos.update);
> +	GEM_BUG_ON(pm_qos_request_active(&b->qos.req));
>  }
>  
>  bool i915_request_enable_breadcrumb(struct i915_request *rq)
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index eb3a781e3918..a6b2cff1a744 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -310,6 +310,8 @@ static int intel_engine_setup(struct intel_gt *gt, enum intel_engine_id id)
>  	engine->instance = info->instance;
>  	__sprint_engine_name(engine);
>  
> +	engine->props.dma_latency_ns =
> +		CONFIG_DRM_I915_DMA_LATENCY;
>  	engine->props.heartbeat_interval_ms =
>  		CONFIG_DRM_I915_HEARTBEAT_INTERVAL;
>  	engine->props.max_busywait_duration_ns =
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> index 33b4c00b93f2..ba0b24c22c71 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> @@ -272,6 +272,36 @@ stop_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  static struct kobj_attribute stop_timeout_attr =
>  __ATTR(stop_timeout_ms, 0644, stop_show, stop_store);
>  
> +static ssize_t
> +dma_latency_store(struct kobject *kobj, struct kobj_attribute *attr,
> +		  const char *buf, size_t count)
> +{
> +	struct intel_engine_cs *engine = kobj_to_engine(kobj);
> +	long long latency;
> +	int err;
> +
> +	err = kstrtoll(buf, 0, &latency);
> +	if (err)
> +		return err;
> +
> +	if (latency > S32_MAX)
> +		return -EINVAL;
> +
> +	WRITE_ONCE(engine->props.dma_latency_ns, latency);
> +	return count;
> +}
> +
> +static ssize_t
> +dma_latency_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> +{
> +	struct intel_engine_cs *engine = kobj_to_engine(kobj);
> +
> +	return sprintf(buf, "%d\n", engine->props.dma_latency_ns);
> +}
> +
> +static struct kobj_attribute dma_latency_attr =
> +__ATTR(dma_latency_ns, 0644, dma_latency_show, dma_latency_store);
> +
>  static ssize_t
>  preempt_timeout_store(struct kobject *kobj, struct kobj_attribute *attr,
>  		      const char *buf, size_t count)
> @@ -401,6 +431,7 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
>  		&all_caps_attr.attr,
>  		&max_spin_attr.attr,
>  		&stop_timeout_attr.attr,
> +		&dma_latency_attr.attr,
>  #if CONFIG_DRM_I915_HEARTBEAT_INTERVAL
>  		&heartbeat_interval_attr.attr,
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index de1bc6534cc2..fa5bdb43916b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -13,6 +13,7 @@
>  #include <linux/kref.h>
>  #include <linux/list.h>
>  #include <linux/llist.h>
> +#include <linux/pm_qos.h>
>  #include <linux/rbtree.h>
>  #include <linux/timer.h>
>  #include <linux/types.h>
> @@ -352,6 +353,12 @@ struct intel_engine_cs {
>  		unsigned int irq_enabled;
>  
>  		bool irq_armed;
> +
> +		struct intel_breadcrumbs_dma_qos {
> +			struct pm_qos_request req;
> +			struct work_struct update;
> +			s32 latency;
> +		} qos;
>  	} breadcrumbs;
>  
>  	struct intel_engine_pmu {
> @@ -540,6 +547,8 @@ struct intel_engine_cs {
>  		unsigned long preempt_timeout_ms;
>  		unsigned long stop_timeout_ms;
>  		unsigned long timeslice_duration_ms;
> +
> +		s32 dma_latency_ns;
>  	} props;
>  };
>  
> -- 
> 2.25.0.rc2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
