Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B073644461
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Dec 2022 14:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD2AF10E065;
	Tue,  6 Dec 2022 13:15:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9887210E065
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Dec 2022 13:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670332503; x=1701868503;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=bSF95f2zO8C2e2KNdrjSn0iD3j8gCCpS1QQIfCtHPBU=;
 b=QD1aBuHjLxEFYUH82bxW2vCJTt7iM5kD0kENKebj6jquPvZFCYQvVvJ2
 Glo3nULSeHkLgR7YKQscqORUt9ZCbUYiEgraAh4VGPrh6p9CscDQWnoMo
 BnEBY1g8OhqyZyfW2RtfFKIY870Pi23wFZRotZG6aBL6D70fB8twbXbOR
 X9lyDvxG4Zg+/fXannsr9nAVff1lOYeF9mA6009SJz8rEowyBwvu7Mu14
 r+rO9hwd+KsajzdDtAOvPX4eenvY/EqdDfmX+PDlWBBxyh1GjCWic1HFG
 tnZBL7BvXLSAcNQ8LonkJWX7d/iThCamz6tq9eosefqWRrtxR1FeM4Q5i A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="314262734"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="314262734"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 05:15:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="596573411"
X-IronPort-AV: E=Sophos;i="5.96,222,1665471600"; d="scan'208";a="596573411"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.23.172])
 ([10.213.23.172])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 05:15:01 -0800
Message-ID: <fafc2b20-1e66-98e3-a75d-a9eecc540f4d@intel.com>
Date: Tue, 6 Dec 2022 14:14:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221202122844.428006-1-matthew.auld@intel.com>
 <20221202122844.428006-2-matthew.auld@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20221202122844.428006-2-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915/selftests: use
 live_subtests for live_migrate
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 02.12.2022 13:28, Matthew Auld wrote:
> Probably a good idea to do an igt_flush_test() at the end of each
> subtest, just to be sure the previous work has been flushed and doesn't
> somehow interfere with the current subtest.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/gt/selftest_migrate.c | 28 ++++++++++++++++------
>   1 file changed, 21 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> index 0dc5309c90a4..1eab025ac002 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
> @@ -486,7 +486,8 @@ global_clear(struct intel_migrate *migrate, u32 sz, struct rnd_state *prng)
>   
>   static int live_migrate_copy(void *arg)
>   {
> -	struct intel_migrate *migrate = arg;
> +	struct intel_gt *gt = arg;
> +	struct intel_migrate *migrate = &gt->migrate;
>   	struct drm_i915_private *i915 = migrate->context->engine->i915;
>   	I915_RND_STATE(prng);
>   	int i;
> @@ -507,7 +508,8 @@ static int live_migrate_copy(void *arg)
>   
>   static int live_migrate_clear(void *arg)
>   {
> -	struct intel_migrate *migrate = arg;
> +	struct intel_gt *gt = arg;
> +	struct intel_migrate *migrate = &gt->migrate;
>   	struct drm_i915_private *i915 = migrate->context->engine->i915;
>   	I915_RND_STATE(prng);
>   	int i;
> @@ -593,7 +595,10 @@ static int __thread_migrate_copy(void *arg)
>   
>   static int thread_migrate_copy(void *arg)
>   {
> -	return threaded_migrate(arg, __thread_migrate_copy, 0);
> +	struct intel_gt *gt = arg;
> +	struct intel_migrate *migrate = &gt->migrate;
> +
> +	return threaded_migrate(migrate, __thread_migrate_copy, 0);
>   }
>   
>   static int __thread_global_copy(void *arg)
> @@ -605,7 +610,10 @@ static int __thread_global_copy(void *arg)
>   
>   static int thread_global_copy(void *arg)
>   {
> -	return threaded_migrate(arg, __thread_global_copy, 0);
> +	struct intel_gt *gt = arg;
> +	struct intel_migrate *migrate = &gt->migrate;
> +
> +	return threaded_migrate(migrate, __thread_global_copy, 0);
>   }
>   
>   static int __thread_migrate_clear(void *arg)
> @@ -624,12 +632,18 @@ static int __thread_global_clear(void *arg)
>   
>   static int thread_migrate_clear(void *arg)
>   {
> -	return threaded_migrate(arg, __thread_migrate_clear, 0);
> +	struct intel_gt *gt = arg;
> +	struct intel_migrate *migrate = &gt->migrate;
> +
> +	return threaded_migrate(migrate, __thread_migrate_clear, 0);
>   }
>   
>   static int thread_global_clear(void *arg)
>   {
> -	return threaded_migrate(arg, __thread_global_clear, 0);
> +	struct intel_gt *gt = arg;
> +	struct intel_migrate *migrate = &gt->migrate;
> +
> +	return threaded_migrate(migrate, __thread_global_clear, 0);
>   }
>   
>   int intel_migrate_live_selftests(struct drm_i915_private *i915)
> @@ -647,7 +661,7 @@ int intel_migrate_live_selftests(struct drm_i915_private *i915)
>   	if (!gt->migrate.context)
>   		return 0;
>   
> -	return i915_subtests(tests, &gt->migrate);
> +	return intel_gt_live_subtests(tests, gt);
>   }
>   
>   static struct drm_i915_gem_object *

