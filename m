Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C79019B8EB0
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B8E110E978;
	Fri,  1 Nov 2024 10:08:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="m7c5u4BO";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="lsfsbwDP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99D8410E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:02 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387701;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8k2q3BNvsX24wBPWJnUHxsX8d4S+j4p8fnj9V0y3pL0=;
 b=m7c5u4BOWGV7ZOKjHlH3os+peLHipi+QLOgKQN/Pb7W2RSXPyw2A/mkrolTEkhM1VXSKTe
 +dgOzv5Ff8y+VjT2oe/o7BDFHCUBID3T2oB+YHI+ims2keEe+EKVUcOkRWJ426ZM+MtpiW
 iOMavTn9t4lA6ONCCuPo1BWkAwDGdb74eQc48o/e3j7X6Og8ZeBgN2xUrujihkaMXZzxlC
 sHnh3tdAdthv+mE+kG+SILfIx6whfY0iz3PSlUK99JrHwflQOKaVIy4P8dhCxVAKq6p4Oq
 6oQLWjLo+YVpWSDQPCtEY2h/+0SY/eBJivfBXhu15SZ7ux2muWd4vmWGfwZzVw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387701;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8k2q3BNvsX24wBPWJnUHxsX8d4S+j4p8fnj9V0y3pL0=;
 b=lsfsbwDP96j26QVLk+Y+tq+vSjKRYFALvEarfS5aNMF9mRtpkU9eORENLi03FuqV/3ZOB4
 VzpRX9Tbn4an+7CQ==
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
Subject: [RESEND PATCH v2 01/19] hrtimers: Add missing hrtimer_init() trace
 points
Date: Thu, 31 Oct 2024 16:14:15 +0100
Message-Id: <74528e8abf2bb96e8bee85ffacbf14e15cf89f0d.1730386209.git.namcao@linutronix.de>
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

hrtimer_init*_on_stack() is not covered by tracing when
CONFIG_DEBUG_OBJECTS_TIMERS=3Dy.

Rework the functions similar to hrtimer_init() and hrtimer_init_sleeper()
so that the hrtimer_init() tracepoint is unconditionally available.

The rework makes hrtimer_init_sleeper() unused. Delete it.

Signed-off-by: Nam Cao <namcao@linutronix.de>
---
 include/linux/hrtimer.h | 19 +-----------
 kernel/time/hrtimer.c   | 65 +++++++++++++++++++++++------------------
 2 files changed, 37 insertions(+), 47 deletions(-)

diff --git a/include/linux/hrtimer.h b/include/linux/hrtimer.h
index aa1e65ccb615..5aa9d57528c4 100644
--- a/include/linux/hrtimer.h
+++ b/include/linux/hrtimer.h
@@ -228,32 +228,15 @@ static inline void hrtimer_cancel_wait_running(struct=
 hrtimer *timer)
 /* Initialize timers: */
 extern void hrtimer_init(struct hrtimer *timer, clockid_t which_clock,
 			 enum hrtimer_mode mode);
-extern void hrtimer_init_sleeper(struct hrtimer_sleeper *sl, clockid_t clo=
ck_id,
-				 enum hrtimer_mode mode);
-
-#ifdef CONFIG_DEBUG_OBJECTS_TIMERS
 extern void hrtimer_init_on_stack(struct hrtimer *timer, clockid_t which_c=
lock,
 				  enum hrtimer_mode mode);
 extern void hrtimer_init_sleeper_on_stack(struct hrtimer_sleeper *sl,
 					  clockid_t clock_id,
 					  enum hrtimer_mode mode);
=20
+#ifdef CONFIG_DEBUG_OBJECTS_TIMERS
 extern void destroy_hrtimer_on_stack(struct hrtimer *timer);
 #else
-static inline void hrtimer_init_on_stack(struct hrtimer *timer,
-					 clockid_t which_clock,
-					 enum hrtimer_mode mode)
-{
-	hrtimer_init(timer, which_clock, mode);
-}
-
-static inline void hrtimer_init_sleeper_on_stack(struct hrtimer_sleeper *s=
l,
-						 clockid_t clock_id,
-						 enum hrtimer_mode mode)
-{
-	hrtimer_init_sleeper(sl, clock_id, mode);
-}
-
 static inline void destroy_hrtimer_on_stack(struct hrtimer *timer) { }
 #endif
=20
diff --git a/kernel/time/hrtimer.c b/kernel/time/hrtimer.c
index 04f7d8a392c3..4b0507cf38ea 100644
--- a/kernel/time/hrtimer.c
+++ b/kernel/time/hrtimer.c
@@ -417,6 +417,11 @@ static inline void debug_hrtimer_init(struct hrtimer *=
timer)
 	debug_object_init(timer, &hrtimer_debug_descr);
 }
=20
+static inline void debug_hrtimer_init_on_stack(struct hrtimer *timer)
+{
+	debug_object_init_on_stack(timer, &hrtimer_debug_descr);
+}
+
 static inline void debug_hrtimer_activate(struct hrtimer *timer,
 					  enum hrtimer_mode mode)
 {
@@ -428,28 +433,6 @@ static inline void debug_hrtimer_deactivate(struct hrt=
imer *timer)
 	debug_object_deactivate(timer, &hrtimer_debug_descr);
 }
