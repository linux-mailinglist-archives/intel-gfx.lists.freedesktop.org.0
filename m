Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KeCFKin/GmwSQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 16:54:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 839BA4EA9DB
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 16:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A85A10E26D;
	Thu,  7 May 2026 14:54:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bHL3/R3L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB6B310E26D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 14:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778165669; x=1809701669;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=jH26JiATEo9XrOOIYOZ72tWPPZMrm2lV1T25SKsNu+M=;
 b=bHL3/R3LToBaG0orXQm08/jyBnl97du4XkASG8i97g1qmUJ6kZP8a2s+
 YSzoyk6TuMDnxhrriljj5J3uA7N1a6LNTwSUBv1tZLXx04RJL3J1FBsrh
 10S+cZb884H8wRo1q+m/Iug7KIiuqBQnyrMkWAY3WYMkpZ2Bh/IMrpIjW
 d+Wym4+huQ5hTL1CYpuvA0QzEfXWMaIyOLT2BZraGRRADgj43N883iXMG
 ymjDRUmN90AKNQQP9XPjifq8rStoEMDIycIpeg/56H4y1BSk5n09ZrgCs
 QKf7QjKeNO7yzWFzH0GXt6bLj64OWW0lcoPh3Y8vCbi2DIU55sC7N8y9P w==;
