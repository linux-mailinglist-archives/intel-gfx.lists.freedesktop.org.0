Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B36B9145E3E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 22:43:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F6686F907;
	Wed, 22 Jan 2020 21:43:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE99B6F907
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 21:43:30 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 13:43:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="220451331"
Received: from scarbo-desk.jf.intel.com (HELO scarbo-DESK) ([10.165.21.146])
 by orsmga008.jf.intel.com with ESMTP; 22 Jan 2020 13:43:29 -0800
Date: Wed, 22 Jan 2020 13:36:51 -0800
From: Steve Carbonari <steven.carbonari@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200122213651.GF30454@scarbo-DESK>
References: <20191212140459.1307617-31-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212140459.1307617-31-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [31/33] drm/i915/gt: Expose preempt reset timeout
 via sysfs
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

On Thu, Dec 12, 2019 at 02:04:57PM +0000, Chris Wilson wrote:
> After initialising a preemption request, we give the current resident a
> small amount of time to vacate the GPU. The preemption request is for a
> higher priority context and should be immediate to maintain high
> quality of service (and avoid priority inversion). However, the
> preemption granularity of the GPU can be quite coarse and so we need a
> compromise.
> 
> The preempt timeout can be adjusted per-engine using,
> 
> 	/sys/class/drm/card?/engine/*/preempt_timeout_ms
> 
> and can be disabled by setting it to 0.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Code looks good.
Tested with other sysfs related patches in the series.
The preempt_timeout_ms file exists and can be modified.
Tested when there is no reset engine and the sysfs file
is not created.

Reviewed-by: Steve Carbonari <steven.carbonari@intel.com>
Tested-by: Steve Carbonari <steven.carbonari@intel.com


> ---
>  drivers/gpu/drm/i915/Kconfig.profile         |  3 ++
>  drivers/gpu/drm/i915/gt/intel_engine_sysfs.c | 48 ++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_lrc.c          |  2 +-
>  3 files changed, 52 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
> index 5f4ec3aec1d2..1f4e98a8532f 100644
> --- a/drivers/gpu/drm/i915/Kconfig.profile
> +++ b/drivers/gpu/drm/i915/Kconfig.profile
> @@ -33,6 +33,9 @@ config DRM_I915_PREEMPT_TIMEOUT
>  	  expires, the HW will be reset to allow the more important context
>  	  to execute.
>  
> +	  This is adjustable via
> +	  /sys/class/drm/card?/engine/*/preempt_timeout_ms
> +
>  	  May be 0 to disable the timeout.
>  
>  config DRM_I915_MAX_REQUEST_BUSYWAIT
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> index 2b65fed76435..d299c66cf7ec 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_sysfs.c
> @@ -271,6 +271,50 @@ stop_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>  static struct kobj_attribute stop_timeout_attr =
>  __ATTR(stop_timeout_ms, 0644, stop_show, stop_store);
>  
> +static ssize_t
> +preempt_timeout_store(struct kobject *kobj, struct kobj_attribute *attr,
> +		      const char *buf, size_t count)
> +{
> +	struct intel_engine_cs *engine = kobj_to_engine(kobj);
> +	unsigned long long timeout;
> +	int err;
> +
> +	/*
> +	 * After initialising a preemption request, we give the current
> +	 * resident a small amount of time to vacate the GPU. The preemption
> +	 * request is for a higher priority context and should be immediate to
> +	 * maintain high quality of service (and avoid priority inversion).
> +	 * However, the preemption granularity of the GPU can be quite coarse
> +	 * and so we need a compromise.
> +	 */
> +
> +	err = kstrtoull(buf, 0, &timeout);
> +	if (err)
> +		return err;
> +
> +	if (timeout > jiffies_to_msecs(MAX_SCHEDULE_TIMEOUT))
> +		return -EINVAL;
> +
> +	WRITE_ONCE(engine->props.preempt_timeout_ms, timeout);
> +
> +	if (READ_ONCE(engine->execlists.pending[0]))
> +		set_timer_ms(&engine->execlists.preempt, timeout);
> +
> +	return count;
> +}
> +
> +static ssize_t
> +preempt_timeout_show(struct kobject *kobj, struct kobj_attribute *attr,
> +		     char *buf)
> +{
> +	struct intel_engine_cs *engine = kobj_to_engine(kobj);
> +
> +	return sprintf(buf, "%lu\n", engine->props.preempt_timeout_ms);
> +}
> +
> +static struct kobj_attribute preempt_timeout_attr =
> +__ATTR(preempt_timeout_ms, 0644, preempt_timeout_show, preempt_timeout_store);
> +
>  static void kobj_engine_release(struct kobject *kobj)
>  {
>  	kfree(kobj);
> @@ -341,6 +385,10 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
>  		    sysfs_create_file(kobj, &timeslice_duration_attr.attr))
>  			goto err_engine;
>  
> +		if (intel_engine_has_preempt_reset(engine) &&
> +		    sysfs_create_file(kobj, &preempt_timeout_attr.attr))
> +			goto err_engine;
> +
>  		if (0) {
>  err_object:
>  			kobject_put(kobj);
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 024a639da787..9a9b23e3d0a3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2252,7 +2252,7 @@ static noinline void preempt_reset(struct intel_engine_cs *engine)
>  	const unsigned int bit = I915_RESET_ENGINE + engine->id;
>  	unsigned long *lock = &engine->gt->reset.flags;
>  
> -	if (i915_modparams.reset < 3)
> +	if (!intel_has_reset_engine(engine->gt))
>  		return;
>  
>  	if (test_and_set_bit(bit, lock))
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
