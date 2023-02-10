Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF3669206A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 15:03:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B528B10E06E;
	Fri, 10 Feb 2023 14:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2562310E06E;
 Fri, 10 Feb 2023 14:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676037784; x=1707573784;
 h=date:from:to:cc:subject:message-id:mime-version: in-reply-to;
 bh=Hko6OkwTsCI20oN5RIsSjCQY5hQOA0HaRHMN+TdzOWQ=;
 b=EhLO0L+eV7ZSL3QitZeced6QC3mxrkvhHlfrzqRzWvSBINOGxgrB96zR
 /NLXnfvvDXff2eZj4VGGHWwB8fOhbflI+5OoAJOqTLIPjPEy0tHBtFOD3
 3b1MZcT2Kcpqb4LA5NDn/E+3hEx46LVeKSmXbGkbfFawbY2wSFBhH3zcp
 9pJmsTDs8yURDxJWFaFtE+bUd49AY38I0Spc/FNIL8FjR5wLP3WX0UGeS
 8NeHOqc1oeB59qy1VcoYOuocE6ohZGLr1B6y0DqAJ9fgBp8QSiDxv45wv
 fc7xiEfoLsRj6hHndfuQjC2RO8DlFyvBssp3/oCB9QLKbI2HuwwXpz/q5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="395030946"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="395030946"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 06:03:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="776932195"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="776932195"
Received: from barcinsk-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.16.80])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 06:03:01 -0800
Date: Fri, 10 Feb 2023 15:02:59 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230210140259.hhfx7yu3myswrayl@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Riana Tauro <riana.tauro@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230209193231.57538-1-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915_suspend: Free device list
 after *-without-i915 subtests
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

Hi Janusz,

I have one nit, see below.

On 2023-02-09 at 20:32:31 +0100, Janusz Krzysztofik wrote:
> If any of *-without-i915 subtests fails or skips for any reason, it may
> leave the i915 module unloaded while keeping our device list populated
> with initially collected data.  In a follow up igt_fixture section we then
> try to reopen the device.  If the test has been executed with a device
> filter specified, an attempt to open the device finds a matching entry
> that belongs to the no longer existing device in that initially collected
> device list, fails to stat() it, concludes that's because of the device
> having been already open, and returns an error.
> 
> Fix this potentially confusing test result by freeing the potentially
> outdated device list before continuing with drm_open_driver().
> 
> While being at it, add a comment that explains why we call
> igt_device_scan() from __igt_device_card_match() but don't force device
> rescan, and emit a debug message if we fail in _is_already_opened() on
> unsuccessful device stat().
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
> ---
>  lib/drmtest.c             |  2 +-
>  lib/igt_device_scan.c     |  4 ++++
>  tests/i915/i915_suspend.c | 10 +++++++++-
>  3 files changed, 14 insertions(+), 2 deletions(-)
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

This one looks a little too much, for example it can return -ENOENT

Rest looks ok.

Regards,
Kamil

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
> index 815f1c8a2c..c68110476e 100644
> --- a/tests/i915/i915_suspend.c
> +++ b/tests/i915/i915_suspend.c
> @@ -253,8 +253,16 @@ igt_main
>  	igt_subtest("basic-s3-without-i915")
>  		test_suspend_without_i915(SUSPEND_STATE_S3);
>  
> -	igt_fixture
> +	igt_fixture {
> +		/*
> +		 * Since above tests may fail leaving the i915 module unloaded,
> +		 * force refresh of device list before opening an i915 device
> +		 * by cleaning up the current device list, otherwise we can fail
> +		 * if we have been called with a device filter specified.
> +		 */
> +		igt_devices_free();
>  		fd = drm_open_driver(DRIVER_INTEL);
> +	}
>  
>  	igt_subtest("fence-restore-tiled2untiled") {
>  		gem_require_mappable_ggtt(fd);
> -- 
> 2.25.1
> 
