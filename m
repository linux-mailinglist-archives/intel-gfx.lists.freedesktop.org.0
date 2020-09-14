Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C0626972B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 22:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 055436E5B6;
	Mon, 14 Sep 2020 20:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A0626E5B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 20:54:57 +0000 (UTC)
Message-Id: <20200914204441.794954043@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1600116314;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=7peXevktBYsFk34wm8L75T0nsPk5gnSvk+DWEgeI/Vw=;
 b=A1nP+uNHxXIHRSaQfo4YEEBXkNc5lEKqsa3e9ZF16Mjxoy2hyJe3jYIclstpFysB9+yhkl
 6BJmX4d0VGhUHfrqZ99YiKgnDDEKF/0G47GYpaJrPGTpN/QZTYqN5RoutXNpp3V1eagHEd
 1I8+FvO96pkUL+g/chBpkTP2STb2Yp9k9TlY1hsvNnP+5yKkzdcMXCCT5WYR0aFvr/f5Gb
 v882kTY7TgtIhZxNAl+4R3t6wwqFtSFu6vh6GWbJdLdgHmEJejAg+EXh6pguxew3F9cvUQ
 J0Q+f/McALfJaEP6IOZ2Ph7YeDaVLv5ly5xuP3c0lVjGvOu5v8C7SFXEDbJ1bg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1600116314;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=7peXevktBYsFk34wm8L75T0nsPk5gnSvk+DWEgeI/Vw=;
 b=zdd/Mm/JBQah2WSeC3g/P4gSriHqu9VTmesvYkyojBCblFCX+/r8LrnQYIfLtLeNfYCVhp
 m1SdTR/ofp2HUZDQ==
Date: Mon, 14 Sep 2020 22:42:17 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200914204209.256266093@linutronix.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [patch 08/13] sched: Clenaup PREEMPT_COUNT leftovers
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Lai Jiangshan <jiangshanlai@gmail.com>, dri-devel@lists.freedesktop.org,
 Ben Segall <bsegall@google.com>, linux-mm@kvack.org,
 linux-kselftest@vger.kernel.org, linux-hexagon@vger.kernel.org,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 Brian Cain <bcain@codeaurora.org>, Richard Weinberger <richard@nod.at>,
 Russell King <linux@armlinux.org.uk>, David Airlie <airlied@linux.ie>,
 Ingo Molnar <mingo@redhat.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Mel Gorman <mgorman@suse.de>, intel-gfx@lists.freedesktop.org,
 Matt Turner <mattst88@gmail.com>,
 Valentin Schneider <valentin.schneider@arm.com>, linux-xtensa@linux-xtensa.org,
 Shuah Khan <shuah@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>,
 Jeff Dike <jdike@addtoit.com>, linux-um@lists.infradead.org,
 Josh Triplett <josh@joshtriplett.org>, Steven Rostedt <rostedt@goodmis.org>,
 rcu@vger.kernel.org, Linus Torvalds <torvalds@linuxfoundation.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org, Richard Henderson <rth@twiddle.net>,
 Chris Zankel <chris@zankel.net>, Max Filippov <jcmvbkbc@gmail.com>,
 linux-m68k@lists.linux-m68k.org, linux-alpha@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Daniel Bristot de Oliveira <bristot@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CONFIG_PREEMPT_COUNT is now unconditionally enabled and will be
removed. Cleanup the leftovers before doing so.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Juri Lelli <juri.lelli@redhat.com>
Cc: Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dietmar Eggemann <dietmar.eggemann@arm.com>
Cc: Steven Rostedt <rostedt@goodmis.org>
Cc: Ben Segall <bsegall@google.com>
Cc: Mel Gorman <mgorman@suse.de>
Cc: Daniel Bristot de Oliveira <bristot@redhat.com>
---
 kernel/sched/core.c |    6 +-----
 lib/Kconfig.debug   |    1 -
 2 files changed, 1 insertion(+), 6 deletions(-)

--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -3706,8 +3706,7 @@ asmlinkage __visible void schedule_tail(
 	 * finish_task_switch() for details.
 	 *
 	 * finish_task_switch() will drop rq->lock() and lower preempt_count
-	 * and the preempt_enable() will end up enabling preemption (on
-	 * PREEMPT_COUNT kernels).
+	 * and the preempt_enable() will end up enabling preemption.
 	 */
 
 	rq = finish_task_switch(prev);
@@ -7311,9 +7310,6 @@ void __cant_sleep(const char *file, int
 	if (irqs_disabled())
 		return;
 
-	if (!IS_ENABLED(CONFIG_PREEMPT_COUNT))
-		return;
-
 	if (preempt_count() > preempt_offset)
 		return;
 
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -1320,7 +1320,6 @@ config DEBUG_LOCKDEP
 
 config DEBUG_ATOMIC_SLEEP
 	bool "Sleep inside atomic section checking"
-	select PREEMPT_COUNT
 	depends on DEBUG_KERNEL
 	help
 	  If you say Y here, various routines which may sleep will become very

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
