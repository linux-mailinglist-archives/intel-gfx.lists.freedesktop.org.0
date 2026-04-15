Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHmEBV8P4GmzcAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 00:21:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F3F4088BC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2026 00:21:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08A0610E75E;
	Wed, 15 Apr 2026 22:21:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="PFJsM7Gb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BF2610E75E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 22:21:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 71FDF60120;
 Wed, 15 Apr 2026 22:21:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCF01C19424;
 Wed, 15 Apr 2026 22:21:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1776291673;
 bh=gJ/kN9wbwiF+63xjVNAKTASDc9WyMPMA3WVnh7UUX+U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PFJsM7Gb/tnQRFRk13ruZNbPIXS9peNhkYMOfol4h7SS663t2y/Q1ELnvS07EmR7/
 977+nNBNYKuH8mhZu/faa/317avWdjgjl/HvA3Ec5tCHZx/cF4i1aqwHZfkxK69MON
 cbTH1juVuYnCE+p0F1bokFc4lLWKeHJ6EaVRMB1MOxvAPeB08qLuCyKlTIqirMKGGl
 akoWdCcXdrEowRk4ACpgsOPf6fn37607MC7lUw6CxZknvYWOBuQ+PQwrKedD92KFXh
 tsY65AAJYju3IsovszbNKSZBQs5t9/vLZGJtSwxXFovoqH9Oj20OiCpHPeBJDiVrgX
 pZ81sCyukU7zQ==
Date: Thu, 16 Apr 2026 00:21:10 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH v6 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Message-ID: <aeANlr7LDN9GjXn3@zenone.zhora.eu>
References: <20260415092111.2767839-1-krzysztof.karas@intel.com>
 <20260415092111.2767839-2-krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260415092111.2767839-2-krzysztof.karas@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.karas@intel.com,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[andi.shyti@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 95F3F4088BC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Krzysztof,

...

> @@ -201,6 +238,21 @@ static int __run_selftests(const char *name,
>  	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
>  		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
>  
> +	/**
> +	 * If we are running in a kthread on a multi NUMA system and the user passed
> +	 * a valid PID of a userspace task, then we may borrow its address space
> +	 * to prepare a safe environment for the mmap selftests.
> +	 */
> +	if (!current->mm && u_pid_nr) {
> +		mm = get_mm(u_pid_nr);
> +		if (mm) {
> +			kthread_use_mm(mm);
> +			mmput_async(mm);
> +			if (unlikely(!current->mm))
> +				pr_warn("Could not set mm as current->mm\n");
> +		}
> +	}
> +
>  	/* Tests are listed in order in i915_*_selftests.h */
>  	for (; count--; st++) {

In this loop you have a few returns and we skip the mm cleanup.

Andi

>  		if (!st->enabled)
> @@ -226,6 +278,9 @@ static int __run_selftests(const char *name,
>  		 st->name, err))
>  		err = -1;
>  
> +	if (mm)
> +		kthread_unuse_mm(mm);
> +
>  	return err;
>  }
