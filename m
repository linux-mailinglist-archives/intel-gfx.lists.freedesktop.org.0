Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAFbEvqW12lNQAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 14:09:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A89593CA2CB
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 14:09:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E973B10E7D7;
	Thu,  9 Apr 2026 12:09:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d/Gn3ehz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2197F10E7D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 12:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775736567; x=1807272567;
 h=message-id:subject:from:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=rmPV6+YKa7hn84Qjgcw54T9MVNN0RRPpL2fS68Rg7G4=;
 b=d/Gn3ehzuwajAXXsv0A9lxE41boAG3KLWdDAR2QKZpw7iN4v4ghyS+GP
 AHZoXDqz9HFUILB60xyM50pIGg+ST/9/KDTCVAd7Nekfu49ZWve/YjMnx
 fxmnMyQ+skRf1N0oDBwBICzj+VWGEmjNreE25X79WPSOZrKyJPHFcKbkJ
 IuZFyk+s5GcvUVsMpYigJYKuDJghl6QhTkpd8gzzHGpP/QWID+B46kWZV
 UzpM6IIjbeptl2Cfsac1Pla4Ktv8hROuWDMTnPFbj0Bk0MXuOj+7G/x5k
 EEcRNSuB2oQ8vb+M3E2LgnwTNihCXZg1r9QyoSThoiULi64uD3GphtoPs w==;
X-CSE-ConnectionGUID: Gw0ie248RFOV3WkCoHn/Yw==
X-CSE-MsgGUID: SV8WwOGeRKauC1bt5N78OQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="76858834"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="76858834"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 05:09:26 -0700
X-CSE-ConnectionGUID: cWp0GOKOTF+zRQZa3fOEwg==
X-CSE-MsgGUID: 3Vgt785UQvmHCkvxqfsVzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="230424131"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.83])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 05:09:25 -0700
Message-ID: <6bf5ddf0441044f3ba94218efc891cf7e11d8a84.camel@linux.intel.com>
Subject: Re: [RFC v5 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>, 
 intel-gfx@lists.freedesktop.org
Cc: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka	
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Date: Thu, 09 Apr 2026 14:09:22 +0200
In-Reply-To: <20260409080825.2191535-2-krzysztof.karas@intel.com>
References: <20260409080825.2191535-1-krzysztof.karas@intel.com>
 <20260409080825.2191535-2-krzysztof.karas@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url,linux.intel.com:mid]
X-Rspamd-Queue-Id: A89593CA2CB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

On Thu, 2026-04-09 at 08:08 +0000, Krzysztof Karas wrote:
> Migration testing in i915 assumes current task's address space
> to allocate new userspace mapping and uses it without
> registering real user for that address space in mm_struct.
> On single NUMA node setups PCI probe executes in the same
> context as userspace process calling the test (i915_selftest
> from IGT), but when multiple nodes are available, the PCI code
> puts probe into a kernel workqueue. This switches execution in
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
> Fixes: 34b1c1c71d37 ("i915/selftest/igt_mmap: let mmap tests run in kthre=
ad")
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> v2 (Janusz):
>  * Reword and shorten commit message to be more precise.
>  * Reorder variable declarations to follow upside down christmas
>  tree style.
>=20
> v3 (Andi):
>  * Prevent PID and mm leaks.
>  * Remove a flag and use mm pointer to determine whether to
>  release references to the memory.
>=20
> v4:
>  * Revert !current->mm check. (Janusz, Sebastian)
>  * Drop refernce to mm sooner. (Janusz)
>  * Ensure kthread_use_mm did its job. (Janusz)
>=20
> v5 (Janusz):
>  * Remove missing PID warning.
>=20
>  drivers/gpu/drm/i915/i915_selftest.h          |  1 +
>  .../gpu/drm/i915/selftests/i915_selftest.c    | 43 +++++++++++++++++++
>  2 files changed, 44 insertions(+)
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
> index 8460f0a70d04..2c169148c053 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -186,6 +186,8 @@ static int __run_selftests(const char *name,
>  			   unsigned int count,
>  			   void *data)
>  {
> +	int u_pid_nr =3D i915_selftest.userspace_pid;
> +	struct mm_struct *mm =3D NULL;
>  	int err =3D 0;
> =20
>  	while (!i915_selftest.random_seed)
> @@ -201,6 +203,42 @@ static int __run_selftests(const char *name,
>  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=3D0x=
%x st_timeout=3D%u\n",
>  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
> =20
> +	/**
> +	 * If we are running in a kthread on a multi NUMA system and the user p=
assed
> +	 * a valid PID of a userspace task, then we may borrow its address spac=
e
> +	 * to prepare a safe environment for the mmap selftests.
> +	 */
> +	if (!current->mm) {

Please extend this condition over u_pid_nr actually provided by a user
(not 0?), otherwise we will be trying to get current->mm of a process
with default i915_selftest.userspace_pid and submitting a warning if
not successful.

Thanks,
Janusz

> +		struct pid *u_pid =3D find_get_pid(u_pid_nr);
> +		struct task_struct *task;
> +
> +		if (!u_pid) {
> +			pr_warn("Could not find PID: %d\n", u_pid_nr);
> +			goto run_tests;
> +		}
> +
> +		task =3D get_pid_task(u_pid, PIDTYPE_PID);
> +		put_pid(u_pid);
> +		if (!task) {
> +			pr_warn("Could not find userspace task for PID: %d\n", u_pid_nr);
> +			goto run_tests;
> +		}
> +
> +		mm =3D get_task_mm(task);
> +		put_task_struct(task);
> +		if (!mm) {
> +			pr_warn("Could not find address space of task with PID: %d\n", u_pid_=
nr);
> +			goto run_tests;
> +		}
> +
> +		kthread_use_mm(mm);
> +		mmput_async(mm);
> +		if (unlikely(!current->mm)) {
> +			pr_warn("Could not set mm as current->mm\n");
> +		}
> +	}
> +
> +run_tests:
>  	/* Tests are listed in order in i915_*_selftests.h */
>  	for (; count--; st++) {
>  		if (!st->enabled)
> @@ -226,6 +264,9 @@ static int __run_selftests(const char *name,
>  		 st->name, err))
>  		err =3D -1;
> =20
> +	if (mm)
> +		kthread_unuse_mm(mm);
> +
>  	return err;
>  }
> =20
> @@ -507,6 +548,8 @@ void igt_hexdump(const void *buf, size_t len)
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