=20
-static void __hrtimer_init(struct hrtimer *timer, clockid_t clock_id,
-			   enum hrtimer_mode mode);
-
-void hrtimer_init_on_stack(struct hrtimer *timer, clockid_t clock_id,
-			   enum hrtimer_mode mode)
-{
-	debug_object_init_on_stack(timer, &hrtimer_debug_descr);
-	__hrtimer_init(timer, clock_id, mode);
-}
-EXPORT_SYMBOL_GPL(hrtimer_init_on_stack);
-
-static void __hrtimer_init_sleeper(struct hrtimer_sleeper *sl,
-				   clockid_t clock_id, enum hrtimer_mode mode);
-
-void hrtimer_init_sleeper_on_stack(struct hrtimer_sleeper *sl,
-				   clockid_t clock_id, enum hrtimer_mode mode)
-{
-	debug_object_init_on_stack(&sl->timer, &hrtimer_debug_descr);
-	__hrtimer_init_sleeper(sl, clock_id, mode);
-}
-EXPORT_SYMBOL_GPL(hrtimer_init_sleeper_on_stack);
-
 void destroy_hrtimer_on_stack(struct hrtimer *timer)
 {
 	debug_object_free(timer, &hrtimer_debug_descr);
@@ -459,6 +442,7 @@ EXPORT_SYMBOL_GPL(destroy_hrtimer_on_stack);
 #else
=20
 static inline void debug_hrtimer_init(struct hrtimer *timer) { }
+static inline void debug_hrtimer_init_on_stack(struct hrtimer *timer) { }
 static inline void debug_hrtimer_activate(struct hrtimer *timer,
 					  enum hrtimer_mode mode) { }
 static inline void debug_hrtimer_deactivate(struct hrtimer *timer) { }
@@ -472,6 +456,13 @@ debug_init(struct hrtimer *timer, clockid_t clockid,
 	trace_hrtimer_init(timer, clockid, mode);
 }
=20
+static inline void debug_init_on_stack(struct hrtimer *timer, clockid_t cl=
ockid,
+				       enum hrtimer_mode mode)
+{
+	debug_hrtimer_init_on_stack(timer);
+	trace_hrtimer_init(timer, clockid, mode);
+}
+
 static inline void debug_activate(struct hrtimer *timer,
 				  enum hrtimer_mode mode)
 {
@@ -1600,6 +1591,23 @@ void hrtimer_init(struct hrtimer *timer, clockid_t c=
lock_id,
 }
 EXPORT_SYMBOL_GPL(hrtimer_init);
=20
+/**
+ * hrtimer_init_on_stack - initialize a timer in stack memory
+ * @timer:	The timer to be initialized
+ * @clock_id:	The clock to be used
+ * @mode:       The timer mode
+ *
+ * Similar to hrtimer_init(), except that this one must be used if struct =
hrtimer is in stack
+ * memory.
+ */
+void hrtimer_init_on_stack(struct hrtimer *timer, clockid_t clock_id,
+			   enum hrtimer_mode mode)
+{
+	debug_init_on_stack(timer, clock_id, mode);
+	__hrtimer_init(timer, clock_id, mode);
+}
+EXPORT_SYMBOL_GPL(hrtimer_init_on_stack);
+
 /*
  * A timer is active, when it is enqueued into the rbtree or the
  * callback function is running or it's in the state of being migrated
@@ -1944,7 +1952,7 @@ void hrtimer_sleeper_start_expires(struct hrtimer_sle=
eper *sl,
 	 * Make the enqueue delivery mode check work on RT. If the sleeper
 	 * was initialized for hard interrupt delivery, force the mode bit.
 	 * This is a special case for hrtimer_sleepers because
-	 * hrtimer_init_sleeper() determines the delivery mode on RT so the
+	 * __hrtimer_init_sleeper() determines the delivery mode on RT so the
 	 * fiddling with this decision is avoided at the call sites.
 	 */
 	if (IS_ENABLED(CONFIG_PREEMPT_RT) && sl->timer.is_hard)
@@ -1987,19 +1995,18 @@ static void __hrtimer_init_sleeper(struct hrtimer_s=
leeper *sl,
 }
=20
 /**
- * hrtimer_init_sleeper - initialize sleeper to the given clock
+ * hrtimer_init_sleeper_on_stack - initialize a sleeper in stack memory
  * @sl:		sleeper to be initialized
  * @clock_id:	the clock to be used
  * @mode:	timer mode abs/rel
  */
-void hrtimer_init_sleeper(struct hrtimer_sleeper *sl, clockid_t clock_id,
-			  enum hrtimer_mode mode)
+void hrtimer_init_sleeper_on_stack(struct hrtimer_sleeper *sl,
+				   clockid_t clock_id, enum hrtimer_mode mode)
 {
-	debug_init(&sl->timer, clock_id, mode);
+	debug_init_on_stack(&sl->timer, clock_id, mode);
 	__hrtimer_init_sleeper(sl, clock_id, mode);
-
 }
-EXPORT_SYMBOL_GPL(hrtimer_init_sleeper);
+EXPORT_SYMBOL_GPL(hrtimer_init_sleeper_on_stack);
=20
 int nanosleep_copyout(struct restart_block *restart, struct timespec64 *ts)
 {
--=20
2.39.5

