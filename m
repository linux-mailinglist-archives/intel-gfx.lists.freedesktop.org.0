Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C5A6941F8
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 10:51:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E4310E21C;
	Mon, 13 Feb 2023 09:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB9BC10E07A;
 Mon, 13 Feb 2023 09:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676281905; x=1707817905;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=MrERQaI3FT3/77BKw5WwqGpR5oT7LgwxcqGk+U/is4U=;
 b=nnw+7t+F5HhNAUqLFL66D5hIKv372BqSKZhN6505Ff2Wrb9MElT6leSz
 CfkSwYMHjRklevdcH3l9FD8w417xN18USef1MNXbsc0sG9QD3TvZNWzk4
 vV0OXHFDMBJK8dguE3lcldsux/5VTLmHVfIDZqME+lOJE8U7vIihSgInE
 wxX6DMblTVEzbBlgpapn5RsyHaGCoutB8tSHjC7fZ2+tyXxZ5MqvO2zXW
 0YNhE0pC0ExyVae4jkqavwjowqVABlsxEBjEnaqTq43DmVOkIQax+ctEH
 uRXYzrNfqHiW8cS0iLuXdELRV2uaDRLLiZTWaCFftGubzXlnnbzoPs+H0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="330860792"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="330860792"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:51:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="842713526"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="842713526"
Received: from abonisl-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.213.2.170])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 01:51:41 -0800
Date: Mon, 13 Feb 2023 10:51:39 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Message-ID: <20230213095139.c5gcznwdf4a5kpgo@zkempczy-mobl2>
References: <20230209193231.57538-1-janusz.krzysztofik@linux.intel.com>
 <13320072.uLZWGnKmhe@jkrzyszt-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <13320072.uLZWGnKmhe@jkrzyszt-mobl1.ger.corp.intel.com>
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 10, 2023 at 10:33:21PM +0100, Janusz Krzysztofik wrote:
> On Thursday, 9 February 2023 20:32:31 CET Janusz Krzysztofik wrote:
> > If any of *-without-i915 subtests fails or skips for any reason, it may
> > leave the i915 module unloaded while keeping our device list populated
> > with initially collected data.  In a follow up igt_fixture section we then
> > try to reopen the device.  If the test has been executed with a device
> > filter specified, an attempt to open the device finds a matching entry
> > that belongs to the no longer existing device in that initially collected
> > device list, fails to stat() it, concludes that's because of the device
> > having been already open, and returns an error.
> > 
> > Fix this potentially confusing test result by freeing the potentially
> > outdated device list before continuing with drm_open_driver().
> 
> Freeing device list occurred not safe if device scan was not performed before.  
> I can see 3 potential solutions:
> 1) force device rescan instead of free before calling drm_open_driver(),
> 2) teach igt_device_free() to return immediately if the device list has not 
>    been allocated,
> 3) provide a has_device_list() helper for to be used if not sure before 
>    calling igt_device_free().
> 
> Any preferences?

I would enforce rescan.

BTW I wonder how it can happen if runner is executing each subtest
in new process so you're starting from scratch and rescan should be
executed automatically.

Is is the case you're running few tests from the console?

--
Zbigniew


