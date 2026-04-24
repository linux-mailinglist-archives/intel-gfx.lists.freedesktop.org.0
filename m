Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIQVEjVS62nkKwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 13:21:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5210B45DA6F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 13:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F9110E2A2;
	Fri, 24 Apr 2026 11:21:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fUgWKwRA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D4610F509
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2026 11:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777029680; x=1808565680;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=mWY7lVV9hSzf5gmmVg2HEncM4CgVTjX2ZmqvLDicxcI=;
 b=fUgWKwRAKGqhA/R6E3ZN3xp7CWodR4hmn0WaxVE1YCfno79kRQsTNh4G
 Y8Rz8TtESlxU2XGDLNfaKatVe6Mc085gSaXRVnHOgXwMgjE5QC1X9TKbr
 q/gO83SbvirJ2Ouo4Yqg265xCs00OUp5isWNPcwvm4zTHaX8t3AHzDVjK
 UIYP4cDcOzU35Sxn/6TjIv3R+I1if7SsmTxr4SIBnKF2UNl2aSRxbCU6H
 q4MScql/PPepQu9ZuvwSd5ZA1NJGJBWVNjw74GZdD6/z1CSf5UUyyaEW8
 fayHu5pOsrz9fgEHaYO/RnnuVfkNjZdSG/039M15nhZDtQaf8rbNOkmbo Q==;
X-CSE-ConnectionGUID: c8sYSyQVTEOsg2ymFdRdHg==
X-CSE-MsgGUID: DCE0e1o7ROq8ODZHZoQKtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="100661361"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="100661361"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 04:21:20 -0700
X-CSE-ConnectionGUID: wTZ4ozy1TVSnURF1uF+n3w==
X-CSE-MsgGUID: Nyg+ZzacS2mnAxpcnhVcbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="226392060"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.91])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 04:21:19 -0700
Message-ID: <59607b4d3aac287185bde19307610455879c8a17.camel@linux.intel.com>
Subject: Re: [PATCH v7 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Date: Fri, 24 Apr 2026 13:21:16 +0200
In-Reply-To: <DI1AUT3OG3YM.1KQREBT065NFV@intel.com>
References: <20260421061716.3341529-1-krzysztof.karas@intel.com>
 <20260421061716.3341529-2-krzysztof.karas@intel.com>
 <DI1AUT3OG3YM.1KQREBT065NFV@intel.com>
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
X-Rspamd-Queue-Id: 5210B45DA6F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5]

Hi,

