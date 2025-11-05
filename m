Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A30E8C35B4E
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 13:53:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3237D10E72F;
	Wed,  5 Nov 2025 12:53:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U+iBGKGp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F09310E728;
 Wed,  5 Nov 2025 12:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762347183; x=1793883183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NHkKVOLCw6J9Li7ABOCd0RFIFfB3SyRphcHBrMW9S/o=;
 b=U+iBGKGpFHeMUpdg+NuCsx09Fz+76nFbRnPu2yRRZHwQUcDqG/5itjZX
 Tthsgd/+GG2vbfFMynB0UuUnTzEGGLWoK0AK7PhtftyOrz23GzZdM7Zrf
 9ZN9uGuhaXuWIhzUWFJMuvwE4Q7cQALW8hGU5jrSZRJCUSeOkEWMYiZfL
 0B9lo336Ew09rDtPAaUBuSMzXapVkeab5AH/rwhbygrW/qeiSCpli42bh
 bCyJGu++qp34mIIlWLdrmMft2niU9AFRuNpLIhXcyaTij3emSWkhtcoHU
 g5requojbkajRYq145aKjSlX05yQ3CnIgGxZ45Degl51SWCyZLh84PsyR g==;
X-CSE-ConnectionGUID: YOShYjELT/Su7sx6c4a4EQ==
X-CSE-MsgGUID: oFsQ6S3uQd+HhaCrTKyEYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64609338"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="64609338"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 04:53:02 -0800
X-CSE-ConnectionGUID: L0SNTJcSSmKEA6U/Pv++Kw==
X-CSE-MsgGUID: tS3dgcYETVylw0RRLLEfCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="187396779"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.2])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 04:52:59 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Nitin Gote <nitin.r.gote@intel.com>
Subject: Re: [PATCH i-g-t] tests/dmabuf: Avoid soft lockups on slow platforms
Date: Wed, 05 Nov 2025 13:52:56 +0100
Message-ID: <40055244.10thIPus4b@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <DDZXCBTESHRZ.1JVF91NALHR9O@intel.com>
References: <20251104112116.432508-2-janusz.krzysztofik@linux.intel.com>
 <DDZXCBTESHRZ.1JVF91NALHR9O@intel.com>
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

Hi Sebastian,

Thanks for review.

On Tuesday, 4 November 2025 13:54:30 CET Sebastian Brzezinka wrote:
> Hi Janusz
> On Tue Nov 4, 2025 at 11:20 AM UTC, Janusz Krzysztofik wrote:
> > Certain selftests, while basically correct, may fail on certain platfor=
ms.
> > E.g., igt@dmabuf@all-test@dma_fence_chain used to complete successfully,
> > but on slow machines it triggers soft lockup warnings which taint the
> > kernel.
> >
> > Sometimes, like in the above mentioned case, it's not possible to fix a
> > root cause of the issue since it is not recognized as a bug.  To avoid
> > ever returning CI bug reports in such cases, allow selftests to be call=
ed
> > via user provided wrappers that take care of not triggering unavoidable
> > failures, e.g. by skipping specific selftests if some conditions are not
> > met, or watching their execution and acting upon certain conditions or
> > events.
> >
> > With that in place, update the dmabuf test so it, as the first user of =
the
> > new feature, skips the dma_fence_chain selftest if a machine looks too
> > slow.  Since that's a hardware agnostic selftest, running it on a limit=
ed
> > subset of machines seems acceptable, especially when the soft lockups it
> > can trigger aren't recognized as bugs on the kernel side.
> >
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  lib/igt_kmod.c              | 13 +++++++---
> >  lib/igt_kmod.h              | 10 ++++++-
> >  tests/dmabuf.c              | 52 ++++++++++++++++++++++++++++++++++++-
> >  tests/intel/i915_selftest.c |  6 ++---
> >  4 files changed, 73 insertions(+), 8 deletions(-)
> >
> > diff --git a/lib/igt_kmod.c b/lib/igt_kmod.c
> > index a10626eedf..68ab4dbd57 100644
> > --- a/lib/igt_kmod.c
> > +++ b/lib/igt_kmod.c
> > @@ -1355,7 +1355,8 @@ static const char *unfilter(const char *filter, c=
onst char *name)
> >  void igt_kselftests(const char *module_name,
> >  		    const char *options,
> >  		    const char *result,
> > -		    const char *filter)
> > +		    const char *filter,
> > +		    igt_kselftest_wrap_t wrapper)
> >  {
> >  	struct igt_ktest tst;
> >  	IGT_LIST_HEAD(tests);
> > @@ -1370,10 +1371,16 @@ void igt_kselftests(const char *module_name,
> >  	igt_kselftest_get_tests(tst.kmod, filter, &tests);
> >  	igt_subtest_with_dynamic(filter ?: "all-tests") {
> >  		igt_list_for_each_entry_safe(tl, tn, &tests, link) {
> > +			const char *dynamic_name =3D unfilter(filter, tl->name);
> >  			unsigned long taints;
> > =20
> > -			igt_dynamic_f("%s", unfilter(filter, tl->name))
> > -				igt_kselftest_execute(&tst, tl, options, result);
> > +			igt_dynamic_f("%s", dynamic_name) {
> > +				if (wrapper)
> > +					wrapper(dynamic_name, &tst, tl);
> > +				else
> > +					igt_kselftest_execute(&tst, tl,
> > +							      options, result);
> > +			}
> >  			free(tl);
> > =20
> >  			if (igt_kernel_tainted(&taints)) {
> > diff --git a/lib/igt_kmod.h b/lib/igt_kmod.h
> > index 9050708974..c9700240c9 100644
> > --- a/lib/igt_kmod.h
> > +++ b/lib/igt_kmod.h
> > @@ -28,6 +28,13 @@
> > =20
> >  #include "igt_list.h"
> > =20
> > +struct igt_ktest;
> > +struct igt_kselftest_list;
> I would avoid using this declaration. I=E2=80=99d rather place the functi=
on
> pointer declaration lower in the code.

The above declarations are needed for typedef of the wrapper function that=
=20
follows.  Whether those lines are placed at the top of the header file or i=
n=20
front of the declaration of a function that uses the latter is a matter of=
=20
personal preferences, I believe.  Anyway, I'd like to hear from Kamil what'=
s=20
his preference here before I change the order.

Thanks,
Janusz

>=20
> Overall, it=E2=80=99s a neat idea. I tried to think of what could go wron=
g,
> but especially for a hardware agnostic test, it seems worth trying.
> =20
> Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
>=20




