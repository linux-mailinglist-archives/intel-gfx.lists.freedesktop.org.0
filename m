Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5955CB57F45
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 16:40:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5C8B10E2EC;
	Mon, 15 Sep 2025 14:40:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="kJqEilup";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="u+YNkMxE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BBEA10E362
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 14:40:56 +0000 (UTC)
Date: Mon, 15 Sep 2025 16:40:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1757947254;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lni+I3buozORHBU99Fb6S2L5ArlJnPvanU1k2nG+bqs=;
 b=kJqEilupnjshBEyflsSxaQ1cYXo1HmvwEGZxE5Hry+3tMhFnVh3frgVMySXIVU3YA7sr/P
 ZmzsU0E7Km8Wp9l5bZDkkyDgnPFZnbLtBPRK/3LI31uDYiDIGpPjLv9wsR2eeUTNRRAX//
 dmNhtGH6hrZaFy0o25aqc/JiLREHt/y5ZcTdXzlyLdSjRzpWF1ajC/tWXeGrJKOz1r4JdJ
 O+HZHd0cB6caRbdRPYpFuFCDeIfE27yuCYcWeSk2ELWrhiOAF7HeL/2G+EZODCQqXklj6A
 WbRdcD38CnfevP/TM/aX4fpES3ouPOth51eerceMkkYhcApyFTE2c/6EC96NyA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1757947254;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lni+I3buozORHBU99Fb6S2L5ArlJnPvanU1k2nG+bqs=;
 b=u+YNkMxEXUeLN4I2gvc5y9anOucA/bETagP+D7VWVq55ed12wCZJ5YaxLNDq/vrnZRM5c4
 1K1FhWVW76s3WjAg==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: pengdonglin <dolinux.peng@gmail.com>
Cc: tj@kernel.org, tony.luck@intel.com, jani.nikula@linux.intel.com,
 ap420073@gmail.com, jv@jvosburgh.net, freude@linux.ibm.com,
 bcrl@kvack.org, trondmy@kernel.org, longman@redhat.com,
 kees@kernel.org, linux-kernel@vger.kernel.org,
 linux-rt-devel@lists.linux.dev, linux-nfs@vger.kernel.org,
 linux-aio@kvack.org, linux-fsdevel@vger.kernel.org,
 linux-security-module@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-acpi@vger.kernel.org,
 linux-s390@vger.kernel.org, cgroups@vger.kernel.org,
 Hillf Danton <hdanton@sina.com>, "Paul E . McKenney" <paulmck@kernel.org>,
 pengdonglin <pengdonglin@xiaomi.com>
Subject: Re: [PATCH v2] rcu: Remove redundant rcu_read_lock/unlock() in
 spin_lock critical sections
Message-ID: <20250915144052.VHYlgilw@linutronix.de>
References: <20250915134729.1801557-1-dolinux.peng@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250915134729.1801557-1-dolinux.peng@gmail.com>
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

On 2025-09-15 21:47:29 [+0800], pengdonglin wrote:
> From: pengdonglin <pengdonglin@xiaomi.com>
> 
> Per Documentation/RCU/rcu_dereference.rst [1], since Linux 4.20's RCU
> consolidation [2][3], RCU read-side critical sections include:
>   - Explicit rcu_read_lock()
>   - BH/interrupt/preemption-disabling regions
>   - Spinlock critical sections (including CONFIG_PREEMPT_RT kernels [4])
> 
> Thus, explicit rcu_read_lock()/unlock() calls within spin_lock*() regions are redundant.
> This patch removes them, simplifying locking semantics while preserving RCU protection.
> 
> [1] https://elixir.bootlin.com/linux/v6.17-rc5/source/Documentation/RCU/rcu_dereference.rst#L407
> [2] https://lore.kernel.org/lkml/20180829222021.GA29944@linux.vnet.ibm.com/
> [3] https://lwn.net/Articles/777036/
> [4] https://lore.kernel.org/lkml/6435833a-bdcb-4114-b29d-28b7f436d47d@paulmck-laptop/

What about something like this:

  Since commit a8bb74acd8efe ("rcu: Consolidate RCU-sched update-side
  function definitions") there is no difference between rcu_read_lock(),
  rcu_read_lock_bh() and rcu_read_lock_sched() in terms of RCU read
  section and the relevant grace period. That means that spin_lock(),
  which implies rcu_read_lock_sched(), also implies rcu_read_lock().

  There is no need no explicitly start a RCU read section if one has
  already been started implicitly by spin_lock().

  Simplify the code and remove the inner rcu_read_lock() invocation.


The description above should make it clear what:
- the intention is
- the proposed solution to it and why it is correct.

You can't send a patch like this. You need to split it at the very least
by subsystem. The networking bits need to follow to follow for instance
   Documentation/process/maintainer-netdev.rst

and so on.

Sebastian
