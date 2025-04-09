Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9792A82338
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Apr 2025 13:13:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A543210E848;
	Wed,  9 Apr 2025 11:13:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCIyHXCV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4CC10E067;
 Wed,  9 Apr 2025 11:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744197193; x=1775733193;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=RI1ANVU7iP+KQOb84izxVs+fDJyucAHCJKsb9pm9D9U=;
 b=UCIyHXCVKRLsNyiy7FnDuFVUNJsIN3qjAmOQ9GMooAbKp3qKh1ToaOSV
 t9hr9V8X+Cjof6FCnghhJCtcZxvuAxwnqF4dSsSMm6H6PGbWPM7tIngM3
 +Tssat5tViNGz5gJynpuXoHTmU5iVxscpkfXfqXiOki7oq7DWPOf0nSGu
 ai2owedHrp+mFztqPefxgptEB89vsubxX0Nl+dXwHkCaYR8PShSdxAzBL
 LcADO0DbV2bFxHEpb2zq7h1Tm2JrYQaBW2R1XglXNs1Hpms3OKNY0CZVN
 619y2tF8OpEcr5zSeyz3TpyF+WmGXdAvN56YTUQeVB3AcypxlrDWL+4Tf A==;
X-CSE-ConnectionGUID: +f6y0EdFShmNuV/YQYA/RQ==
X-CSE-MsgGUID: KNdy7iEfRd2zGbmHP7T38g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="57036378"
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="57036378"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2025 04:13:11 -0700
X-CSE-ConnectionGUID: aoFhCMk/Q8SRQVroMBagvA==
X-CSE-MsgGUID: fobkKhoFRVqFYH7dnz4vow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,200,1739865600"; d="scan'208";a="133538973"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by orviesa004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Apr 2025 04:13:09 -0700
Date: Wed, 9 Apr 2025 13:13:06 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Cc: intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Riana Tauro <riana.tauro@intel.com>
Subject: Re: [PATCH i-g-t 1/2] lib/xe_gt: Move get/set GT freq utils to lib
Message-ID: <20250409111306.p5zba3pmq2kkllad@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 Riana Tauro <riana.tauro@intel.com>
References: <20250407234406.4084642-1-vinay.belgaumkar@intel.com>
 <20250407234406.4084642-2-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250407234406.4084642-2-vinay.belgaumkar@intel.com>
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

Hi Vinay,
On 2025-04-07 at 16:44:05 -0700, Vinay Belgaumkar wrote:
> Add utils to get/set GT frequency attributes. These ar per GT

s/ar/are/

> and exposed via sysfs already.
> 
> Reviewed-by: Riana Tauro <riana.tauro@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  lib/xe/xe_gt.c           |  59 ++++++++++++++
>  lib/xe/xe_gt.h           |   2 +
>  tests/intel/xe_gt_freq.c | 164 +++++++++++++++------------------------
>  3 files changed, 125 insertions(+), 100 deletions(-)
> 
> diff --git a/lib/xe/xe_gt.c b/lib/xe/xe_gt.c
> index 6f1475be0..bd6d1800b 100644
> --- a/lib/xe/xe_gt.c
> +++ b/lib/xe/xe_gt.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <fcntl.h>
> +#include <limits.h>
>  #include <sys/stat.h>
>  
>  #include "igt_core.h"
> @@ -241,3 +242,61 @@ int xe_gt_count_engines_by_class(int fd, int gt, int class)
>  
>  	return n;
>  }
> +
> +/**
> + * xe_gt_set_freq:
> + * @fd: pointer to xe drm fd
> + * @gt_id: GT id
> + * @freq_name: which GT freq(min, max) to change
> + * @freq: value of freq to set
> + *
> + * Set GT min/max frequency

Add a note about an assert in case of unsuccesfull open.

> + *
> + * Return: success or failure
> + */
> +int xe_gt_set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq)
> +{
> +	int ret = -EAGAIN;
> +	char freq_attr[NAME_MAX];
> +	int gt_fd;
> +
> +	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
> +	gt_fd = xe_sysfs_gt_open(fd, gt_id);
> +	igt_assert_lte(0, gt_fd);
> +
> +	while (ret == -EAGAIN)
> +		ret = igt_sysfs_printf(gt_fd, freq_attr, "%u", freq);
> +
> +	close(gt_fd);
> +	return ret;
> +}
> +
> +/**
> + * xe_gt_get_freq:
> + * @fd: pointer to xe drm fd
> + * @gt_id: GT id
> + * @freq_name: which GT freq(min, max, act, cur) to read
> + *
> + * Read the min/max/act/cur/rp0/rpn/rpe GT frequencies

Add a note about an assert in case of unsuccesfull open.

> + *
> + * Return: GT frequency value
> + */
> +uint32_t xe_gt_get_freq(int fd, int gt_id, const char *freq_name)
> +{
> +	uint32_t freq;
> +	int err = -EAGAIN;
> +	char freq_attr[NAME_MAX];
> +	int gt_fd;
> +
> +	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
> +	gt_fd = xe_sysfs_gt_open(fd, gt_id);
> +	igt_assert_lte(0, gt_fd);
> +
> +	while (err == -EAGAIN)
> +		err = igt_sysfs_scanf(gt_fd, freq_attr, "%u", &freq);
> +
> +	igt_debug("gt%d: %s freq %u\n", gt_id, freq_name, freq);
> +
> +	close(gt_fd);
> +	return freq;
> +}
> diff --git a/lib/xe/xe_gt.h b/lib/xe/xe_gt.h
> index 511b31149..06a59281c 100644
> --- a/lib/xe/xe_gt.h
> +++ b/lib/xe/xe_gt.h
> @@ -23,4 +23,6 @@ int xe_gt_fill_engines_by_class(int fd, int gt, int class,
>  				struct drm_xe_engine_class_instance eci[static XE_MAX_ENGINE_INSTANCE]);
>  int xe_gt_count_engines_by_class(int fd, int gt, int class);
>  
> +int xe_gt_set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq);
> +uint32_t xe_gt_get_freq(int fd, int gt_id, const char *freq_name);
>  #endif
> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
> index 843144ad2..4adb205c9 100644
> --- a/tests/intel/xe_gt_freq.c
> +++ b/tests/intel/xe_gt_freq.c
> @@ -14,6 +14,7 @@
>  
>  #include "igt.h"
>  #include "lib/igt_syncobj.h"
> +#include "lib/xe/xe_gt.h"

