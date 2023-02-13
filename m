Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 982D369425B
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 11:10:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47C3910E509;
	Mon, 13 Feb 2023 10:10:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D8CB10E509;
 Mon, 13 Feb 2023 10:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676283044; x=1707819044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D9tkcUqbRe3B6rW8xOj+m3KDuP9hoA+izDXdqQhN7NI=;
 b=PdczI361RURPd+SLzU5sPnpMl7dlDOztxU2ekvxf+pm7LTBcSAeB/z44
 CzrC/KixyF2FgVtEkPwSwI5f4IHJO2gpeTiEavJqIkBsJ8qEk2UclL70J
 tb4h7eCYZJL9ceGinob0KNF668W/NdYt8ojDo6hC5PwX343gaeJz1QSmj
 9yOkFhLIvqFE5PrsRcaerId0y31EQcEhpgx+ilglU82Ld4QQcslt9/fqx
 UQ6csKpLSdDIp0orK/rCvcwpBC1ROlPJtj3qdvdQuCpiR2wcMhN+B1ddx
 MLtDaCwdt7VfkOsZgE3GCCH/BvcWBWZ1kwOOrxkgw8I+g+qyGQvG7EInR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="314498801"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="314498801"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 02:10:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10619"; a="842716902"
X-IronPort-AV: E=Sophos;i="5.97,293,1669104000"; d="scan'208";a="842716902"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.19.172])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 02:10:33 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Zbigniew =?utf-8?B?S2VtcGN6ecWEc2tp?= <zbigniew.kempczynski@intel.com>
Date: Mon, 13 Feb 2023 11:10:30 +0100
Message-ID: <21773235.EfDdHjke4D@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230213095139.c5gcznwdf4a5kpgo@zkempczy-mobl2>
References: <20230209193231.57538-1-janusz.krzysztofik@linux.intel.com>
 <13320072.uLZWGnKmhe@jkrzyszt-mobl1.ger.corp.intel.com>
 <20230213095139.c5gcznwdf4a5kpgo@zkempczy-mobl2>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
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

On Monday, 13 February 2023 10:51:39 CET Zbigniew Kempczy=C5=84ski wrote:
> On Fri, Feb 10, 2023 at 10:33:21PM +0100, Janusz Krzysztofik wrote:
> > On Thursday, 9 February 2023 20:32:31 CET Janusz Krzysztofik wrote:
> > > If any of *-without-i915 subtests fails or skips for any reason, it m=
ay
> > > leave the i915 module unloaded while keeping our device list populated
> > > with initially collected data.  In a follow up igt_fixture section we=
=20
then
> > > try to reopen the device.  If the test has been executed with a device
> > > filter specified, an attempt to open the device finds a matching entry
> > > that belongs to the no longer existing device in that initially=20
collected
> > > device list, fails to stat() it, concludes that's because of the devi=
ce
> > > having been already open, and returns an error.
> > >=20
> > > Fix this potentially confusing test result by freeing the potentially
> > > outdated device list before continuing with drm_open_driver().
> >=20
> > Freeing device list occurred not safe if device scan was not performed=
=20
before. =20
> > I can see 3 potential solutions:
> > 1) force device rescan instead of free before calling drm_open_driver(),
> > 2) teach igt_device_free() to return immediately if the device list has=
=20
not=20
> >    been allocated,
> > 3) provide a has_device_list() helper for to be used if not sure before=
=20
> >    calling igt_device_free().
> >=20
> > Any preferences?
>=20
> I would enforce rescan.
>=20
> BTW I wonder how it can happen if runner is executing each subtest
> in new process so you're starting from scratch and rescan should be
> executed automatically.

The scenario I'm trying to address is different: a subtest fails, leaving t=
he=20
i915 module unloaded but the device list populated.  Then, before the test=
=20
exist, open_drm_driver() called from a follow up igt_fixture section falsel=
y=20
detects the (non-existent) device as already open and fails instead of=20
reloading the module.

While that late failure shouldn't affect results of the subtest, debug=20
messages triggered from that failed device_open_driver() can occur potentia=
lly=20
misleading to anyone watching CI results, then should be avoided if possibl=
e.

Thanks,
Janusz


