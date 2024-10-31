Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF939B8EBA
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FFBB10E97F;
	Fri,  1 Nov 2024 10:08:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="XzQpNSwf";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Ha0W0r5L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0907010E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:07 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387705;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=C2pgxdetyjFdGMAYQNmqquyKM9VvR5M1ScNctRcZor8=;
 b=XzQpNSwfS1KsUnzEEkGG3Iuey3l2dvDrRTyFBryik4D+t5RyKO+mb7tTLZD9ZRyilKUuWf
 jte3J1gze9W005BG2id+JasCiuOVN8Gm+pdNRzFCmKRwauq5toaCjAhMhKnl+3n3H3mAW6
 B6z6pd2Wo7aowmA7Fp7MnlAWij/z+Bm4httKMDT8QyMAgnh75B79HutAhcZPrm6uwCxeFN
 ynxeD/HDho8RIxt6s1+BJeHMiOsQ0NMv7f9XzKzWcd6L8BXy1AF5HJVyHvC2tk06QQhjz5
 F9svaQyXwwsC4J8fSNKrEUJ47wCZJnhPLuJm2ATe3DyJhfEuXpAnGwABAKV6lg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387705;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=C2pgxdetyjFdGMAYQNmqquyKM9VvR5M1ScNctRcZor8=;
 b=Ha0W0r5LMuvam3gSiw/Jbi7TY8QZoepcS+hye4MMw0ADw2CbjE4LANY+DtNBmeXri8s1yd
 8C8tjupm9PhrieAQ==
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
Subject: [RESEND PATCH v2 08/19] hrtimers: Introduce
 hrtimer_setup_sleeper_on_stack()
Date: Thu, 31 Oct 2024 16:14:22 +0100
Message-Id: <7b5e18e6dd0ace9eaa211201528cb9dc23752454.1730386209.git.namcao@linutronix.de>
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

The hrtimer_init*() API is replaced by hrtimer_setup*() variants to
initialize the timer including the callback function at once.

hrtimer_init_sleeper_on_stack() does not need user to setup the callback
function separately, so a new variant would not be strictly necessary.

Nonetheless, to keep the naming convention consistent, introduce
hrtimer_setup_sleeper_on_stack(). hrtimer_init_on_stack() will be removed
once all users are converted.

Signed-off-by: Nam Cao <namcao@linutronix.de>
---
 include/linux/hrtimer.h |  2 ++
 kernel/time/hrtimer.c   | 14 ++++++++++++++
 2 files changed, 16 insertions(+)

diff --git a/include/linux/hrtimer.h b/include/linux/hrtimer.h
index 2da513f8d66a..48872a2b4071 100644
--- a/include/linux/hrtimer.h
+++ b/include/linux/hrtimer.h
@@ -238,6 +238,8 @@ extern void hrtimer_setup_on_stack(struct hrtimer *time=
r,
 extern void hrtimer_init_sleeper_on_stack(struct hrtimer_sleeper *sl,
 					  clockid_t clock_id,
 					  enum hrtimer_mode mode);
+extern void hrtimer_setup_sleeper_on_stack(struct hrtimer_sleeper *sl, clo=
ckid_t clock_id,
+					   enum hrtimer_mode mode);
=20
 #ifdef CONFIG_DEBUG_OBJECTS_TIMERS
 extern void destroy_hrtimer_on_stack(struct hrtimer *timer);
diff --git a/kernel/time/hrtimer.c b/kernel/time/hrtimer.c
index daee4e27f839..1d1f5c03673c 100644
--- a/kernel/time/hrtimer.c
+++ b/kernel/time/hrtimer.c
@@ -2065,6 +2065,20 @@ void hrtimer_init_sleeper_on_stack(struct hrtimer_sl=
eeper *sl,
 }
 EXPORT_SYMBOL_GPL(hrtimer_init_sleeper_on_stack);
=20
+/**
+ * hrtimer_setup_sleeper_on_stack - initialize a sleeper in stack memory
+ * @sl:		sleeper to be initialized
+ * @clock_id:	the clock to be used
+ * @mode:	timer mode abs/rel
+ */
+void hrtimer_setup_sleeper_on_stack(struct hrtimer_sleeper *sl,
+				    clockid_t clock_id, enum hrtimer_mode mode)
+{
+	debug_init_on_stack(&sl->timer, clock_id, mode);
+	__hrtimer_init_sleeper(sl, clock_id, mode);
+}
+EXPORT_SYMBOL_GPL(hrtimer_setup_sleeper_on_stack);
+
 int nanosleep_copyout(struct restart_block *restart, struct timespec64 *ts)
 {
 	switch(restart->nanosleep.type) {
--=20
2.39.5

