Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFA29B8EB6
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8295E10E989;
	Fri,  1 Nov 2024 10:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="3oLfX19B";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="dYr0dnRr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9324010E065
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:13 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387712;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GU2XVazw0GjbHPIfXGHM1SlNEVDhVGkrGNW/ZVs0bq8=;
 b=3oLfX19B9bkmjYpuep2ukDT9RuM0sjRNPZ1LYWuFrCC22OqBkClmt3FGa1f0TmYHvs3Fzy
 Nt1TSZJJIf/FDLz9S8eYlidHGwP/eeBF87HrvPGmeC9giczGNZt2ER7L3fM8x3cLogaG4f
 mKdn5xQ3hkcuX7KJxwF5XCXrXPOB2Wh2Sv8I1GtVyWKK2a2iXmkEuHKpbOYYVrLqNNPkhl
 9XRR/YcmKfHqnMYFa56FS6bcRu6XOyhl6++OIktbbjNKSoOag8KL0mi3Ts/lVmoNjY5ZHl
 I21szVK1FUyr0b7W516opP0/Bv+rBINOlXzsRMN1MjTkKahKYZuePy2m41wsSA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387712;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GU2XVazw0GjbHPIfXGHM1SlNEVDhVGkrGNW/ZVs0bq8=;
 b=dYr0dnRr4PeCWO2kuEc2e2LCz/omiE1Ka36qPy0pqIZZGqW9NhLdUPz8PRZuMEClwAngpf
 CDGJ1gl+OGraXyBQ==
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
Subject: [RESEND PATCH v2 18/19] alarmtimer: Switch to use hrtimer_setup() and
 hrtimer_setup_on_stack()
Date: Thu, 31 Oct 2024 16:14:32 +0100
Message-Id: <2bae912336103405adcdab96b88d3ea0353b4228.1730386209.git.namcao@linutronix.de>
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

hrtimer_setup() and hrtimer_setup_on_stack() take the callback function
pointer as argument and initialize the timer completely.

Replace the hrtimer_init*() variants and the open coded initialization of
hrtimer::function with the new setup mechanism.

Switch to use the new functions.

Signed-off-by: Nam Cao <namcao@linutronix.de>
Cc: John Stultz <jstultz@google.com>
---
 kernel/time/alarmtimer.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/kernel/time/alarmtimer.c b/kernel/time/alarmtimer.c
index 452d8aa2f6e0..f581868e1b3e 100644
--- a/kernel/time/alarmtimer.c
+++ b/kernel/time/alarmtimer.c
@@ -337,7 +337,6 @@ __alarm_init(struct alarm *alarm, enum alarmtimer_type =
type,
 	     enum alarmtimer_restart (*function)(struct alarm *, ktime_t))
 {
 	timerqueue_init(&alarm->node);
-	alarm->timer.function =3D alarmtimer_fired;
 	alarm->function =3D function;
 	alarm->type =3D type;
 	alarm->state =3D ALARMTIMER_STATE_INACTIVE;
@@ -352,8 +351,8 @@ __alarm_init(struct alarm *alarm, enum alarmtimer_type =
type,
 void alarm_init(struct alarm *alarm, enum alarmtimer_type type,
 		enum alarmtimer_restart (*function)(struct alarm *, ktime_t))
 {
-	hrtimer_init(&alarm->timer, alarm_bases[type].base_clockid,
-		     HRTIMER_MODE_ABS);
+	hrtimer_setup(&alarm->timer, alarmtimer_fired, alarm_bases[type].base_clo=
ckid,
+		      HRTIMER_MODE_ABS);
 	__alarm_init(alarm, type, function);
 }
 EXPORT_SYMBOL_GPL(alarm_init);
@@ -816,8 +815,8 @@ static void
 alarm_init_on_stack(struct alarm *alarm, enum alarmtimer_type type,
 		    enum alarmtimer_restart (*function)(struct alarm *, ktime_t))
 {
-	hrtimer_init_on_stack(&alarm->timer, alarm_bases[type].base_clockid,
-			      HRTIMER_MODE_ABS);
+	hrtimer_setup_on_stack(&alarm->timer, alarmtimer_fired, alarm_bases[type]=
.base_clockid,
+			       HRTIMER_MODE_ABS);
 	__alarm_init(alarm, type, function);
 }
=20
--=20
2.39.5

