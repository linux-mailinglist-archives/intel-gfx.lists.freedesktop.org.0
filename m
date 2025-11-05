Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 171AAC360C1
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 15:25:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AA9910E0A3;
	Wed,  5 Nov 2025 14:25:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nbclgd8R";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C43C10E0A3;
 Wed,  5 Nov 2025 14:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762352743; x=1793888743;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c9zVr1j4zBNxW7hix0PUEHOPbaKWeyAn4WGzk2HIA3k=;
 b=Nbclgd8ROgDza8fNXFEdxmG8Z1dE+15HuvoH61B8qOS0Ddi/lDTQgQDo
 DkQxQ9pDalqTWvy9c++dWR0TTSljUOdATjvYkwClJ8ITX30AkWna57ZdN
 acC9/spawjRzfpDohM+QjdbNRDVvB0RlCnvwJOp5AEr/yjwosMG/eC623
 hzhRTyBi+CdriJlbQWXeHL3qPlD59hG38LDRcT/PdDYbW6cZ4gc77JF4C
 SVaOMse+dIxYv+pzVaXxR+nFSHj3OpF7RB6OHroAGVms+UD+5xKQQrN6c
 NU6vsoJUztJ52y/1f3Du9+sHhEkkqSsE8Ux334wLyEpSW7KLpl8aN3jO4 w==;
X-CSE-ConnectionGUID: iJSvb0c2SxGKLqGimUZ84g==
X-CSE-MsgGUID: vmR3et6bRTS+ufWtBz6mng==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="87095431"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="87095431"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:25:43 -0800
X-CSE-ConnectionGUID: zjeKR8uKRyugrvtNvcJ7sg==
X-CSE-MsgGUID: SgES4gmlSw+5Pto8JV9Z4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187918037"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.2])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 06:25:40 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Nitin Gote <nitin.r.gote@intel.com>
Subject: Re: [PATCH i-g-t] tests/dmabuf: Avoid soft lockups on slow platforms
Date: Wed, 05 Nov 2025 15:25:38 +0100
Message-ID: <2293646.72vocr9iq0@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <DE0SBCESZS4Z.1GYDWUUV1N669@intel.com>
References: <20251104112116.432508-2-janusz.krzysztofik@linux.intel.com>
 <40055244.10thIPus4b@jkrzyszt-mobl2.ger.corp.intel.com>
 <DE0SBCESZS4Z.1GYDWUUV1N669@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
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

