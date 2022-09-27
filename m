Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 719295EC5BD
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 16:17:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F5010E36A;
	Tue, 27 Sep 2022 14:17:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CBB010E36A
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 14:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664288263; x=1695824263;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=mCOmEuk1h4YV/PmCu8JxuRTr5hs4nGbHKiwaDYwqgsg=;
 b=BjF1Ot2ifj19wQ6VzveD5xt+s80+KhNiDFp8/WequSHpbaHFrgol3O/S
 xcySYHio3+50a7AeAaBXIuNOdj4934mpMjcQkHFdGA2RwdR8EayTlNw+B
 ykKJOsrVQZt7P3LFWxBdPLyXYt4VLQvhuK6S79BWEyjCq6mUg4d+aTKmm
 Wh6jD6XZTmjnkwGoZ2Ug6Nbyo9sG4hSshKnUAtRFrQsbQAGx6ngRpmVE5
 VZtonsO7r3Q4yXJWM+YQ608yzs7VAxBf6018/GbnDd47+2MUEnkBNEX9v
 YvKwBmwycy7F3ipQwYkRPeKgmycNsCGjo/meJqPWp8X5ulH/grj8TwOaz A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="365368485"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="365368485"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 07:17:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10483"; a="572662131"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="572662131"
Received: from bvoinov-mobl1.ger.corp.intel.com (HELO [10.213.221.221])
 ([10.213.221.221])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 07:17:25 -0700
Message-ID: <86f6485f-d7c7-66ad-b819-af33913194ef@linux.intel.com>
Date: Tue, 27 Sep 2022 15:17:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 intel-gfx@lists.freedesktop.org, "Tangudu, Tilak" <tilak.tangudu@intel.com>
References: <20220910143844.1755324-1-ashutosh.dixit@intel.com>
 <20220910143844.1755324-2-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220910143844.1755324-2-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/debugfs: Add
 perf_limit_reasons in debugfs
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/09/2022 15:38, Ashutosh Dixit wrote:
> From: Tilak Tangudu <tilak.tangudu@intel.com>
> 
> Add perf_limit_reasons in debugfs. The upper 16 perf_limit_reasons RW "log"
> bits are identical to the lower 16 RO "status" bits except that the "log"
> bits remain set until cleared, thereby ensuring the throttling occurrence
> is not missed. The clear fop clears the upper 16 "log" bits, the get fop
> gets all 32 "log" and "status" bits.
> 
> v2: Expand commit message and clarify "log" and "status" bits in
>      comment (Rodrigo)
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 31 +++++++++++++++++++
>   drivers/gpu/drm/i915/i915_reg.h               |  1 +
>   2 files changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> index 108b9e76c32e..a009cf69103a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
> @@ -655,6 +655,36 @@ static bool rps_eval(void *data)
>   
>   DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(rps_boost);
>   
> +static int perf_limit_reasons_get(void *data, u64 *val)
> +{
> +	struct intel_gt *gt = data;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);

I have a bunch of questions, given failure to apply this to 
drm-intel-next-fixes brought my attention to it.

Why is GT0_PERF_LIMIT_REASONS_MASK not applied here?

Why do we have sysfs expose some of this register, but not these high 
log bits? Which are more important to the user?

Who resets the low bits and when in normal operation? (I mean not via 
this debugfs clear.)

What is the use case for allowing clearing of the log bits from debugfs? 
Why do we want to carry that code? For IGT?

Regards,

Tvrtko

> +
> +	return 0;
> +}
> +
> +static int perf_limit_reasons_clear(void *data, u64 val)
> +{
> +	struct intel_gt *gt = data;
> +	intel_wakeref_t wakeref;
> +
> +	/*
> +	 * Clear the upper 16 "log" bits, the lower 16 "status" bits are
> +	 * read-only. The upper 16 "log" bits are identical to the lower 16
> +	 * "status" bits except that the "log" bits remain set until cleared.
> +	 */
> +	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> +		intel_uncore_rmw(gt->uncore, GT0_PERF_LIMIT_REASONS,
> +				 GT0_PERF_LIMIT_REASONS_LOG_MASK, 0);
> +
> +	return 0;
> +}
> +DEFINE_SIMPLE_ATTRIBUTE(perf_limit_reasons_fops, perf_limit_reasons_get,
> +			perf_limit_reasons_clear, "%llu\n");
> +
>   void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
>   {
>   	static const struct intel_gt_debugfs_file files[] = {
> @@ -664,6 +694,7 @@ void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
>   		{ "forcewake_user", &forcewake_user_fops, NULL},
>   		{ "llc", &llc_fops, llc_eval },
>   		{ "rps_boost", &rps_boost_fops, rps_eval },
> +		{ "perf_limit_reasons", &perf_limit_reasons_fops, NULL },
>   	};
>   
>   	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 52462cbfdc66..58b0ed9dddd5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1802,6 +1802,7 @@
>   #define   POWER_LIMIT_4_MASK		REG_BIT(8)
>   #define   POWER_LIMIT_1_MASK		REG_BIT(10)
>   #define   POWER_LIMIT_2_MASK		REG_BIT(11)
> +#define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)
>   
>   #define CHV_CLK_CTL1			_MMIO(0x101100)
>   #define VLV_CLK_CTL2			_MMIO(0x101104)
