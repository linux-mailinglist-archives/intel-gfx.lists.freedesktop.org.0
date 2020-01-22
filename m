Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B1E145256
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 11:16:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7062E6F47C;
	Wed, 22 Jan 2020 10:16:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F92F6F47B;
 Wed, 22 Jan 2020 10:16:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 02:16:00 -0800
X-IronPort-AV: E=Sophos;i="5.70,349,1574150400"; d="scan'208";a="229268665"
Received: from wmszyfel-mobl2.ger.corp.intel.com (HELO [10.252.10.247])
 ([10.252.10.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 22 Jan 2020 02:15:59 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
References: <20200122101043.21347-1-tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <c4d26e02-2b86-7ebd-f848-8cb36882841d@linux.intel.com>
Date: Wed, 22 Jan 2020 10:15:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200122101043.21347-1-tvrtko.ursulin@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_engine_topology:
 Generate engine names based on class
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 22/01/2020 10:10, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> With the introduction of dynamic subtests we got one step closer towards
> eliminating the duality of static and dynamic engine enumeration.
> 
> This patch makes one more step in that direction by removing the
> dependency on the static list when generating probed engine names.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Andi Shyti <andi.shyti@intel.com>
> Cc: Petri Latvala <petri.latvala@intel.com>
> ---
>   lib/i915/gem_engine_topology.c | 39 +++++++++++++++++++---------------
>   lib/igt_gt.h                   |  2 +-
>   2 files changed, 23 insertions(+), 18 deletions(-)
> 
> diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
> index 790d455ff2ad..eff231800b77 100644
> --- a/lib/i915/gem_engine_topology.c
> +++ b/lib/i915/gem_engine_topology.c
> @@ -97,39 +97,43 @@ static void ctx_map_engines(int fd, struct intel_engine_data *ed,
>   	gem_context_set_param(fd, param);
>   }
>   
> +static const char *class_names[] = {
> +	[I915_ENGINE_CLASS_RENDER]	  = "rcs",
> +	[I915_ENGINE_CLASS_COPY]	  = "bcs",
> +	[I915_ENGINE_CLASS_VIDEO]	  = "vcs",
> +	[I915_ENGINE_CLASS_VIDEO_ENHANCE] = "vecs",
> +};
> +
>   static void init_engine(struct intel_execution_engine2 *e2,
>   			int class, int instance, uint64_t flags)
>   {
> -	const struct intel_execution_engine2 *__e2;
> -	static const char *unknown_name = "unknown",
> -			  *virtual_name = "virtual";
> +	int ret;
>   
>   	e2->class    = class;
>   	e2->instance = instance;
> -	e2->flags    = flags;
>   
>   	/* engine is a virtual engine */
>   	if (class == I915_ENGINE_CLASS_INVALID &&
>   	    instance == I915_ENGINE_CLASS_INVALID_VIRTUAL) {
> -		e2->name = virtual_name;
> +		strcpy(e2->name, "virtual");
>   		e2->is_virtual = true;
>   		return;
> +	} else {
> +		e2->is_virtual = false;
>   	}
>   
> -	__for_each_static_engine(__e2)
> -		if (__e2->class == class && __e2->instance == instance)
> -			break;
> -
> -	if (__e2->name) {
> -		e2->name = __e2->name;
> +	if (class < ARRAY_SIZE(class_names)) {
> +		e2->flags = flags;
> +		ret = snprintf(e2->name, sizeof(e2->name), "%s%u",
> +			       class_names[class], instance);
>   	} else {
>   		igt_warn("found unknown engine (%d, %d)\n", class, instance);
> -		e2->name = unknown_name;
>   		e2->flags = -1;
> +		ret = snprintf(e2->name, sizeof(e2->name), "%u-%u",
> +			       class, instance);
>   	}
>   
> -	/* just to remark it */
> -	e2->is_virtual = false;
> +	igt_assert(ret < sizeof(e2->name));
>   }
>   
>   static void query_engine_list(int fd, struct intel_engine_data *ed)
> @@ -223,7 +227,7 @@ struct intel_engine_data intel_init_engine_list(int fd, uint32_t ctx_id)
>   			struct intel_execution_engine2 *__e2 =
>   				&engine_data.engines[engine_data.nengines];
>   
> -			__e2->name       = e2->name;
> +			strcpy(__e2->name, e2->name);
>   			__e2->instance   = e2->instance;
>   			__e2->class      = e2->class;
>   			__e2->flags      = e2->flags;
> @@ -297,12 +301,11 @@ struct intel_execution_engine2 gem_eb_flags_to_engine(unsigned int flags)
>   		.class = -1,
>   		.instance = -1,
>   		.flags = -1,
> -		.name = "invalid"
>   	};
>   
>   	if (ring == I915_EXEC_DEFAULT) {
>   		e2__.flags = I915_EXEC_DEFAULT;
> -		e2__.name = "default";
> +		strcpy(e2__.name, "default");
>   	} else {
>   		const struct intel_execution_engine2 *e2;
>   
> @@ -310,6 +313,8 @@ struct intel_execution_engine2 gem_eb_flags_to_engine(unsigned int flags)
>   			if (e2->flags == ring)
>   				return *e2;
>   		}
> +
> +		strcpy(e2__.name, "invalid");
>   	}
>   
>   	return e2__;
> diff --git a/lib/igt_gt.h b/lib/igt_gt.h
> index 66088d39176a..6a8eceb68817 100644
> --- a/lib/igt_gt.h
> +++ b/lib/igt_gt.h
> @@ -95,7 +95,7 @@ bool gem_can_store_dword(int fd, unsigned int engine);
>   bool gem_class_can_store_dword(int fd, int class);
>   
>   extern const struct intel_execution_engine2 {
> -	const char *name;
> +	char name[16];

I forgot that with this approach I'd need to apply default names 
somewhere during IGT framework startup. :I As I forgot Petri you already 
had a patch which solves the overall problem. Will re-read your 
solution. Where did it get stuck btw?

Regards,

Tvrtko

>   	int class;
>   	int instance;
>   	uint64_t flags;
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