While it is here could you move both includes 'lib/'
after 'igt_sysfs.h'? So they will be sorted.

Regards,
Kamil

>  #include "igt_sysfs.h"
>  
>  #include "xe_drm.h"
> @@ -36,43 +37,6 @@
>   */
>  #define SLPC_FREQ_LATENCY_US 100000
>  
> -static int set_freq(int fd, int gt_id, const char *freq_name, uint32_t freq)
> -{
> -	int ret = -EAGAIN;
> -	char freq_attr[22];
> -	int gt_fd;
> -
> -	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
> -	gt_fd = xe_sysfs_gt_open(fd, gt_id);
> -	igt_assert_lte(0, gt_fd);
> -
> -	while (ret == -EAGAIN)
> -		ret = igt_sysfs_printf(gt_fd, freq_attr, "%u", freq);
> -
> -	close(gt_fd);
> -	return ret;
> -}
> -
> -static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
> -{
> -	uint32_t freq;
> -	int err = -EAGAIN;
> -	char freq_attr[22];
> -	int gt_fd;
> -
> -	snprintf(freq_attr, sizeof(freq_attr), "freq0/%s_freq", freq_name);
> -	gt_fd = xe_sysfs_gt_open(fd, gt_id);
> -	igt_assert_lte(0, gt_fd);
> -
> -	while (err == -EAGAIN)
> -		err = igt_sysfs_scanf(gt_fd, freq_attr, "%u", &freq);
> -
> -	igt_debug("gt%d: %s freq %u\n", gt_id, freq_name, freq);
> -
> -	close(gt_fd);
> -	return freq;
> -}
> -
>  static bool within_expected_range(uint32_t freq, uint32_t val)
>  {
>  	/*
> @@ -134,8 +98,8 @@ static void test_throttle_basic_api(int fd, int gt_id)
>  
>  static void test_freq_basic_api(int fd, int gt_id)
>  {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>  	uint32_t rpmid = (rp0 + rpn) / 2;
>  	uint32_t min_freq, max_freq;
>  
> @@ -144,29 +108,29 @@ static void test_freq_basic_api(int fd, int gt_id)
>  	 * RPn is the floor
>  	 * RP0 is the ceiling
>  	 */
> -	igt_assert_lt(set_freq(fd, gt_id, "min", rpn - 1), 0);
> -	igt_assert_lt(set_freq(fd, gt_id, "min", rp0 + 1), 0);
> -	igt_assert_lt(set_freq(fd, gt_id, "max", rpn - 1), 0);
> -	igt_assert_lt(set_freq(fd, gt_id, "max", rp0 + 1), 0);
> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "min", rpn - 1), 0);
> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "min", rp0 + 1), 0);
> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "max", rpn - 1), 0);
> +	igt_assert_lt(xe_gt_set_freq(fd, gt_id, "max", rp0 + 1), 0);
>  
>  	/* Assert min requests are respected from rp0 to rpn */
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rp0));
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rp0);
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
> -	min_freq = get_freq(fd, gt_id, "min");
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rp0));
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rp0);
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
> +	min_freq = xe_gt_get_freq(fd, gt_id, "min");
>  	/* SLPC can set min higher than rpmid - as it follows RPe */
>  	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ), min_freq);
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rpn);
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rpn);
>  
>  	/* Assert max requests are respected from rpn to rp0 */
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rpn);
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
> -	max_freq = get_freq(fd, gt_id, "max");
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rpn);
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
> +	max_freq = xe_gt_get_freq(fd, gt_id, "max");
>  	igt_assert(within_expected_range(max_freq, rpmid));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rp0));
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rp0);
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rp0));
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rp0);
>  }
>  
>  /**
> @@ -179,8 +143,8 @@ static void test_freq_basic_api(int fd, int gt_id)
>  
>  static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>  {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>  	uint32_t rpmid = (rp0 + rpn) / 2;
>  	uint32_t cur_freq, act_freq;
>  
> @@ -192,50 +156,50 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>  	 * And let's do this for all the 2 known Render Performance (RP) values
>  	 * RP0 and RPn and something in between.
>  	 */
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
>  	usleep(SLPC_FREQ_LATENCY_US);
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rpn);
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rpn);
>  
>  	if (gt_idle) {
> -		/* Wait for GT to go in C6 as previous get_freq wakes up GT*/
> +		/* Wait for GT to go in C6 as previous xe_gt_get_freq wakes up GT*/
>  		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>  			     "GT %d should be in C6\n", gt_id);
> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>  	} else {
> -		igt_assert_eq_u32(get_freq(fd, gt_id, "act"), rpn);
> +		igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "act"), rpn);
>  	}
>  
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
>  	usleep(SLPC_FREQ_LATENCY_US);
> -	cur_freq = get_freq(fd, gt_id, "cur");
> +	cur_freq = xe_gt_get_freq(fd, gt_id, "cur");
>  	/* If rpmid is around RPe, we could see SLPC follow it */
>  	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ), cur_freq);
>  
>  	if (gt_idle) {
>  		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>  			     "GT %d should be in C6\n", gt_id);
> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>  	} else {
> -		act_freq = get_freq(fd, gt_id, "act");
> +		act_freq = xe_gt_get_freq(fd, gt_id, "act");
>  		igt_assert_lte_u32(act_freq, cur_freq + FREQ_UNIT_MHZ);
>  	}
>  
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rp0));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rp0));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rp0));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rp0));
>  	usleep(SLPC_FREQ_LATENCY_US);
>  	/*
>  	 * It is unlikely that PCODE will *always* respect any request above RPe
>  	 * So for this level let's only check if GuC PC is doing its job
>  	 * and respecting our request, by propagating it to the hardware.
>  	 */
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rp0);
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rp0);
>  
>  	if (gt_idle) {
>  		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>  			     "GT %d should be in C6\n", gt_id);
> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>  	}
>  
>  	igt_debug("Finished testing fixed request\n");
> @@ -250,25 +214,25 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   */
>  static void test_freq_range(int fd, int gt_id, bool gt_idle)
>  {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>  	uint32_t rpmid = (rp0 + rpn) / 2;
>  	uint32_t cur, act;
>  
>  	igt_debug("Starting testing range request\n");
>  
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpmid));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpmid));
>  	usleep(SLPC_FREQ_LATENCY_US);
> -	cur = get_freq(fd, gt_id, "cur");
> +	cur = xe_gt_get_freq(fd, gt_id, "cur");
>  	igt_assert(rpn <= cur && cur <= rpmid + FREQ_UNIT_MHZ);
>  
>  	if (gt_idle) {
>  		igt_assert_f(igt_wait(xe_gt_is_in_c6(fd, gt_id), 1000, 10),
>  			     "GT %d should be in C6\n", gt_id);
> -		igt_assert(get_freq(fd, gt_id, "act") == 0);
> +		igt_assert(xe_gt_get_freq(fd, gt_id, "act") == 0);
>  	} else {
> -		act = get_freq(fd, gt_id, "act");
> +		act = xe_gt_get_freq(fd, gt_id, "act");
>  		igt_assert((rpn <= act) && (act <= cur + FREQ_UNIT_MHZ));
>  	}
>  
> @@ -282,21 +246,21 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>  
>  static void test_freq_low_max(int fd, int gt_id)
>  {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> -	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = xe_gt_get_freq(fd, gt_id, "rp0");
>  	uint32_t rpmid = (rp0 + rpn) / 2;
>  
>  	/*
>  	 *  When max request < min request, max is ignored and min works like
>  	 * a fixed one. Let's assert this assumption
>  	 */
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpmid));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpmid));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
>  	usleep(SLPC_FREQ_LATENCY_US);
>  
>  	/* Cur freq will follow RPe, which could be higher than min freq */
>  	igt_assert_lte_u32((rpmid - FREQ_UNIT_MHZ),
> -			   get_freq(fd, gt_id, "cur"));
> +			   xe_gt_get_freq(fd, gt_id, "cur"));
>  }
>  
>  /**
> @@ -306,18 +270,18 @@ static void test_freq_low_max(int fd, int gt_id)
>  
>  static void test_suspend(int fd, int gt_id)
>  {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
>  
> -	igt_assert_lt(0, set_freq(fd, gt_id, "min", rpn));
> -	igt_assert_lt(0, set_freq(fd, gt_id, "max", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "min", rpn));
> +	igt_assert_lt(0, xe_gt_set_freq(fd, gt_id, "max", rpn));
>  	usleep(SLPC_FREQ_LATENCY_US);
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "cur"), rpn);
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "cur"), rpn);
>  
>  	igt_system_suspend_autoresume(SUSPEND_STATE_S3,
>  				      SUSPEND_TEST_NONE);
>  
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "min"), rpn);
> -	igt_assert_eq_u32(get_freq(fd, gt_id, "max"), rpn);
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "min"), rpn);
> +	igt_assert_eq_u32(xe_gt_get_freq(fd, gt_id, "max"), rpn);
>  }
>  
>  /**
> @@ -330,24 +294,24 @@ static void test_suspend(int fd, int gt_id)
>  
>  static void test_reset(int fd, int gt_id, int cycles)
>  {
> -	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rpn = xe_gt_get_freq(fd, gt_id, "rpn");
>  
>  	for (int i = 0; i < cycles; i++) {
> -		igt_assert_f(set_freq(fd, gt_id, "min", rpn) > 0,
> +		igt_assert_f(xe_gt_set_freq(fd, gt_id, "min", rpn) > 0,
>  			     "Failed after %d good cycles\n", i);
> -		igt_assert_f(set_freq(fd, gt_id, "max", rpn) > 0,
> +		igt_assert_f(xe_gt_set_freq(fd, gt_id, "max", rpn) > 0,
>  			     "Failed after %d good cycles\n", i);
>  		usleep(SLPC_FREQ_LATENCY_US);
> -		igt_assert_f(get_freq(fd, gt_id, "cur") == rpn,
> +		igt_assert_f(xe_gt_get_freq(fd, gt_id, "cur") == rpn,
>  			     "Failed after %d good cycles\n", i);
>  
>  		xe_force_gt_reset_sync(fd, gt_id);
>  
>  		usleep(SLPC_FREQ_LATENCY_US);
>  
> -		igt_assert_f(get_freq(fd, gt_id, "min") == rpn,
> +		igt_assert_f(xe_gt_get_freq(fd, gt_id, "min") == rpn,
>  			     "Failed after %d good cycles\n", i);
> -		igt_assert_f(get_freq(fd, gt_id, "max") == rpn,
> +		igt_assert_f(xe_gt_get_freq(fd, gt_id, "max") == rpn,
>  			     "Failed after %d good cycles\n", i);
>  	}
>  }
> @@ -448,8 +412,8 @@ igt_main
>  		stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
>  
>  		xe_for_each_gt(fd, gt) {
> -			stash_min[gt] = get_freq(fd, gt, "min");
> -			stash_max[gt] = get_freq(fd, gt, "max");
> +			stash_min[gt] = xe_gt_get_freq(fd, gt, "min");
> +			stash_max[gt] = xe_gt_get_freq(fd, gt, "max");
>  		}
>  	}
>  
> @@ -525,8 +489,8 @@ igt_main
>  
>  	igt_fixture {
>  		xe_for_each_gt(fd, gt) {
> -			set_freq(fd, gt, "max", stash_max[gt]);
> -			set_freq(fd, gt, "min", stash_min[gt]);
> +			xe_gt_set_freq(fd, gt, "max", stash_max[gt]);
> +			xe_gt_set_freq(fd, gt, "min", stash_min[gt]);
>  		}
>  		free(stash_min);
>  		free(stash_max);
> -- 
> 2.38.1
> 