On Fri, 2026-04-24 at 12:06 +0200, Sebastian Brzezinka wrote:
> Hi Krzysztof,
>=20
> On Tue Apr 21, 2026 at 8:17 AM CEST, Krzysztof Karas wrote:
> > Migration testing in i915 assumes current task's address space
> > to allocate new userspace mapping and uses it without
> > registering real user for that address space in mm_struct.
> > On single NUMA node setups PCI probe executes in the same
> > context as userspace process calling the test (i915_selftest
> > from IGT), but when multiple nodes are available, the PCI code
> > puts probe into a kernel workqueue. This switches execution to
> > a kworker, which does not have its own address space in
> > userspace and must borrow such memory from another process, so
> > "current->active_mm" is unknown at the start of the test.
> >=20
> > It was observed that mm->mm_users would occasionally be 0
> > or drop to 0 during the test due to short delay between
> > scheduling and executing work in forked process, which reaped
> > userspace mappings, further leading to failures upon reading
> > from userland memory.
> >=20
> > Prevent this by adding a PID parameter to a trusted task, so its
> > mm struct may be used if needed.
> >=20
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
> > Fixes: 34b1c1c71d37 ("i915/selftest/igt_mmap: let mmap tests run in kth=
read")
> > Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> > ---
> > v5 (Janusz):
> >  * Remove missing PID warning.
> >=20
> > v6:
> >  * Move mm handling to a separate function. (Andi)
> >  * Validate user provided PID. (Janusz)
> >=20
> > v7 (Andi):
> >  * Add missing mm reference release on error path.
> >=20
> >  drivers/gpu/drm/i915/i915_selftest.h          |  1 +
> >  .../gpu/drm/i915/selftests/i915_selftest.c    | 62 ++++++++++++++++++-
> >  2 files changed, 62 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i91=
5/i915_selftest.h
> > index 72922028f4ba..e29ca298e7eb 100644
> > --- a/drivers/gpu/drm/i915/i915_selftest.h
> > +++ b/drivers/gpu/drm/i915/i915_selftest.h
> > @@ -35,6 +35,7 @@ struct i915_selftest {
> >  	unsigned long timeout_jiffies;
> >  	unsigned int timeout_ms;
> >  	unsigned int random_seed;
> > +	unsigned int userspace_pid;
> >  	char *filter;
> >  	int mock;
> >  	int live;
> > diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/g=
pu/drm/i915/selftests/i915_selftest.c
> > index 8460f0a70d04..71f61328e14b 100644
> > --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> > +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> > @@ -181,11 +181,48 @@ __wait_gsc_huc_load_completed(struct drm_i915_pri=
vate *i915)
> >  		pr_warn(DRIVER_NAME "Timed out waiting for huc load via GSC!\n");
> >  }
> > =20
> > +static struct mm_struct *
> > +get_mm(int u_pid_nr)
> > +{
> > +	struct pid *u_pid =3D find_get_pid(u_pid_nr);
> > +	struct task_struct *task;
> > +	struct mm_struct *mm;
> > +
> > +	if (!u_pid) {
> > +		pr_warn("Could not find PID: %d\n", u_pid_nr);
> > +		return NULL;
> > +	}
> > +
> > +	task =3D get_pid_task(u_pid, PIDTYPE_PID);
> > +	put_pid(u_pid);
> > +	if (!task) {
> > +		pr_warn("Could not find task for PID: %d\n", u_pid_nr);
> > +		return NULL;
> > +	}
> > +
> > +	if (task->flags & PF_KTHREAD) {
> > +		pr_warn("Task not in userspace: %d\n", u_pid_nr);
> > +		put_task_struct(task);
> > +		return NULL;
> > +	}
> > +
> > +	mm =3D get_task_mm(task);
> > +	put_task_struct(task);
> > +	if (!mm) {
> > +		pr_warn("Could not find address space of task with PID: %d\n", u_pid=
_nr);
> > +		return NULL;
> > +	}
> > +
> > +	return mm;
> > +}
> > +
> >  static int __run_selftests(const char *name,
> >  			   struct selftest *st,
> >  			   unsigned int count,
> >  			   void *data)
> >  {
> > +	int u_pid_nr =3D i915_selftest.userspace_pid;
> > +	struct mm_struct *mm =3D NULL;
> >  	int err =3D 0;
> > =20
> >  	while (!i915_selftest.random_seed)
> > @@ -201,14 +238,32 @@ static int __run_selftests(const char *name,
> >  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=3D=
0x%x st_timeout=3D%u\n",
> >  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
> > =20
> > +	/**
> I=E2=80=99m not entirely sure, but ** might be used for documentation com=
ments.
>=20
> > +	 * If we are running in a kthread on a multi NUMA system and the user=
 passed
> > +	 * a valid PID of a userspace task, then we may borrow its address sp=
ace
> > +	 * to prepare a safe environment for the mmap selftests.
> > +	 */
> > +	if (!current->mm && u_pid_nr) {
> > +		mm =3D get_mm(u_pid_nr);
> > +		if (mm) {
> > +			kthread_use_mm(mm);
> > +			mmput_async(mm);
> I don=E2=80=99t understand the use of mmput_async here. Why are we callin=
g
> mmput at this point? You keep using this mm, so the refcount can=E2=80=99=
t
> actually drop. I would rather expect a pattern like kthread_unuse_mm
>  -> mmput_async ...

Since that approach was suggested by me, let me comment on that. AFAICU,=C2=
=A0
we get a temporary=C2=A0reference to mm with get_mm() in order to call=C2=
=A0
kthread_use_mm(mm)=C2=A0safely. =C2=A0I expected kthread_use_mm() getting a=
nother=C2=A0
reference to mm itself,=C2=A0put on _unuse_mm, then our temporary reference=
 no=C2=A0
longer needed.

Thanks,
Janusz

>=20
> > +			if (unlikely(!current->mm))
> > +				pr_warn("Could not set mm as current->mm\n");
> > +		}
> > +	}
> > +
> >  	/* Tests are listed in order in i915_*_selftests.h */
> >  	for (; count--; st++) {
> >  		if (!st->enabled)
> >  			continue;
> > =20
> >  		cond_resched();
> > -		if (signal_pending(current))
> > +		if (signal_pending(current)) {
> > +			if (mm)
> > +				kthread_unuse_mm(mm);
> ... here
> >  			return -EINTR;
> > +		}
> > =20
> >  		pr_info(DRIVER_NAME ": Running %s\n", st->name);
> >  		if (data)
> > @@ -226,6 +281,9 @@ static int __run_selftests(const char *name,
> >  		 st->name, err))
> >  		err =3D -1;
> > =20
> > +	if (mm)
> > +		kthread_unuse_mm(mm);
> ... and here
