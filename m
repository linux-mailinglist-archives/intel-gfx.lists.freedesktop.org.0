Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGcEGeDBu2n1ngIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 10:29:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A035B2C8A9C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2026 10:29:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0834510E138;
	Thu, 19 Mar 2026 09:29:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QKo5zfx+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE0210E927;
 Thu, 19 Mar 2026 09:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773912541; x=1805448541;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=FVjKQcsrzpJr8DbjuwemlZ3c65Zl7lgWQuuIKv9mhqQ=;
 b=QKo5zfx+mBNnIpk2ZYJm1nYL38vyxJmTy2G5TuD7Shh2nJl9x1hsFo7b
 z/2dahaDrN951fqcT77GvHQsGh8UdS0CkT9rJ2jfNtnO50+6wgnDYEtEX
 Xq33rQiNL1D7ZXk2vOQu1A1JQLIaoKOo8ZDOrKS1Fmtp29I5ZA6298l5t
 EYNH93UG4HEuFBN3V03KJuk3n1m4WfK6ptIemDUXF9fB0q/CMPArJVn1z
 v7QOFI7ihpw5kpbEgUqDfAS7/oW3LIQ7rK06Tn35obG1OBWkil3kyYjAg
 KzllpDoSkuPjkqJzw3s+bPtGOSrRnupZ43vmDJc6uWwT24CpkExjUWAqs Q==;
X-CSE-ConnectionGUID: KcPIiMqbSSGsN/a57HZDrQ==
X-CSE-MsgGUID: elNeiNd9QpaKNRHfYkDMfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="78838165"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="78838165"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 02:29:01 -0700
X-CSE-ConnectionGUID: LWvaQNtSSxy2R5w5wrYzQA==
X-CSE-MsgGUID: kQYH1E7JSNeZL0c+eBPEXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="227606666"
Received: from mwiniars-mobl.ger.corp.intel.com ([10.245.246.121])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 02:28:58 -0700
Message-ID: <5a76f225fb902ef2294de5730d81e489ce17f7eb.camel@linux.intel.com>
Subject: Re: [PATCH i-g-t v2 2/3] tests/intel/gem_lmem_swapping: Be more
 clear about subprocesses role
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, Kamil
 Konieczny <kamil.konieczny@linux.intel.com>, Zbigniew
 =?UTF-8?Q?Kempczy=C5=84ski?=	 <zbigniew.kempczynski@intel.com>, Thomas
 =?ISO-8859-1?Q?Hellstr=F6m?=	 <thomas.hellstrom@linux.intel.com>, Andi
 Shyti <andi.shyti@linux.intel.com>,  Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Date: Thu, 19 Mar 2026 10:28:55 +0100
In-Reply-To: <nafdnlx2pxm2zj46s72qjt3glrgdjuk4monbuz7zpj4uomzulv@o7oeaykwokit>
References: <20260312181032.20485-5-janusz.krzysztofik@linux.intel.com>
 <20260312181032.20485-7-janusz.krzysztofik@linux.intel.com>
 <nafdnlx2pxm2zj46s72qjt3glrgdjuk4monbuz7zpj4uomzulv@o7oeaykwokit>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
MIME-Version: 1.0
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: A035B2C8A9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

Thanks for looking into this.

On Thu, 2026-03-19 at 07:20 +0000, Krzysztof Karas wrote:
> Hi Janusz,
>=20
> > In the smem-oom subtest, helper processes are now spawn with igt_fork()=
,
> > not with igt_fork_helper() as one might expect.  That unfortunate use
> > of igt_fork() may introduce uncertainty about the role of those
> > subprocesses, whether their failures should count or not.
> >=20
> > Use igt_fork_helper() for clarity.
> >=20
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/intel/gem_lmem_swapping.c | 12 ++++++++----
> >  1 file changed, 8 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swa=
pping.c
> > index 3a35318a74..f790dc66e9 100644
> > --- a/tests/intel/gem_lmem_swapping.c
> > +++ b/tests/intel/gem_lmem_swapping.c
> > @@ -737,7 +737,9 @@ static void test_smem_oom(int i915,
> >  	/* smem memory hog processes, respawn till the lmem process completes=
 */
> >  	igt_fork_helper(&smem_loop[0]) {
> >  		while (!READ_ONCE(*lmem_done)) {
> > -			igt_fork(child, 1) {
> > +			struct igt_helper_process smem_proc =3D {};
> > +
> > +			igt_fork_helper(&smem_proc) {
> >  				for (int pass =3D 0; pass < num_alloc; pass++) {
> >  					if (READ_ONCE(*lmem_done))
> >  						break;
> > @@ -749,12 +751,14 @@ static void test_smem_oom(int i915,
> >  			 * killed by the oom killer, don't call
> >  			 * igt_waitchildren because of the noise
> >  			 */
> This comment is no longer applicable, you should remove it.
> igt_waitchildren() is supposed to be for igt_fork-ed processes,
> so as you change the background fork to igt_helper_process type,
> this may be confusing if left in the code.

You are right, and my intention was like that but I missed it.
Unfortunately,=C2=A0the patch has been already applied=C2=A0to=C2=A0upstrea=
m.  But
that's=C2=A0not a problem,=C2=A0I'll prepare a follow-up patch=C2=A0with th=
at fixed.

Thanks,
Janusz


>=20
> After that change, feel free to add:
> Revieved-by: Krzysztof Karas <krzysztof.karas@intel.com>
>=20
> > -			wait(NULL);
> > +			igt_wait_helper(&smem_proc);
> >  		}
> >  	}
> >  	igt_fork_helper(&smem_loop[1]) {
> >  		while (!READ_ONCE(*lmem_done)) {
> > -			igt_fork(child, 1) {
> > +			struct igt_helper_process smem_proc =3D {};
> > +
> > +			igt_fork_helper(&smem_proc) {
> >  				int fd =3D drm_reopen_driver(i915);
> > =20
> >  				for (int pass =3D 0; pass < num_alloc; pass++) {
> > @@ -764,7 +768,7 @@ static void test_smem_oom(int i915,
> >  				}
> >  				drm_close_driver(fd);
> >  			}
> > -			wait(NULL);
> > +			igt_wait_helper(&smem_proc);
> >  		}
> >  	}
> > =20
> > --=20
> > 2.53.0
> >=20
