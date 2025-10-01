Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 038E8BB1018
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 17:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C10410E243;
	Wed,  1 Oct 2025 15:15:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oFXlYxKS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D24710E243;
 Wed,  1 Oct 2025 15:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759331719; x=1790867719;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9QVgN2zvz6nU5aAN7aaXH3o/91v8h0BpIgIyCHw8HGw=;
 b=oFXlYxKS2GlMDC6zBGAn/7jTGyLaNQt5GZEY3CD8ccoCVgnNTJMIUgCU
 oLPSIQxzcwoDXcLHqGrCPbXk8Vdzcn+rJxdPTrAZibRaVNahXJ9iQcic3
 KvfEaP2VHY36B2+Kkcbrt/yWKujtMeRYiaAVSBxCc0/1U/B04TcgmSDDq
 bmEgnwIl0uGqSmQIxXioEU2CIwUEpT4c7DKdwhXozvvL2OA5A+q4P0H58
 upMiZYmiQJGB1yIhYsnxsDILVeqmkWvK/TA+MFsT4R342+OwoQOxfUoNp
 aCCl46Y0XMU+jUfKwlUshZAzyVTJU+HbWva4xdkVMIQZn1juWcooT4tYn Q==;
X-CSE-ConnectionGUID: a4yOhVINQH2m+65ydY6tmw==
X-CSE-MsgGUID: SYblxb2tQ6KgpV85hEIRAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72708025"
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="72708025"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 08:15:18 -0700
X-CSE-ConnectionGUID: ZRlqclfDTnWLApQyDuT1rg==
X-CSE-MsgGUID: aX06NeGgSjyKcWbF0kuzRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="209755661"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 08:15:16 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t 1/3] tests/gem_eio: Adjust for long reset-resume
 cycle on Gen12+
Date: Wed, 01 Oct 2025 17:15:13 +0200
Message-ID: <1813705.X513TT2pbd@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20251001133600.cfkspqz3mc4wggvx@kamilkon-DESK.igk.intel.com>
References: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
 <20250930125430.2323555-6-janusz.krzysztofik@linux.intel.com>
 <20251001133600.cfkspqz3mc4wggvx@kamilkon-DESK.igk.intel.com>
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

Hi Kamil,

Thanks for looking at this.

On Wednesday, 1 October 2025 15:36:00 CEST Kamil Konieczny wrote:
> Hi Janusz,
> On 2025-09-30 at 14:49:01 +0200, Janusz Krzysztofik wrote:
>=20
> could you improve subject? Now it is a little confusing why
> there are two, very similar changes needed, see first and
> second subjects:
>=20
> [i-g-t,1/3] tests/gem_eio: Adjust for long reset-resume cycle on Gen12+
>=20
> [i-g-t,2/3] tests/gem_eio: Adjust for slow resume after reset on Gen12+
>=20
> At first I do not know why two very similar changes are made with
> two different commits.

In my opinion these two patches address two separate issues.  The first iss=
ue=20
=2D- not enough measurements for median calculation -- prevents the exercis=
e=20
from calculating and reporting results.  The second issue in turn sometimes=
=20
applies not quite realistic expectations to those results.  In order to lea=
rn=20
which platforms suffer from the second issue, you have to resolve the first=
=20
one to see those results.  To avoid confusion, I can try to reword those=20
commit messages so they don't look so similar.

>=20
> See also below.
>=20
> > Subtests that measure time of resume after engine reset require results
> > from at least 9 reset-resume cycles for reasonable calculation of a med=
ian
> > value to be compared against presumed limits.  On most of Gen12+
> > platforms, the limit of 5 seconds for collecting those results occurs t=
oo
> > short for executing 9 reset-resum cycles.
> >=20
> > Raise the limit to 20 seconds, and break the loop as soon as 9 results =
are
> > collected.  Also, warn if less than 9 resets have been completed within
> > the limit instead of silently succeeding despite the check being skippe=
d.
> >=20
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/intel/gem_eio.c | 11 ++++++++---
> >  1 file changed, 8 insertions(+), 3 deletions(-)
> >=20
> > diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> > index b65b914faf..b6155c7fc4 100644
> > --- a/tests/intel/gem_eio.c
> > +++ b/tests/intel/gem_eio.c
> > @@ -409,8 +409,10 @@ static void check_wait_elapsed(const char *prefix,=
 int fd, igt_stats_t *st)
> >  		 igt_stats_get_median(st)*1e-6,
> >  		 igt_stats_get_max(st)*1e-6);
> > =20
> > -	if (st->n_values < 9)
> > -		return; /* too few for stable median */
> > +	if (igt_warn_on_f(st->n_values < 9,
> > +	    "%d resets completed -- less than 9, too few for stable median\n",
> > +	    st->n_values))
> > +		return;
>=20
> imho this could be a separate change, as there was silence before.

OK, unless I kill that warning, taking into account the comment from Krzysz=
tof=20
Kara=C5=9B.

>=20
> > =20
> >  	/*
> >  	 * Older platforms need to reset the display (incl. modeset to off,
> > @@ -928,7 +930,7 @@ static void reset_stress(int fd, uint64_t ahnd, con=
st intel_ctx_t *ctx0,
> >  	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
> > =20
> >  	igt_stats_init(&stats);
> > -	igt_until_timeout(5) {
> > +	igt_until_timeout(20) {
>=20
> Could you increase it only when needed?

Taking into account the other part of this change that breaks this loop as=
=20
soon as enough measurements are collected, I don't think such complication =
is=20
worth of effort, can you please explain why you think it is?

Thanks,
Janusz

>=20
> Regards,
> Kamil
>=20
> >  		const intel_ctx_t *ctx =3D context_create_safe(fd);
> >  		igt_spin_t *hang;
> >  		unsigned int i;
> > @@ -977,6 +979,9 @@ static void reset_stress(int fd, uint64_t ahnd, con=
st intel_ctx_t *ctx0,
> >  		gem_sync(fd, obj.handle);
> >  		igt_spin_free(fd, hang);
> >  		intel_ctx_destroy(fd, ctx);
> > +
> > +		if (stats.n_values > 8)
> > +			break;
> >  	}
> >  	check_wait_elapsed(name, fd, &stats);
> >  	igt_stats_fini(&stats);
>=20




