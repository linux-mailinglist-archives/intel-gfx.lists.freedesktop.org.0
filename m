Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB8A9B8EBB
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5BDC10E974;
	Fri,  1 Nov 2024 10:08:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="2k27J3wq";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="7QOgfZIu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2777C10E065
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 15:15:13 +0000 (UTC)
From: Nam Cao <namcao@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730387711;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oYfjK6Ca0PZ7u6hxJjuMYHahvzL9jhDTXWFMtws/RE8=;
 b=2k27J3wqOQVhl9MKvgZskQoH9r0+R/+UdOyqQAvYOzy4xnayx7Hva90FcqfWzTU2Up7+XL
 z+Ae1TUKWy+KKqkHi/Ib2pPvSi5n6kBjw1yeVitMynA1HmNZTLwPHD03vefIBM/+Shmf1v
 oXGClDDPteefEyRPDzjTVrza/dMoqtt/Ikf4qGw+s3vAdV0umJo1HiXB8PbqIDSDEOb5V1
 skO+vI9951uZC/BhBWOrycQD+dRQnBCZvw7rvXTAaTqik/a2q9ct1j6MpopAmCmwj+dVmH
 j0Whw4D4CmjButJ4OV2zy7DJ2kK02sC7p4VYCHwDaK/A9lre1VfnRNX25XdU1A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730387711;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oYfjK6Ca0PZ7u6hxJjuMYHahvzL9jhDTXWFMtws/RE8=;
 b=7QOgfZIusMOviCnFOXXtb31+1DxjDGaTQgD2d/m9I/g+V89vz6mSaJXN3c4JIgpGVfKIJ8
 klW9pVtvT4O9KcCw==
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
Subject: [RESEND PATCH v2 17/19] io_uring: Switch to use
 hrtimer_setup_on_stack()
Date: Thu, 31 Oct 2024 16:14:31 +0100
Message-Id: <f0d4ac32ec4050710a656cee8385fa4427be33aa.1730386209.git.namcao@linutronix.de>
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

hrtimer_setup_on_stack() takes the callback function pointer as argument
and initializes the timer completely.

Replace hrtimer_init_on_stack() and the open coded initialization of
hrtimer::function with the new setup mechanism.

Signed-off-by: Nam Cao <namcao@linutronix.de>
Cc: Jens Axboe <axboe@kernel.dk>
---
 io_uring/io_uring.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/io_uring/io_uring.c b/io_uring/io_uring.c
index feb61d68dca6..0842aa3f60e7 100644
--- a/io_uring/io_uring.c
+++ b/io_uring/io_uring.c
@@ -2435,13 +2435,14 @@ static int io_cqring_schedule_timeout(struct io_wai=
t_queue *iowq,
 {
 	ktime_t timeout;
=20
-	hrtimer_init_on_stack(&iowq->t, clock_id, HRTIMER_MODE_ABS);
 	if (iowq->min_timeout) {
 		timeout =3D ktime_add_ns(iowq->min_timeout, start_time);
-		iowq->t.function =3D io_cqring_min_timer_wakeup;
+		hrtimer_setup_on_stack(&iowq->t, io_cqring_min_timer_wakeup, clock_id,
+				       HRTIMER_MODE_ABS);
 	} else {
 		timeout =3D iowq->timeout;
-		iowq->t.function =3D io_cqring_timer_wakeup;
+		hrtimer_setup_on_stack(&iowq->t, io_cqring_timer_wakeup, clock_id,
+				       HRTIMER_MODE_ABS);
 	}
=20
 	hrtimer_set_expires_range_ns(&iowq->t, timeout, 0);
--=20
2.39.5

