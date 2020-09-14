Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2252226972C
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Sep 2020 22:55:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E508F6E5B4;
	Mon, 14 Sep 2020 20:54:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13EDD6E5AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Sep 2020 20:54:57 +0000 (UTC)
Message-Id: <20200914204442.314368657@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1600116320;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=UaGFOx0lyNqbbywQXqvyvs0Y1K9lyW/4pia2fj5ZPrE=;
 b=LxVyssknLcIiK22e1VzZnztccpsvkjdmrlVivflVkb4m1ZrwdN3AJS4QHe2LRYerp90sAJ
 FBZoG2DfwbQyLh5+Je5k/MOKeTYBT9SxeXDAhVqSBFBtR1mPa8BkvdixL/Sl5PWnW+y1eh
 nx4wWlDBVQEky22eNZaKPVElhVOK81QF2qRuZvRM79l53oBJz4vrn8mh1ykUaNmr/A/XJ9
 iq96UI512gRnF7NnxMcXKGgpryjbDZ6Pv1B01aOcw47VTkiTw7inicM9yMZTycMZiF2Nyx
 JLgS4ixXfvGGE0BMGRuO7hVX609SwmYqDeG9Kt0vRFcwibvKMCS37rg3W5/NbQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1600116320;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:  references:references;
 bh=UaGFOx0lyNqbbywQXqvyvs0Y1K9lyW/4pia2fj5ZPrE=;
 b=l6KC1ghexQ/0a3aTO9H5kyQ+7ci5UCAGhzmXb+6nRV31u8qCgTIRNqW5jsSza0cUPDZdAV
 vVRo/rJwEu10BBDw==
Date: Mon, 14 Sep 2020 22:42:22 +0200
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
References: <20200914204209.256266093@linutronix.de>
MIME-Version: 1.0
Subject: [Intel-gfx] [patch 13/13] preempt: Remove PREEMPT_COUNT from Kconfig
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

All conditionals and irritations are gone.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 kernel/Kconfig.preempt |    3 ---
 1 file changed, 3 deletions(-)

--- a/kernel/Kconfig.preempt
+++ b/kernel/Kconfig.preempt
@@ -74,8 +74,5 @@ config PREEMPT_RT
 
 endchoice
 
-config PREEMPT_COUNT
-       def_bool y
-
 config PREEMPTION
        bool

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
