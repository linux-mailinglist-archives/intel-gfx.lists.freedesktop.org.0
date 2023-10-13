Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D54F7C7ED8
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 09:47:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98C2110E5C7;
	Fri, 13 Oct 2023 07:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F39410E5C7;
 Fri, 13 Oct 2023 07:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697183254; x=1728719254;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=yYDal+AexT6HwL22NcaLeWQHkd5eAAuExiCqdzOUahc=;
 b=bl45YRWsRWUTm2n5cpLyGjFVKFKUIcfpH/Z16cjGhQwuwCxB1aiYyNlH
 6n7c3YY8TScZKvXeZgaQ0O9/HUhThr+q57cx8DIaox/rLjuiGtfmXBYDi
 1DG8J2fuI6u5busbtq3zfwD/8Ues78bMz+GpWxIPJVhwkBvhOLsnVTVfg
 Htof+hi/PIhdJ55hczF7mgEquCRrKsgFmBDT1Jw7e2Yqqh0ur/pfznZAW
 kJFZxdUhmV5f55W9LZHEBEKnFKy3zzEdIl5LIZRmwzdzjjC9qhzoTZrgB
 g5fjVE4Png+SvBjJjJQEdR03Wa5xsjjwhxK1dIQdzk2F1a2VIlkZIpTQd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="449316229"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="449316229"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 00:47:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="1086043104"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="1086043104"
Received: from acarotti-mobl1.ger.corp.intel.com (HELO [10.213.212.153])
 ([10.213.212.153])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 00:47:31 -0700
Message-ID: <12b425f9-1b13-5c75-2e74-0c45ec4f46e0@linux.intel.com>
Date: Fri, 13 Oct 2023 08:47:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org,
 igt-dev@lists.freedesktop.org
