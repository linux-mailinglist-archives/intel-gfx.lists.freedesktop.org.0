Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A21145E33
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 22:40:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 213096F905;
	Wed, 22 Jan 2020 21:40:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A14116F905
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 21:40:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 13:40:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="220450892"
Received: from scarbo-desk.jf.intel.com (HELO scarbo-DESK) ([10.165.21.146])
 by orsmga008.jf.intel.com with ESMTP; 22 Jan 2020 13:40:51 -0800
Date: Wed, 22 Jan 2020 13:34:13 -0800
From: Steve Carbonari <steven.carbonari@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200122213413.GE30454@scarbo-DESK>
References: <20191212140459.1307617-30-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212140459.1307617-30-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [30/33] drm/i915/gt: Expose reset stop timeout via
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

On Thu, Dec 12, 2019 at 02:04:56PM +0000, Chris Wilson wrote:
> When we allow ourselves to sleep before a GPU reset after disabling
> submission, even for a few milliseconds, gives an innocent context the
> opportunity to clear the GPU before the reset occurs. However, how long
> to sleep depends on the typical non-preemptible duration (a similar
> problem to determining the ideal preempt-reset timeout or even the
> heartbeat interval). As this seems of a hard policy decision, punt it to
> userspace.
> 
> The timeout can be adjusted using
> 
> 	/sys/class/drm/card?/engine/*/stop_timeout_ms
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Jon Bloomfield <jon.bloomfield@intel.com>

Code looks good.
Tested with other sysfs related patches in the series.
The stop_timeout_ms file exists and can be modified.

Reviewed-by: Steve Carbonari <steven.carbonari@intel.com>
Tested-by: Steve Carbonari <steven.carbonari@intel.com

> ---
>  drivers/gpu/drm/i915/Kconfig.profile         |  3 ++
>  drivers/gpu/drm/i915/gt/intel_engine_sysfs.c | 40 ++++++++++++++++++++
>  2 files changed, 43 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
> index 9ee3b59685b9..5f4ec3aec1d2 100644
> --- a/drivers/gpu/drm/i915/Kconfig.profile
> +++ b/drivers/gpu/drm/i915/Kconfig.profile
> @@ -63,6 +63,9 @@ config DRM_I915_STOP_TIMEOUT
>  	  that the reset itself may take longer and so be more disruptive to
>  	  interactive or low latency workloads.
>  
> +	  This is adjustable via
> +	  /sys/class/drm/card?/engine/*/stop_timeout_ms
> +
>  config DRM_I915_TIMESLICE_DURATION
>  	int "Scheduling quantum for userspace batches (ms, jiffy granularity)"
>  	default 1 # milliseconds
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> index 6d87529c64a7..2b65fed76435 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> @@ -232,6 +232,45 @@ timeslice_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  static struct kobj_attribute timeslice_duration_attr =
>  __ATTR(timeslice_duration_ms, 0644, timeslice_show, timeslice_store);
>  
> +static ssize_t
> +stop_store(struct kobject *kobj, struct kobj_attribute *attr,
> +	   const char *buf, size_t count)
> +{
> +	struct intel_engine_cs *engine = kobj_to_engine(kobj);
> +	unsigned long long duration;
> +	int err;
> +
> +	/*
> +	 * When we allow ourselves to sleep before a GPU reset after disabling
> +	 * submission, even for a few milliseconds, gives an innocent context
> +	 * the opportunity to clear the GPU before the reset occurs. However,
> +	 * how long to sleep depends on the typical non-preemptible duration
> +	 * (a similar problem to determining the ideal preempt-reset timeout
> +	 * or even the heartbeat interval).
> +	 */
> +
> +	err = kstrtoull(buf, 0, &duration);
> +	if (err)
> +		return err;
> +
> +	if (duration > jiffies_to_msecs(MAX_SCHEDULE_TIMEOUT))
> +		return -EINVAL;
> +
> +	WRITE_ONCE(engine->props.stop_timeout_ms, duration);
> +	return count;
> +}
> +
> +static ssize_t
> +stop_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> +{
> +	struct intel_engine_cs *engine = kobj_to_engine(kobj);
> +
> +	return sprintf(buf, "%lu\n", engine->props.stop_timeout_ms);
> +}
> +
> +static struct kobj_attribute stop_timeout_attr =
> +__ATTR(stop_timeout_ms, 0644, stop_show, stop_store);
> +
>  static void kobj_engine_release(struct kobject *kobj)
>  {
>  	kfree(kobj);
> @@ -273,6 +312,7 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
>  		&caps_attr.attr,
>  		&all_caps_attr.attr,
>  		&max_spin_attr.attr,
> +		&stop_timeout_attr.attr,
>  		NULL
>  	};
>  
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
