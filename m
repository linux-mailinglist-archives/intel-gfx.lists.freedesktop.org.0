Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B74D269732
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 22:55:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA656E5BF;
	Mon, 14 Sep 2020 20:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137BD6E5A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 20:54:57 +0000 (UTC)
Message-Id: <20200914204440.969090025@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1600116305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=sKqpUZgQTSsofOfA1QdAWY2+LBfcprxU0W9PCOpQ7JY=;
 b=uO+ld7WSpQY4vI69jsCu6Pz2RE8hrYv0Gf5wXsXRpBHLrOwLdq1mTBXH5kF9EQzLVjQ8dE
 L9nryl5hXhHp4GAEJYk/MN1jCD5uAR0Lc9CYUCyrB5iaNdnDjumEicqwlc1xyf56QorUoO
 uuiL35aqGp53wHsl6QrGtxfrGdDGxJVoXaT9mQ9NIlwuCv++BBc71raPpS2ikuywEKDnnN
 zT0iPxwQe8ky13mLBUJaRhmhYsg+53xaAsyMbRHht54GnYUMN6nTgx9WKPIo86mWiJiR3V
 E0z51mP0R5IBbmjI9Fx+cm/iN3YTH1Tg0+XL+eAlcW12YKEEbMjB3cccf0P+yQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1600116305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=sKqpUZgQTSsofOfA1QdAWY2+LBfcprxU0W9PCOpQ7JY=;
 b=kFv5VCuwJvLbfOKz3oy8dhCG/DCPgG09EZhdEaXg5ZPKl5YxMOg851zb3lfo1duSkOyL7R
 vZCR4sfvPRoaC/AQ==
Date: Mon, 14 Sep 2020 22:42:10 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200914204209.256266093@linutronix.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [patch 01/13] lib/debug: Remove pointless
 ARCH_NO_PREEMPT dependencies
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
 rcu@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org, Richard Henderson <rth@twiddle.net>,
 Chris Zankel <chris@zankel.net>, Max Filippov <jcmvbkbc@gmail.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>, linux-alpha@vger.kernel.org,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Daniel Bristot de Oliveira <bristot@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ARCH_NO_PREEMPT disables the selection of CONFIG_PREEMPT_VOLUNTARY and
CONFIG_PREEMPT, but architectures which set this config option still
support preempt count for hard and softirq accounting.

There is absolutely no reason to prevent lockdep from using the preempt
counter nor is there a reason to prevent the enablement of
CONFIG_DEBUG_ATOMIC_SLEEP on such architectures.

Remove the dependencies, which affects ALPHA, HEXAGON, M68K and UM.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Richard Henderson <rth@twiddle.net>
Cc: Ivan Kokshaysky <ink@jurassic.park.msu.ru>
Cc: Matt Turner <mattst88@gmail.com>
Cc: linux-alpha@vger.kernel.org
Cc: Jeff Dike <jdike@addtoit.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Cc: linux-um@lists.infradead.org
Cc: Brian Cain <bcain@codeaurora.org>
Cc: linux-hexagon@vger.kernel.org
Cc: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-m68k@lists.linux-m68k.org
---
 lib/Kconfig.debug |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -1161,7 +1161,7 @@ config PROVE_LOCKING
 	select DEBUG_RWSEMS
 	select DEBUG_WW_MUTEX_SLOWPATH
 	select DEBUG_LOCK_ALLOC
-	select PREEMPT_COUNT if !ARCH_NO_PREEMPT
+	select PREEMPT_COUNT
 	select TRACE_IRQFLAGS
 	default n
 	help
@@ -1323,7 +1323,6 @@ config DEBUG_ATOMIC_SLEEP
 	bool "Sleep inside atomic section checking"
 	select PREEMPT_COUNT
 	depends on DEBUG_KERNEL
-	depends on !ARCH_NO_PREEMPT
 	help
 	  If you say Y here, various routines which may sleep will become very
 	  noisy if they are called inside atomic sections: when a spinlock is

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
