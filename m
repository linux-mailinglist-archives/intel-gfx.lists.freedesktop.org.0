Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 442F73003E2
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 14:13:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A99DD6E91C;
	Fri, 22 Jan 2021 13:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C3436E91C
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 13:13:10 +0000 (UTC)
IronPort-SDR: DHVCSqf/arBrljRIHKq5UKxM0jNS1tCdFSa+H/4CuoWXnxMJ1JZOiIzK20ZuJIEglPOqxJSxNR
 x9BJ2gdKZfJw==
X-IronPort-AV: E=McAfee;i="6000,8403,9871"; a="159219231"
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="159219231"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 05:13:09 -0800
IronPort-SDR: l1Ck2/4CFlMubPBj53cMbEgqlcw40ueoCOuJvl6fWIIq7CdTstV8ioLu4oc95VmK05vfT+QVx1
 VOtxUeUU0M3w==
X-IronPort-AV: E=Sophos;i="5.79,366,1602572400"; d="scan'208";a="385751939"
Received: from gtidhar-mobl.ger.corp.intel.com (HELO [10.214.206.196])
 ([10.214.206.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 05:13:08 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210122122903.23893-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c7ca37ce-0db5-e273-c2ac-eefcbf75931e@linux.intel.com>
Date: Fri, 22 Jan 2021 13:13:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210122122903.23893-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [CI 1/9] drm/i915/gt: Show the per-engine runtime
 in sysfs
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/01/2021 12:28, Chris Wilson wrote:
> Since we already report the per-engine runtime via PMU (using sampling
> if a direct measure is not available), and in debugfs, also trivially
> include the information for each engine under sysfs as a read-only
> property. We only present the total milliseconds to hide any misleading
> accuracy and to purposely reduce the precision of the global
> unprivileged information.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/sysfs_engines.c | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/sysfs_engines.c b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> index 967031056202..57ef5383dd4e 100644
> --- a/drivers/gpu/drm/i915/gt/sysfs_engines.c
> +++ b/drivers/gpu/drm/i915/gt/sysfs_engines.c
> @@ -411,6 +411,19 @@ heartbeat_default(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
>   static struct kobj_attribute heartbeat_interval_def =
>   __ATTR(heartbeat_interval_ms, 0444, heartbeat_default, NULL);
>   
> +static ssize_t
> +runtime_show(struct kobject *kobj, struct kobj_attribute *attr, char *buf)
> +{
> +	struct intel_engine_cs *engine = kobj_to_engine(kobj);
> +	ktime_t dummy;
> +
> +	return sprintf(buf, "%llu\n",
> +		       ktime_to_ms(intel_engine_get_busy_time(engine, &dummy)));
> +}
> +
> +static struct kobj_attribute runtime_attr =
> +__ATTR(runtime_ms, 0444, runtime_show, NULL);
> +
>   static void kobj_engine_release(struct kobject *kobj)
>   {
>   	kfree(kobj);
> @@ -521,6 +534,10 @@ void intel_engines_add_sysfs(struct drm_i915_private *i915)
>   		    sysfs_create_file(kobj, &preempt_timeout_attr.attr))
>   			goto err_engine;
>   
> +		if (intel_engine_supports_stats(engine) &&
> +		    sysfs_create_file(kobj, &runtime_attr.attr))
> +			goto err_engine;
> +
>   		add_defaults(container_of(kobj, struct kobj_engine, base));
>   
>   		if (0) {
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
