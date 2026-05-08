Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNuJMB+w/WmlhgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 11:42:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F774F45BD
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 11:42:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8FB10F408;
	Fri,  8 May 2026 09:42:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G6yQICOa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8D9410F3DC
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2026 09:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778233373; x=1809769373;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version:content-id;
 bh=AyCXfeFbzGPQM3PAZkfTkwKkh06UfQ4J56/GxMM/zV8=;
 b=G6yQICOahpEj6PljK6bgxxjy6t7k6lsvZibfI8AXD+GNOmyoiROEQsuq
 HkugfyBwiG8t2lm7y1TOnFc9EG28fGP2Sy3VJfIQs8//QPfVxlwJUIWMI
 ASkpw6MSdYg2PHfOjgnONhpRDbx8DWPouVITEZGD84rNXClvn4HM0KqoB
 CFeYoxD/L5IG5qTRshiyRhrIVG/ishyGF0nyGD1O2ISkl0+qcg7FP5gtP
 QP6J3+HYpJCQWIH5w1xRFYHcHwbDMJYSKfzQbRnh5q8jKg0yJDdXiwz8j
 DS4qTAb46hwXSv6A6OFZOt6paWOIB7mSMsqyj3Mkc9fBgpgqahPbD3dZD w==;
X-CSE-ConnectionGUID: nJQXkfInSw+PE7D2BwTpvQ==
X-CSE-MsgGUID: xv3bSiiuREu1yhF5RXnO9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="96623013"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="96623013"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 02:42:53 -0700
X-CSE-ConnectionGUID: 7ibu10pTT5ioIWr17YEljA==
X-CSE-MsgGUID: qpFaop1+TqS9paBFlNpY/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="241069133"
Received: from dev-417.igk.intel.com ([10.91.214.181])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 02:42:51 -0700
Date: Fri, 8 May 2026 11:42:47 +0200 (CEST)
From: =?ISO-8859-2?Q?Micha=B3_Grzelak?= <michal.grzelak@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>, 
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, 
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH v10 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
In-Reply-To: <20260508080214.1979686-2-krzysztof.karas@intel.com>
Message-ID: <5b6f8edf-5924-9f95-9479-337dbcaf0676@intel.com>
References: <20260508080214.1979686-1-krzysztof.karas@intel.com>
 <20260508080214.1979686-2-krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1383091444-1778232911=:541039"
Content-ID: <8983f4d7-e61a-c5de-d42b-090c4ee34ae6@intel.com>
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
X-Rspamd-Queue-Id: 28F774F45BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	CTYPE_MIXED_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+,1:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.grzelak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1383091444-1778232911=:541039
Content-Type: text/plain; CHARSET=ISO-8859-2; format=flowed
Content-Transfer-Encoding: 8BIT
Content-ID: <41ba73e8-cbc2-a32d-8eab-0e0dc688ff4f@intel.com>

Hi Krzysztof,

On Fri, 8 May 2026, Krzysztof Karas wrote:
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
>
> It was observed that mm->mm_users would occasionally be 0
> or drop to 0 during the test due to short delay between
> scheduling and executing work in forked process, which reaped
> userspace mappings, further leading to failures upon reading
> from userland memory.
>
> Prevent this by adding a PID parameter to a trusted task, so its
> mm struct may be used if needed.

nit: I think it will sound better with s/mm struct/mm_struct/.

>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
> v8:
> * Keep reference to mm open for the duration of test for
> readability. (Sebastian)
> * Be paranoic and explicit about keeping the mm reference,
> so we are **really** sure about userspace mappings not
> diappearing.

another nit: can we s/diappearing/disappearing/?

Other than that:
Reviewed-by: Micha³ Grzelak <michal.grzelak@intel.com>

BR,
Micha³

