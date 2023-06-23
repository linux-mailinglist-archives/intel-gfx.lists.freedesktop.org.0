Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9A173B4A6
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jun 2023 12:09:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B13BB10E114;
	Fri, 23 Jun 2023 10:09:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 229DC10E106;
 Fri, 23 Jun 2023 10:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687514957; x=1719050957;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=VtI+F7w8zUSN4t2IcSOaAAgaQxyebYYTdd5VADyoUKE=;
 b=j9onvaNT48O7hNwO+wyXhn9c3Vib3rVkV5pImEnPnIPIMQW45cFp4KoV
 mFZJ+m4OWHtudG14aTdIWjMj2o63pqlFJwJGlmVkHuV4zXWFwGsG+oo+o
 VQmON3MAP197NhlLk2LS0zPMb9byLfNLDjMcYsbCDtQoTFmuwdWApS6ab
 iH165ZXY7zVNKVHBpaJGVEqNRvWjUFRBJ/wrjI7W3VpGkKuu6MiAiRvit
 XQMz7AeQa3gCf/fTcjQjKCdOdSgeoU3bkoUb+zTUg7gIMuVFHjmYmxYYb
 dp7hzS69f9QmVMTly/sn7YlRO3njyLGhP+XdJp32NSk3uQ4g4/QpZIP4s w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="350497497"
X-IronPort-AV: E=Sophos;i="6.01,151,1684825200"; d="scan'208";a="350497497"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 03:09:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="828325701"
X-IronPort-AV: E=Sophos;i="6.01,151,1684825200"; d="scan'208";a="828325701"
Received: from jholtom-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.26.235])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2023 03:09:14 -0700
Date: Fri, 23 Jun 2023 12:09:12 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230623100912.wkozejeujh5d6yzo@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
References: <20230616155048.1013239-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230616155048.1013239-1-vinay.belgaumkar@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 i-g-t] tests/i915_pm_freq_api: Add a
 suspend subtest
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Vinay,

small nit, see below.

On 2023-06-16 at 08:50:48 -0700, Vinay Belgaumkar wrote:
> Verify that SLPC API works as expected after a suspend. Added
> another subtest that does multiple GT resets and checks freq api
> works as expected after each one.
> 
> We now check requested frequency instead of soft min/max after a
> reset or suspend. That ensures the soft limits got applied
> correctly at init. Also, disable efficient freq before starting the
> test which allows current freq to be consistent with SLPC min freq.
> 
> v2: Restore freq in exit handler (Ashutosh)
> v3: Free the allocated stash arrays
> 
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  tests/i915/i915_pm_freq_api.c | 92 +++++++++++++++++++++++++++--------
>  1 file changed, 71 insertions(+), 21 deletions(-)
> 
> diff --git a/tests/i915/i915_pm_freq_api.c b/tests/i915/i915_pm_freq_api.c
> index 9005cd220..522abee35 100644
> --- a/tests/i915/i915_pm_freq_api.c
> +++ b/tests/i915/i915_pm_freq_api.c
> @@ -18,6 +18,12 @@
>   *
>   * SUBTEST: freq-reset
>   * Description: Test basic freq API works after a reset
> + *
> + * SUBTEST: freq-reset-multiple
> + * Description: Test basic freq API works after multiple resets
> + *
> + * SUBTEST: freq-suspend
> + * Description: Test basic freq API works after a runtime suspend
>   */
>  
>  IGT_TEST_DESCRIPTION("Test SLPC freq API");
> @@ -49,7 +55,6 @@ static void test_freq_basic_api(int dirfd, int gt)
>  	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>  	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
>  	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
> -	igt_info("System min freq: %dMHz; max freq: %dMHz\n", rpn, rp0);
>  
>  	/*
>  	 * Negative bound tests
> @@ -79,31 +84,66 @@ static void test_freq_basic_api(int dirfd, int gt)
>  
>  }
>  
> -static void test_reset(int i915, int dirfd, int gt)
> +static void test_reset(int i915, int dirfd, int gt, int count)
>  {
>  	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
>  	int fd;
>  
> +	for (int i = 0; i < count; i++) {
> +		igt_assert_f(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0,
> +			     "Failed after %d good cycles\n", i);
> +		igt_assert_f(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0,
> +			     "Failed after %d good cycles\n", i);
> +		usleep(ACT_FREQ_LATENCY_US);
> +		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
> +			     "Failed after %d good cycles\n", i);
> +
> +		/* Manually trigger a GT reset */
> +		fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
> +		igt_require(fd >= 0);