References: <20231013042012.409376-1-shawn.c.lee@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231013042012.409376-1-shawn.c.lee@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] tests: save GPU engine information more
 properly
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 13/10/2023 05:20, Lee Shawn C wrote:
> We encounter a unexpected error on chrome book device while
> running kms_busy test. It will restore GPU engine's timeout
> value but open incorrect file name (XR24 in below).
> 
> openat(AT_FDCWD, "/sys/dev/char/226:0", O_RDONLY) = 12
> openat(12, "dev", O_RDONLY)             = 13
> read(13, "226:0\n", 1023)               = 6
> close(13)                               = 0
> openat(12, "engine", O_RDONLY)          = 13
> close(12)                               = 0
> openat(13, "XR24", O_RDONLY)            = -1 ENOENT (No such file or directory)
> 
> Test code did not save engine data properly to cause this problem.
> So modify the code to save GPU engine information into a globla variable
> to avoid test deamon to open incorrect file again.
> 
> Issue: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/147
> Fixes: 9e635a1c5029 ("tests/kms_busy: Ensure GPU reset when waiting
> for a new FB during modeset")

I guess if we are having one Fixes: could add some more for i915_hangman 
and gem_exec_capture but it is not that important for igt so meh.

Changes look good to me. Presumably it fixes things for you and if CI 
ends up green:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>   lib/i915/gem_engine_topology.c | 12 ++++++------
>   lib/i915/gem_engine_topology.h |  2 +-
>   tests/intel/gem_exec_capture.c |  2 +-
>   tests/intel/gem_reset_stats.c  |  2 +-
>   tests/intel/i915_hangman.c     |  2 +-
>   tests/intel/kms_busy.c         |  2 +-
>   6 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/lib/i915/gem_engine_topology.c b/lib/i915/gem_engine_topology.c
> index 7c6cd9ba97db..afb576afb2dc 100644
> --- a/lib/i915/gem_engine_topology.c
> +++ b/lib/i915/gem_engine_topology.c
> @@ -571,23 +571,23 @@ void gem_engine_properties_configure(int fd, struct gem_engine_properties *param
>   	int ret;
>   	struct gem_engine_properties write = *params;
>   
> -	ret = gem_engine_property_scanf(fd, write.engine->name,
> +	ret = gem_engine_property_scanf(fd, write.engine.name,
>   					"heartbeat_interval_ms",
>   					"%d", &params->heartbeat_interval);
>   	igt_assert_eq(ret, 1);
>   
> -	ret = gem_engine_property_printf(fd, write.engine->name,
> +	ret = gem_engine_property_printf(fd, write.engine.name,
>   					 "heartbeat_interval_ms", "%d",
>   					 write.heartbeat_interval);
>   	igt_assert_lt(0, ret);
>   
>   	if (gem_scheduler_has_preemption(fd)) {
> -		ret = gem_engine_property_scanf(fd, write.engine->name,
> +		ret = gem_engine_property_scanf(fd, write.engine.name,
>   						"preempt_timeout_ms",
>   						"%d", &params->preempt_timeout);
>   		igt_assert_eq(ret, 1);
>   
> -		ret = gem_engine_property_printf(fd, write.engine->name,
> +		ret = gem_engine_property_printf(fd, write.engine.name,
>   						 "preempt_timeout_ms", "%d",
>   						 write.preempt_timeout);
>   		igt_assert_lt(0, ret);
> @@ -598,13 +598,13 @@ void gem_engine_properties_restore(int fd, const struct gem_engine_properties *s
>   {
>   	int ret;
>   
> -	ret = gem_engine_property_printf(fd, saved->engine->name,
> +	ret = gem_engine_property_printf(fd, saved->engine.name,
>   					 "heartbeat_interval_ms", "%d",
>   					 saved->heartbeat_interval);
>   	igt_assert_lt(0, ret);
>   
>   	if (gem_scheduler_has_preemption(fd)) {
> -		ret = gem_engine_property_printf(fd, saved->engine->name,
> +		ret = gem_engine_property_printf(fd, saved->engine.name,
>   						 "preempt_timeout_ms", "%d",
>   						 saved->preempt_timeout);
>   		igt_assert_lt(0, ret);
> diff --git a/lib/i915/gem_engine_topology.h b/lib/i915/gem_engine_topology.h
> index 89642c31721c..9eb9d5ddc888 100644
> --- a/lib/i915/gem_engine_topology.h
> +++ b/lib/i915/gem_engine_topology.h
> @@ -122,7 +122,7 @@ struct intel_execution_engine2 gem_eb_flags_to_engine(unsigned int flags);
>   	     intel_next_engine(&i__##e__))
>   
>   struct gem_engine_properties {
> -	const struct intel_execution_engine2 *engine;
> +	struct intel_execution_engine2 engine;
>   	int preempt_timeout;
>   	int heartbeat_interval;
>   };
> diff --git a/tests/intel/gem_exec_capture.c b/tests/intel/gem_exec_capture.c
> index ab8305e4dfaf..d231c53b98e1 100644
> --- a/tests/intel/gem_exec_capture.c
> +++ b/tests/intel/gem_exec_capture.c
> @@ -258,7 +258,7 @@ configure_hangs(int fd, const struct intel_execution_engine2 *e, int ctxt_id)
>   	struct gem_engine_properties props;
>   
>   	/* Ensure fast hang detection */
> -	props.engine = e;
> +	props.engine = *e;
>   	props.preempt_timeout = 250;
>   	props.heartbeat_interval = 500;
>   	gem_engine_properties_configure(fd, &props);
> diff --git a/tests/intel/gem_reset_stats.c b/tests/intel/gem_reset_stats.c
> index 6939722c7001..5dfc1fc677ec 100644
> --- a/tests/intel/gem_reset_stats.c
> +++ b/tests/intel/gem_reset_stats.c
> @@ -1004,7 +1004,7 @@ static void test_shared_reset_domain(const intel_ctx_cfg_t *base_cfg,
>   
>   	sync_gpu();
>   
> -	params.engine = e;
> +	params.engine = *e;
>   	params.preempt_timeout = 1;
>   	params.heartbeat_interval = 250;
>   	gem_engine_properties_configure(device, &params);
> diff --git a/tests/intel/i915_hangman.c b/tests/intel/i915_hangman.c
> index dcd34cd0ebfe..8a7de562609c 100644
> --- a/tests/intel/i915_hangman.c
> +++ b/tests/intel/i915_hangman.c
> @@ -600,7 +600,7 @@ igt_main
>   		gem_require_mmap_device_coherent(device);
>   
>   		for_each_physical_engine(device, e) {
> -			saved_params[num_engines].engine = e;
> +			saved_params[num_engines].engine = *e;
>   			saved_params[num_engines].preempt_timeout = 500;
>   			saved_params[num_engines].heartbeat_interval = 1000;
>   			gem_engine_properties_configure(device, saved_params + num_engines++);
> diff --git a/tests/intel/kms_busy.c b/tests/intel/kms_busy.c
> index 5b620658fb18..50616513c5ba 100644
> --- a/tests/intel/kms_busy.c
> +++ b/tests/intel/kms_busy.c
> @@ -404,7 +404,7 @@ static void gpu_engines_init_timeouts(int fd, int max_engines,
>   	for_each_physical_engine(fd, e) {
>   		igt_assert(*num_engines < max_engines);
>   
> -		props[*num_engines].engine = e;
> +		props[*num_engines].engine = *e;
>   		props[*num_engines].preempt_timeout = 0;
>   		props[*num_engines].heartbeat_interval = 250;
>   