X-CSE-ConnectionGUID: Nq/QVy0BQSibhGM9vhndPA==
X-CSE-MsgGUID: i1o5nSahQiqhnjIHlSpA0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79133447"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="79133447"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 07:54:29 -0700
X-CSE-ConnectionGUID: ap5tByj3R/qC7EmlrpJRuQ==
X-CSE-MsgGUID: ORL8HTGkTsSkOk/7VsTo0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="236401197"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.136])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 07:54:27 -0700
Message-ID: <cb8a871fe01b0c24687da73490a756466ac3755f.camel@linux.intel.com>
Subject: Re: [PATCH v9 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka	
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Date: Thu, 07 May 2026 16:54:24 +0200
In-Reply-To: <20260507142409.1913513-2-krzysztof.karas@intel.com>
References: <20260507142409.1913513-1-krzysztof.karas@intel.com>
 <20260507142409.1913513-2-krzysztof.karas@intel.com>
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
X-Rspamd-Queue-Id: 839BA4EA9DB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Action: no action

Hi Krzysztof,

On Thu, 2026-05-07 at 14:24 +0000, Krzysztof Karas wrote:
> Migration testing in i915 assumes current task's address space
> to allocate new userspace mapping and uses it without
> registering real user for that address space in mm_struct.
> On single NUMA node setups PCI probe executes in the same
> context as userspace process calling the test (i915_selftest
> from IGT), but when multiple nodes are available, the PCI code
> puts probe into a kernel workqueue. This switches execution to
> a kworker, which does not have its own address space in
> userspace and must borrow such memory from another process, so
> "current->active_mm" is unknown at the start of the test.
>=20
> It was observed that mm->mm_users would occasionally be 0
> or drop to 0 during the test due to short delay between
> scheduling and executing work in forked process, which reaped
> userspace mappings, further leading to failures upon reading
> from userland memory.
>=20
> Prevent this by adding a PID parameter to a trusted task, so its
> mm struct may be used if needed.
>=20
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> v7 (Andi):
>  * Add missing mm reference release on error path.
>=20
> v8:
>  * Keep reference to mm open for the duration of test for
>  readability. (Sebastian)
>  * Be paranoic and explicit about keeping the mm reference,
>  so we are **really** sure about userspace mappings not
>  diappearing.
>=20
> v9:
>  * Drop "Fixes" tag. (Andi)
>  * Revert to using a separate function for mm acquisition. (Andi)
>  * Keep kthread_use/unuse and mmget/mmput calls symmetric. (Janusz)
>=20
>  drivers/gpu/drm/i915/i915_selftest.h          |  1 +
>  .../gpu/drm/i915/selftests/i915_selftest.c    | 68 ++++++++++++++++++-
>  2 files changed, 68 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/=
i915_selftest.h
> index 72922028f4ba..e29ca298e7eb 100644
> --- a/drivers/gpu/drm/i915/i915_selftest.h
> +++ b/drivers/gpu/drm/i915/i915_selftest.h
> @@ -35,6 +35,7 @@ struct i915_selftest {
>  	unsigned long timeout_jiffies;
>  	unsigned int timeout_ms;
>  	unsigned int random_seed;
> +	unsigned int userspace_pid;
>  	char *filter;
>  	int mock;
>  	int live;
> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu=
/drm/i915/selftests/i915_selftest.c
> index 8460f0a70d04..1e8494bab14b 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -181,11 +181,48 @@ __wait_gsc_huc_load_completed(struct drm_i915_priva=
te *i915)
>  		pr_warn(DRIVER_NAME "Timed out waiting for huc load via GSC!\n");
>  }
> =20
> +static struct mm_struct *
> +get_mm(int u_pid_nr)
> +{
> +	struct pid *u_pid =3D find_get_pid(u_pid_nr);

What happens here if the st_userspace_pid module parameter is not provided?

> +	struct task_struct *task =3D NULL;
> +	struct mm_struct *mm =3D NULL;
> +
> +	if (!u_pid) {
> +		pr_warn("Could not find PID: %d\n", u_pid_nr);
> +		return NULL;
> +	}
> +
> +	task =3D get_pid_task(u_pid, PIDTYPE_PID);
> +	put_pid(u_pid);
> +	if (!task) {
> +		pr_warn("Could not find task for PID: %d\n", u_pid_nr);
> +		return NULL;
> +	}
> +
> +	if (task->flags & PF_KTHREAD) {
> +		pr_warn("Task not in userspace: %d\n", u_pid_nr);
> +		put_task_struct(task);
> +		return NULL;
> +	}
> +
> +	mm =3D get_task_mm(task);
> +	put_task_struct(task);
> +	if (!mm) {
> +		pr_warn("Could not find address space of task with PID: %d\n", u_pid_n=
r);
> +		return NULL;
> +	}
> +
> +	return mm;
> +}
> +
>  static int __run_selftests(const char *name,
>  			   struct selftest *st,
>  			   unsigned int count,
>  			   void *data)
>  {
> +	int u_pid_nr =3D i915_selftest.userspace_pid;
> +	struct mm_struct *mm =3D NULL;
>  	int err =3D 0;
> =20
>  	while (!i915_selftest.random_seed)
> @@ -201,14 +238,36 @@ static int __run_selftests(const char *name,
>  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=3D0x=
%x st_timeout=3D%u\n",
>  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
> =20
> +	/*
> +	 * If we are running in a kthread on a multi NUMA system and the user p=
assed
> +	 * a valid PID of a userspace task, then we may borrow its address spac=
e
> +	 * to prepare a safe environment for the mmap selftests.
> +	 */
> +	if (!current->mm) {

I think this condition should also check for a valid u_pid_nr.  To avoid=C2=
=A0
ambiguity, maybe the i915_selftest.userspace_pid attribute should be=C2=A0
initialized to a negative value by default (when not overwritten with the=
=C2=A0
corresponding module parameter).  There is no point in submitting any=C2=A0
warnings from here if the module parameter is not provided, I believe.

Other than that, LGTM.

Thanks,
Janusz

> +		mm =3D get_mm(u_pid_nr);
> +		if (mm) {
> +			kthread_use_mm(mm);
> +			if (unlikely(!current->mm)) {
> +				mmput(mm);
> +				mm =3D NULL;
> +				pr_warn("Could not set mm as current->mm\n");
> +			}
> +		}
> +	}
> +
>  	/* Tests are listed in order in i915_*_selftests.h */
>  	for (; count--; st++) {
>  		if (!st->enabled)
>  			continue;
> =20
>  		cond_resched();
> -		if (signal_pending(current))
> +		if (signal_pending(current)) {
> +			if (mm) {
> +				kthread_unuse_mm(mm);
> +				mmput_async(mm);
> +			}
>  			return -EINTR;
> +		}
> =20
>  		pr_info(DRIVER_NAME ": Running %s\n", st->name);
>  		if (data)
> @@ -226,6 +285,11 @@ static int __run_selftests(const char *name,
>  		 st->name, err))
>  		err =3D -1;
> =20
> +	if (mm) {
> +		kthread_unuse_mm(mm);
> +		mmput_async(mm);
> +	}
> +
>  	return err;
>  }
> =20
> @@ -507,6 +571,8 @@ void igt_hexdump(const void *buf, size_t len)
>  module_param_named(st_random_seed, i915_selftest.random_seed, uint, 0400=
);
>  module_param_named(st_timeout, i915_selftest.timeout_ms, uint, 0400);
>  module_param_named(st_filter, i915_selftest.filter, charp, 0400);
> +module_param_named(st_userspace_pid, i915_selftest.userspace_pid, uint, =
0400);
> +MODULE_PARM_DESC(st_userspace_pid, "For usage in tests that map userspac=
e memory and require address space with controllable lifetime.");
> =20
>  module_param_named_unsafe(mock_selftests, i915_selftest.mock, int, 0400)=
;
>  MODULE_PARM_DESC(mock_selftests, "Run selftests before loading, using mo=
ck hardware (0:disabled [default], 1:run tests then load driver, -1:run tes=
ts then leave dummy module)");
