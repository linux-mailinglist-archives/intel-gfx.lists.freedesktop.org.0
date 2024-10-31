Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B24369B8EA8
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C19D10E96B;
	Fri,  1 Nov 2024 10:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="ea2gljGc";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="CqstlxLr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D41A10E079
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:03 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387702;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3OpuVlVfGmDS4KDeN2Jbqf77TDzf3Zc1fr7oejFCTSM=;
 b=ea2gljGc/BV+BoVMvgLFNEi8043sU9vyqQDpS0h+ftCl0Wo6cCP6sHwDIGQrOTV95ZvkTy
 9lJYGcmCAJJaLxAmMOdTboAmsH3HAOERGu7XsxcKIGqxJ8VsWL9AqZ2KQmXwuBU/0cMPsb
 nFn0+qyC03e1F931j/X2DBldlmMJQqe0AFutcjqtyQi3xooASdmfqqAw4F63/+fGF299+x
 SeSwZ06mK7IEVX42pHSFi+kzM6odRmdXbCd+m1r1J4bte8XJaFVR5gW+Sagirx10tlc7F0
 QBiXvt9n2O+uGEqNpTvA0iRzAsZxQiQtdDIzHn/cFQM4c9ISdF+dvS+/GT5nmA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387702;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3OpuVlVfGmDS4KDeN2Jbqf77TDzf3Zc1fr7oejFCTSM=;
 b=CqstlxLr48wIYSYPze9/lcB0CHD7PTlEaV2YbBlsmr81hdWcaBWQN3POAvCfgwPaaNUEDK
 j3818nENSXCm8yCg==
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
Subject: [RESEND PATCH v2 02/19] drm/i915/request: Remove unnecessary
 modification of hrtimer::function
Date: Thu, 31 Oct 2024 16:14:16 +0100
Message-Id: <50f865045aa672a9730343ad131543da332b1d8d.1730386209.git.namcao@linutronix.de>
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

When a request is created, the hrtimer is not initialized and only its
'function' field is set to NULL. The hrtimer is only initialized when the
request is enqueued. The point of setting 'function' to NULL is that, it
can be used to check whether hrtimer_try_to_cancel() should be called while
retiring the request.

This "trick" is unnecessary, because hrtimer_try_to_cancel() already does
its own check whether the timer is armed. If the timer is not armed,
hrtimer_try_to_cancel() returns 0.

Fully initialize the timer when the request is created, which allows to
make the hrtimer::function field private once all users of hrtimer_init()
are converted to hrtimer_setup(), which requires a valid callback function
to be set.

Because hrtimer_try_to_cancel() returns 0 if the timer is not armed, the
logic to check whether to call i915_request_put() remains equivalent.

Signed-off-by: Nam Cao <namcao@linutronix.de>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_request.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i91=
5_request.c
index 519e096c607c..8f62cfa23fb7 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -273,11 +273,6 @@ i915_request_active_engine(struct i915_request *rq,
 	return ret;
 }
=20
-static void __rq_init_watchdog(struct i915_request *rq)
-{
-	rq->watchdog.timer.function =3D NULL;
-}
-
 static enum hrtimer_restart __rq_watchdog_expired(struct hrtimer *hrtimer)
 {
 	struct i915_request *rq =3D
@@ -294,6 +289,14 @@ static enum hrtimer_restart __rq_watchdog_expired(stru=
ct hrtimer *hrtimer)
 	return HRTIMER_NORESTART;
 }
=20
+static void __rq_init_watchdog(struct i915_request *rq)
+{
+	struct i915_request_watchdog *wdg =3D &rq->watchdog;
+
+	hrtimer_init(&wdg->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+	wdg->timer.function =3D __rq_watchdog_expired;
+}
+
 static void __rq_arm_watchdog(struct i915_request *rq)
 {
 	struct i915_request_watchdog *wdg =3D &rq->watchdog;
@@ -304,8 +307,6 @@ static void __rq_arm_watchdog(struct i915_request *rq)
=20
 	i915_request_get(rq);
=20
-	hrtimer_init(&wdg->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
-	wdg->timer.function =3D __rq_watchdog_expired;
 	hrtimer_start_range_ns(&wdg->timer,
 			       ns_to_ktime(ce->watchdog.timeout_us *
 					   NSEC_PER_USEC),
@@ -317,7 +318,7 @@ static void __rq_cancel_watchdog(struct i915_request *r=
q)
 {
 	struct i915_request_watchdog *wdg =3D &rq->watchdog;
=20
-	if (wdg->timer.function && hrtimer_try_to_cancel(&wdg->timer) > 0)
+	if (hrtimer_try_to_cancel(&wdg->timer) > 0)
 		i915_request_put(rq);
 }
=20
--=20
2.39.5

