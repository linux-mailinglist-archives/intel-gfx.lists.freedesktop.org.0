Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lDSiOdS8PWo/6AgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 01:42:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 714BE6C927A
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 01:42:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ERWk9tSf;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA92910E2C7;
	Thu, 25 Jun 2026 23:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D613E10E2BC;
 Thu, 25 Jun 2026 23:42:06 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by sea.source.kernel.org (Postfix) with ESMTP id A12BF40BF5;
 Thu, 25 Jun 2026 23:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DEF11F000E9;
 Thu, 25 Jun 2026 23:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782430926;
 bh=7rTeWGRC3qlYe3M/STi4OqC/ckIFBCcw0pmuKzcM+Ms=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To;
 b=ERWk9tSfkvUB3gpMoi+r8/npeOf+VTcK6LEcTQ+ydlZM4R04BnjE7NoxRlL2Y7oOp
 HwEILF3l/MEtXv4l1oapXtPAddR7mVIcAbFM+/NzAauaraVXtWjthqV/7Xr9jV0rmP
 iV/aTYKta1D6uPYRp+2hh9+GTlghECm8I505IDeByN96e5NV0eCKP7muVv5sc3JnQG
 O3K8AFvvCi6QK5nN6WRqQQQyuO2ODeP0WbSkJkHgCIFXVq1+HVSkMdVsvtq4txrVyP
 sezhtjuTBGj4tnd2fWtTX6Neebzlxe0449kNqUc5+ZQaEKrKtQDmJHaKYNRwLyfJcc
 gFiMuxnkCmkKg==
Date: Thu, 25 Jun 2026 16:41:58 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Steven Rostedt <rostedt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 John Ogness <john.ogness@linutronix.de>, Thomas Gleixner <tglx@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Julia Lawall <julia.lawall@inria.fr>,
 Yury Norov <yury.norov@gmail.com>, linux-doc@vger.kernel.org,
 linux-kbuild@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 dri-devel@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-rdma@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-nfs@vger.kernel.org, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v4 2/2] tracing: Remove trace_printk.h from kernel.h
Message-ID: <20260625234158.GA261868@ax162>
References: <20260625104007.041432666@kernel.org>
 <20260625104402.210473477@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260625104402.210473477@kernel.org>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,arm.com,efficios.com,linux-foundation.org,linutronix.de,infradead.org,inria.fr,gmail.com,lists.ozlabs.org,lists.freedesktop.org,st-md-mailman.stormreply.com,lists.infradead.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nathan@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 714BE6C927A

Hi Steve,

On Thu, Jun 25, 2026 at 06:40:09AM -0400, Steven Rostedt wrote:
> From: Steven Rostedt <rostedt@goodmis.org>
> 
> There have been complaints about trace_printk.h causing more build time
> for being in kernel.h if it changes. There is also an effort to clean up
> kernel.h to have it not include unneeded header files. Move trace_printk.h
> out of kernel.h and place it in the headers and C files that use it.
> 
> Link: https://lore.kernel.org/all/CAHk-=wikCBeVFjVXiY4o-oepdbjAoir5+TcAgtL12c4u1TpZLQ@mail.gmail.com/
> 
> Suggested-by: Yury Norov <yury.norov@gmail.com>
> Acked-by: Masami Hiramatsu (Google) <mhiramat@kernel.org>
> Signed-off-by: Steven Rostedt <rostedt@goodmis.org>

This patch breaks lib/test_context-analysis.c for me in several
configurations:

  In file included from lib/test_context-analysis.c:9:
  In file included from include/linux/local_lock.h:5:
  include/linux/local_lock_internal.h:46:2: error: use of undeclared identifier '_THIS_IP_'
     46 |         lock_map_acquire(&l->dep_map);
        |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  include/linux/lockdep.h:541:69: note: expanded from macro 'lock_map_acquire'
    541 | #define lock_map_acquire(l)                     lock_acquire_exclusive(l, 0, 0, NULL, _THIS_IP_)
        |                                                                                       ^~~~~~~~~
  In file included from lib/test_context-analysis.c:9:
  In file included from include/linux/local_lock.h:5:
  include/linux/local_lock_internal.h:53:2: error: use of undeclared identifier '_THIS_IP_'
     53 |         lock_map_acquire_try(&l->dep_map);
        |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  include/linux/lockdep.h:542:73: note: expanded from macro 'lock_map_acquire_try'
    542 | #define lock_map_acquire_try(l)                 lock_acquire_exclusive(l, 0, 1, NULL, _THIS_IP_)
        |                                                                                       ^~~~~~~~~
  In file included from lib/test_context-analysis.c:9:
  In file included from include/linux/local_lock.h:5:
  include/linux/local_lock_internal.h:62:2: error: use of undeclared identifier '_THIS_IP_'
     62 |         lock_map_release(&l->dep_map);
        |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  include/linux/lockdep.h:545:47: note: expanded from macro 'lock_map_release'
    545 | #define lock_map_release(l)                     lock_release(l, _THIS_IP_)
        |                                                                 ^~~~~~~~~
  3 errors generated.

The following diff resolves it for me, should I send it as a separate
patch or do you want to just fold it in with a note?

diff --git a/include/linux/lockdep.h b/include/linux/lockdep.h
index 621566345406..2301a701ffbb 100644
--- a/include/linux/lockdep.h
+++ b/include/linux/lockdep.h
@@ -10,6 +10,7 @@
 #ifndef __LINUX_LOCKDEP_H
 #define __LINUX_LOCKDEP_H
 
+#include <linux/instruction_pointer.h>
 #include <linux/lockdep_types.h>
 #include <linux/smp.h>
 #include <asm/percpu.h>
-- 
Cheers,
Nathan
