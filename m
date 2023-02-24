Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EBF6A1816
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 09:39:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE3AE10E6AC;
	Fri, 24 Feb 2023 08:39:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE53610E5A6;
 Fri, 24 Feb 2023 08:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677227939; x=1708763939;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UCT/JPCFBwEiEy8Hrf36mQBrjuctXW5zB+WetkkHuqc=;
 b=dDqWnp9uHm4M7HsGS+NK3f17uOHl7mKmwNLOEyBA+j/h3y2xzWJpPbjU
 3EHIbhe9nE9G3OQCRX8/J0iJgX6CINtk7zl8cGl9kGADckJkqqtYkOq+E
 BF5CevaGyJl+j2Q8BJs/92dB8DEn10+JHwLhBC5rOprDl6Sych4/B3Qdq
 7iddzE84gYR2yYIHJcp736Vs+JR3g87P9CyCcD9XNFU/SaW3Gsfxt7I5A
 It3PQRTFmsu0v3Zr84/LhsFEuVJ45OnZBYrLexEvaHKSHtRg0wtiU9kz0
 Z97bbDfWlF9wajJPN+7IT8gUZPTpOfRv6sB3sPDH0ZlTYqujjKSC1ChVz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332113800"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332113800"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 00:38:58 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="761717440"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="761717440"
Received: from kziomek-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.26.167])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 00:38:57 -0800
Date: Fri, 24 Feb 2023 09:38:54 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230224083854.oharfpdp6aidbfsk@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Riana Tauro <riana.tauro@intel.com>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230213143445.24228-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230213143445.24228-1-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/i915_suspend: Refresh device
 list after *-without-i915 subtests
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

