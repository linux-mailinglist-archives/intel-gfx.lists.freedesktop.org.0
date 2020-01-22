Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B61145E42
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 22:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D42FA6F909;
	Wed, 22 Jan 2020 21:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB936F908
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 21:45:34 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 13:45:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="220451739"
Received: from scarbo-desk.jf.intel.com (HELO scarbo-DESK) ([10.165.21.146])
 by orsmga008.jf.intel.com with ESMTP; 22 Jan 2020 13:45:33 -0800
Date: Wed, 22 Jan 2020 13:38:55 -0800
From: Steve Carbonari <steven.carbonari@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200122213855.GG30454@scarbo-DESK>
References: <20191212140459.1307617-32-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212140459.1307617-32-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [32/33] drm/i915/gt: Expose heartbeat interval via
 sysfs
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 12, 2019 at 02:04:58PM +0000, Chris Wilson wrote:
> We monitor the health of the system via periodic heartbeat pulses. The
> pulses also provide the opportunity to perform garbage collection.
> However, we interpret an incomplete pulse (a missed heartbeat) as an
> indication that the system is no longer responsive, i.e. hung, and
> perform an engine or full GPU reset. Given that the preemption
> granularity can be very coarse on a system, we let the sysadmin override
> our legacy timeouts which were "optimised" for desktop applications.
> 
> The heartbeat interval can be adjusted per-engine using,
> 
> 	/sys/class/drm/card?/engine/*/heartbeat_interval_ms
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Code looks good.
Performed light testing with other sysfs related patches in the series.
The heartbeat_interval_ms file exists and can be modified.

Reviewed-by: Steve Carbonari <steven.carbonari@intel.com>
Tested-by: Steve Carbonari <steven.carbonari@intel.com


> ---
>  drivers/gpu/drm/i915/Kconfig.profile         |  3 ++
>  drivers/gpu/drm/i915/gt/intel_engine_sysfs.c | 47 ++++++++++++++++++++
>  2 files changed, 50 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
> index 1f4e98a8532f..ba8767fc0d6e 100644
> --- a/drivers/gpu/drm/i915/Kconfig.profile
> +++ b/drivers/gpu/drm/i915/Kconfig.profile
> @@ -20,6 +20,9 @@ config DRM_I915_HEARTBEAT_INTERVAL
>  	  check the health of the GPU and undertake regular house-keeping of
>  	  internal driver state.
>  
> +	  This is adjustable via
> +	  /sys/class/drm/card?/engine/*/heartbeat_interval_ms
> +
>  	  May be 0 to disable heartbeats and therefore disable automatic GPU
>  	  hang detection.
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> index d299c66cf7ec..33b4c00b93f2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> @@ -9,6 +9,7 @@
>  
>  #include "i915_drv.h"
>  #include "intel_engine.h"
> +#include "intel_engine_heartbeat.h"
>  #include "intel_engine_sysfs.h"
>  
>  struct kobj_engine {
> @@ -315,6 +316,49 @@ preempt_timeout_show(struct kobject *kobj, struct kobj_attribute *attr,
>  static struct kobj_attribute preempt_timeout_attr =
>  __ATTR(preempt_timeout_ms, 0644, preempt_timeout_show, preempt_timeout_store);
>  
> +static ssize_t
> +heartbeat_store(struct kobject *kobj, struct kobj_attribute *attr,
> +		const char *buf, size_t count)
> +{
> +	struct intel_engine_cs *engine = kobj_to_engine(kobj);
> +	unsigned long long delay;
> +	int err;
> +
> +	/*
> +	 * We monitor the health of the system via periodic heartbeat pulses.
> +	 * The pulses also provide the opportunity to perform garbage
> +	 * collection.  However, we interpret an incomplete pulse (a missed
> +	 * heartbeat) as an indication that the system is no longer responsive,
> +	 * i.e. hung, and perform an engine or full GPU reset. Given that the
> +	 * preemption granularity can be very coarse on a system, the optimal
> +	 * value for any workload is unknowable!
> +	 */
> +
> +	err = kstrtoull(buf, 0, &delay);
> +	if (err)
> +		return err;
> +
> +	if (delay >= jiffies_to_msecs(MAX_SCHEDULE_TIMEOUT))
> +		return -EINVAL;
> +
> +	err = intel_engine_set_heartbeat(engine, delay);
> +	if (err)
> +		return err;
> +
> +	return count;
> +}
> +
> +static ssize_t
> +heartbeat_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> +{
> +	struct intel_engine_cs *engine = kobj_to_engine(kobj);
> +
> +	return sprintf(buf, "%lu\n", engine->props.heartbeat_interval_ms);
> +}
> +
> +static struct kobj_attribute heartbeat_interval_attr =
> +__ATTR(heartbeat_interval_ms, 0644, heartbeat_show, heartbeat_store);
> +
>  static void kobj_engine_release(struct kobject *kobj)
>  {
>  	kfree(kobj);
> @@ -357,6 +401,9 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
>  		&all_caps_attr.attr,
>  		&max_spin_attr.attr,
>  		&stop_timeout_attr.attr,
> +#if CONFIG_DRM_I915_HEARTBEAT_INTERVAL
> +		&heartbeat_interval_attr.attr,
> +#endif
>  		NULL
>  	};
>  
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