Move these open and require before for() loop.

Regards,
Kamil

> +		igt_ignore_warn(write(fd, "1\n", 2));
> +
> +		igt_assert_f(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn,
> +			     "Failed after %d good cycles\n", i);
> +	}
> +	close(fd);
> +}
> +
> +static void test_suspend(int i915, int dirfd, int gt)
> +{
> +	uint32_t rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
> +
>  	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
>  	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rpn) > 0);
>  	usleep(ACT_FREQ_LATENCY_US);
> -	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
> +	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
>  
> -	/* Manually trigger a GT reset */
> -	fd = igt_debugfs_gt_open(i915, gt, "reset", O_WRONLY);
> -	igt_require(fd >= 0);
> -	igt_ignore_warn(write(fd, "1\n", 2));
> -	close(fd);
> +	/* Manually trigger a suspend */
> +	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
> +				      SUSPEND_TEST_NONE);
>  
> -	igt_assert(get_freq(dirfd, RPS_MIN_FREQ_MHZ) == rpn);
> -	igt_assert(get_freq(dirfd, RPS_MAX_FREQ_MHZ) == rpn);
> +	igt_assert(get_freq(dirfd, RPS_CUR_FREQ_MHZ) == rpn);
>  }
>  
> -igt_main
> +int i915 = -1;
> +uint32_t *stash_min, *stash_max;
> +
> +static void restore_sysfs_freq(int sig)
>  {
> -	int i915 = -1;
> -	uint32_t *stash_min, *stash_max;
> +	int dirfd, gt;
> +	/* Restore frequencies */
> +	for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
> +		igt_pm_ignore_slpc_efficient_freq(i915, dirfd, false);
> +		igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, stash_max[gt]) > 0);
> +		igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, stash_min[gt]) > 0);
> +	}
> +	free(stash_min);
> +	free(stash_max);
> +	close(i915);
> +}
>  
> +igt_main
> +{
>  	igt_fixture {
>  		int num_gts, dirfd, gt;
>  
> @@ -122,7 +162,9 @@ igt_main
>  		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
>  			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
>  			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
> +			igt_pm_ignore_slpc_efficient_freq(i915, dirfd, true);
>  		}
> +		igt_install_exit_handler(restore_sysfs_freq);
>  	}
>  
>  	igt_describe("Test basic API for controlling min/max GT frequency");
> @@ -140,16 +182,24 @@ igt_main
>  
>  		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
>  			igt_dynamic_f("gt%u", gt)
> -				test_reset(i915, dirfd, gt);
> +				test_reset(i915, dirfd, gt, 1);
>  	}
>  
> -	igt_fixture {
> +	igt_describe("Test basic freq API works after multiple resets");
> +	igt_subtest_with_dynamic_f("freq-reset-multiple") {
>  		int dirfd, gt;
> -		/* Restore frequencies */
> -		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
> -			igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, stash_max[gt]) > 0);
> -			igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, stash_min[gt]) > 0);
> -		}
> -		close(i915);
> +
> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
> +			igt_dynamic_f("gt%u", gt)
> +				test_reset(i915, dirfd, gt, 50);
> +	}
> +
> +	igt_describe("Test basic freq API works after suspend");
> +	igt_subtest_with_dynamic_f("freq-suspend") {
> +		int dirfd, gt;
> +
> +		for_each_sysfs_gt_dirfd(i915, dirfd, gt)
> +			igt_dynamic_f("gt%u", gt)
> +				test_suspend(i915, dirfd, gt);
>  	}
>  }
> -- 
> 2.38.1
> 
