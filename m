Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EE59B8EBD
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DA910E982;
	Fri,  1 Nov 2024 10:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="pW+zf7nx";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="OAUdZbzr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F98610E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:10 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387709;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wSeQQ+/UoF5zygXiJ8vWE36+Ix/J13zBcX6GURu7TTA=;
 b=pW+zf7nxpvKL293ERZvvkwqWdm8sTJU22dfYTvgmDpLaTBAjpODBvgHjspRQUpOxT2Xkk3
 wN7cUjgQB7Wzx+BfHqJpqfqnl3whMltT1B4R6JpdkAklNuv5fISyon0ClgYH1Mm8Datz0t
 OGuLRyqIKoCRXDm1GeLJ1z7j0HvEwG03s3jx320laE9UbmLIQUWvNk73I/RP22Wi8OO9BM
 bT+pgEONX7owIuipx8vPYVfYKLzOgbmi++QBfxZF208RvJjPlmzU05qTcvIbur1HpxU2Z4
 mzaQYDrdNV64NzCpPI4sMWDeEl8tCiO7YirWqaL8DeR60Rrz4hRbQa/pJzrAZw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387709;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wSeQQ+/UoF5zygXiJ8vWE36+Ix/J13zBcX6GURu7TTA=;
 b=OAUdZbzrqi7ivU7nui/YFiCV2Rtbq2Djbjl4fqTRc+FfLabBbIJupRYnsEzp3+vUNCOW58
 ubtuPIlXxGOv9PAw==
To: Anna-Maria Behnsen <anna-maria@linutronix.de>,
 Frederic Weisbecker <frederic@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Kees Cook <kees@kernel.org>, linux-kernel@vger.kernel.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, x86@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Christian Brauner <brauner@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, John Stultz <jstultz@google.com>,
 Nam Cao <namcao@linutronix.de>, Oliver Hartkopp <socketcan@hartkopp.net>
Subject: [RESEND PATCH v2 13/19] timers: Switch to use
 hrtimer_setup_sleeper_on_stack()
Date: Thu, 31 Oct 2024 16:14:27 +0100
Message-Id: <299c07f0f96af8ab3a7631b47b6ca22b06b20577.1730386209.git.namcao@linutronix.de>
In-Reply-To: <cover.1730386209.git.namcao@linutronix.de>
References: <cover.1730386209.git.namcao@linutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Fri, 01 Nov 2024 10:08:01 +0000
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

hrtimer_setup_sleeper_on_stack() replaces hrtimer_init_sleeper_on_stack()
to keep the naming convention consistent.

Convert the usage sites over to it. The conversion was done with
Coccinelle.

Signed-off-by: Nam Cao <namcao@linutronix.de>
---
 kernel/time/hrtimer.c       | 5 ++---
 kernel/time/sleep_timeout.c | 2 +-
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/kernel/time/hrtimer.c b/kernel/time/hrtimer.c
index 1d1f5c03673c..69430467a17d 100644
--- a/kernel/time/hrtimer.c
+++ b/kernel/time/hrtimer.c
@@ -2138,8 +2138,7 @@ static long __sched hrtimer_nanosleep_restart(struct =
restart_block *restart)
 	struct hrtimer_sleeper t;
 	int ret;
=20
-	hrtimer_init_sleeper_on_stack(&t, restart->nanosleep.clockid,
-				      HRTIMER_MODE_ABS);
+	hrtimer_setup_sleeper_on_stack(&t, restart->nanosleep.clockid, HRTIMER_MO=
DE_ABS);
 	hrtimer_set_expires_tv64(&t.timer, restart->nanosleep.expires);
 	ret =3D do_nanosleep(&t, HRTIMER_MODE_ABS);
 	destroy_hrtimer_on_stack(&t.timer);
@@ -2153,7 +2152,7 @@ long hrtimer_nanosleep(ktime_t rqtp, const enum hrtim=
er_mode mode,
 	struct hrtimer_sleeper t;
 	int ret =3D 0;
=20
-	hrtimer_init_sleeper_on_stack(&t, clockid, mode);
+	hrtimer_setup_sleeper_on_stack(&t, clockid, mode);
 	hrtimer_set_expires_range_ns(&t.timer, rqtp, current->timer_slack_ns);
 	ret =3D do_nanosleep(&t, mode);
 	if (ret !=3D -ERESTART_RESTARTBLOCK)
diff --git a/kernel/time/sleep_timeout.c b/kernel/time/sleep_timeout.c
index 3054e5232d20..dfe939f6e4ec 100644
--- a/kernel/time/sleep_timeout.c
+++ b/kernel/time/sleep_timeout.c
@@ -208,7 +208,7 @@ int __sched schedule_hrtimeout_range_clock(ktime_t *exp=
ires, u64 delta,
 		return -EINTR;
 	}
=20
-	hrtimer_init_sleeper_on_stack(&t, clock_id, mode);
+	hrtimer_setup_sleeper_on_stack(&t, clock_id, mode);
 	hrtimer_set_expires_range_ns(&t.timer, *expires, delta);
 	hrtimer_sleeper_start_expires(&t, mode);
=20
--=20
2.39.5