On 2023-02-13 at 15:34:45 +0100, Janusz Krzysztofik wrote:
> If any of *-without-i915 subtests fails or skips for any reason, it may
> leave the i915 module unloaded while keeping our device list populated
> with initially collected data.  In a follow up igt_fixture section we then
> try to reopen the device.  If the test has been executed with a device
> filter specified, an attempt to open the device finds a matching entry
> that belongs to the no longer existing device in that initially collected
> device list, fails to stat() it, concludes that's because of the device
> having been already open, and returns an error.  While that error,
> triggered after subtests completion, doesn't affect results of the
> subtest, reported by CI togethger with those results it is confusing to
> users reviewing those reports.
> 
> Fix this issue by refreshing the potentially outdated device list before
> continuing with drm_open_driver() if we've been called with a device
> filter specified.
> 
> While being at it, add a comment that explains why we call
> igt_devices_scan() from __igt_device_card_match() but don't force device
> rescan, and emit a debug message if we fail in _is_already_opened() on
> unsuccessful device stat().
> 
> v2: don't free the device list -- we can't tell if it has been populated,
>     and igt_devices_free() fails if it hasn't,
>   - commit message updated, description improved.
> 
> Subtest basic-s3-without-i915: FAIL (9.572s)
> (i915_suspend:9050) drmtest-WARNING: card maching filter 0 is already opened
> (i915_suspend:9050) drmtest-CRITICAL: Test abort in function drm_open_driver, file ../lib/drmtest.c:639:
> (i915_suspend:9050) drmtest-CRITICAL: abort condition: fd < 0
> (i915_suspend:9050) drmtest-CRITICAL: Last errno: 2, No such file or directory
> (i915_suspend:9050) drmtest-CRITICAL: No known gpu found for chipset flags 0x1 (intel)
> Test i915_suspend failed.
> **** DEBUG ****
> (i915_suspend:9050) drmtest-DEBUG: Looking for devices to open using filter 0: pci:vendor=intel,device=dg2
> (i915_suspend:9050) drmtest-DEBUG: Filter matched /dev/dri/card0 | /dev/dri/renderD128
> (i915_suspend:9050) drmtest-WARNING: card maching filter 0 is already opened
> (i915_suspend:9050) drmtest-CRITICAL: Test abort in function drm_open_driver, file ../lib/drmtest.c:639:
> (i915_suspend:9050) drmtest-CRITICAL: abort condition: fd < 0
> (i915_suspend:9050) drmtest-CRITICAL: Last errno: 2, No such file or directory
> (i915_suspend:9050) drmtest-CRITICAL: No known gpu found for chipset flags 0x1 (intel)
> (i915_suspend:9050) igt_core-INFO: Stack trace:
> (i915_suspend:9050) igt_core-INFO:   #0 ../lib/igt_core.c:2066 __igt_abort()
> (i915_suspend:9050) igt_core-INFO:   #1 ../lib/drmtest.c:573 drm_open_driver()
> (i915_suspend:9050) igt_core-INFO:   #2 ../tests/i915/i915_suspend.c:258 __igt_unique____real_main245()
> (i915_suspend:9050) igt_core-INFO:   #3 ../tests/i915/i915_suspend.c:245 main()
> (i915_suspend:9050) igt_core-INFO:   #4 ../sysdeps/nptl/libc_start_call_main.h:58 __libc_start_call_main()
> (i915_suspend:9050) igt_core-INFO:   #5 ../csu/libc-start.c:128 __libc_start_main@@GLIBC_2.34()
> (i915_suspend:9050) igt_core-INFO:   #6 [_start+0x2a]
> ****  END  ****
> 
> Fixes: f7aff600ab16 ("tests/i915/i915_suspend: Disable d3cold_allowed for basic-s2idle-without-i915")
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Cc: Riana Tauro <riana.tauro@intel.com>

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  lib/drmtest.c             |  2 +-
>  lib/igt_device_scan.c     |  4 ++++
>  tests/i915/i915_suspend.c | 12 +++++++++++-
>  3 files changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/drmtest.c b/lib/drmtest.c
> index 16e80bdfcf..8e2d1ac50b 100644
> --- a/lib/drmtest.c
> +++ b/lib/drmtest.c
> @@ -260,7 +260,7 @@ static bool _is_already_opened(const char *path, int as_idx)
>  	 * we cannot even stat the device, so it's of no use - let's claim it's
>  	 * already opened
>  	 */
> -	if (stat(path, &new) != 0)
> +	if (igt_debug_on(stat(path, &new) != 0))
>  		return true;
>  
>  	for (int i = 0; i < as_idx; ++i) {
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index 8b767eed20..ae69ed09f1 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -1918,6 +1918,10 @@ static bool __igt_device_card_match(const char *filter,
>  		return false;
>  	memset(card, 0, sizeof(*card));
>  
> +	/*
> +	 * Scan devices in case the user hasn't yet,
> +	 * but leave a decision on forced rescan on the user side.
> +	 */
>  	igt_devices_scan(false);
>  
>  	if (igt_device_filter_apply(filter) == false)
> diff --git a/tests/i915/i915_suspend.c b/tests/i915/i915_suspend.c
> index 815f1c8a2c..1d304a9317 100644
> --- a/tests/i915/i915_suspend.c
> +++ b/tests/i915/i915_suspend.c
> @@ -253,8 +253,18 @@ igt_main
>  	igt_subtest("basic-s3-without-i915")
>  		test_suspend_without_i915(SUSPEND_STATE_S3);
>  
> -	igt_fixture
> +	igt_fixture {
> +		/*
> +		 * Since above subtests may fail, leaving i915 module unloaded
> +		 * but device list populated, refresh the device list before
> +		 * reopening the i915 device if we've been called with a device
> +		 * filter specified, otherwise drm_open_driver() will fail
> +		 * instead of reloading the i915 module.
> +		 */
> +		if (igt_device_filter_count())
> +			igt_devices_scan(true);
>  		fd = drm_open_driver(DRIVER_INTEL);
> +	}
>  
>  	igt_subtest("fence-restore-tiled2untiled") {
>  		gem_require_mappable_ggtt(fd);
> -- 
> 2.25.1
> 