>=20
> Is is the case you're running few tests from the console?
>=20
> --
> Zbigniew
>=20
>=20
> >=20
> > Thanks,
> > Janusz
> >=20
> > >=20
> > > While being at it, add a comment that explains why we call
> > > igt_device_scan() from __igt_device_card_match() but don't force devi=
ce
> > > rescan, and emit a debug message if we fail in _is_already_opened() on
> > > unsuccessful device stat().
> > >=20
> > > Subtest basic-s3-without-i915: FAIL (9.572s)
> > > (i915_suspend:9050) drmtest-WARNING: card maching filter 0 is already=
=20
opened
> > > (i915_suspend:9050) drmtest-CRITICAL: Test abort in function=20
drm_open_driver, file ../lib/drmtest.c:639:
> > > (i915_suspend:9050) drmtest-CRITICAL: abort condition: fd < 0
> > > (i915_suspend:9050) drmtest-CRITICAL: Last errno: 2, No such file or=
=20
directory
> > > (i915_suspend:9050) drmtest-CRITICAL: No known gpu found for chipset=
=20
flags 0x1 (intel)
> > > Test i915_suspend failed.
> > > **** DEBUG ****
> > > (i915_suspend:9050) drmtest-DEBUG: Looking for devices to open using=
=20
filter 0: pci:vendor=3Dintel,device=3Ddg2
> > > (i915_suspend:9050) drmtest-DEBUG: Filter matched /dev/dri/card0 | /d=
ev/
dri/renderD128
> > > (i915_suspend:9050) drmtest-WARNING: card maching filter 0 is already=
=20
opened
> > > (i915_suspend:9050) drmtest-CRITICAL: Test abort in function=20
drm_open_driver, file ../lib/drmtest.c:639:
> > > (i915_suspend:9050) drmtest-CRITICAL: abort condition: fd < 0
> > > (i915_suspend:9050) drmtest-CRITICAL: Last errno: 2, No such file or=
=20
directory
> > > (i915_suspend:9050) drmtest-CRITICAL: No known gpu found for chipset=
=20
flags 0x1 (intel)
> > > (i915_suspend:9050) igt_core-INFO: Stack trace:
> > > (i915_suspend:9050) igt_core-INFO:   #0 ../lib/igt_core.c:2066=20
__igt_abort()
> > > (i915_suspend:9050) igt_core-INFO:   #1 ../lib/drmtest.c:573=20
drm_open_driver()
> > > (i915_suspend:9050) igt_core-INFO:   #2 ../tests/i915/i915_suspend.c:=
258=20
__igt_unique____real_main245()
> > > (i915_suspend:9050) igt_core-INFO:   #3 ../tests/i915/i915_suspend.c:=
245=20
main()
> > > (i915_suspend:9050) igt_core-INFO:   #4 ../sysdeps/nptl/
libc_start_call_main.h:58 __libc_start_call_main()
> > > (i915_suspend:9050) igt_core-INFO:   #5 ../csu/libc-start.c:128=20
__libc_start_main@@GLIBC_2.34()
> > > (i915_suspend:9050) igt_core-INFO:   #6 [_start+0x2a]
> > > ****  END  ****
> > >=20
> > > Fixes: f7aff600ab16 ("tests/i915/i915_suspend: Disable d3cold_allowed=
=20
for basic-s2idle-without-i915")
> > > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > > Cc: Riana Tauro <riana.tauro@intel.com>
> > > ---
> > >  lib/drmtest.c             |  2 +-
> > >  lib/igt_device_scan.c     |  4 ++++
> > >  tests/i915/i915_suspend.c | 10 +++++++++-
> > >  3 files changed, 14 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/lib/drmtest.c b/lib/drmtest.c
> > > index 16e80bdfcf..8e2d1ac50b 100644
> > > --- a/lib/drmtest.c
> > > +++ b/lib/drmtest.c
> > > @@ -260,7 +260,7 @@ static bool _is_already_opened(const char *path, =
int=20
as_idx)
> > >  	 * we cannot even stat the device, so it's of no use - let's claim=
=20
it's
> > >  	 * already opened
> > >  	 */
> > > -	if (stat(path, &new) !=3D 0)
> > > +	if (igt_debug_on(stat(path, &new) !=3D 0))
> > >  		return true;
> > > =20
> > >  	for (int i =3D 0; i < as_idx; ++i) {
> > > diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> > > index 8b767eed20..ae69ed09f1 100644
> > > --- a/lib/igt_device_scan.c
> > > +++ b/lib/igt_device_scan.c
> > > @@ -1918,6 +1918,10 @@ static bool __igt_device_card_match(const char=
=20
*filter,
> > >  		return false;
> > >  	memset(card, 0, sizeof(*card));
> > > =20
> > > +	/*
> > > +	 * Scan devices in case the user hasn't yet,
> > > +	 * but leave a decision on forced rescan on the user side.
> > > +	 */
> > >  	igt_devices_scan(false);
> > > =20
> > >  	if (igt_device_filter_apply(filter) =3D=3D false)
> > > diff --git a/tests/i915/i915_suspend.c b/tests/i915/i915_suspend.c
> > > index 815f1c8a2c..c68110476e 100644
> > > --- a/tests/i915/i915_suspend.c
> > > +++ b/tests/i915/i915_suspend.c
> > > @@ -253,8 +253,16 @@ igt_main
> > >  	igt_subtest("basic-s3-without-i915")
> > >  		test_suspend_without_i915(SUSPEND_STATE_S3);
> > > =20
> > > -	igt_fixture
> > > +	igt_fixture {
> > > +		/*
> > > +		 * Since above tests may fail leaving the i915 module=20
unloaded,
> > > +		 * force refresh of device list before opening an i915=20
device
> > > +		 * by cleaning up the current device list, otherwise we=20
can fail
> > > +		 * if we have been called with a device filter=20
specified.
> > > +		 */
> > > +		igt_devices_free();
> > >  		fd =3D drm_open_driver(DRIVER_INTEL);
> > > +	}
> > > =20
> > >  	igt_subtest("fence-restore-tiled2untiled") {
> > >  		gem_require_mappable_ggtt(fd);
> > >=20
> >=20
> >=20
> >=20
> >=20
>=20