> 
> Thanks,
> Janusz
> 
> > 
> > While being at it, add a comment that explains why we call
> > igt_device_scan() from __igt_device_card_match() but don't force device
> > rescan, and emit a debug message if we fail in _is_already_opened() on
> > unsuccessful device stat().
> > 
> > Subtest basic-s3-without-i915: FAIL (9.572s)
> > (i915_suspend:9050) drmtest-WARNING: card maching filter 0 is already opened
> > (i915_suspend:9050) drmtest-CRITICAL: Test abort in function drm_open_driver, file ../lib/drmtest.c:639:
> > (i915_suspend:9050) drmtest-CRITICAL: abort condition: fd < 0
> > (i915_suspend:9050) drmtest-CRITICAL: Last errno: 2, No such file or directory
> > (i915_suspend:9050) drmtest-CRITICAL: No known gpu found for chipset flags 0x1 (intel)
> > Test i915_suspend failed.
> > **** DEBUG ****
> > (i915_suspend:9050) drmtest-DEBUG: Looking for devices to open using filter 0: pci:vendor=intel,device=dg2
> > (i915_suspend:9050) drmtest-DEBUG: Filter matched /dev/dri/card0 | /dev/dri/renderD128
> > (i915_suspend:9050) drmtest-WARNING: card maching filter 0 is already opened
> > (i915_suspend:9050) drmtest-CRITICAL: Test abort in function drm_open_driver, file ../lib/drmtest.c:639:
> > (i915_suspend:9050) drmtest-CRITICAL: abort condition: fd < 0
> > (i915_suspend:9050) drmtest-CRITICAL: Last errno: 2, No such file or directory
> > (i915_suspend:9050) drmtest-CRITICAL: No known gpu found for chipset flags 0x1 (intel)
> > (i915_suspend:9050) igt_core-INFO: Stack trace:
> > (i915_suspend:9050) igt_core-INFO:   #0 ../lib/igt_core.c:2066 __igt_abort()
> > (i915_suspend:9050) igt_core-INFO:   #1 ../lib/drmtest.c:573 drm_open_driver()
> > (i915_suspend:9050) igt_core-INFO:   #2 ../tests/i915/i915_suspend.c:258 __igt_unique____real_main245()
> > (i915_suspend:9050) igt_core-INFO:   #3 ../tests/i915/i915_suspend.c:245 main()
> > (i915_suspend:9050) igt_core-INFO:   #4 ../sysdeps/nptl/libc_start_call_main.h:58 __libc_start_call_main()
> > (i915_suspend:9050) igt_core-INFO:   #5 ../csu/libc-start.c:128 __libc_start_main@@GLIBC_2.34()
> > (i915_suspend:9050) igt_core-INFO:   #6 [_start+0x2a]
> > ****  END  ****
> > 
> > Fixes: f7aff600ab16 ("tests/i915/i915_suspend: Disable d3cold_allowed for basic-s2idle-without-i915")
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > Cc: Riana Tauro <riana.tauro@intel.com>
> > ---
> >  lib/drmtest.c             |  2 +-
> >  lib/igt_device_scan.c     |  4 ++++
> >  tests/i915/i915_suspend.c | 10 +++++++++-
> >  3 files changed, 14 insertions(+), 2 deletions(-)
> > 
> > diff --git a/lib/drmtest.c b/lib/drmtest.c
> > index 16e80bdfcf..8e2d1ac50b 100644
> > --- a/lib/drmtest.c
> > +++ b/lib/drmtest.c
> > @@ -260,7 +260,7 @@ static bool _is_already_opened(const char *path, int as_idx)
> >  	 * we cannot even stat the device, so it's of no use - let's claim it's
> >  	 * already opened
> >  	 */
> > -	if (stat(path, &new) != 0)
> > +	if (igt_debug_on(stat(path, &new) != 0))
> >  		return true;
> >  
> >  	for (int i = 0; i < as_idx; ++i) {
> > diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> > index 8b767eed20..ae69ed09f1 100644
> > --- a/lib/igt_device_scan.c
> > +++ b/lib/igt_device_scan.c
> > @@ -1918,6 +1918,10 @@ static bool __igt_device_card_match(const char *filter,
> >  		return false;
> >  	memset(card, 0, sizeof(*card));
> >  
> > +	/*
> > +	 * Scan devices in case the user hasn't yet,
> > +	 * but leave a decision on forced rescan on the user side.
> > +	 */
> >  	igt_devices_scan(false);
> >  
> >  	if (igt_device_filter_apply(filter) == false)
> > diff --git a/tests/i915/i915_suspend.c b/tests/i915/i915_suspend.c
> > index 815f1c8a2c..c68110476e 100644
> > --- a/tests/i915/i915_suspend.c
> > +++ b/tests/i915/i915_suspend.c
> > @@ -253,8 +253,16 @@ igt_main
> >  	igt_subtest("basic-s3-without-i915")
> >  		test_suspend_without_i915(SUSPEND_STATE_S3);
> >  
> > -	igt_fixture
> > +	igt_fixture {
> > +		/*
> > +		 * Since above tests may fail leaving the i915 module unloaded,
> > +		 * force refresh of device list before opening an i915 device
> > +		 * by cleaning up the current device list, otherwise we can fail
> > +		 * if we have been called with a device filter specified.
> > +		 */
> > +		igt_devices_free();
> >  		fd = drm_open_driver(DRIVER_INTEL);
> > +	}
> >  
> >  	igt_subtest("fence-restore-tiled2untiled") {
> >  		gem_require_mappable_ggtt(fd);
> > 
> 
> 
> 
> 
