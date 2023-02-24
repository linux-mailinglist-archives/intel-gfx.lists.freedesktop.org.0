Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 485CD6A1839
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 09:47:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6732510E6AC;
	Fri, 24 Feb 2023 08:47:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A49E10E6AC;
 Fri, 24 Feb 2023 08:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677228432; x=1708764432;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yLBVptvtvbcTDSxW9m8LwWTj+YOhcYKLEBkj6eChK94=;
 b=lAGldnfs9DMDglrpz3CP23sjIbifIJYlas3kwN7WY5I7d6yf+klb2lJQ
 MTgBruZQwcHeXxsgUmbS2L2mryUbmZvx/v43e/so8VC7wyjctLhqH695C
 lwDz7ARi2uxgMXjahuazcZErOQd7bpKuMDYEsRj1nMtS53DBgxU5yb7S5
 zG+22ljAnRJUEYKo6ySxye1c6ikxQz4C3L9BT9ZWSJDsWTLwgWH++xSu0
 nkKSI79VoZeaN+N2sbdz7bvXLo9nVuNhpzv0HBIjEUu1QTQ43IjIAL2BM
 5fVI8tRRQu5tfWk6dmQrBNfX2Jkjyzrc63E9aykxwi6Zl0AcGKnwRLFlT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="395940454"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="395940454"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 00:47:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="918363701"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="918363701"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.7.92])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 00:47:00 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Riana Tauro <riana.tauro@intel.com>,
 Zbigniew =?utf-8?B?S2VtcGN6ecWEc2tp?= <zbigniew.kempczynski@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 09:46:53 +0100
Message-ID: <5908864.lOV4Wx5bFT@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230224083854.oharfpdp6aidbfsk@kamilkon-desk1>
References: <20230213143445.24228-1-janusz.krzysztofik@linux.intel.com>
 <20230224083854.oharfpdp6aidbfsk@kamilkon-desk1>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, 24 February 2023 09:38:54 CET Kamil Konieczny wrote:
> On 2023-02-13 at 15:34:45 +0100, Janusz Krzysztofik wrote:
> > If any of *-without-i915 subtests fails or skips for any reason, it may
> > leave the i915 module unloaded while keeping our device list populated
> > with initially collected data.  In a follow up igt_fixture section we then
> > try to reopen the device.  If the test has been executed with a device
> > filter specified, an attempt to open the device finds a matching entry
> > that belongs to the no longer existing device in that initially collected
> > device list, fails to stat() it, concludes that's because of the device
> > having been already open, and returns an error.  While that error,
> > triggered after subtests completion, doesn't affect results of the
> > subtest, reported by CI togethger with those results it is confusing to
> > users reviewing those reports.
> > 
> > Fix this issue by refreshing the potentially outdated device list before
> > continuing with drm_open_driver() if we've been called with a device
> > filter specified.
> > 
> > While being at it, add a comment that explains why we call
> > igt_devices_scan() from __igt_device_card_match() but don't force device
> > rescan, and emit a debug message if we fail in _is_already_opened() on
> > unsuccessful device stat().
> > 
> > v2: don't free the device list -- we can't tell if it has been populated,
> >     and igt_devices_free() fails if it hasn't,
> >   - commit message updated, description improved.
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
> 
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Thanks Kamil, pushed.

Janusz

> 
> > ---
> >  lib/drmtest.c             |  2 +-
> >  lib/igt_device_scan.c     |  4 ++++
> >  tests/i915/i915_suspend.c | 12 +++++++++++-
> >  3 files changed, 16 insertions(+), 2 deletions(-)
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
> > index 815f1c8a2c..1d304a9317 100644
> > --- a/tests/i915/i915_suspend.c
> > +++ b/tests/i915/i915_suspend.c
> > @@ -253,8 +253,18 @@ igt_main
> >  	igt_subtest("basic-s3-without-i915")
> >  		test_suspend_without_i915(SUSPEND_STATE_S3);
> >  
> > -	igt_fixture
> > +	igt_fixture {
> > +		/*
> > +		 * Since above subtests may fail, leaving i915 module unloaded
> > +		 * but device list populated, refresh the device list before
> > +		 * reopening the i915 device if we've been called with a device
> > +		 * filter specified, otherwise drm_open_driver() will fail
> > +		 * instead of reloading the i915 module.
> > +		 */
> > +		if (igt_device_filter_count())
> > +			igt_devices_scan(true);
> >  		fd = drm_open_driver(DRIVER_INTEL);
> > +	}
> >  
> >  	igt_subtest("fence-restore-tiled2untiled") {
> >  		gem_require_mappable_ggtt(fd);
> 




