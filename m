Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cN6rGaQr1Wli1wcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 18:07:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F463B1809
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 18:06:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B329310E489;
	Tue,  7 Apr 2026 16:06:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bZBmzlRQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF26A10E08E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2026 16:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775578017; x=1807114017;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rySmLEA1OPkjYkU+QLIHd7tTIJEhNSF6F5pFI3stWQk=;
 b=bZBmzlRQLVQxMnq8ClLwL9DBsCUDgZWKsxrN96ACWP6rPvmg+VM1qkji
 ZSm6kgFrOmQcneiVg3FiAcDmcsJJKM3Q1g+YaYJD4KcP0DSC2Iyo2BfWi
 DW6YHkyQORRmJ/6GNXWqhLgvd1UAP25n4hVuCc8zf1kpHixnRW8Tixkkk
 AlPLeO+U36tG51NXD4l5gV0ErzxjG0pDqOW3M+eTlcG5SZWcf1uPUbrgv
 kUap62MOkesewqSha40a/dPoy/PuPkk9KnOOzuFhiiUX6kAkmx5ZCh+QT
 LyQOe78pBGV0IHRp9eRm3/8ZjE3P1ODbfLHJcybseYxQu61xG0meuSIjV g==;
X-CSE-ConnectionGUID: 9rj5HsifTqmLC+iSXbKp5w==
X-CSE-MsgGUID: /FFIMhQAR3WexamGAcs3+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="87996125"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="87996125"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 09:06:56 -0700
X-CSE-ConnectionGUID: Go91l2OcRq+cS2CAZz49Iw==
X-CSE-MsgGUID: 47C/uHN7SQmHYmauRQ5CFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="227197159"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.215])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 09:06:54 -0700
Date: Tue, 7 Apr 2026 18:06:52 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com,
 krzysztof.karas@intel.com
Subject: Re: [PATCH] drm/i915/gt: fix refcount underflow in
 intel_engine_park_heartbeat
Message-ID: <adUrnBEu08c27e6S@ashyti-mobl2.lan>
References: <d4c1c14255688dd07cc8044973c4f032a8d1559e.1775038106.git.sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d4c1c14255688dd07cc8044973c4f032a8d1559e.1775038106.git.sebastian.brzezinka@intel.com>
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.brzezinka@intel.com,m:andi.shyti@linux.intel.com,m:krzysztof.karas@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andi.shyti@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: C2F463B1809
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Sebastian,

On Wed, Apr 01, 2026 at 12:10:07PM +0200, Sebastian Brzezinka wrote:
> A use-after-free / refcount underflow is possible when the heartbeat
> worker and intel_engine_park_heartbeat() race to release the same
> engine->heartbeat.systole request.
> 
> The heartbeat worker reads engine->heartbeat.systole and calls
> i915_request_put() on it when the request is complete, but clears
> the pointer in a separate, non-atomic step. Concurrently, a request
> retirement on another CPU can drop the engine wakeref to zero, triggering
> __engine_park() -> intel_engine_park_heartbeat(). If the heartbeat
> timer is pending at that point, cancel_delayed_work() returns true and
> intel_engine_park_heartbeat() reads the stale non-NULL systole pointer
> and calls i915_request_put() on it again, causing a refcount underflow:
> 
> ```
> <4> [487.221889] Workqueue: i915-unordered engine_retire [i915]
> <4> [487.222640] RIP: 0010:refcount_warn_saturate+0x68/0xb0
> ...
> <4> [487.222707] Call Trace:
> <4> [487.222711]  <TASK>
> <4> [487.222716]  intel_engine_park_heartbeat.part.0+0x6f/0x80 [i915]
> <4> [487.223115]  intel_engine_park_heartbeat+0x25/0x40 [i915]
> <4> [487.223566]  __engine_park+0xb9/0x650 [i915]
> <4> [487.223973]  ____intel_wakeref_put_last+0x2e/0xb0 [i915]
> <4> [487.224408]  __intel_wakeref_put_last+0x72/0x90 [i915]
> <4> [487.224797]  intel_context_exit_engine+0x7c/0x80 [i915]
> <4> [487.225238]  intel_context_exit+0xf1/0x1b0 [i915]
> <4> [487.225695]  i915_request_retire.part.0+0x1b9/0x530 [i915]
> <4> [487.226178]  i915_request_retire+0x1c/0x40 [i915]
> <4> [487.226625]  engine_retire+0x122/0x180 [i915]
> <4> [487.227037]  process_one_work+0x239/0x760
> <4> [487.227060]  worker_thread+0x200/0x3f0
> <4> [487.227068]  ? __pfx_worker_thread+0x10/0x10
> <4> [487.227075]  kthread+0x10d/0x150
> <4> [487.227083]  ? __pfx_kthread+0x10/0x10
> <4> [487.227092]  ret_from_fork+0x3d4/0x480
> <4> [487.227099]  ? __pfx_kthread+0x10/0x10
> <4> [487.227107]  ret_from_fork_asm+0x1a/0x30
> <4> [487.227141]  </TASK>
> ```
> 
> Fix this by replacing the non-atomic pointer read + separate clear with
> xchg() in both racing paths. xchg() is a single indivisible hardware
> instruction that atomically reads the old pointer and writes NULL. This
> guarantees only one of the two concurrent callers obtains the non-NULL
> pointer and performs the put, the other gets NULL and skips it.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/work_items/15880
> Fixes: 058179e72e09 ("drm/i915/gt: Replace hangcheck by heartbeats")
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

merged to drm-intel-gt-next.

Thanks,
Andi