On Wednesday, 5 November 2025 14:10:48 CET Sebastian Brzezinka wrote:
> On Wed Nov 5, 2025 at 12:52 PM UTC, Janusz Krzysztofik wrote:
> > Hi Sebastian,
> >
> > Thanks for review.
> >
> > On Tuesday, 4 November 2025 13:54:30 CET Sebastian Brzezinka wrote:
> >> Hi Janusz
> >> On Tue Nov 4, 2025 at 11:20 AM UTC, Janusz Krzysztofik wrote:
> >> > Certain selftests, while basically correct, may fail on certain=20
platforms.
> >> > E.g., igt@dmabuf@all-test@dma_fence_chain used to complete=20
successfully,
> >> > but on slow machines it triggers soft lockup warnings which taint the
> >> > kernel.
> >> >
> >> > Sometimes, like in the above mentioned case, it's not possible to fi=
x a
> >> > root cause of the issue since it is not recognized as a bug.  To avo=
id
> >> > ever returning CI bug reports in such cases, allow selftests to be=20
called
> >> > via user provided wrappers that take care of not triggering unavoida=
ble
> >> > failures, e.g. by skipping specific selftests if some conditions are=
=20
not
> >> > met, or watching their execution and acting upon certain conditions =
or
> >> > events.
> >> >
> >> > With that in place, update the dmabuf test so it, as the first user =
of=20
the
> >> > new feature, skips the dma_fence_chain selftest if a machine looks t=
oo
> >> > slow.  Since that's a hardware agnostic selftest, running it on a=20
limited
> >> > subset of machines seems acceptable, especially when the soft lockup=
s=20
it
> >> > can trigger aren't recognized as bugs on the kernel side.
> >> >
> >> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.co=
m>
> >> > ---
> >> >  lib/igt_kmod.c              | 13 +++++++---
> >> >  lib/igt_kmod.h              | 10 ++++++-
> >> >  tests/dmabuf.c              | 52 ++++++++++++++++++++++++++++++++++=
++-
> >> >  tests/intel/i915_selftest.c |  6 ++---
> >> >  4 files changed, 73 insertions(+), 8 deletions(-)
> >> >
> >> > diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> >> > index a10626eedf..68ab4dbd57 100644
> >> > --- a/lib/igt_kmod.c
> >> > +++ b/lib/igt_kmod.c
> >> > @@ -1355,7 +1355,8 @@ static const char *unfilter(const char *filter=
,=20
const char *name)
> >> >  void igt_kselftests(const char *module_name,
> >> >  		    const char *options,
> >> >  		    const char *result,
> >> > -		    const char *filter)
> >> > +		    const char *filter,
> >> > +		    igt_kselftest_wrap_t wrapper)
> >> >  {
> >> >  	struct igt_ktest tst;
> >> >  	IGT_LIST_HEAD(tests);
> >> > @@ -1370,10 +1371,16 @@ void igt_kselftests(const char *module_name,
> >> >  	igt_kselftest_get_tests(tst.kmod, filter, &tests);
> >> >  	igt_subtest_with_dynamic(filter ?: "all-tests") {
> >> >  		igt_list_for_each_entry_safe(tl, tn, &tests, link) {
> >> > +			const char *dynamic_name =3D unfilter(filter, tl-
>name);
> >> >  			unsigned long taints;
> >> > =20
> >> > -			igt_dynamic_f("%s", unfilter(filter, tl->name))
> >> > -				igt_kselftest_execute(&tst, tl,=20
options, result);
> >> > +			igt_dynamic_f("%s", dynamic_name) {
> >> > +				if (wrapper)
> >> > +					wrapper(dynamic_name, &tst,=20
tl);
> >> > +				else
> >> > +					igt_kselftest_execute(&tst,=20
tl,
> >> > +							     =20
options, result);
> >> > +			}
> >> >  			free(tl);
> >> > =20
> >> >  			if (igt_kernel_tainted(&taints)) {
> >> > diff --git a/lib/igt_kmod.h b/lib/igt_kmod.h
> >> > index 9050708974..c9700240c9 100644
> >> > --- a/lib/igt_kmod.h
> >> > +++ b/lib/igt_kmod.h
> >> > @@ -28,6 +28,13 @@
> >> > =20
> >> >  #include "igt_list.h"
> >> > =20
> >> > +struct igt_ktest;
> >> > +struct igt_kselftest_list;
> >> I would avoid using this declaration. I=E2=80=99d rather place the fun=
ction
> >> pointer declaration lower in the code.
> >
> > The above declarations are needed for typedef of the wrapper function t=
hat=20
> > follows.  Whether those lines are placed at the top of the header file =
or=20
in=20
> > front of the declaration of a function that uses the latter is a matter=
 of=20
> > personal preferences, I believe.  Anyway, I'd like to hear from Kamil=20
what's=20
> > his preference here before I change the order.
> I meant that you can slightly rearrange the code,
> and the forward declarations will no longer be needed.

Neither struct igt_ktest nor struct igt_kselftest_list internals are used=20
outside of lib/igt_kmod.c, then those structure definitions belong to that=
=20
source, not to the header, I believe.  That's why I didn't consider making =
use=20
of them, only added forward declarations as needed for those structures,=20
opaque as they should be.

Thanks,
Janusz

>=20
> ```
> diff --git a/lib/igt_kmod.h b/lib/igt_kmod.h
> index c9700240c..5a2ee1576 100644
> --- a/lib/igt_kmod.h
> +++ b/lib/igt_kmod.h
> @@ -28,13 +28,6 @@
>=20
> #include "igt_list.h"
>=20
> -struct igt_ktest;
> -struct igt_kselftest_list;
> -
> -typedef int (*igt_kselftest_wrap_t)(const char *dynamic_name,
> -                                   struct igt_ktest *tst,
> -                                   struct igt_kselftest_list *tl);
> -
> bool igt_kmod_is_loaded(const char *mod_name);
> void igt_kmod_list_loaded(void);
>=20
> @@ -83,12 +76,6 @@ int igt_amdgpu_driver_unload(void);
>=20
> void igt_kunit(const char *module_name, const char *name, const char *opt=
s);
>=20
> -void igt_kselftests(const char *module_name,
> -                   const char *module_options,
> -                   const char *result_option,
> -                   const char *filter,
> -                   igt_kselftest_wrap_t wrapper);
> -
> struct igt_ktest {
> 	struct kmod_module *kmod;
> 	char *module_name;
> @@ -102,6 +89,16 @@ struct igt_kselftest_list {
> char param[];
> };
> +typedef int (*igt_kselftest_wrap_t)(const char *dynamic_name,
> +                                   struct igt_ktest *tst,
> +                                   struct igt_kselftest_list *tl);
> +
> +void igt_kselftests(const char *module_name,
> +                   const char *module_options,
> +                   const char *result_option,
> +                   const char *filter,
> +                   igt_kselftest_wrap_t wrapper);
> +
> int igt_ktest_init(struct igt_ktest *tst,
> 		   const char *module_name);
> int igt_ktest_begin(struct igt_ktest *tst);
> ```                                                      =20
>=20
>=20




