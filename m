Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8D2wDbpGzWkkbAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 18:24:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0EB37DE0F
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Apr 2026 18:24:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C4F510EC46;
	Wed,  1 Apr 2026 16:24:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="eelIgwJI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C414C10EDC5
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2026 16:24:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 94D8B4058C;
 Wed,  1 Apr 2026 16:24:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3D96C4CEF7;
 Wed,  1 Apr 2026 16:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1775060662;
 bh=lqTdHZwYeFsI1+zmhyxprzJXY8O2gRRc/Yt91P2q52g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eelIgwJIOW0AgztsOZkny2ASZvOw2hETbzf98hvYj90dYdaxQ0AClxmQDcjFBMhJL
 OIjGnVT9rFdDKPZRiyLg2dKpRrrKPudWfyZx03gTL+pcVxWIMQ5XUa2UzBkzksAI2C
 tUBwTGtBP4Q9dxK6E1y4DNEFYx3T3eBTrntvIRhbtMk3SzfkW5cqtRZ+kTZTeK8zis
 zwaE4KbUFI6JqDPO/c031YO+Mwt+r3yqqicyG6e8XBsshxfgR6pd14Y7wrYChv/yNn
 vGyZE9OahFF9MYX9O8x+iHGeWChxf8PtaHDt43luNHbaptLugLFrVp2kbJ6KxZ1Ydj
 aRyPZ7Zd+KAAg==
Date: Wed, 1 Apr 2026 18:24:17 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: [RFC v2 2/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Message-ID: <ac1AoWPGSRDwEXOE@zenone.zhora.eu>
References: <20260330102916.1158786-1-krzysztof.karas@intel.com>
 <20260330102916.1158786-3-krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260330102916.1158786-3-krzysztof.karas@intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Queue-Id: BA0EB37DE0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

...

> @@ -201,6 +204,39 @@ static int __run_selftests(const char *name,
>  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
>  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
>  
> +	/**
> +	 * If the user passed a valid PID of a userspace task, then we may borrow
> +	 * its address space to prepare a safe environment for the mmap selftests.
> +	 */
> +	if (!current->mm && u_pid_nr) {
> +		struct pid *u_pid = find_get_pid(u_pid_nr);

here you are leaking u_pid.

> +		struct task_struct *task;
> +
> +		if (!u_pid) {
> +			pr_warn("Could not find PID: %d\n", u_pid_nr);
> +			goto run_tests;
> +		}
> +
> +		task = get_pid_task(u_pid, PIDTYPE_PID);
> +		if (!task) {
> +			pr_warn("Could not find userspace task for PID: %d\n", u_pid_nr);
> +			goto run_tests;
> +		}
> +
> +		mm = get_task_mm(task);

here you are leaking mm.

> +		put_task_struct(task);
> +		if (!mm) {
> +			pr_warn("Could not find address space of task with PID: %d\n", u_pid_nr);
> +			goto run_tests;
> +		}
> +
> +		if (mmget_not_zero(mm)) {

you have already acquired mm.

> +			kthread_use_mm(mm);
> +			unuse_mm = true;
> +		}

how do you know that current->mm points to this mm?

> +	}
> +
> +run_tests:
>  	/* Tests are listed in order in i915_*_selftests.h */
>  	for (; count--; st++) {
>  		if (!st->enabled)
> @@ -226,6 +262,11 @@ static int __run_selftests(const char *name,
>  		 st->name, err))
>  		err = -1;
>  
> +	if (unuse_mm) {

you actually don't need unuse_mm, you can check directly out of
mm.

We are going towards the right direction.

Andi

> +		mmput_async(mm);
> +		kthread_unuse_mm(mm);
> +	}
> +
>  	return err;
>  }
>  
> -- 
> 2.43.0
> 
