Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5857382C4CE
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 18:35:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAE3C10EB3A;
	Fri, 12 Jan 2024 17:35:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 223D210E157;
 Fri, 12 Jan 2024 17:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705080928; x=1736616928;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=t4jTvZgv/2UguEp4vNwAO6Cdv0EsRsdX8xLke/l1N+Y=;
 b=D4joY4iRNtyEHmToG7GJvcCiNUCWyVrnHD7aBcmt6Jg31EljPCSPUwaK
 myw/f16htyhPFieuahLpt6/z4G/z6yOwVR2w620sWIHjPnnwVuiANxW4r
 aiS1E9Amn0Kbng5TFKR93kAmnbyRwXSSmYYTk5h3xfgGqAB6dKnnRwz9C
 WPvzeIRqmj8YI+JC2lpCVJ5q7KK0AhUcEBjQ5fHF18Da8w9hwI2h2U82S
 eBEsZ9vWbVXeNBdtJm0BDS9qRO5yHIkFFHe37eP8inJ5IQeb/JX+SDuyg
 ITe5ultsUGFV24Pcireaw94NDyElG2NwcL3tXOmURoXMx9+Yx/CZQQAkO A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="12718261"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="12718261"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 09:35:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="31458680"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 09:35:27 -0800
Date: Fri, 12 Jan 2024 18:35:23 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Subject: Re: [PATCH i-g-t] tests/perf_pmu: Set defaults before frequency test
Message-ID: <20240112173523.o2yjp3dyixa5wuz6@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240111222054.2403101-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240111222054.2403101-1-vinay.belgaumkar@intel.com>
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
On 2024-01-11 at 14:20:54 -0800, Vinay Belgaumkar wrote:
> Seeing random issues where this test skips due to invalid
> boost freq at the start. Also ensure that we restore the frequencies at the end.
> 
> v2: Use save/restore functions instead of exit_handler. Adding an
> exit_handler necessitated moving drm_close() into the handler. However,
> the module-reload subtest at the end expects drm-fd to be closed.
> Also setup expected frequencies (Kamil) and address other nits (Kamil)
> 
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9432
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tests/intel/perf_pmu.c | 62 +++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 61 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/intel/perf_pmu.c b/tests/intel/perf_pmu.c
> index c6e6a8b77..4ae2b60ae 100644
> --- a/tests/intel/perf_pmu.c
> +++ b/tests/intel/perf_pmu.c
> @@ -2454,12 +2454,69 @@ static void pmu_read(int i915)
>  		for_each_if((e)->class == I915_ENGINE_CLASS_RENDER) \
>  			igt_dynamic_f("%s", e->name)
>  
> +int fd = -1;
> +uint32_t *stash_min, *stash_max, *stash_boost;
> +
> +static void save_sysfs_freq(int i915)
> +{
> +	int gt, num_gts, sysfs, tmp;
> +	uint32_t rpn_freq, rp0_freq;
> +
> +	num_gts = igt_sysfs_get_num_gt(i915);
> +
> +	stash_min = (uint32_t *)malloc(sizeof(uint32_t) * num_gts);
> +	stash_max = (uint32_t *)malloc(sizeof(uint32_t) * num_gts);
> +	stash_boost = (uint32_t *)malloc(sizeof(uint32_t) * num_gts);
> +
> +	/* Save boost, min and max across GTs */
> +	i915_for_each_gt(i915, tmp, gt) {
> +		sysfs = igt_sysfs_gt_open(i915, gt);
> +		igt_require(sysfs >= 0);
> +
> +		stash_min[gt] = igt_sysfs_get_u32(sysfs, "rps_min_freq_mhz");
> +		stash_max[gt] = igt_sysfs_get_u32(sysfs, "rps_max_freq_mhz");
> +		stash_boost[gt] = igt_sysfs_get_u32(sysfs, "rps_boost_freq_mhz");
> +		igt_debug("GT: %d, min: %d, max: %d, boost:%d\n",
> +			  gt, stash_min[gt], stash_max[gt], stash_boost[gt]);
> +
> +		rpn_freq = igt_sysfs_get_u32(sysfs, "rps_RPn_freq_mhz");
> +		rp0_freq = igt_sysfs_get_u32(sysfs, "rps_RP0_freq_mhz");
> +
> +		/* Set pre-conditions, in case frequencies are in non-default state */
> +		igt_require(__igt_sysfs_set_u32(sysfs, "rps_max_freq_mhz", rp0_freq));
> +		igt_require(__igt_sysfs_set_u32(sysfs, "rps_boost_freq_mhz", rp0_freq));
> +		igt_require(__igt_sysfs_set_u32(sysfs, "rps_min_freq_mhz", rpn_freq));
> +
> +		close(sysfs);
> +	}
> +}
> +
> +static void restore_sysfs_freq(int i915)
> +{
> +	int sysfs, gt, tmp;
> +
> +	/* Restore frequencies */
> +	i915_for_each_gt(fd, tmp, gt) {
> +		sysfs = igt_sysfs_gt_open(fd, gt);
> +		igt_require(sysfs >= 0);
> +
> +		igt_require(__igt_sysfs_set_u32(sysfs, "rps_max_freq_mhz", stash_max[gt]));
> +		igt_require(__igt_sysfs_set_u32(sysfs, "rps_min_freq_mhz", stash_min[gt]));
> +		igt_require(__igt_sysfs_set_u32(sysfs, "rps_boost_freq_mhz", stash_boost[gt]));
> +
> +		close(sysfs);
> +	}
> +	free(stash_min);
> +	free(stash_max);
> +	free(stash_boost);
> +}
> +
>  igt_main
>  {
>  	const struct intel_execution_engine2 *e;
>  	unsigned int num_engines = 0;
>  	const intel_ctx_t *ctx = NULL;
> -	int gt, tmp, fd = -1;
> +	int gt, tmp;
>  	int num_gt = 0;
>  
>  	/**
> @@ -2664,12 +2721,15 @@ igt_main
>  	 * Test GPU frequency.
>  	 */
>  	igt_subtest_with_dynamic("frequency") {
> +		save_sysfs_freq(fd);
> +
>  		i915_for_each_gt(fd, tmp, gt) {
>  			igt_dynamic_f("gt%u", gt)
>  				test_frequency(fd, gt);
>  			igt_dynamic_f("idle-gt%u", gt)
>  				test_frequency_idle(fd, gt);
>  		}
> +		restore_sysfs_freq(fd);
>  	}
>  
>  	/**
> -- 
> 2.38.1
> 
