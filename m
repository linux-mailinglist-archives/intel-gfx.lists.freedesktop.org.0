Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DE0610E59
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 12:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6B510E7E1;
	Fri, 28 Oct 2022 10:23:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5648910E7E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Oct 2022 10:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666952617; x=1698488617;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=VLKLuhlM314QwMvuRQN4b9loFKY3tjFn4/RPpdNXrcQ=;
 b=TAutZIC82pmRh2bABLzz8kGHdXCDCZMFcGS3QQOA0UIuf1Cl07h740Ct
 ImC5NbyZNpXQ9WBkkZaHWskTXLYh0qtWskoBL3BGM8Th5+M+3kNEKlaux
 oPSa+pc7I0WzBjtX4j544lW7B0NvsEuRmGzZICtLY16PRJ5PyZafS8rtw
 M91b81u4wB5uvt3F7osMY/JmZXfzlMNbZPqku4WAAAZptLyIRX2ZMc33K
 UN4KjrLGhfjA0Ya/nJ9pDwJBN5wW0jKvbkEuSn0W9IWk784zgxsmSoU8c
 +qSVMAWcM1W4bAMWtjxbIPTJCaC6/t+SgzS2PtPmf+CP3tsIB9g2snQFI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="370527315"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="370527315"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 03:23:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10513"; a="701689506"
X-IronPort-AV: E=Sophos;i="5.95,220,1661842800"; d="scan'208";a="701689506"
Received: from nalinset-mobl1.ger.corp.intel.com (HELO [10.213.204.34])
 ([10.213.204.34])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 03:23:35 -0700
Message-ID: <423a37c6-459e-a7b9-1030-960369b18f9b@linux.intel.com>
Date: Fri, 28 Oct 2022 11:23:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: Riana Tauro <riana.tauro@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221028095058.3624647-1-riana.tauro@intel.com>
 <20221028095058.3624647-2-riana.tauro@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221028095058.3624647-2-riana.tauro@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/guc/slpc: Add selftest for
 slpc tile-tile interaction
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


Hi,

I peeked inside from curiosity and was pleasantly surprise to see 
kthread_work is used! Some comments below.

On 28/10/2022 10:50, Riana Tauro wrote:
> Run a workload on tiles simultaneously by requesting for RP0 frequency.
> Pcode can however limit the frequency being granted due to throttling
> reasons. This test fails if there is any throttling
> 
> v2: Fix build error
> 
> Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_slpc.c | 63 +++++++++++++++++++++++++
>   1 file changed, 63 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> index 82ec95a299f6..d19486772f5a 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> @@ -13,6 +13,14 @@ enum test_type {
>   	VARY_MAX,
>   	MAX_GRANTED,
>   	SLPC_POWER,
> +	TILE_INTERACTION,
> +};
> +
> +struct slpc_thread {
> +	struct kthread_worker *worker;
> +	struct kthread_work work;
> +	struct intel_gt *gt;
> +	int result;
>   };
>   
>   static int slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 freq)
> @@ -310,6 +318,7 @@ static int run_test(struct intel_gt *gt, int test_type)
>   			break;
>   
>   		case MAX_GRANTED:
> +		case TILE_INTERACTION:
>   			/* Media engines have a different RP0 */
>   			if (engine->class == VIDEO_DECODE_CLASS ||
>   			    engine->class == VIDEO_ENHANCEMENT_CLASS) {
> @@ -325,6 +334,7 @@ static int run_test(struct intel_gt *gt, int test_type)
>   		case SLPC_POWER:
>   			err = slpc_power(gt, engine);
>   			break;
> +

Noise.

>   		}
>   
>   		if (test_type != SLPC_POWER) {
> @@ -426,6 +436,58 @@ static int live_slpc_power(void *arg)
>   	return ret;
>   }
>   
> +static void slpc_spinner_thread(struct kthread_work *work)
> +{
> +	struct slpc_thread *thread = container_of(work, typeof(*thread), work);
> +
> +	thread->result = run_test(thread->gt, TILE_INTERACTION);
> +}
> +
> +static int live_slpc_tile_interaction(void *arg)
> +{
> +	struct drm_i915_private *i915 = arg;
> +	struct intel_gt *gt;
> +	struct slpc_thread *threads;
> +	int i = 0, ret = 0;
> +
> +	threads = kcalloc(I915_MAX_GT, sizeof(*threads), GFP_KERNEL);
> +	if (!threads)
> +		return -ENOMEM;
> +
> +	for_each_gt(gt, i915, i) {
> +		pr_info("Running on GT: %d\n", gt->info.id);

Not sure logging these makes sense since test runs on all tiles in 
parallel anyway.

> +		threads[i].worker = kthread_create_worker(0, "igt/slpc_parallel:%d", gt->info.id);
> +
> +		if (IS_ERR(threads[i].worker)) {
> +			ret = PTR_ERR(threads[i].worker);
> +			break;
> +		}
> +
> +		threads[i].gt = gt;
> +		threads[i].result = 0;

No need to zero result due kcalloc and runs do not repeat.

> +		kthread_init_work(&threads[i].work, slpc_spinner_thread);
> +		kthread_queue_work(threads[i].worker, &threads[i].work);
> +	}
> +
> +	for_each_gt(gt, i915, i) {
> +		int status;
> +
> +		if (!threads[i].worker)
> +			continue;

Could be ERR_PTR by the look of it so it would crash below. Either gate 
on threads[i].gt or use IS_ERR_OR_NULL.

Regards,

Tvrtko

> +
> +		kthread_flush_work(&threads[i].work);
> +		status = READ_ONCE(threads[i].result);
> +		if (status && !ret) {
> +			pr_err("%s GT %d failed ", __func__, gt->info.id);
> +			ret = status;
> +		}
> +		kthread_destroy_worker(threads[i].worker);
> +	}
> +
> +	kfree(threads);
> +	return ret;
> +}
> +
>   int intel_slpc_live_selftests(struct drm_i915_private *i915)
>   {
>   	static const struct i915_subtest tests[] = {
> @@ -433,6 +495,7 @@ int intel_slpc_live_selftests(struct drm_i915_private *i915)
>   		SUBTEST(live_slpc_vary_min),
>   		SUBTEST(live_slpc_max_granted),
>   		SUBTEST(live_slpc_power),
> +		SUBTEST(live_slpc_tile_interaction),
>   	};
>   
>   	struct intel_gt *gt;