>
> v9:
> * Drop "Fixes" tag. (Andi)
> * Revert to using a separate function for mm acquisition. (Andi)
> * Keep kthread_use/unuse and mmget/mmput calls symmetric. (Janusz)
>
> v10:
> * Initialize PID variable to a negative value and check for
> user provided value. (Janusz)
>
> drivers/gpu/drm/i915/i915_selftest.h          |  1 +
> .../gpu/drm/i915/selftests/i915_selftest.c    | 75 ++++++++++++++++++-
> 2 files changed, 75 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
> index 72922028f4ba..e29ca298e7eb 100644
> --- a/drivers/gpu/drm/i915/i915_selftest.h
> +++ b/drivers/gpu/drm/i915/i915_selftest.h
> @@ -35,6 +35,7 @@ struct i915_selftest {
> 	unsigned long timeout_jiffies;
> 	unsigned int timeout_ms;
> 	unsigned int random_seed;
> +	unsigned int userspace_pid;
> 	char *filter;
> 	int mock;
> 	int live;
> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> index 8460f0a70d04..036328072e38 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -181,13 +181,57 @@ __wait_gsc_huc_load_completed(struct drm_i915_private *i915)
> 		pr_warn(DRIVER_NAME "Timed out waiting for huc load via GSC!\n");
> }
>
> +static struct mm_struct *
> +get_mm(int u_pid_nr)
> +{
> +	struct task_struct *task = NULL;
> +	struct mm_struct *mm = NULL;
> +	struct pid *u_pid = NULL;
> +
> +	if (u_pid_nr < 1)
> +		return NULL;
> +
> +	u_pid = find_get_pid(u_pid_nr);
> +	if (!u_pid) {
> +		pr_warn("Could not find PID: %d\n", u_pid_nr);
> +		return NULL;
> +	}
> +
> +	task = get_pid_task(u_pid, PIDTYPE_PID);
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
> +	mm = get_task_mm(task);
> +	put_task_struct(task);
> +	if (!mm) {
> +		pr_warn("Could not find address space of task with PID: %d\n", u_pid_nr);
> +		return NULL;
> +	}
> +
> +	return mm;
> +}
> +
> static int __run_selftests(const char *name,
> 			   struct selftest *st,
> 			   unsigned int count,
> 			   void *data)
> {
> +	struct mm_struct *mm = NULL;
> +	int u_pid_nr = -1;
> 	int err = 0;
>
> +	if (i915_selftest.userspace_pid)
> +		u_pid_nr = i915_selftest.userspace_pid;
> +
> 	while (!i915_selftest.random_seed)
> 		i915_selftest.random_seed = get_random_u32();
>
> @@ -201,14 +245,36 @@ static int __run_selftests(const char *name,
> 	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
> 		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
>
> +	/*
> +	 * If we are running in a kthread on a multi NUMA system and the user passed
> +	 * a valid PID of a userspace task, then we may borrow its address space
> +	 * to prepare a safe environment for the mmap selftests.
> +	 */
> +	if (!current->mm && u_pid_nr > 0) {
> +		mm = get_mm(u_pid_nr);
> +		if (mm) {
> +			kthread_use_mm(mm);
> +			if (unlikely(!current->mm)) {
> +				mmput(mm);
> +				mm = NULL;
> +				pr_warn("Could not set mm as current->mm\n");
> +			}
> +		}
> +	}
> +
> 	/* Tests are listed in order in i915_*_selftests.h */
> 	for (; count--; st++) {
> 		if (!st->enabled)
> 			continue;
>
> 		cond_resched();
> -		if (signal_pending(current))
> +		if (signal_pending(current)) {
> +			if (mm) {
> +				kthread_unuse_mm(mm);
> +				mmput_async(mm);
> +			}
> 			return -EINTR;
> +		}
>
> 		pr_info(DRIVER_NAME ": Running %s\n", st->name);
> 		if (data)
> @@ -226,6 +292,11 @@ static int __run_selftests(const char *name,
> 		 st->name, err))
> 		err = -1;
>
> +	if (mm) {
> +		kthread_unuse_mm(mm);
> +		mmput_async(mm);
> +	}
> +
> 	return err;
> }
>
> @@ -507,6 +578,8 @@ void igt_hexdump(const void *buf, size_t len)
> module_param_named(st_random_seed, i915_selftest.random_seed, uint, 0400);
> module_param_named(st_timeout, i915_selftest.timeout_ms, uint, 0400);
> module_param_named(st_filter, i915_selftest.filter, charp, 0400);
> +module_param_named(st_userspace_pid, i915_selftest.userspace_pid, uint, 0400);
> +MODULE_PARM_DESC(st_userspace_pid, "For usage in tests that map userspace memory and require address space with controllable lifetime.");
>
> module_param_named_unsafe(mock_selftests, i915_selftest.mock, int, 0400);
> MODULE_PARM_DESC(mock_selftests, "Run selftests before loading, using mock hardware (0:disabled [default], 1:run tests then load driver, -1:run tests then leave dummy module)");
> -- 
> 2.34.1
>
>
--8323329-1383091444-1778232911=:541039--
